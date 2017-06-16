if(!isFunction("luaExec"))
{
	warn("Support_Lua - luaExec does not exist!");
	return;
}

luaExec("./main.lua");