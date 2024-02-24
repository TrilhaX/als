warn('[TEMPEST HUB] Loading Ui')
wait(1)
local repo = 'https://raw.githubusercontent.com/TrapstarKSSKSKSKKS/LinoriaLib/main/'

local Library = loadstring(game:HttpGet(repo .. 'Library.lua'))()
local ThemeManager = loadstring(game:HttpGet(repo .. 'addons/ThemeManager.lua'))()
local SaveManager = loadstring(game:HttpGet(repo .. 'addons/SaveManager.lua'))()

local Window = Library:CreateWindow({

    Title = 'Tempest Hub | Anime Last Stand',
    Center = true,
    AutoShow = true,
    TabPadding = 8,
    MenuFadeTime = 0.2
})

Library:Notify('Loading Anime Last Stand Script', 5)

function autouseuniversalskill()
    while getgenv().autouseuniversalskill == true do
        local args = {
            [1] = workspace:WaitForChild("Towers"):WaitForChild("Saber")
        }
    
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Ability"):InvokeServer(unpack(args))
        local args = {
            [1] = workspace:WaitForChild("Towers"):WaitForChild("Gojo")
        }
    
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Ability"):InvokeServer(unpack(args))
        local args = {
            [1] = workspace:WaitForChild("Towers"):WaitForChild("Sukuna")
        }
    
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Ability"):InvokeServer(unpack(args))
        wait(waittimeskill)
    end
end    

function autoplace()
    while getgenv().autoplace == true do
        local mapa = game.workspace:FindFirstChild("Map") and game.workspace.Map.MapName.Value
        local Slot1 = game:GetService("Players").LocalPlayer.Slots
        local Slot2 = game:GetService("Players").LocalPlayer.Slots
        local Slot3 = game:GetService("Players").LocalPlayer.Slots
        local Slot4 = game:GetService("Players").LocalPlayer.Slots
        local Slot5 = game:GetService("Players").LocalPlayer.Slots
        local Slot6 = game:GetService("Players").LocalPlayer.Slots

        local slots = {Slot1, Slot2, Slot3, Slot4, Slot5, Slot6}

        local encounteredNames = {}
        for _, slot in ipairs(slots) do
            local children = slot:GetChildren()
            for i, child in ipairs(children) do
                if child:IsA("StringValue") then
                    local childValue = child.Value                
                    if not encounteredNames[childValue] then
                        encounteredNames[childValue] = true

                        if mapa == "Desert Village" then
                            local args = {
                                [1] = childValue,
                                [2] = CFrame.new(-172.8060302734375, 197.939453125, 10.849010467529297, 1, 0, 0, 0, 1, 0, 0, 0, 1)
                            }

                            game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("PlaceTower"):FireServer(unpack(args))
                        elseif mapa == "Water Park" then
                            local args = {
                                [1] = childValue,
                                [2] = CFrame.new(-71.89915466308594, 54.66706085205078, 86.14859771728516, 1, 0, 0, 0, 1, 0, 0, 0, 1)
                            }
                            
                            game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("PlaceTower"):FireServer(unpack(args))
                        elseif mapa == "Hollow Dimension" then
                            local args = {
                                [1] = childValue,
                                [2] = CFrame.new(-116.18109130859375, 113.50843811035156, 41.8100471496582, 1, 0, 0, 0, 1, 0, 0, 0, 1)
                            }
                            
                            game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("PlaceTower"):FireServer(unpack(args))
                        elseif mapa == "Planet Nemak" then
                            local args = {
                                [1] = childValue,
                                [2] = CFrame.new(-156.76947021484375, 25.24283790588379, 61.0734977722168, 1, 0, 0, 0, 1, 0, 0, 0, 1)
                            }
                            
                            game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("PlaceTower"):FireServer(unpack(args))
                        end
                    end
                end
            end
        end
        wait(waitTime)
    end
end

