local json = require("json");


function Class(base, _ctor)
    local c = {};    -- a new class instance
    if not _ctor and type(base) == 'function' then
        _ctor = base;
        base = nil;
    elseif type(base) == 'table' then
    -- our new class is a shallow copy of the base class!
        for i,v in pairs(base) do
            c[i] = v;
        end
        c._base = base;
    end
    
    -- the class will be the metatable for all its objects,
    -- and they will look up their methods in it.
    c.__index = c;

    -- expose a constructor which can be called by <classname>(<args>)
    local mt = {};
    

    mt.__call = function(class_tbl, ...)
        local obj = {};
        setmetatable(obj,c);
        if c._ctor then
           c._ctor(obj,...);
        end
        return obj;
    end
        
    c._ctor = _ctor;
    c.is_a = function(self, klass)
        local m = getmetatable(self);
        while m do 
            if m == klass then return true end
            m = m._base;
        end
        return false;
    end
    setmetatable(c, mt);


    c.debug = function(self)
        print(json.encode(self));
    end

    c.__tostring = function(self)
        return json.encode(self);
    end


    return c;
end
