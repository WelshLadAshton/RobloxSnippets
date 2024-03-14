local tb = plugin:CreateToolbar("Snippets")
local btn = tb:CreateButton("Snippets","Show's Basic Code Snippets","")
local pMenu = plugin:CreatePluginMenu("PluginMenuId", "Title")
btn.ClickableWhenViewportHidden = true

local script1 = plugin:CreatePluginAction("ActionId1", "Print Snippet", "Adds a Hello World Script", "", true)
local script2 = plugin:CreatePluginAction("ActionId2", "Kill Block", "Adds a Kill Block Script", "", true)
local script3 = plugin:CreatePluginAction("ActionId3", "Part Touch", "Adds a Part Touch Script", "", true)
local script4 = plugin:CreatePluginAction("ActionId4", "Insert Script 2", "Adds a Hello World Script to your current selected tab in explorer", "", true)
local script5 = plugin:CreatePluginAction("ActionId5", "Insert Script 1", "Adds a Hello World Script to your current selected tab in explorer", "", true)

pMenu:AddAction(script1)
pMenu:AddAction(script2)
pMenu:AddAction(script3)
pMenu:AddAction(script4)
pMenu:AddAction(script5)

btn.Click:Connect(function()
	pMenu:ShowAsync()
end)

local function action1func()
	local selectedSnippet = "print('Hello, World!')"

	local selectedObjects = game:GetService("Selection"):Get()
	if #selectedObjects > 0 then
		local scriptParent = selectedObjects[1]
		local newScript = Instance.new("Script")
		local scriptName = "Hello World Script"
		newScript.Source = selectedSnippet
		newScript.Parent = scriptParent
		newScript.Name = scriptName
		game:GetService("ChangeHistoryService"):SetWaypoint("Inserted Code Snippet")
	end
end

local function action2func()
	local selectedSnippet = [[
script.Parent.Touched:Connect(function(hit)
	if hit and hit.Parent:FindFirstChild("Humanoid") then
		hit.Parent.Humanoid.Health = hit.Parent.Humanoid.Health - 10
	end
end)
	]]

	local selectedObjects = game:GetService("Selection"):Get()
	if #selectedObjects > 0 then
		local scriptParent = selectedObjects[1]
		local newScript = Instance.new("Script")
		local scriptName = "Kill Block"
		newScript.Source = selectedSnippet
		newScript.Parent = scriptParent
		newScript.Name = scriptName
		game:GetService("ChangeHistoryService"):SetWaypoint("Inserted Code Snippet")
	end
end

local function action3func()
	local selectedSnippet = [[
TODO
	]]

	local selectedObjects = game:GetService("Selection"):Get()
	if #selectedObjects > 0 then
		local scriptParent = selectedObjects[1]
		local newScript = Instance.new("LocalScript")
		local scriptName = "Part Touch"
		newScript.Source = selectedSnippet
		newScript.Parent = scriptParent
		newScript.Name = scriptName
		game:GetService("ChangeHistoryService"):SetWaypoint("Inserted Code Snippet")
	end
end

local function action4func()
	local selectedSnippet = [[
TODO
	]]

	local selectedObjects = game:GetService("Selection"):Get()
	if #selectedObjects > 0 then
		local scriptParent = selectedObjects[1]
		local newScript = Instance.new("LocalScript")
		local scriptName = "Part Touch"
		newScript.Source = selectedSnippet
		newScript.Parent = scriptParent
		newScript.Name = scriptName
		game:GetService("ChangeHistoryService"):SetWaypoint("Inserted Code Snippet")
	end
end

local function action5func()
	local selectedSnippet = [[
TODO
	]]

	local selectedObjects = game:GetService("Selection"):Get()
	if #selectedObjects > 0 then
		local scriptParent = selectedObjects[1]
		local newScript = Instance.new("LocalScript")
		local scriptName = "Part Touch"
		newScript.Source = selectedSnippet
		newScript.Parent = scriptParent
		newScript.Name = scriptName
		game:GetService("ChangeHistoryService"):SetWaypoint("Inserted Code Snippet")
	end
end

script1.Triggered:Connect(function()
	local messageOnClick = "Hello World Script Inserted!" -- Will be changed to auto have a message if the script inserted or not and if it needs fixing (TODO)
	print(messageOnClick)
	action1func()
end)

script2.Triggered:Connect(function()
	local messageOnClick = "Kill Block Script Inserted!" -- Will be changed to auto have a message if the script inserted or not and if it needs fixing (TODO)
	print(messageOnClick)
	action2func()
end)

script3.Triggered:Connect(function()
	local messageOnClick = "Part Touch Script Inserted!" -- Will be changed to auto have a message if the script inserted or not and if it needs fixing (TODO)
	print(messageOnClick)
	action3func()
end)

script4.Triggered:Connect(function()
	local messageOnClick = "" -- Will be changed to auto have a message if the script inserted or not and if it needs fixing (TODO)
	print(messageOnClick)
	action4func()
end)

script5.Triggered:Connect(function()
	local messageOnClick = "" -- Will be changed to auto have a message if the script inserted or not and if it needs fixing (TODO)
	print(messageOnClick)
	action5func()
end)
