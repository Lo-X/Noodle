
-- Include and init everything we coud need in Lua scripts

-- Package path
package.path = "scripts/Noodle/?.lua;Noodle/?.lua";

-- Class
require("class");

Noodle = {};

-- Application
Noodle.Application = Class(NdlApplication);

-- JSON
Noodle.Json = Class(require("json"));

-- Mouse
local m = require("mouse");
Noodle.Mouse = Class(NdlMouse);
Noodle.Mouse.Button = m.Button;

--print(Noodle.Json.encode(Noodle.Mouse));


return Noodle;
