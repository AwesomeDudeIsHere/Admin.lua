--<< Admin.lua >>--
--<< Version 1.7 >>--

local plrs = game:GetService("Players")
local plr = plrs.LocalPlayer
local ws = game:GetService("Workspace")
local runs = game:GetService("RunService")
local rs = game:GetService("ReplicatedStorage")

local NUL = "\0"
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
,copychar - Copies the character of selected person.
,errorchat - Makes an error appear in the chat.
,headpos - Makes your head's position broken - R15, RTHRO heads only, character scaling properties on maximum.
,goto - Teleports you to selected player's position.
,chathax - Makes fake chat.

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
,copychar
,errorchat
,headpos
,goto
,chathax
]]

-- Instances:

-- Main

local Adminlua = Instance.new("ScreenGui")
local CMDSList = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local UICorner = Instance.new("UICorner")
local UICorner_2 = Instance.new("UICorner")
local Decoration = Instance.new("Frame")
local UIGradient = Instance.new("UIGradient")
local LuaImage = Instance.new("ImageLabel")
local Close = Instance.new("ImageButton")
local UICorner_3 = Instance.new("UICorner")
local ScrollingFrame = Instance.new("ScrollingFrame")
local Commands = Instance.new("TextLabel")
local UICorner_4 = Instance.new("UICorner")
local CMDBar = Instance.new("Frame")
local UICorner_5 = Instance.new("UICorner")
local TextBox = Instance.new("TextBox")
local UIGradient_2 = Instance.new("UIGradient")
local Notification = Instance.new("Frame")
local UICorner_6 = Instance.new("UICorner")
local NotifText = Instance.new("TextLabel")
local Title_2 = Instance.new("TextLabel")

-- ChatHax

local CChatHax = Instance.new("Frame")
local CTitle = Instance.new("TextLabel")
local CUICorner = Instance.new("UICorner")
local CUICorner_2 = Instance.new("UICorner")
local CDecoration = Instance.new("Frame")
local CUIGradient = Instance.new("UIGradient")
local CClose = Instance.new("ImageButton")
local CUICorner_3 = Instance.new("UICorner")
local CSendMessage = Instance.new("TextButton")
local CUICorner_4 = Instance.new("UICorner")
local CNameBox = Instance.new("TextBox")
local CUICorner_5 = Instance.new("UICorner")
local CMessageBox = Instance.new("TextBox")
local CUICorner_6 = Instance.new("UICorner")

--Properties:

-- Main

Adminlua.Name = "Admin.lua"
Adminlua.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
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

UICorner_3.CornerRadius = UDim.new(1, 100)
UICorner_3.Parent = Close

ScrollingFrame.Parent = CMDSList
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScrollingFrame.BackgroundTransparency = 1.000
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.Position = UDim2.new(0, 0, 0.100000001, 0)
ScrollingFrame.Size = UDim2.new(0, 250, 0, 305)
ScrollingFrame.CanvasSize = UDim2.new(0, 0, 1.5, 0)
ScrollingFrame.ScrollBarThickness = 5
ScrollingFrame.ScrollBarImageColor3 = Color3.fromRGB(59, 59, 59)

Commands.Name = "Commands"
Commands.Parent = ScrollingFrame
Commands.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Commands.BackgroundTransparency = 1.000
Commands.Size = UDim2.new(0, 250, 0, 505)
Commands.ZIndex = 2
Commands.Font = Enum.Font.Code
Commands.Text = cmdslist
Commands.TextColor3 = Color3.fromRGB(0, 0, 0)
Commands.TextSize = 18.000
Commands.TextWrapped = true
Commands.TextYAlignment = Enum.TextYAlignment.Top

UICorner_4.CornerRadius = UDim.new(0.00999999978, 10)
UICorner_4.Parent = Commands

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
TextBox.ClearTextOnFocus = false
TextBox.Font = Enum.Font.Code
TextBox.PlaceholderColor3 = Color3.fromRGB(178, 178, 178)
TextBox.PlaceholderText = "Run a command"
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(225, 225, 225)
TextBox.TextSize = 16.000
TextBox.TextTransparency = 1.000
TextBox.ClearTextOnFocus = true

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

-- ChatHax

CChatHax.Name = "ChatHax"
CChatHax.Parent = Adminlua
CChatHax.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CChatHax.Position = UDim2.new(0.233211145, 0, 0.690505564, 0)
CChatHax.Size = UDim2.new(0, 390, 0, 230)
CChatHax.Visible = false

