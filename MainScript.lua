--<< Admin.lua >>--
--<< Version 1.5 >>--

local plrs = game:GetService("Players")
local plr = plrs.LocalPlayer
local ws = game:GetService("Workspace")
local runs = game:GetService("RunService")
local rs = game:GetService("ReplicatedStorage")

local tname = "string"

local funct = {}

local cmdst = {}

local cmdsinfo = [[

[ Admin.lua commands' info ]

,cmds - Tells you all the commands in console.
,sp <plr or all> - Selects a player.
,bring - Brings a selected player.
,void - Voids a selected player.
,rejoin - Makes you rejoin.
,antikill - Deletes your right. Works for gear attaching methods.
,re - Respawns your character.
,sounds - Plays all the sounds in workspace if possible.
,skinny - Makes you skinny - R15. Set your body type and height to maximum, all other settings to minimum.
,joinmsg - Fake join message. Selected person appears in it.

]]

local cmdslist = [[
,cmds
,sp
,bring
,void
,rejoin
,re
,sounds
,skinny
,joinmsg
]]

-- Instances:

local Adminlua = Instance.new("ScreenGui")
local CMDSList = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local UICorner = Instance.new("UICorner")
local UICorner_2 = Instance.new("UICorner")
local Commands = Instance.new("TextLabel")
local UICorner_3 = Instance.new("UICorner")
local Decoration = Instance.new("Frame")
local UIGradient = Instance.new("UIGradient")
local LuaImage = Instance.new("ImageLabel")
local Close = Instance.new("ImageButton")
local UICorner_4 = Instance.new("UICorner")
local CMDBar = Instance.new("Frame")
local UICorner_5 = Instance.new("UICorner")
local TextBox = Instance.new("TextBox")
local UIGradient_2 = Instance.new("UIGradient")
local Notification = Instance.new("Frame")
local UICorner_6 = Instance.new("UICorner")
local NotifText = Instance.new("TextLabel")
local Title_2 = Instance.new("TextLabel")

--Properties:

Adminlua.Name = "Admin.lua"
Adminlua.Parent = game:WaitForChild("CoreGui")
Adminlua.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Adminlua.ResetOnSpawn = false

CMDSList.Name = "CMDSList"
CMDSList.Parent = Adminlua
CMDSList.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CMDSList.Position = UDim2.new(0.00725692231, 0, 0.554870546, 0)
CMDSList.Size = UDim2.new(0, 250, 0, 340)
CMDSList.Visible = false

Title.Name = "Title"
Title.Parent = CMDSList
Title.BackgroundColor3 = Color3.fromRGB(59, 59, 59)
Title.Size = UDim2.new(0, 250, 0, 35)
Title.Font = Enum.Font.Code
Title.Text = "Admin.lua commands"
Title.TextColor3 = Color3.fromRGB(24, 137, 186)
Title.TextSize = 22.000
Title.TextWrapped = true

UICorner.CornerRadius = UDim.new(0.00999999978, 10)
UICorner.Parent = Title

UICorner_2.CornerRadius = UDim.new(0.00999999978, 10)
UICorner_2.Parent = CMDSList

Commands.Name = "Commands"
Commands.Parent = CMDSList
Commands.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Commands.BackgroundTransparency = 1.000
Commands.Position = UDim2.new(0, 0, 0.102941178, 0)
Commands.Size = UDim2.new(0, 250, 0, 305)
Commands.Font = Enum.Font.Code
Commands.Text = cmdslist
Commands.TextColor3 = Color3.fromRGB(0, 0, 0)
Commands.TextSize = 18.000
Commands.TextWrapped = true
Commands.TextYAlignment = Enum.TextYAlignment.Top
Commands.ZIndex = 2

UICorner_3.CornerRadius = UDim.new(0.00999999978, 10)
UICorner_3.Parent = Commands

Decoration.Name = "Decoration"
Decoration.Parent = CMDSList
Decoration.BackgroundColor3 = Color3.fromRGB(59, 59, 59)
Decoration.BorderSizePixel = 0
Decoration.Position = UDim2.new(0, 0, 0.052941177, 0)
Decoration.Size = UDim2.new(0, 250, 0, 17)
Decoration.ZIndex = 0

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(227, 227, 227)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(170, 170, 170))}
UIGradient.Rotation = 30
UIGradient.Parent = CMDSList

LuaImage.Name = "LuaImage"
LuaImage.Parent = CMDSList
LuaImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LuaImage.BackgroundTransparency = 1.000
LuaImage.Position = UDim2.new(0.26000002, 0, 0.373529434, 0)
LuaImage.Size = UDim2.new(0, 120, 0, 120)
LuaImage.Image = "http://www.roblox.com/asset/?id=3203186317"
LuaImage.ImageTransparency = 0.700

