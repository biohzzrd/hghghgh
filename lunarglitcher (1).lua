
-- SNM WARNING
-- Контролы : 1,2

--// Тут меняйте ник (не дисплей)
local username = "ler4ik afical"

--// Конфиг
local mode = 1
local speedMultiplier = 1
local offset = Vector3.new(0,5,5)
--// Не трогай xyz, это может сильно повлиять на работу скрипта!
local x = 80
local y = 0
local z = 90

getgenv().v2 = -5
getgenv().v1 = math.abs(v2)

loadstring(game:HttpGet(('https://pastebin.com/raw/Cu7bKQWN'),true))()
HumanDied = false
loadstring(game:HttpGet(('https://raw.githubusercontent.com/XeneonPlays/Nexo/main/NexoReanimate'),true))()

IT = Instance.new
CF = CFrame.new
VT = Vector3.new
RAD = math.rad
C3 = Color3.new
UD2 = UDim2.new
BRICKC = BrickColor.new
ANGLES = CFrame.Angles
EULER = CFrame.fromEulerAnglesXYZ
COS = math.cos
ACOS = math.acos
SIN = math.sin
ASIN = math.asin
ABS = math.abs
MRANDOM = math.random
FLOOR = math.floor

speed = 1
sine = 1
srv = game:GetService('RunService')

reanim = game.Players.LocalPlayer.Character
RJ = reanim.HumanoidRootPart.RootJoint
RS = reanim.Torso['Right Shoulder']
LS = reanim.Torso['Left Shoulder']
RH = reanim.Torso['Right Hip']
LH = reanim.Torso['Left Hip']
Root = reanim.HumanoidRootPart
NECK = reanim.Torso.Neck
NECK.C0 = CF(0,1,0)*ANGLES(RAD(0),RAD(0),RAD(0))
NECK.C1 = CF(0,-0.5,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RJ.C1 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RJ.C0 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RS.C1 = CF(-0.5,0.5,0)*ANGLES(RAD(0),RAD(0),RAD(0))
LS.C1 = CF(0.5,0.5,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RH.C1 = CF(0,1,0.5)*ANGLES(RAD(0),RAD(0),RAD(0))
LH.C1 = CF(0,1,0.5)*ANGLES(RAD(0),RAD(0),RAD(0))
RH.C0 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
LH.C0 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RS.C0 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
LS.C0 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))


char = game.Players.LocalPlayer.Character
    
char['Nebula Blade'].Handle.AccessoryWeld.Part1 = char['Torso']
char['Nebula Blade'].Handle.AccessoryWeld.C1 = CF(offset)*ANGLES(RAD(90),RAD(0),RAD(90))

char['BrownCharmerHair'].Handle.AccessoryWeld.Part1 = char['Torso']
char['BrownCharmerHair'].Handle.AccessoryWeld.C1 = CF(offset)*ANGLES(RAD(x),RAD(y),RAD(z))

char['Hat1'].Handle.AccessoryWeld.Part1 = char['Torso']
char['Hat1'].Handle.AccessoryWeld.C1 = CF(offset)*ANGLES(RAD(x),RAD(y),RAD(z))

char['Pal Hair'].Handle.AccessoryWeld.Part1 = char['Torso']
char['Pal Hair'].Handle.AccessoryWeld.C1 = CF(offset)*ANGLES(RAD(x),RAD(y),RAD(z))

char['MessyHair'].Handle.AccessoryWeld.Part1 = char['Torso']
char['MessyHair'].Handle.AccessoryWeld.C1 = CF(offset)*ANGLES(RAD(x),RAD(y),RAD(z))