function autoupgrade()
    local upgradedUnits = {}  -- Tabela para armazenar os nomes das unidades já atualizadas

    while getgenv().autoupgrade == true do
        local towersFolder = workspace.Towers
        local towers = towersFolder:GetChildren()

        local foundUnit = false  -- Flag para verificar se uma unidade foi encontrada

        if #towers > 0 then
            foundUnit = true  -- Atualiza a flag para indicar que uma unidade foi encontrada
            for _, tower in ipairs(towers) do
                local unitName = tower.Name
                if not upgradedUnits[unitName] then
                    local args = {
                        [1] = tower
                    }
                    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Upgrade"):InvokeServer(unpack(args))
                    upgradedUnits[unitName] = true  -- Adiciona o nome da unidade à lista negra
                end
            end
        end

        if not foundUnit then
            wait(5) -- Espera 5 segundos se nenhuma unidade foi encontrada
        end
        
        wait(waitTime) -- Você deve adicionar uma pausa para evitar sobrecarregar o servidor
    end
end


local Tabs = {
    Main = Window:AddTab('Main'),
}

local LeftGroupBox = Tabs.Main:AddLeftGroupbox('Player')

local MyButton = LeftGroupBox:AddButton({
    Text = 'Go To Lobby',
    Func = function()
        game:GetService("TeleportService"):Teleport(12886143095, LocalPlayer)
    end,
    DoubleClick = false,
    Tooltip = ''
})

local MyButton = LeftGroupBox:AddButton({
    Text = 'Reedem Codes',
    Func = function()
        local codes = {
            "Sub2Noclypso176k",
            "ALSUpdateIsCooking",
            "HanminloveSecretCodeMustBeSubbedToWork",
            "SkillTreeRestALPHAReportAnyBugs",
            "BlamSpoyYTSecretUnitCodeMustBeSubbedToWork",
            "BlamSecretValentinesCode",
            "ULTIMATEGOJO",
            "UPDATE1HYPE!",
            "TyFor25mVisitsOMG!",
            "200kMembersINSANE!",
            "50ThousandsFavorites!!!",
            "Update1TrailerHYPE",
            "Fixes",
            "BlamsSecret1MillionUniquePlayerCode",
            "Shutdown",
            "ToadBoi120k",
            "BlamTopSecretCodeWontWorkIfNotSubbed",
            "Sub2KingLuffy",
            "D1SGUISED",
            "GoalReached",
            "NeelsTV",
            "TyFor1mVisitsPart2",
            "TyFor10kFavREAL",
            "TyFor1mVisitsPart1",
            "YammoRework",
            "Sub2Blamspot524k",
            "Sub2BmGTormenter117onYT",
            "Sub2CodeNex77k",
            "SorryForDelay",
            "RELEASE",
            "FinalDelay"
        }
        
        for _, code in ipairs(codes) do
            game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("ClaimCode"):InvokeServer(code)
            wait(1) -- Aguarda 1 segundo antes de invocar o próximo código
        end               
    end,
    DoubleClick = false,
    Tooltip = ''
})

local LeftGroupBox = Tabs.Main:AddLeftGroupbox('InGame') -- Renomeado para algo mais descritivo

LeftGroupBox:AddToggle('Auto Upgrade Unit', {
    Text = 'Auto Upgrade Unit',
    Default = false,
    Tooltip = '',
    Callback = function(Value)
        getgenv().autoupgrade = Value
        autoupgrade()
    end
})

LeftGroupBox:AddToggle('Auto Place Unit', {
    Text = 'Auto Place Unit',
    Default = false,
    Tooltip = '',
    Callback = function(Value)
        getgenv().autoplace = Value
        autoplace()
    end
})

LeftGroupBox:AddSlider('waittime', {
    Text = 'spam time of auto place/upgrade',
    Default = 1,
    Min = 1,
    Max = 10,
    Rounding = 1,
    Compact = false,

    Callback = function(Value)
        waitTime = Value
    end
})

LeftGroupBox:AddDivider()

LeftGroupBox:AddToggle('Auto Universal Skill', {
    Text = 'Auto Universal Skill',
    Default = false,
    Tooltip = '',
    Callback = function(Value)
        getgenv().autouseuniversalskill = Value
        autouseuniversalskill()
    end
})

LeftGroupBox:AddSlider('waittimeskill', {
    Text = 'spam time of auto skill',
    Default = 1,
    Min = 1,
    Max = 10,
    Rounding = 1,
    Compact = false,

    Callback = function(Value)
        waittimeskill = Value
    end
})

local RightGroupBox = Tabs.Main:AddRightGroupbox('Summon')