Close.Name = "Close"
Close.Parent = CMDSList
Close.BackgroundColor3 = Color3.fromRGB(185, 40, 40)
Close.BorderSizePixel = 0
Close.Position = UDim2.new(0.925000012, 0, 0.0149999997, 0)
Close.Size = UDim2.new(0, 15, 0, 15)
Close.ImageColor3 = Color3.fromRGB(185, 40, 40)
Close.ImageTransparency = 1.000

UICorner_4.CornerRadius = UDim.new(1, 100)
UICorner_4.Parent = Close

CMDBar.Name = "CMDBar"
CMDBar.Parent = Adminlua
CMDBar.BackgroundColor3 = Color3.fromRGB(59, 59, 59)
CMDBar.BackgroundTransparency = 1.000
CMDBar.Position = UDim2.new(0.00798258372, 0, 0.478421718, 0)
CMDBar.Size = UDim2.new(0, 200, 0, 35)

UICorner_5.CornerRadius = UDim.new(0.00999999978, 10)
UICorner_5.Parent = CMDBar

TextBox.Parent = CMDBar
TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextBox.BackgroundTransparency = 1.000
TextBox.BorderColor3 = Color3.fromRGB(27, 42, 53)
TextBox.Size = UDim2.new(0, 200, 0, 35)
TextBox.Font = Enum.Font.Code
TextBox.PlaceholderColor3 = Color3.fromRGB(178, 178, 178)
TextBox.PlaceholderText = "Run a command"
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(225, 225, 225)
TextBox.TextSize = 16.000
TextBox.TextTransparency = 1.000

UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(107, 102, 255)), ColorSequenceKeypoint.new(0.69, Color3.fromRGB(224, 215, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(243, 234, 255))}
UIGradient_2.Parent = CMDBar

Notification.Name = "Notification"
Notification.Parent = Adminlua
Notification.BackgroundColor3 = Color3.fromRGB(59, 59, 59)
Notification.Position = UDim2.new(0.819303334, 0, 0.881627619, 0)
Notification.Size = UDim2.new(0, 220, 0, 75)
Notification.Visible = false

UICorner_6.CornerRadius = UDim.new(0.00999999978, 10)
UICorner_6.Parent = Notification

NotifText.Name = "NotifText"
NotifText.Parent = Notification
NotifText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NotifText.BackgroundTransparency = 1.000
NotifText.BorderSizePixel = 0
NotifText.Position = UDim2.new(0, 0, 0.333333343, 0)
NotifText.Size = UDim2.new(0, 220, 0, 40)
NotifText.Font = Enum.Font.Code
NotifText.Text = "Notification Text"
NotifText.TextColor3 = Color3.fromRGB(213, 213, 213)
NotifText.TextSize = 16.000
NotifText.TextWrapped = true

Title_2.Name = "Title"
Title_2.Parent = Notification
Title_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title_2.BackgroundTransparency = 1.000
Title_2.BorderSizePixel = 0
Title_2.Size = UDim2.new(0, 220, 0, 25)
Title_2.Font = Enum.Font.Code
Title_2.Text = "Title"
Title_2.TextColor3 = Color3.fromRGB(20, 140, 220)
Title_2.TextSize = 16.000

-- Scripts:

local function TCHVDPA_fake_script() -- CMDSList.Drag 
	local script = Instance.new('LocalScript', CMDSList)

	local UserInputService = game:GetService("UserInputService")
	local runService = (game:GetService("RunService"));

	local gui = script.Parent

	local dragging
	local dragInput
	local dragStart
	local startPos

	function Lerp(a, b, m)
		return a + (b - a) * m
	end;

	local lastMousePos
	local lastGoalPos
	local DRAG_SPEED = (8); -- // The speed of the UI darg.
	function Update(dt)
		if not (startPos) then return end;
		if not (dragging) and (lastGoalPos) then
			gui.Position = UDim2.new(startPos.X.Scale, Lerp(gui.Position.X.Offset, lastGoalPos.X.Offset, dt * DRAG_SPEED), startPos.Y.Scale, Lerp(gui.Position.Y.Offset, lastGoalPos.Y.Offset, dt * DRAG_SPEED))
			return 
		end;

		local delta = (lastMousePos - UserInputService:GetMouseLocation())
		local xGoal = (startPos.X.Offset - delta.X);
		local yGoal = (startPos.Y.Offset - delta.Y);
		lastGoalPos = UDim2.new(startPos.X.Scale, xGoal, startPos.Y.Scale, yGoal)
		gui.Position = UDim2.new(startPos.X.Scale, Lerp(gui.Position.X.Offset, xGoal, dt * DRAG_SPEED), startPos.Y.Scale, Lerp(gui.Position.Y.Offset, yGoal, dt * DRAG_SPEED))
	end;

	gui.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = gui.Position
			lastMousePos = UserInputService:GetMouseLocation()

			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)

	gui.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)

	runService.Heartbeat:Connect(Update)