local spinInt = 0
coroutine.wrap(function()
while true do
if HumanDied then break end
if spinInt >= 360 then spinInt = 0 end
spinInt = spinInt + speedMultiplier
char['Nebula Blade'].Handle.AccessoryWeld.C0 = char['Nebula Blade'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),0+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(spinInt+0*math.cos(sine/13)),RAD(spinInt+0*math.cos(sine/13)),RAD(spinInt+0*math.cos(sine/13))),.1)
char['BrownCharmerHair'].Handle.AccessoryWeld.C0 = char['BrownCharmerHair'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),v1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(spinInt+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
char['Hat1'].Handle.AccessoryWeld.C0 = char['Hat1'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),0+0*math.cos(sine/13),v1+0*math.cos(sine/13))*ANGLES(RAD(spinInt+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
char['Pal Hair'].Handle.AccessoryWeld.C0 = char['Pal Hair'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),0+0*math.cos(sine/13),v2+0*math.cos(sine/13))*ANGLES(RAD(spinInt+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
char['MessyHair'].Handle.AccessoryWeld.C0 = char['MessyHair'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),v2+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(spinInt+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)


game:GetService('RunService').RenderStepped:Wait()
end
end)()


coroutine.wrap(function()
while true do -- anim changer
if HumanDied then break end
sine = sine + speed
if Root.Velocity.y > 1 then -- jump
--jump clerp here
elseif Root.Velocity.y < -1 then -- fall
--fall clerp here
elseif Root.Velocity.Magnitude < 2 then -- idle
if mode == 1 then
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/-60),0+0.1*math.cos(sine/-60),0+0*math.cos(sine/-60))*ANGLES(RAD(0+0*math.cos(sine/-60)),RAD(0+0*math.cos(sine/-60)),RAD(0+0*math.cos(sine/-60))),.1)
RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/-43),0.5+0*math.cos(sine/-43),0+0*math.cos(sine/-43))*ANGLES(RAD(72+0*math.cos(sine/-43)),RAD(-11+5*math.cos(sine/-43)),RAD(-75+0*math.cos(sine/-43))),.1)
LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/-45),0.5+0*math.cos(sine/-45),0+0*math.cos(sine/-45))*ANGLES(RAD(70+2*math.cos(sine/-45)),RAD(12+0*math.cos(sine/-45)),RAD(74+0*math.cos(sine/-45))),.1)
RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/-38),-1+0.1*math.cos(sine/-38),0.5+0*math.cos(sine/-38))*ANGLES(RAD(-15+0*math.cos(sine/-38)),RAD(-4+0*math.cos(sine/-38)),RAD(0+0*math.cos(sine/-38))),.1)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/-47),-1+0.1*math.cos(sine/-47),0.5+0*math.cos(sine/-47))*ANGLES(RAD(0+0*math.cos(sine/-47)),RAD(0+0*math.cos(sine/-47)),RAD(0+0*math.cos(sine/-47))),.1)
end
if mode == 2 then
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/-28),8.5+0.3*math.cos(sine/-28),0+0*math.cos(sine/-28))*ANGLES(RAD(0+0*math.cos(sine/-28)),RAD(0+0*math.cos(sine/-28)),RAD(0+0*math.cos(sine/-28))),.1)
RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/-45),0.5+0.2*math.cos(sine/-45),0+0*math.cos(sine/-45))*ANGLES(RAD(-35+0*math.cos(sine/-45)),RAD(0+5*math.cos(sine/-45)),RAD(-48+0*math.cos(sine/-45))),.1)
LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/-32),0.5+0.2*math.cos(sine/-32),0+0*math.cos(sine/-32))*ANGLES(RAD(-35+0*math.cos(sine/-32)),RAD(0+0*math.cos(sine/-32)),RAD(41+0*math.cos(sine/-32))),.1)
RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/-29),-1+0.1*math.cos(sine/-29),0.5+0*math.cos(sine/-29))*ANGLES(RAD(-17+0*math.cos(sine/-29)),RAD(0+0*math.cos(sine/-29)),RAD(0+0*math.cos(sine/-29))),.1)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/13),-1+0.1*math.cos(sine/13),0.5+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(18+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
end
elseif Root.Velocity.Magnitude < 20 then -- walk

if mode == 1 then
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/-5),0+0.1*math.cos(sine/-5),0+0*math.cos(sine/-5))*ANGLES(RAD(-26+-3*math.cos(sine/-5)),RAD(0+0*math.cos(sine/-5)),RAD(0+0*math.cos(sine/-5))),.1)
RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/6),0.5+0*math.cos(sine/6),0+0*math.cos(sine/6))*ANGLES(RAD(0+39*math.cos(sine/6)),RAD(0+5*math.cos(sine/6)),RAD(0+0*math.cos(sine/6))),.1)
LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/-6),0.5+0*math.cos(sine/-6),0+0*math.cos(sine/-6))*ANGLES(RAD(0+-39*math.cos(sine/-6)),RAD(0+0*math.cos(sine/-6)),RAD(0+0*math.cos(sine/-6))),.1)
RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/-6),-1+0.1*math.cos(sine/-6),0.5+0*math.cos(sine/-6))*ANGLES(RAD(0+-80*math.cos(sine/-6)),RAD(0+0*math.cos(sine/-6)),RAD(0+0*math.cos(sine/-6))),.1)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/6),-1+0.1*math.cos(sine/6),0.5+0*math.cos(sine/6))*ANGLES(RAD(0+80*math.cos(sine/6)),RAD(0+0*math.cos(sine/6)),RAD(0+0*math.cos(sine/6))),.1)end
if mode == 2 then
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/-18),8.5+0.3*math.cos(sine/-18),0+0*math.cos(sine/-18))*ANGLES(RAD(-55+0*math.cos(sine/-18)),RAD(0+0*math.cos(sine/-18)),RAD(0+0*math.cos(sine/-18))),.1)
RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/-45),0.5+0.2*math.cos(sine/-45),0+0*math.cos(sine/-45))*ANGLES(RAD(74+0*math.cos(sine/-45)),RAD(0+5*math.cos(sine/-45)),RAD(-48+0*math.cos(sine/-45))),.1)
LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/-32),0.5+0.2*math.cos(sine/-32),0+0*math.cos(sine/-32))*ANGLES(RAD(-37+0*math.cos(sine/-32)),RAD(25+0*math.cos(sine/-32)),RAD(52+0*math.cos(sine/-32))),.1)
RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/-29),-1+0.1*math.cos(sine/-29),0.5+0*math.cos(sine/-29))*ANGLES(RAD(-64+0*math.cos(sine/-29)),RAD(0+0*math.cos(sine/-29)),RAD(0+0*math.cos(sine/-29))),.1)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/13),-1+0.1*math.cos(sine/13),0.5+0*math.cos(sine/13))*ANGLES(RAD(-35+0*math.cos(sine/13)),RAD(18+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
end

elseif Root.Velocity.Magnitude > 20 then -- run
if mode == 1 then
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/-5),0+0.1*math.cos(sine/-5),0+0*math.cos(sine/-5))*ANGLES(RAD(-26+-3*math.cos(sine/-5)),RAD(0+0*math.cos(sine/-5)),RAD(0+0*math.cos(sine/-5))),.1)
RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/6),0.5+0*math.cos(sine/6),0+0*math.cos(sine/6))*ANGLES(RAD(0+39*math.cos(sine/6)),RAD(0+5*math.cos(sine/6)),RAD(0+0*math.cos(sine/6))),.1)
LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/-6),0.5+0*math.cos(sine/-6),0+0*math.cos(sine/-6))*ANGLES(RAD(0+-39*math.cos(sine/-6)),RAD(0+0*math.cos(sine/-6)),RAD(0+0*math.cos(sine/-6))),.1)
RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/-6),-1+0.1*math.cos(sine/-6),0.5+0*math.cos(sine/-6))*ANGLES(RAD(0+-80*math.cos(sine/-6)),RAD(0+0*math.cos(sine/-6)),RAD(0+0*math.cos(sine/-6))),.1)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/6),-1+0.1*math.cos(sine/6),0.5+0*math.cos(sine/6))*ANGLES(RAD(0+80*math.cos(sine/6)),RAD(0+0*math.cos(sine/6)),RAD(0+0*math.cos(sine/6))),.1)end
if mode == 2 then
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/-18),8.5+0.3*math.cos(sine/-18),0+0*math.cos(sine/-18))*ANGLES(RAD(-55+0*math.cos(sine/-18)),RAD(0+0*math.cos(sine/-18)),RAD(0+0*math.cos(sine/-18))),.1)
RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/-45),0.5+0.2*math.cos(sine/-45),0+0*math.cos(sine/-45))*ANGLES(RAD(74+0*math.cos(sine/-45)),RAD(0+5*math.cos(sine/-45)),RAD(-48+0*math.cos(sine/-45))),.1)
LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/-32),0.5+0.2*math.cos(sine/-32),0+0*math.cos(sine/-32))*ANGLES(RAD(-37+0*math.cos(sine/-32)),RAD(25+0*math.cos(sine/-32)),RAD(52+0*math.cos(sine/-32))),.1)
RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/-29),-1+0.1*math.cos(sine/-29),0.5+0*math.cos(sine/-29))*ANGLES(RAD(-64+0*math.cos(sine/-29)),RAD(0+0*math.cos(sine/-29)),RAD(0+0*math.cos(sine/-29))),.1)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/13),-1+0.1*math.cos(sine/13),0.5+0*math.cos(sine/13))*ANGLES(RAD(-35+0*math.cos(sine/13)),RAD(18+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
end
end

srv.RenderStepped:Wait()
end
end)()
game:GetService("Workspace"):FindFirstChild(username).Hat1.Handle.Mesh:Destroy()
game:GetService("Workspace"):FindFirstChild(username)["Pal Hair"].Handle.Mesh:Destroy()
game:GetService("Workspace"):FindFirstChild(username)["BrownCharmerHair"].Handle.Mesh:Destroy()
-- game:GetService("Workspace"):FindFirstChild(username)["Nebula Blade"].Handle.Mesh:Destroy()
game:GetService("Workspace"):FindFirstChild(username)["MessyHair"].Handle.Mesh:Destroy()

function cw(int) game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = int end
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 32

local enabled = true
game.Players.LocalPlayer.Character.Humanoid.Died:Connect(function()
enabled = false
end)
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.keyDown:Connect(function(k)
if not enabled then return end
if k == "1" then
mode = 1
cw(32)
v2 = -5
speedMultiplier = 3
end
if k == "2" then
mode = 2
cw(50)
speedMultiplier = 5
v2 = -10
end
end)

spawn(function()
while wait() do
v1 = math.abs(v2)
end
end)