CTitle.Name = "Title"
CTitle.Parent = CChatHax
CTitle.BackgroundColor3 = Color3.fromRGB(59, 59, 59)
CTitle.Size = UDim2.new(0, 390, 0, 23)
CTitle.Font = Enum.Font.Code
CTitle.Text = "ChatHax.lua"
CTitle.TextColor3 = Color3.fromRGB(24, 137, 186)
CTitle.TextSize = 22.000
CTitle.TextWrapped = true

CUICorner.CornerRadius = UDim.new(0.00999999978, 10)
CUICorner.Parent = CTitle

CUICorner_2.CornerRadius = UDim.new(0.00999999978, 10)
CUICorner_2.Parent = CChatHax

CDecoration.Name = "Decoration"
CDecoration.Parent = CChatHax
CDecoration.BackgroundColor3 = Color3.fromRGB(59, 59, 59)
CDecoration.BorderSizePixel = 0
CDecoration.Position = UDim2.new(0, 0, 0.0549727716, 0)
CDecoration.Size = UDim2.new(0, 390, 0, 11)
CDecoration.ZIndex = 0

CUIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(227, 227, 227)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(170, 170, 170))}
CUIGradient.Rotation = 30
CUIGradient.Parent = CChatHax

CClose.Name = "Close"
CClose.Parent = CChatHax
CClose.BackgroundColor3 = Color3.fromRGB(185, 40, 40)
CClose.BorderSizePixel = 0
CClose.Position = UDim2.new(0.949999988, 0, 0.0199999996, 0)
CClose.Size = UDim2.new(0, 15, 0, 15)
CClose.ImageColor3 = Color3.fromRGB(185, 40, 40)
CClose.ImageTransparency = 1.000

CUICorner_3.CornerRadius = UDim.new(1, 100)
CUICorner_3.Parent = CClose

CSendMessage.Name = "SendMessage"
CSendMessage.Parent = CChatHax
CSendMessage.BackgroundColor3 = Color3.fromRGB(59, 59, 59)
CSendMessage.Position = UDim2.new(0.243589744, 0, 0.734782636, 0)
CSendMessage.Size = UDim2.new(0, 200, 0, 45)
CSendMessage.Font = Enum.Font.Code
CSendMessage.Text = "Send message"
CSendMessage.TextColor3 = Color3.fromRGB(177, 177, 177)
CSendMessage.TextSize = 18.000

CUICorner_4.CornerRadius = UDim.new(0.00999999978, 10)
CUICorner_4.Parent = CSendMessage

CNameBox.Name = "NameBox"
CNameBox.Parent = CChatHax
CNameBox.BackgroundColor3 = Color3.fromRGB(91, 91, 91)
CNameBox.Position = UDim2.new(0.0650000125, 0, 0.365000039, 0)
CNameBox.Size = UDim2.new(0, 155, 0, 40)
CNameBox.Font = Enum.Font.Code
CNameBox.PlaceholderText = "Name"
CNameBox.Text = ""
CNameBox.TextColor3 = Color3.fromRGB(214, 214, 214)
CNameBox.TextSize = 18.000
CNameBox.TextWrapped = true

CUICorner_5.CornerRadius = UDim.new(0.00999999978, 10)
CUICorner_5.Parent = CNameBox

CMessageBox.Name = "MessageBox"
CMessageBox.Parent = CChatHax
CMessageBox.BackgroundColor3 = Color3.fromRGB(91, 91, 91)
CMessageBox.Position = UDim2.new(0.536000013, 0, 0.36500001, 0)
CMessageBox.Size = UDim2.new(0, 155, 0, 40)
CMessageBox.Font = Enum.Font.Code
CMessageBox.PlaceholderText = "Message"
CMessageBox.Text = ""
CMessageBox.TextColor3 = Color3.fromRGB(214, 214, 214)
CMessageBox.TextSize = 18.000
CMessageBox.TextWrapped = true

CUICorner_6.CornerRadius = UDim.new(0.00999999978, 10)
CUICorner_6.Parent = CMessageBox

-- Scripts:

local function chathax_send()
	local name = CNameBox.Text
	local fakemsg = ""
	local text = CMessageBox.Text

	local msg = fakemsg.."                                                                                                                                                 ["..name.."]: "..text..""

	rs.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(msg, "All")
end

CSendMessage.MouseButton1Down:Connect(chathax_send)