end
coroutine.wrap(TCHVDPA_fake_script)()
local function TLTUZIS_fake_script() -- CMDBar.LocalScript 
	local script = Instance.new('LocalScript', CMDBar)

	local TweenService = game:GetService("TweenService")
	local cmdbar = script.Parent
	local textbox = script.Parent.TextBox
	local tweenInfo = TweenInfo.new(
		2, -- Time
		Enum.EasingStyle.Linear, -- EasingStyle
		Enum.EasingDirection.Out, -- EasingDirection
		0, -- RepeatCount (when less than zero the tween will loop indefinitely)
		false, -- Reverses (tween will reverse once reaching it's goal)
		0 -- DelayTime
	)

	local tween = TweenService:Create(cmdbar, tweenInfo, {BackgroundTransparency = 0})
	local tween2 = TweenService:Create(textbox, tweenInfo, {TextTransparency = 0})

	tween:Play() -- Plays the tween
	tween2:Play()
end
coroutine.wrap(TLTUZIS_fake_script)()

-- Main:

function execute(func)
	pcall(function()
		func()
	end)
end

local loadedtext = [[

[ Admin.lua successfuly loaded! ]

- Enjoy your use.
- Contact User#2469 (@YooooAwesome on Roblox) if you have found any bugs.
- Press the "," on your keyboard to start typing in commandbar, all commands do start with the "," symbol.
- Usage of commands in chat is working too!

]]

local function admin_loaded()
	print(loadedtext)
end

function onKeyPress(inputObject, gameProcessedEvent)
	if not gameProcessedEvent then
		if inputObject.KeyCode == Enum.KeyCode.Comma then
			wait()
			CMDBar.TextBox:CaptureFocus()
		end
	end
end

game:GetService("UserInputService").InputBegan:connect(onKeyPress)

local function closelist()
	CMDSList.Visible = false
end

Close.MouseButton1Down:Connect(closelist)

plr.Chatted:Connect(function(msg)
	for i, v in pairs(cmdst) do
		if msg == table.concat( { cmdst[i] } ) then
			execute(funct[i])
		elseif string.match(msg, ",sp ") then
			tname = string.gsub(msg, ",sp ", "")
		end
	end
end)

CMDBar.TextBox.FocusLost:Connect(function()
	for i, v in pairs(cmdst) do
		if CMDBar.TextBox.Text == table.concat( { cmdst[i] } ) then
			execute(funct[i])
		elseif string.match(CMDBar.TextBox.Text, ",sp ") then
			tname = string.gsub(CMDBar.TextBox.Text, ",sp ", "")
		end
	end
end)

local function addcmd(cmd, func)
	table.insert(cmdst, cmd)
	table.insert(funct, func)
end

local function getcmds()
	print(cmdsinfo)
	CMDSList.Visible = true
end

addcmd(",cmds", getcmds)

local function select_person()
	print("Person selected: "..tname)
end

addcmd(",sp", select_person)

local function bring()
	local char = plr.Character
	local victim = plrs:FindFirstChild(tname)

	local h = char.Humanoid:Clone()
	char.Humanoid:Destroy()
	h.Parent = char
	
	for i, v in pairs(plr.Backpack:GetDescendants()) do
		if v:IsA("Tool") then
			v.Grip = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
			v.Parent = char
		end
	end

	wait(0.5)
	
	if tname == "all" then
		for i, aplr in pairs(plrs:getPlayers()) do
			if aplr.Character:FindFirstChild("HumanoidRootPart") and aplr.Name ~= plr.Name then
				for i, v in pairs(char:GetDescendants()) do
					if v:IsA("Tool") then
						pcall(function()
							firetouchinterest(aplr.Character:FindFirstChild("HumanoidRootPart"), v.Handle, 0)
							firetouchinterest(aplr.Character:FindFirstChild("HumanoidRootPart"), v.Handle, 1)
						end)
					end
				end
			end
		end
	else
		for i, v in pairs(char:GetDescendants()) do
			if v:IsA("Tool") then
				pcall(function()
					firetouchinterest(victim.Character:FindFirstChild("HumanoidRootPart"), v.Handle, 0)
					firetouchinterest(victim.Character:FindFirstChild("HumanoidRootPart"), v.Handle, 1)
				end)
			end
		end
	end
	
	wait(0.5)

	char:Destroy()
end

addcmd(",bring", bring)

local function void()
	local char = plr.Character
	local victim = plrs:FindFirstChild(tname)

	local h = char.Humanoid:Clone()
	char.Humanoid:Destroy()
	h.Parent = char
	
	for i, v in pairs(plr.Backpack:GetDescendants()) do
		if v:IsA("Tool") then
			v.Grip = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
			v.Parent = char
		end
	end

	wait(0.5)
	
	if tname == "all" then
		for i, aplr in pairs(plrs:getPlayers()) do
			if aplr.Character:FindFirstChild("HumanoidRootPart") and aplr.Name ~= plr.Name then
				for i, v in pairs(char:GetDescendants()) do
					if v:IsA("Tool") then
						pcall(function()
							firetouchinterest(aplr.Character:FindFirstChild("HumanoidRootPart"), v.Handle, 0)
							firetouchinterest(aplr.Character:FindFirstChild("HumanoidRootPart"), v.Handle, 1)
						end)
					end
				end
			end
		end
	else
		for i, v in pairs(char:GetDescendants()) do
			if v:IsA("Tool") then
				pcall(function()
					firetouchinterest(victim.Character:FindFirstChild("HumanoidRootPart"), v.Handle, 0)
					firetouchinterest(victim.Character:FindFirstChild("HumanoidRootPart"), v.Handle, 1)
				end)
			end
		end
	end
	
	char:FindFirstChild("HumanoidRootPart").CFrame = CFrame.new(9e9, -400, 9e9)
	
	wait(0.5)

	char:Destroy()
end

addcmd(",void", void)

local function rejoin()
	TeleportService = game:GetService("TeleportService")
	if #plrs:GetPlayers() <= 1 then
		plrs.LocalPlayer:Kick("\nRejoining...")
		wait()
		TeleportService:Teleport(game.PlaceId, plrs.LocalPlayer)
	else
		TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, plrs.LocalPlayer)
	end