local function summonUnit(quantity, selectedBanner)
    local args = {
        [1] = quantity,
        [2] = selectedBanner
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Summon"):InvokeServer(unpack(args))
end

local celestial = game:GetService("ReplicatedStorage"):FindFirstChild("Banner") and game:GetService("ReplicatedStorage").Banner["2"].Celestial.Value
local ultimate = game:GetService("ReplicatedStorage"):FindFirstChild("Banner") and game:GetService("ReplicatedStorage").Banner["2"].Ultimate.Value
local mythic1B2 = game:GetService("ReplicatedStorage"):FindFirstChild("Banner") and (game:GetService("ReplicatedStorage").Banner["2"].Mythic1.Value)
local mythic2B2 = game:GetService("ReplicatedStorage"):FindFirstChild("Banner") and (game:GetService("ReplicatedStorage").Banner["2"].Mythic2.Value)
local mythicB1 = game:GetService("ReplicatedStorage"):FindFirstChild("Banner") and game:GetService("ReplicatedStorage").Banner["1"].Mythic.Value
local legendary = game:GetService("ReplicatedStorage"):FindFirstChild("Banner") and game:GetService("ReplicatedStorage").Banner["1"].Legendary.Value
local epic1 = game:GetService("ReplicatedStorage"):FindFirstChild("Banner") and game:GetService("ReplicatedStorage").Banner["1"].Epic1.Value
local epic2 = game:GetService("ReplicatedStorage"):FindFirstChild("Banner") and game:GetService("ReplicatedStorage").Banner["1"].Epic2.Value
local rare1 = game:GetService("ReplicatedStorage"):FindFirstChild("Banner") and game:GetService("ReplicatedStorage").Banner["1"].Rare1.Value
local rare2 = game:GetService("ReplicatedStorage"):FindFirstChild("Banner") and game:GetService("ReplicatedStorage").Banner["1"].Rare2.Value

-- Lógica para obter as unidades disponíveis
local unit = game:GetService("ReplicatedStorage").Units
local children = unit:GetChildren()

local ValuesSummonUnit = {}

for i, child in ipairs(children) do
    local blacklist = {
        ["PackageLink"] = true,
    }
    if not blacklist[child.Name] then
        table.insert(ValuesSummonUnit, child.Name)
    end
end

local selectedUnit = nil
local selectedQuantity = nil
local selectedBanner = nil  -- Adicionado para armazenar o banner selecionado

RightGroupBox:AddDropdown('SummonUnit', {
    Values = ValuesSummonUnit,
    Default = "None", -- Defina um valor padrão apropriado
    Multi = false,
    Text = 'Choose Unit To Summon',
    Tooltip = '',

    Callback = function(value)
        selectedUnit = value
    end
})

RightGroupBox:AddDropdown('Bsummon', {
    Values = { "1", "2" }, -- Corrigindo o nome do atributo para 'Values'
    Default = "None", -- Defina um valor padrão apropriado
    Multi = false,
    Text = 'Choose Banner To Summon',
    Tooltip = '',

    Callback = function(value)
        selectedBanner = value -- Armazenando o valor selecionado em uma variável
    end
})


RightGroupBox:AddDropdown('Qsummon', {
    Values = { "1", "10" }, -- Corrigindo o nome do atributo para 'Values'
    Default = "None", -- Defina um valor padrão apropriado
    Multi = false,
    Text = 'Choose Quantity To Summon',
    Tooltip = '',

    Callback = function(value)
        selectedQuantity = value -- Armazenando o valor selecionado em uma variável
    end
})

RightGroupBox:AddToggle('Auto Summon', {
    Text = 'Auto Summon',
    Default = false,
    Tooltip = '',
    Callback = function(enabled)
        if enabled then
            if selectedUnit == celestial or selectedUnit == ultimate or selectedUnit == mythic1B2 or selectedUnit == mythic2B2  or selectedUnit == mythicB1 or selectedUnit == legendary or selectedUnit == epic1 or selectedUnit == epic2 or selectedUnit == rare1 or selectedUnit == rare2 then
                summonUnit(selectedQuantity, selectedBanner)  -- Ajuste da chamada da função
                wait(10)
            end
        end
    end
})

RightGroupBox:AddDivider()

local function rolltech(unitName, quantity)
    local args = {
        [1] = unitValue
    }

    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Quirks"):WaitForChild("Finish"):FireServer(unpack(args))
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Quirks"):WaitForChild("Roll"):InvokeServer()
    wait(10)
end

local ValuesTechnique = {}
local ValuesUnitId = {}
local selectedUnitRoll = nil
local selectedtech = nil

local techniques = game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("QuirksUI") and game:GetService("Players").LocalPlayer.PlayerGui.QuirksUI.Index.ScrollingFrame

if techniques then
    local children = techniques:GetChildren()

    for i, child in ipairs(children) do
        local blacklist = {
            ["UIListLayout"] = true,
        }
        if not blacklist[child.Name] then
            table.insert(ValuesTechnique ,child.Name) -- Imprime o nome do filho que não está na lista negra
        end
    end
end

local scroll = game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("Inventory") and game:GetService("Players").LocalPlayer.PlayerGui.Inventory.BG.Scroll

if scroll then
local children = scroll:GetChildren()

for i, child in ipairs(children) do
    local blacklist1 = {
        ["UIGridLayout"] = true,
    }
    if not blacklist1[child.Name] then
        local children2 = child:GetChildren()
        for j, child2 in ipairs(children2) do
            local blacklist2 = {
                ["Equipped"] = true,
                ["Locked"] = true,
                ["UIAspectRatioConstraint"] = true,
                ["BG"] = true,
                ["Selection"] = true,
            }
            if not blacklist2[child2.Name] then
                table.insert(ValuesUnitId, child2.Value.. " | " .. child2.Parent.Name ) -- Corrigido para concatenar corretamente os valores
                end
            end
        end
    end
end


RightGroupBox:AddDropdown('TechRollUnit', {
    Values = ValuesUnitId, -- Verifique se 'values' está definido corretamente
    Default = "None", -- Defina um valor padrão apropriado
    Multi = false,
    Text = 'Choose Unit',
    Tooltip = '',

    Callback = function(value)
        selectedUnitRoll = value
    end
})

RightGroupBox:AddDropdown('Select Technique', {
    Values = ValuesTechnique, -- Corrigindo o nome do atributo para 'Values'
    Default = "None", -- Defina um valor padrão apropriado
    Multi = false,
    Text = 'Choose Technique To Roll',
    Tooltip = '',

    Callback = function(value)
        selectedtech = value -- Armazenando o valor selecionado em uma variável
    end
})

RightGroupBox:AddToggle('Auto Roll Techniques', {
    Text = 'Auto Roll Techniques',
    Default = false,
    Tooltip = '',
    Callback = function(enabled)
        if enabled then
            rolltech(selectedUnitRoll, selectedtech)
        end
    end
})





local FrameTimer = tick()
local FrameCounter = 0;
local FPS = 60;

local WatermarkConnection = game:GetService('RunService').RenderStepped:Connect(function()
    FrameCounter += 1;

    if (tick() - FrameTimer) >= 1 then
        FPS = FrameCounter;
        FrameTimer = tick();
        FrameCounter = 0;
    end;

    Library:SetWatermark(('Tempest Hub | %s fps | %s ms'):format(
        math.floor(FPS),
        math.floor(game:GetService('Stats').Network.ServerStatsItem['Data Ping']:GetValue())
    ));
end);


local Tabs = {
['UI Settings'] = Window:AddTab('UI Settings'),
}

Library:OnUnload(function()
    WatermarkConnection:Disconnect()

    print('Unloaded!')
    Library.Unloaded = true
end)

local MenuGroup = Tabs['UI Settings']:AddLeftGroupbox('Menu')

MenuGroup:AddButton('Unload', function() Library:Unload() end)
MenuGroup:AddLabel('Menu bind'):AddKeyPicker('MenuKeybind', { Default = 'End', NoUI = true, Text = 'Menu keybind' })


Library.ToggleKeybind = Options.MenuKeybind

ThemeManager:SetLibrary(Library)
SaveManager:SetLibrary(Library)

ThemeManager:SetFolder('Tempest Hub')
SaveManager:SetFolder('Tempest Hub/Anime Adventures')

SaveManager:BuildConfigSection(Tabs['UI Settings'])

ThemeManager:ApplyToTab(Tabs['UI Settings'])

SaveManager:LoadAutoloadConfig()

warn('[TEMPEST HUB] Loading UI Settings')
wait(1)


for i,v in pairs(getconnections(game.Players.LocalPlayer.Idled)) do
    v:Disable()
end
warn('[TEMPEST HUB] Loading Anti Afk')
wait(1)
warn('[TEMPEST HUB] Loaded')