local function RHUIWZ_fake_script() -- CMDSList.Drag 
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
coroutine.wrap(RHUIWZ_fake_script)()
local function NGGBZDO_fake_script() -- CMDBar.LocalScript 
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
coroutine.wrap(NGGBZDO_fake_script)()

local function PWNGG_fake_script() -- ChatHax.Drag 
	local script = Instance.new('LocalScript', CChatHax)

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
coroutine.wrap(PWNGG_fake_script)()

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
- Use ",cmds" to view all the commands.

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

local function closechathax()
	CChatHax.Visible = false
end

CClose.MouseButton1Down:Connect(closechathax)

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
							firetouchinterest(aplr.Character:FindFirstChild("Head"), v.Handle, 0)
							firetouchinterest(aplr.Character:FindFirstChild("HumanoidRootPart"), v.Handle, 0)
						end)
					end
				end
			end
		end
	else
		for i, v in pairs(char:GetDescendants()) do
			if v:IsA("Tool") then
				pcall(function()
					firetouchinterest(victim.Character:FindFirstChild("Head"), v.Handle, 0)
					firetouchinterest(victim.Character:FindFirstChild("HumanoidRootPart"), v.Handle, 0)
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
							firetouchinterest(aplr.Character:FindFirstChild("Head"), v.Handle, 0)
							firetouchinterest(aplr.Character:FindFirstChild("HumanoidRootPart"), v.Handle, 0)
						end)
					end
				end
			end
		end
	else
		for i, v in pairs(char:GetDescendants()) do
			if v:IsA("Tool") then
				pcall(function()
					firetouchinterest(victim.Character:FindFirstChild("Head"), v.Handle, 0)
					firetouchinterest(victim.Character:FindFirstChild("HumanoidRootPart"), v.Handle, 0)
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
	local msg = "                                                                                                                                                                    "..sysmsg
	rs:FindFirstChild("DefaultChatSystemChatEvents").SayMessageRequest:FireServer(msg, "All")
end

addcmd(",joinmsg", joinmsg)

local function copychar()
	-- Copy character script.

	local victim = tname
	local aplr = plrs[victim]
	local model = Instance.new("Model", workspace)
	model.Name = aplr.Name.."_Clone"

	-- Gets all of the Instances from your character and copies them to a model.

	for i, v in pairs(aplr.Character:GetChildren()) do
		clone = v:Clone()
		clone.Parent = model
		if clone:IsA("Tool") then
			clone:Destroy()
		end
	end

	-- Welds things together.

	for i, v in pairs(model:GetDescendants()) do
		if v:IsA("Motor6D") then
			local motor = v
		
			local p0_str = tostring(motor.Part0)
			local p1_str = tostring(motor.Part1)
			
			motor.Part0 = motor.Parent
			motor.Part1 = model[p1_str]
		elseif v:IsA("Weld") then
			local weld = v
		
			local p0_str = tostring(weld.Part0)
			local p1_str = tostring(weld.Part1)
			
			weld.Part0 = weld.Parent
			weld.Part1 = model[p1_str]
		end
	end

	print(aplr.Name.."'s character copy created!")
end

addcmd(",copychar", copychar)

local function errorchat()
	local args = {
		[1] = "[ Admin.lua Chat Breaker ]"..NUL, -- Makes the chat to do an error.
		[2] = "All"
	}

	for x = 1, 6 do
		rs.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
	end
end

addcmd(",errorchat", errorchat)

local function head_deattach()
	local function reposition()
		for i, v in pairs(plr.Character:GetDescendants()) do
			if v:IsA("Vector3Value") and not v.Parent:IsA("BasePart") then
				v:Destroy()
			end
		end

		plr.Character.Humanoid:FindFirstChildOfClass("NumberValue"):Destroy()
	end
	
	for x = 1, 6 do
		reposition()
		wait(0.5)
	end
end

addcmd(",headpos", head_deattach)

local function goto()
	local victim = plrs:FindFirstChild(tname)
	local root = plr.Character:FindFirstChild("HumanoidRootPart") or plr.Character:FindFirstChild("Torso")
	local vroot = victim.Character:FindFirstChild("HumanoidRootPart") or victim.Character:FindFirstChild("Torso")
	
	root.CFrame = vroot.CFrame - Vector3.new(x, y, -3)
end

addcmd(",goto", goto)

local function chathax()
	CChatHax.Visible = true
end

addcmd(",chathax", chathax)

admin_loaded() -- Final function
