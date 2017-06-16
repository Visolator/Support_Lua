getVelocity = ts.func("Player","getVelocity")
getHackPosition = ts.func("Player","getHackPosition")
getDatablock = ts.func("Player","getDatablock")
setTransform = ts.func("Player","setTransform")
vectorSub = ts.func("vectorSub")
vectorScale = ts.func("vectorScale")
vectorDist = ts.func("vectorDist")
bottomPrint = ts.func("GameConnection","bottomPrint")
addVelocity = ts.func("Player","addVelocity")
getPositionS = ts.func("SceneObject","getPosition")
getControlObject = ts.func("Player","getControlObject")
getObjectMount = ts.func("Player","getObjectMount")
vectorLen = ts.func("vectorLen");
vectorAdd = ts.func("vectorAdd");
getWord = ts.func("getWord")
getClass = ts.func("SimObject", "getClassName")
getShapeName = ts.func("ShapeBase", "getShapeName")

isObject = ts.func("isObject")
function KillEveryone()
	local getCount = ts.func("SimSet", "getCount")
	local getObject = ts.func("SimSet", "getObject")
	local ClientGroup = ts.obj "ClientGroup"

	for i=0,getCount(ClientGroup)-1 do
		local client = ts.obj(getObject(ClientGroup, i))
		local player = ts.obj(client.player)
		local kill = ts.func("Player", "kill")
		if(isObject(player)) then
			kill(player)
		end
	end
end