end

addcmd(",rejoin", rejoin)

local function antikill()
	local char = plr.Character
	local LT = char:FindFirstChild("LowerTorso")

	if LT then
		char.RightHand:Destroy()
	else
		char["Right Arm"]:Destroy()
	end
end

addcmd(",antikill", antikill)

local function respawn()
	local char = plr.Character
	local hrp = char:FindFirstChild("HumanoidRootPart")
	local part = Instance.new("Part", game.Workspace)

	part.CFrame = hrp.CFrame
	part.Anchored = true
	part.Transparency = 1
	part.CanCollide = false
	wait(0.01)
	char:Destroy()
	wait(6)
	local char = plr.Character
	local hrp = char:FindFirstChild("HumanoidRootPart")
	hrp.CFrame = part.CFrame
	char:WaitForChild("ForceField"):Destroy()
	part:Destroy()
end

addcmd(",re", respawn)

local function workspace_sounds()
	if game:GetService("SoundService").RespectFilteringEnabled == false then
		for i, v in pairs(ws:GetDescendants()) do
			if v:IsA("Sound") then
				v:Play()
			end
		end
	else
		print("Not possible to use sounds command in this game!")
	end
end

addcmd(",sounds", workspace_sounds)

local function skinny_resize()
	local humanoid = plr.Character:FindFirstChild("Humanoid")

	local function destroysize()
		for i, v in pairs(plr.Character:GetDescendants()) do
			if v.Name == "OriginalSize" then
				v:Destroy()
			end
		end
	end

	destroysize()
	humanoid.BodyTypeScale:Destroy()

	wait(0.4)

	destroysize()
	humanoid.BodyHeightScale:Destroy()

	wait(0.4)

	destroysize()
	humanoid.BodyProportionScale:Destroy()

	wait(0.4)
	
	destroysize()
	humanoid.BodyDepthScale:Destroy()
end

addcmd(",skinny", skinny_resize)

local function joinmsg()
	local sysmsg = "Your friend "..tname.." has joined the experience!"
	local msg = "                                                                                                                                                 "..sysmsg

	rs:FindFirstChild("DefaultChatSystemChatEvents").SayMessageRequest:FireServer(msg, "All")
end

addcmd(",joinmsg", joinmsg)

admin_loaded() -- Final function
