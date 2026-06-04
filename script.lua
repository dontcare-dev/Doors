



--[[

crimson ! | Doors 

your g.a.y

]]


local Rayfield=loadstring(game:HttpGet(

"https://sirius.menu/rayfield"

))()


local Players=game:GetService("Players")

local WS=workspace


getgenv().DoorESP=false

getgenv().KeyESP=false

getgenv().GoldESP=false

getgenv().ItemESP=false

getgenv().MonsterESP=false

getgenv().HideESP=false

getgenv().GateESP=false


--------------------------------


local Window=

Rayfield:CreateWindow({

Name="kitty ! | Doors ",

Theme="Bloom",

ConfigurationSaving={

Enabled=true,

FolderName="doors",

FileName="Config"

}

})


local Main=

Window:CreateTab(

"ESP",

4483362458

)


--------------------------------


local function clearTag(tag)


for _,v in pairs(

WS:GetDescendants()

) do


local x=

v:FindFirstChild(tag)


if x then

x:Destroy()

end


end


end


--------------------------------


local function addESP(

obj,

tag

)


if obj

and not obj:

FindFirstChild(tag)

then


local h=

Instance.new(

"Highlight"

)


h.Name=tag


h.DepthMode=

Enum.HighlightDepthMode

.AlwaysOnTop


h.FillTransparency=.65

h.OutlineTransparency=0


h.Parent=obj


end


end


--------------------------------

-- Door ESP

--------------------------------


Main:CreateToggle({


Name="Door ESP",

CurrentValue=false,


Callback=function(v)


getgenv().DoorESP=v


task.spawn(function()


while getgenv().DoorESP do


local rooms=

WS:FindFirstChild(

"CurrentRooms"

)


if rooms then


for _,r in pairs(

rooms:GetChildren()

) do


local d=

r:FindFirstChild(

"Door"

)


if d then

addESP(

d,

"DoorESPTag"

)

end


end


end


task.wait(1)


end


clearTag(

"DoorESPTag"

)


end)


end

})


--------------------------------

-- Key ESP

--------------------------------


Main:CreateToggle({


Name="Key ESP",

CurrentValue=false,


Callback=function(v)


getgenv().KeyESP=v


task.spawn(function()


while getgenv().KeyESP do


for _,o in pairs(

WS:GetDescendants()

) do


if o.Name==

"KeyObtain"

then


addESP(

o,

"KeyESPTag"

)


end


end


task.wait(1)


end


clearTag(

"KeyESPTag"

)


end)


end

})


--------------------------------

-- Gold ESP

--------------------------------


Main:CreateToggle({


Name="Gold/Drawer ESP",

CurrentValue=false,


Callback=function(v)


getgenv().GoldESP=v


task.spawn(function()


while getgenv().GoldESP do


for _,o in pairs(

WS:GetDescendants()

) do


if

o.Name:find(

"Gold"

)

or

o.Name:find(

"Coin"

)

or

o.Name:find(

"Drawer"

)

then


addESP(

o,

"GoldESPTag"

)


end


end


task.wait(1)


end


clearTag(

"GoldESPTag"

)


end)


end

})


--------------------------------

-- Item ESP

--------------------------------


Main:CreateToggle({


Name="Item ESP",

CurrentValue=false,


Callback=function(v)


getgenv().ItemESP=v


task.spawn(function()


while getgenv().ItemESP do


for _,o in pairs(

WS:GetDescendants()

) do


if

o.Name:find(

"Battery"

)

or

o.Name:find(

"Lighter"

)

or

o.Name:find(

"Flashlight"

)

or

o.Name:find(

"Vitamins"

)

or

o.Name:find(

"Lockpick"

)

or

o.Name:find(

"Crucifix"

)

then


addESP(

o,

"ItemESPTag"

)


end


end


task.wait(1)


end


clearTag(

"ItemESPTag"

)


end)


end

})


--------------------------------

-- Monster ESP

--------------------------------


Main:CreateToggle({


Name="Monster ESP",

CurrentValue=false,


Callback=function(v)


getgenv().MonsterESP=v


task.spawn(function()


local mobs={

"Rush",

"Ambush",

"Seek",

"Figure",

"Screech",

"Eyes"

}


while getgenv().MonsterESP do


for _,o in pairs(

WS:GetDescendants()

) do


for _,m in pairs(

mobs

) do


if o.Name==m then


addESP(

o,

"MonsterESPTag"

)


end


end


end


task.wait(.5)


end


clearTag(

"MonsterESPTag"

)


end)


end

})


--------------------------------

-- Hide ESP

--------------------------------


Main:CreateToggle({


Name="Wardrobe ESP",

CurrentValue=false,


Callback=function(v)


getgenv().HideESP=v


task.spawn(function()


while getgenv().HideESP do


for _,o in pairs(

WS:GetDescendants()

) do


if

o.Name:find(

"Wardrobe"

)

or

o.Name:find(

"Closet"

)

then


addESP(

o,

"HideESPTag"

)


end


end


task.wait(2)


end


clearTag(

"HideESPTag"

)


end)


end

})


--------------------------------

-- Gate / Lever ESP

--------------------------------


Main:CreateToggle({


Name="Gate+Lever ESP",

CurrentValue=false,


Callback=function(v)


getgenv().GateESP=v


task.spawn(function()


while getgenv().GateESP do


for _,o in pairs(

WS:GetDescendants()

) do


if

o.Name:find(

"Lever"

)

or

o.Name:find(

"Gate"

)

then


addESP(

o,

"GateESPTag"

)


end


end


task.wait(1)


end


clearTag(

"GateESPTag"

)


end)


end

})


--------------------------------


Main:CreateButton({


Name="Clear All ESP",


Callback=function()


clearTag(

"DoorESPTag"

)


clearTag(

"KeyESPTag"

)


clearTag(

"GoldESPTag"

)


clearTag(

"ItemESPTag"

)


clearTag(

"MonsterESPTag"

)


clearTag(

"HideESPTag"

)


clearTag(

"GateESPTag"

)


end

})


--------------------------------


Rayfield:Notify({

Title="kitty !",

Content=" loaded",

Duration=5

})
