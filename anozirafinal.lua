--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~--
-- Hey! My name is Yee and I am the creator of Anozira.    --
-- Before you get to looking at the code, please take a    --
-- few things into consideration. They will be listed      --
-- below. Thanks, and have a GREAT day!            -Yee    --
-- PS: Special thanks to co-developers!                    --
--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~--
-- 1. I didn't write everything myself. It took time, but everything is custom enough that I can confidintly say
-- that I a. only used open source code and b. have edited it enough that I don't feel that it is really copying.

-- 2. I took a long time to write this code and people saying that it's nice goes a LONG way. Trust me.

-- From here on is the client, thanks for having a listen. 
--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~--

-- Commands --
-- Desc: In order to run hacks, the menu has to tie each one to a command. This is where they're put. --

local cmdStr = "Anozira"
CreateClientConVar(cmdStr.."_namechanger", 0, true, false)
CreateClientConVar(cmdStr.."_watermark", 0, true, false)
CreateClientConVar(cmdStr.."_rainbowphys", 0, true, false)
CreateClientConVar(cmdStr.."_bhop", 0, true, false)
CreateClientConVar(cmdStr.."_propchams", 0, true, false)
CreateClientConVar(cmdStr.."_entitychams", 0, true, true)
CreateClientConVar(cmdStr.."_flashlightspam", 0, true, false)
CreateClientConVar(cmdStr.."_chams", 0, true, false)
CreateClientConVar(cmdStr.."_crosshairv1", 0, true, false)
CreateClientConVar(cmdStr.."_crosshairv2", 0, true, false)
CreateClientConVar(cmdStr.."_crosshairv3", 0, true, false)
CreateClientConVar(cmdStr.."_playerinfo", 0, true, false)
CreateClientConVar(cmdStr.."_aimbot", 0, true, false)
CreateClientConVar(cmdStr.."_aimassist", 0, true, false)
CreateClientConVar(cmdStr.."_glowesp", 0, true, false)
CreateClientConVar(cmdStr.."_3dboxesp", 0, true, false)
CreateClientConVar(cmdStr.."_2dboxesp", 0, true, false)
CreateClientConVar( cmdStr.."_entityesp", 0, true, false)
CreateClientConVar( cmdStr.."_lazereyes", 0, true, false)
CreateClientConVar( cmdStr.."_thirdperson", 0, true, false)
CreateClientConVar( cmdStr.."_lazersight", 0, true, false)
CreateClientConVar( cmdStr.."_chatspammer", 0, true, false)

-- Colors --
-- Desc: Just writing colors so instead of numbers I can just use terms like red or blue later on. --

red = Color(255,0,0,255);
black = Color(0,0,0,255);
green = Color(0,255,0,255);
white = Color(255,255,255,255);
blue = Color(0,0,255,255);
cyan = Color(0,255,255,255);
pink = Color(255,0,255,255);
blue = Color(0,0,255,255);
grey = Color(100,100,100,255);
gold = Color(255,228,0,255);
lightblue = Color(155,205,248);
lightgreen = Color(174,255,0);
iceblue = Color(116,187,251,255);
orange = Color(255,165,0,255);

-- Sayings/Spam words --
-- Desc: Customizable list of things for the client to spam in chat. --

anoziraspammessages = {}
anoziraspammessages[1] = "AnoziraScripts FTW"
anoziraspammessages[2] = "Gee, Yee sure does rock at coding m9!"
anoziraspammessages[3] = "KAPPA MEMES KEEPO KAPPA MEMES KEEPO"
anoziraspammessages[4] = "Insert Shit meme 2016"
anoziraspammessages[5] = "Dude, if Hitler did nothing wrong..."
anoziraspammessages[6] = "THIS SERVER IS GETTING FUCKING NULLED M9!"
anoziraspammessages[7] = "Yee and Mikopy probably could code a dildo.... probably."
anoziraspammessages[8] = "HYPE KAPPA MEMES"
anoziraspammessages[9] = "How can you see into my eyes, like open doors!"
anoziraspammessages[10] = "Mega.co.nz is famous for it's shitposting on 4chan."
anoziraspammessages[11] = "How much memes could a cock suck if 9/11?"
anoziraspammessages[12] = "assrape"
anoziraspammessages[13] = "REEEEEEEEEEEEEEEEEE GET OFF MY BOARD NORMIES!"
anoziraspammessages[14] = "Sweedish fish are like apples, they taste good as candy, not the actual thing."
anoziraspammessages[15] = "u fookin wot m8?"
anoziraspammessages[16] = "I'll quote your head with a rock!"
anoziraspammessages[17] = "swear on mi mum!"
anoziraspammessages[18] = "dickrape is neat"
anoziraspammessages[19] = "Shitty memes from a shitty dream."
anoziraspammessages[20] = "ElasticPlasticSpasticFantastic."

-- Startup Config --
-- Desc: Anything that happens when the client starts will appear here. Sounds, text, etc. --
	
local function SafeCheck(v)
    if v ~=LocalPlayer() and v:Alive() and v:IsValid() and v:GetActiveWeapon():IsValid() and v:Health() >= 1 then
        return true
    else
        return false
    end
end

chat.AddText( cyan, "[Anozira] ", pink, "Initialized!")
chat.AddText( cyan, "[Anozira] ", pink, "v2 Made by: Yee")
chat.AddText( cyan, "[Anozira] ", pink, "To open the menu, type +AnoziraMenu in console!")
chat.AddText( cyan, "[Anozira] ", pink, "Aimbot: B (Be sure to enable it in hack menu first!)")

LocalPlayer():EmitSound("UI/buttonclick.wav", 500, 100)

MsgC( orange,[[
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
]])
						 
MsgC( cyan,[[
 ________  ________   ________  ________  ___  ________  ________     
|\   __  \|\   ___  \|\   __  \|\_____  \|\  \|\   __  \|\   __  \    
\ \  \|\  \ \  \\ \  \ \  \|\  \\|___/  /\ \  \ \  \|\  \ \  \|\  \   
 \ \   __  \ \  \\ \  \ \  \\\  \   /  / /\ \  \ \   _  _\ \   __  \  
  \ \  \ \  \ \  \\ \  \ \  \\\  \ /  /_/__\ \  \ \  \\  \\ \  \ \  \ 
   \ \__\ \__\ \__\\ \__\ \_______\\________\ \__\ \__\\ _\\ \__\ \__\
    \|__|\|__|\|__| \|__|\|_______|\|_______|\|__|\|__|\|__|\|__|\|__|
]])
MsgC( orange,[[
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
]])
MsgC( cyan,[[
   _____          _          _   _             
  / ____|        | |        | | | |          _ 
 | |     ___   __| | ___  __| | | |__  _   _(_)
 | |    / _ \ / _` |/ _ \/ _` | | '_ \| | | |  
 | |___| (_) | (_| |  __/ (_| | | |_) | |_| |_ 
 _\_____\___/ \__,_|\___|\__,_| |_.__/ \__, (_)
 \ \ / /                                __/ |  
  \ V / ___  __ ___  _____  ___        |___/   
   > < / _ \/ _` \ \/ / _ \/ __|               
  / . \  __/ (_| |>  < (_) \__ \               
 /_/ \_\___|\__,_/_/\_\___/|___/               
                 | |                           
   __ _ _ __   __| |                           
  / _` | '_ \ / _` |                           
 | (_| | | | | (_| |                           
  \__,_|_| |_|\__,_|                           
 |  \/  (_) |                                  
 | \  / |_| | _____  _ __  _   _               
 | |\/| | | |/ / _ \| '_ \| | | |              
 | |  | | |   < (_) | |_) | |_| |              
 |_|  |_|_|_|\_\___/| .__/ \__, |              
                    | |     __/ |              
                    |_|    |___/               
]])
MsgC( pink,[[
[Anozira] Initialized!
[Anozira] v2 Made by: Yee
[Anozira] To open the menu, type +AnoziraMenu in console!
[Anozira] Aimbot: B (Be sure to enable it in hack menu first!
]])
						 
MsgC( orange,[[
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
]])

-- Mats for chams/esp --
-- Desc: Custom mats for chams. --

local propchams = CreateMaterial("propchams","VertexLitGeneric",{
        ["$basetexture"] = "models/debug/debugwhite",
        ["$model"] = 1,
        ["$translucent"] = 1,
        ["$alpha"] = 1,
        ["$nocull"] = 1,
        ["$ignorez"] = 1
}
)

-- Anti Screen Grab --
-- Desc: Stops admins from viewing your screen. VERY epic. Turns out ULX is easy to beat! --

function render.Capture() -- Really? That is REALLY how you make your functions ULX? :I

end

function render.CapturePixels() -- Again, really. This is too easy.

end

-- Anticheat Check --
-- Desc: Checks for Anticheats. If you want to suggest other antihacks to be detected, let me know! --

if (cac or CAC or qac or QAC or oac or OAC) then
chat.AddText( cyan, "[Anozira] ", red, "Anticheat detected. We recommend you disconnect or inject a bypass!")
end


-- Fonts --
-- Desc: Custom fonts I can call upon later for drawling things. --

surface.CreateFont("AnoziraPlayerTitle", { size = 14, weight = 500, antialias = true, font = "Coolvetica"})
surface.CreateFont("AnoziraPlayerInfo", { size = 14, weight = 500, antialias = true, font = "Coolvetica"})
surface.CreateFont("AnoziraDefault", { size = 25, weight = 500, antialias = true, font = "Coolvetica"})
surface.CreateFont("AnoziraHUD", { size = 50, weight = 500, antialias = true, font = "Coolvetica"})

-- AntiLuaStealer --
-- Desc: Aparently, according to CmdrMatthew, this stops the script from being stolen by servers! --

local old = file.Read
function file.Read(name, usePath)
    if name == "anozira.lua" then
        return ""
    elseif name == "anozirabeta.lua" then
		return ""
	else
        return old(name, usePath)
    end
end

-- Bones --
-- Desc: Just a refrence list so both the lua script and I know what body parts to look at. --

local BONES = {
    { "ValveBiped.Bip01_Head1", "ValveBiped.Bip01_Neck1" },
    { "ValveBiped.Bip01_Neck1", "ValveBiped.Bip01_Pelvis" },
    { "ValveBiped.Bip01_Neck1", "ValveBiped.Bip01_L_UpperArm" },
    { "ValveBiped.Bip01_Neck1", "ValveBiped.Bip01_R_UpperArm" },
    { "ValveBiped.Bip01_L_UpperArm", "ValveBiped.Bip01_L_Forearm" },
    { "ValveBiped.Bip01_R_UpperArm", "ValveBiped.Bip01_R_Forearm" },
    { "ValveBiped.Bip01_R_Forearm", "ValveBiped.Bip01_R_Hand" },
    { "ValveBiped.Bip01_L_Forearm", "ValveBiped.Bip01_L_Hand" },
    { "ValveBiped.Bip01_Pelvis", "ValveBiped.Bip01_L_Thigh" },
    { "ValveBiped.Bip01_Pelvis", "ValveBiped.Bip01_R_Thigh" },
    { "ValveBiped.Bip01_L_Thigh", "ValveBiped.Bip01_L_Calf" },
    { "ValveBiped.Bip01_R_Thigh", "ValveBiped.Bip01_R_Calf" },
    { "ValveBiped.Bip01_R_Calf", "ValveBiped.Bip01_R_Foot" },
    { "ValveBiped.Bip01_L_Calf", "ValveBiped.Bip01_L_Foot" },
}

-- Hack Area --
-- Desc: All of the hacks in this client go here. --
	
-- Weapon Lazer --
-- Desc: Drawls a lazer out the barrel of your gun! --

local lazersight = false
function lazersight()
        if GetConVarNumber(cmdStr.."_lazersight") == 1 then
                for k,v in pairs(player.GetAll()) do
					if v == LocalPlayer() and v:Alive() and v:IsValid() and v:GetActiveWeapon():IsValid() and v:Health() >= 1 then
                    cam.Start3D( EyePos() , EyeAngles())
                    render.SetMaterial( Material( "cable/physbeam" ) )
                    render.DrawBeam(v:GetBonePosition(v:LookupBone("ValveBiped.Bip01_R_Hand")) , v:GetEyeTrace().HitPos , 5, 0, 0, Color(0,0,255, 255 ))
                    cam.End3D()
                end
			end
		end
end
 
 hook.Add("HUDPaint","LazerSight", lazersight)
	
-- Chat Spammer --
-- Desc: Spams chat with pre-determined messages! --
 
local function chatspamsimpleshit()
    if GetConVarNumber(cmdStr.."_chatspammer") == 1 then
        LocalPlayer():ConCommand("say "..table.Random(anoziraspammessages).." " )
end
end

timer.Create("chatspamtimer", .5, 0, chatspamsimpleshit)

-- Third Person --
-- Desc: Third person mode for your client! (Pretty shitty tbh, since I did it in like 2 mins.) --

function MyCalcView(ply, pos, angles, fov)
if GetConVarNumber(cmdStr.."_thirdperson") == 1 then
hook.Add("ShouldDrawLocalPlayer", "MyHax ShouldDrawLocalPlayer", function(ply)
        return true
end)
    local view = {}
    view.origin = pos-(angles:Forward()*100)
    view.angles = angles
    view.fov = fov
 
    return view
end
if GetConVarNumber(cmdStr.."_thirdperson") == 0 then
hook.Add("ShouldDrawLocalPlayer", "MyHax ShouldDrawLocalPlayer", function(ply)
        return false
end)
end
end

hook.Add("CalcView", "MyCalcView", MyCalcView)

-- Lazer Eyes --
-- Desc: Drawls lazers infront of player's eyes. --

hook.Add("PostDrawOpaqueRenderables", "lazereyes", function()
    if GetConVarNumber(cmdStr.."_lazereyes") == 1 then
    for k, v in pairs(player.GetAll())do
	if SafeCheck(v) == true then
        local pos, ang = v:GetShootPos();
        render.SetMaterial(Material("sprites/bluelaser1"));
        render.DrawBeam(pos, v:GetEyeTrace().HitPos, 5, 1, 1, team.GetColor(v:Team()));
    end
	end
	end
end)   

-- Watermark --
-- Desc: Adds a watermark to the corner of your client giving info about this hack, it's version, and it's name! --

hook.Add( "HUDPaint", "WaterMark", function()
	if GetConVarNumber(cmdStr.."_watermark") == 1 then
	draw.RoundedBox( 0, 0, 0, 200, 70, Color( 118, 121, 124, 100 ) ) 
	draw.SimpleTextOutlined( "Anozira", "AnoziraHUD", ScrW()/50, ScrH()/40, cyan, TEXT_ALIGN_TOP, TEXT_ALIGN_CENTER, 50, Color(0,0,0,0) )
	draw.SimpleTextOutlined( "Current Version: 2 . 0", "AnoziraDefault", ScrW()/200, ScrH()/17, pink, TEXT_ALIGN_TOP, TEXT_ALIGN_CENTER, 50, Color(0,0,0,0) )
	end
end)

-- Rainbow Physgun --
-- Desc: Your Physgun will change colors rapidly, clientside only. --

local Num = 0
local function rainbow()
	if GetConVarNumber(cmdStr.."_rainbowphys") == 1 then
    Num = Num + 1
        LocalPlayer():SetWeaponColor(Vector(math.Rand(0,1),math.Rand(0,1),math.Rand(0,1)))
        Num = 0
	end
end

if GetConVarNumber(cmdStr.."_rainbowphys") == 1 then
	hook.Add("Think","rainbowphis",rainbow)
else
	hook.Remove("Think","rainbowphis",rainbow)
end

cvars.AddChangeCallback(cmdStr.."_rainbowphys", function() 
	if GetConVarNumber(cmdStr.."_rainbowphys") == 1 then
		hook.Add("CreateMove", "rainbowphis", rainbow)
	else
		hook.Remove("CreateMove", "rainbowphis")
	    LocalPlayer():SetWeaponColor(Vector(0,1,1))
        Num = 0
	end
end)

-- Flashlight Spam --
-- Desc: When enabled, and you hold F, it will spam the flashlight on and off to annoy people! --

local function flashspammer(cmd)
	if  input.IsKeyDown(KEY_F) then
		cmd:SetImpulse(100)
	end
 end

hook.Remove("CreateMove", "flashspam")

if GetConVarNumber(cmdStr.."_flashlightspam") == 1 then
	hook.Add("CreateMove", "flashspam", flashspammer)
end

cvars.AddChangeCallback(cmdStr.."_flashlightspam", function() 
	if GetConVarNumber(cmdStr.."_flashlightspam") == 1 then
		hook.Add("CreateMove", "flashspam", flashspammer)
	else
		hook.Remove("CreateMove", "flashspam")
	end
end)

-- Aim Assist --
-- Desc: Adds assisted aiming, so you'll snap to a players head when you look anywhere near them! --

function aimassist() 
	if (GetConVarNumber(cmdStr.."_aimassist") == 1) then
		local ply = LocalPlayer()
		local trace = util.GetPlayerTrace( ply ) 
		local traceRes = util.TraceLine( trace ) 
		if traceRes.HitNonWorld then 
			local target = traceRes.Entity 
			if target:IsPlayer() then 
				local targethead = target:LookupBone("ValveBiped.Bip01_Head1")
				local targetheadpos,targetheadang = target:GetBonePosition(targethead) 
				ply:SetEyeAngles((targetheadpos - ply:GetShootPos()):Angle()) 
			end
		end
	end
end
hook.Add("Think","aimassist",aimassist) 

-- 180 spin --
-- Desc: Makes you spin 1080. --

function ano180(ply)
	aim = ply:GetAimVector():Angle()
	ply:SetEyeAngles(aim - Angle(0, 180, 0))
end

concommand.Add("anozira_180", ano180)

-- 180up spin --
-- Desc: Does a 180 and spins you upward. --

function ano180up(ply)
	aim = ply:GetAimVector():Angle()
	ply:SetEyeAngles(aim - Angle(65, 180, 0))
end

concommand.Add("anozira_180up", ano180up)

-- Aimbot --
-- Desc: Auto-aims at a player's head. --

hook.Add( "Think", "ThinkAboutIt", function()
	if (GetConVarNumber(cmdStr.."_aimbot") == 1) then
	if input.IsKeyDown(KEY_B) then
		local closest = nil
		local hitpos = LocalPlayer():GetEyeTrace()
		local NDi = 0
		for k, v in pairs( player.GetAll() ) do
		local Di = ( Vector( v:GetPos() ):Distance( Vector( LocalPlayer():GetPos() ) ) )
		if Di ~= 0 then 
				if Di < NDi or NDi == 0 then
					NDi = Di
						if NDi == Di then
							closest = v
						end
				end
		end

		if closest and closest ~=LocalPlayer() and closest:Alive() and closest:IsValid() and closest:Health() >= 1 then
			local head = closest:LookupBone("ValveBiped.Bip01_Head1")
			local headpos, headang = closest:GetBonePosition(head)			
			LocalPlayer():SetEyeAngles( (headpos-LocalPlayer():GetShootPos()):Angle() )
			end
		end
	end
end
end)

-- Custom Crosshair v1 --
-- Desc: Overlays a crosshair in the middle of your screen. --

hook.Add( "HUDPaint", "CrossHair", function()
	if (GetConVarNumber(cmdStr.."_crosshairv1") == 1) then
		local h = ScrH() / 2
		local w = ScrW() / 2
		local h1 = ScrH() / 2 
		local w1 = ScrW() / 2 
		
		surface.SetDrawColor( 0, 255, 255 )
		surface.DrawLine( w + 10, h, w - 10, h )
		surface.DrawLine( w, h + 10, w, h - 10 )
	end
		
end)

-- Custom Crosshair v2 --
-- Desc: Overlays a crosshair in the middle of your screen. --

hook.Add( "HUDPaint", "CrossHair2", function()
	if (GetConVarNumber(cmdStr.."_crosshairv2") == 1) then
		local h = ScrH() / 2
		local w = ScrW() / 2
		local h1 = ScrH() / 2 
		local w1 = ScrW() / 2 
		
		surface.SetDrawColor(pink)
		surface.DrawLine( w + 10, h, w - 10, h )
		surface.DrawLine( w, h + 10, w, h - 10 )
	end
		
end)

-- Custom Crosshair v3 --
-- Desc: This overlays a crosshair in the middle of your screen. --

function crosshair3()
if (GetConVarNumber(cmdStr.."_crosshairv3") == 1) then
		surface.DrawCircle( ScrW() / 2, ScrH() / 2, 5, 255, 50, 50, 255 )
		surface.DrawCircle( ScrW() / 2, ScrH() / 2, 15, 50, 255, 50, 255 )
	end
end
hook.Add('HUDPaint', 'crosshair3', crosshair3)

-- Entity ESP --
-- Desc: Shows Entities and information on them through walls. My friend Gravko gave me this one, and I edited it to my liking. --

hook.Add("HUDPaint", "entityesp", function()
		if (GetConVarNumber(cmdStr.."_entityesp") == 1) then
        for k, v in pairs(ents.GetAll()) do
		local mDistance = math.floor((LocalPlayer():GetPos():Distance( v:GetPos()))/40)
        Pos = v:GetPos():ToScreen()
                                if string.find(v:GetClass(), "printer") then
										draw.SimpleTextOutlined("Money Printer", "Default", Pos.x + 25, Pos.y - 30, cyan, 1, 1, 1, Color(0,0,0,255))
                                        draw.SimpleTextOutlined(v:GetClass(), "Default", Pos.x + 54, Pos.y - 20, pink, 1, 1, 1, Color(0,0,0,255))
										draw.SimpleTextOutlined("               Distance: ["..mDistance.."]", "Default", Pos.x + 18, Pos.y - 8, Color(60,90,100), 1, 1, 1, Color(0,0,0,255))
                                        elseif v:GetClass() == "spawned_shipment" then
 										draw.SimpleTextOutlined("Weapon Shipment", "Default", Pos.x + 30, Pos.y - 30, cyan, 1, 1, 1, Color(0,0,0,255))
                                        draw.SimpleTextOutlined(v:GetClass(), "Default", Pos.x + 55, Pos.y - 20, pink, 1, 1, 1, Color(0,0,0,255))
										draw.SimpleTextOutlined("               Distance: ["..mDistance.."]", "Default", Pos.x + 18, Pos.y - 8, Color(60,90,100), 1, 1, 1, Color(0,0,0,255))
										elseif string.find(v:GetClass(), "durgz") then
 										draw.SimpleTextOutlined("Drugs", "Default", Pos.x + 23, Pos.y - 30, cyan, 1, 1, 1, Color(0,0,0,255))
                                        draw.SimpleTextOutlined(v:GetClass(), "Default", Pos.x + 50, Pos.y - 20, pink, 1, 1, 1, Color(0,0,0,255))
										draw.SimpleTextOutlined("               Distance:["..mDistance.."]", "Default", Pos.x + 18, Pos.y - 8, Color(60,90,100), 1, 1, 1, Color(0,0,0,255))
                                        elseif v:GetClass() == "spawned_weapon" then
										draw.SimpleTextOutlined("Weapon", "Default", Pos.x + 25, Pos.y - 30, cyan, 1, 1, 1, Color(0,0,0,255))
                                        draw.SimpleTextOutlined(v:GetClass(), "Default", Pos.x + 50, Pos.y - 20, pink, 1, 1, 1, Color(0,0,0,255))
										draw.SimpleTextOutlined("               Distance: ["..mDistance.."]", "Default", Pos.x + 18, Pos.y - 8, Color(60,90,100), 1, 1, 1, Color(0,0,0,255))
                                        elseif v:GetClass() == "spawned_money" then
										draw.SimpleTextOutlined("Money", "Default", Pos.x + 25, Pos.y - 30, cyan, 1, 1, 1, Color(0,0,0,255))
                                        draw.SimpleTextOutlined(v:GetClass(), "Default", Pos.x + 50, Pos.y - 20, pink, 1, 1, 1, Color(0,0,0,255))
										draw.SimpleTextOutlined("               Distance: ["..mDistance.."]", "Default", Pos.x + 18, Pos.y - 8, Color(60,90,100), 1, 1, 1, Color(0,0,0,255))
                                        else
										
                                end
                        end
                end    
end)

-- Entity Chams --
-- Desc: Drawls chams through walls on entitys. --

hook.Add("HUDPaint", "entityespchams", function()
	if (GetConVarNumber(cmdStr.."_entitychams") == 1) then
	for k, v in pairs(ents.GetAll()) do
                                if string.find(v:GetClass(), "printer") then
											cam.Start3D(EyePos(), EyeAngles())
											if v:IsValid() then
											render.SuppressEngineLighting( false )
											render.MaterialOverride("models/debug/debugwhite")
											render.SetBlend( 1 )
											render.SetColorModulation( 0, 255, 255)
											v:DrawModel()
											cam.End3D()
											end
                                        elseif v:GetClass() == "spawned_shipment" then
 													cam.Start3D(EyePos(), EyeAngles())
											if v:IsValid() then
											render.SuppressEngineLighting( false )
											render.MaterialOverride("models/debug/debugwhite")
											render.SetBlend( 1 )
											render.SetColorModulation( 0, 255, 255)
											v:DrawModel()
											cam.End3D()
											end
											elseif string.find(v:GetClass(), "durgz") then
 											cam.Start3D(EyePos(), EyeAngles())
											if v:IsValid() then
											render.SuppressEngineLighting( false )
											render.MaterialOverride("models/debug/debugwhite")
											render.SetBlend( 1 )
											render.SetColorModulation( 0, 255, 255)
											v:DrawModel()
											cam.End3D()
											end
											elseif v:GetClass() == "spawned_weapon" then
											cam.Start3D(EyePos(), EyeAngles())
											if v:IsValid() then
											render.SuppressEngineLighting( false )
											render.MaterialOverride("models/debug/debugwhite")
											render.SetBlend( 1 )
											render.SetColorModulation( 0, 255, 255)
											v:DrawModel()
											cam.End3D()
											end
											elseif v:GetClass() == "spawned_money" then
											cam.Start3D(EyePos(), EyeAngles())
											if v:IsValid() then
											render.SuppressEngineLighting( false )
											render.MaterialOverride("models/debug/debugwhite")
											render.SetBlend( 1 )
											render.SetColorModulation( 0, 255, 255)
											v:DrawModel()
											cam.End3D()
											end
											elseif v:GetClass() == "prop_physics" then
											end
                        end
                end    
end)
	
-- Bunny Hop --
-- Desc: Allows you to jump around faster then others can run. --

hook.Add( "CreateMove", "BunnyHop:CreateMove", function( input )
	if GetConVarNumber(cmdStr.."_bhop") == 1 then
	if ( !LocalPlayer( ):Alive( ) || !LocalPlayer( ).NextBunnyHop ) then return; end
	if ( LocalPlayer( ).NextBunnyHop < CurTime( ) ) then return; end

	if ( input:KeyDown( IN_JUMP ) ) then
		input:SetButtons( input:GetButtons( ) - IN_JUMP );
	end
	end
end );

hook.Add( "OnPlayerHitGround", "BunnyHop:HotFeet", function( _p, _inWater, _onFloater, _speed )
	_p.NextBunnyHop = CurTime( );
end );

-- Prop Chams --
-- Desc: Makes props visible through walls, and allows you to see through them. --

hook.Add( "HUDPaint", "PropESP", function()
	for k,v in pairs ( ents.FindByClass( "prop_physics" ) ) do
		if GetConVarNumber(cmdStr.."_propchams") == 1 then
			cam.Start3D(EyePos(), EyeAngles())
				if v:IsValid() then
					render.SuppressEngineLighting( false )
					render.MaterialOverride( propchams )
					render.SetBlend(0.2)
					render.SetColorModulation( 0, 255, 0)
					v:DrawModel()
			cam.End3D()
			end
		end
	end
end)

-- Chams --
-- Desc: Shows players bodies through walls. --

hook.Add( "HUDPaint", "ESPChams", function()
 
	for k,v in pairs ( player.GetAll() ) do
	if GetConVarNumber(cmdStr.."_chams") == 1 then
		
		if SafeCheck(v) == true then
		
			local ply = LocalPlayer()
			
			cam.Start3D(EyePos(), EyeAngles())
	         	     render.MaterialOverride( propchams )
	         	     render.SuppressEngineLighting( false )
	         	     render.SetBlend( 1 )
	         	     render.SetColorModulation( 0, 255, 255 )
					v:DrawModel();
					-- This bit is for weapons. --
	         	     render.MaterialOverride( propchams )
	         	     render.SuppressEngineLighting( false )
	         	     render.SetBlend( 1 )
	         	     render.SetColorModulation( 255, 0, 0 )
					v:GetActiveWeapon():DrawModel()
				cam.End3D()
		end
	end
end
end)

-- 3DBoxESP --
-- Desc: Drawls a 3D box around players through walls. --

hook.Add("HUDPaint", "3DBoxESP", function()
    for k,v in pairs(player.GetAll()) do
        if GetConVarNumber(cmdStr.."_3dboxesp") == 1 then
			if SafeCheck(v) == true then
			local ply = LocalPlayer()
			local plyPos = v:GetPos()
			local head = v:OBBMaxs()
			local feet = v:OBBMins()
			local eye = v:EyeAngles()
                cam.Start3D()
					render.DrawWireframeBox( plyPos, Angle( 0, eye.y, 0), feet, head, team.GetColor(v:Team()) )
	         	     cam.End3D()
	         	  end
	       end
    end
end)

-- 2DBoxESP --
-- Desc: Drawls a 2D box around players through walls. --

local function coordinates( ent )
local min, max = ent:OBBMins(), ent:OBBMaxs()
local corners = {
        Vector( min.x, min.y, min.z ),
        Vector( min.x, min.y, max.z ),
        Vector( min.x, max.y, min.z ),
        Vector( min.x, max.y, max.z ),
        Vector( max.x, min.y, min.z ),
        Vector( max.x, min.y, max.z ),
        Vector( max.x, max.y, min.z ),
        Vector( max.x, max.y, max.z )
}
 
local minX, minY, maxX, maxY = ScrW() * 2, ScrH() * 2, 0, 0
for _, corner in pairs( corners ) do
        local onScreen = ent:LocalToWorld( corner ):ToScreen()
        minX, minY = math.min( minX, onScreen.x ), math.min( minY, onScreen.y )
        maxX, maxY = math.max( maxX, onScreen.x ), math.max( maxY, onScreen.y )
end
 
return minX, minY, maxX, maxY
end

hook.Add("HUDPaint", "2DBoxESP", function()

	if (GetConVarNumber(cmdStr.."_2dboxesp") == 1) then
		for k,v in pairs ( player.GetAll() ) do
		if SafeCheck(v) == true then
        local x1,y1,x2,y2 = coordinates(v)
        surface.SetDrawColor( team.GetColor(v:Team()) )
        surface.DrawLine( x1, y1, math.min( x1 + 500, x2 ), y1 )
        surface.DrawLine( x1, y1, x1, math.min( y1 + 500, y2 ) )
        surface.DrawLine( x2, y1, math.max( x2 - 500, x1 ), y1 )
        surface.DrawLine( x2, y1, x2, math.min( y1 + 500, y2 ) )
        surface.DrawLine( x1, y2, math.min( x1 + 500, x2 ), y2 )
        surface.DrawLine( x1, y2, x1, math.max( y2 - 500, y1 ) )
        surface.DrawLine( x2, y2, math.max( x2 - 500, x1 ), y2 )
        surface.DrawLine( x2, y2, x2, math.max( y2 - 500, y1 ) )
		end
	end
end
end)

-- Glow ESP --
-- Desc: Draws a Left for Dead or Prop hunt type of glow around players --

hook.Add("HUDPaint", "GlowESP", function()
	for k,v in pairs(player.GetAll()) do
		if SafeCheck(v) == true then
		if (GetConVarNumber(cmdStr.."_glowesp") == 1) then
			halo.Add({v}, team.GetColor(v:Team()), 2, 1, 5, true, true)

		end
	end
end
end)

-- Name Changer (DarkRP) --
-- Desc: Changes the name of your player in game to make it difficult for staff to ban you. --

function NC()
	if (GetConVarNumber(cmdStr.."_namechanger") == 1) then
		LocalPlayer():ConCommand( "say /rpname " ..tostring( math.random( 1111111, 99999999 ) ) )
	end
end
hook.Add( "Think", "NameChanger", NC )

-- Player Info --
-- Desc: Shows a player's name, health, and weapon through walls. --

hook.Add( "HUDPaint", "PlayerInfo", function()
	if (GetConVarNumber(cmdStr.."_playerinfo") == 1) then
	for k,v in pairs ( player.GetAll() ) do
		if SafeCheck(v) == true then
			local plyPos = v:GetPos()
			local pos = ( plyPos + Vector( 0, 0, 90 )):ToScreen()
			local plyName = v:Nick()
			local plyHP = "HP: " .. v:Health()
			local ply = LocalPlayer()
			draw.SimpleTextOutlined( plyName, "AnoziraDefault", pos.x, pos.y, team.GetColor(v:Team()), 1, 1, 1, Color( 0, 0, 0 ) )
			draw.SimpleTextOutlined( plyHP, "AnoziraDefault", pos.x, pos.y + 15, Color( 150, 255, 150 ), 1, 1, 1, Color( 0, 0, 0 ) )
		end
	end
end
end)

-- Menu Area --
-- Desc: The GUI or Menu of the hack and everything needed to display it goes here. --

derma.RefreshSkins()

concommand.Add( "+AnoziraMenu", function()
local DermaPanel = vgui.Create( "DFrame" )
DermaPanel:SetPos( 50,50 )
DermaPanel:SetSize( 750, 350 )
DermaPanel:SetTitle( "Anozira Menu" )
DermaPanel:SetVisible( true )
DermaPanel:SetDraggable( true )
DermaPanel:ShowCloseButton( true )
DermaPanel.Paint = function( self, w, h ) 
	draw.RoundedBox( 0, 0, 0, w, h, Color( 77, 157, 203, 255 ) ) 
end
DermaPanel:MakePopup()
 
HTMLTest = vgui.Create("HTML", DermaPanel)
HTMLTest:SetPos(460,30)
HTMLTest:SetSize(290, 320)
HTMLTest:OpenURL("http://anozirachat.chatovod.com/")
 
 local PropertySheet = vgui.Create( "DPropertySheet" )
PropertySheet:SetParent( DermaPanel )
PropertySheet:SetPos( 0, 30 )
PropertySheet:SetSize( 460, 350 )
PropertySheet.Paint = function( self, w, h ) 
	draw.RoundedBox( 0, 0, 0, w, h, Color( 118, 121, 124, 255 ) ) 
end

local Aim = vgui.Create( "DFrame" )
Aim:SetPos( 50,50 )
Aim:SetSize( 450, 300 )
Aim:SetTitle( "" )
Aim:SetVisible( true )
Aim:SetDraggable( true )
Aim:ShowCloseButton( false )
Aim.Paint = function( self, w, h ) 
	draw.RoundedBox( 0, 0, 0, w, h, Color( 253, 253, 253, 255 ) )  
end
 
local ESP = vgui.Create( "DFrame" )
ESP:SetPos( 50,50 )
ESP:SetSize( 450, 300 )
ESP:SetTitle( "" )
ESP:SetVisible( true )
ESP:SetDraggable( true )
ESP:ShowCloseButton( false )
ESP.Paint = function( self, w, h ) 
	draw.RoundedBox( 0, 0, 0, w, h, Color( 253, 253, 253, 255 ) )
end

local Misc = vgui.Create( "DFrame" )
Misc:SetPos( 50,50 )
Misc:SetSize( 450, 300 )
Misc:SetTitle( "" )
Misc:SetVisible( true )
Misc:SetDraggable( true )
Misc:ShowCloseButton( false )
Misc.Paint = function( self, w, h ) 
	draw.RoundedBox( 0, 0, 0, w, h, Color( 253, 253, 253, 255 ) )
end

local HUD = vgui.Create( "DFrame" )
HUD:SetPos( 50,50 )
HUD:SetSize( 450, 300 )
HUD:SetTitle( "" )
HUD:SetVisible( true )
HUD:SetDraggable( true )
HUD:ShowCloseButton( false )
HUD.Paint = function( self, w, h ) 
	draw.RoundedBox( 0, 0, 0, w, h, Color( 253, 253, 253, 255 ) )
end
 
local PropKill = vgui.Create( "DFrame" )
PropKill:SetPos( 50,50 )
PropKill:SetSize( 450, 300 )
PropKill:SetTitle( "" )
PropKill:SetVisible( true )
PropKill:SetDraggable( true )
PropKill:ShowCloseButton( false )
PropKill.Paint = function( self, w, h ) 
	draw.RoundedBox( 0, 0, 0, w, h, Color( 253, 253, 253, 255 ) )
end 
 
PropertySheet:AddSheet( "Aim Hacks", Aim, "icon16/user.png", false, false, "Aimbot and Aimbot settings." )
PropertySheet:AddSheet( "ESP Hacks", ESP, "icon16/group.png", false, false, "ESP hacks and ESP settings." ) 
PropertySheet:AddSheet( "Misc Hacks", Misc, "icon16/help.png", false, false, "All misc hacks." ) 
PropertySheet:AddSheet( "HUD Hacks", HUD, "icon16/application.png", false, false, "Hacks for your HUD, like Watermarks and Admin detectors!" ) 
PropertySheet:AddSheet( "Prop Kill", PropKill, "icon16/brick.png", false, false, "Hacks for your HUD, like Watermarks and Admin detectors!" ) 
 
local CheckBoxThing = vgui.Create( "DCheckBoxLabel", Aim )
CheckBoxThing:SetPos( 10,25 )
CheckBoxThing:SetText( "Weapon Sight" )
CheckBoxThing:SetTextColor( Color( 0, 0, 0 ) )
CheckBoxThing:SetConVar( cmdStr.."_lazersight" ) 
CheckBoxThing:SizeToContents()  

local CheckBoxThing = vgui.Create( "DCheckBoxLabel", Aim )
CheckBoxThing:SetPos( 10,50 )
CheckBoxThing:SetText( "Aim Assist" )
CheckBoxThing:SetTextColor( Color( 0, 0, 0 ) )
CheckBoxThing:SetConVar( cmdStr.."_aimassist" ) 
CheckBoxThing:SizeToContents() 
 
local CheckBoxThing = vgui.Create( "DCheckBoxLabel", Aim )
CheckBoxThing:SetPos( 10,75 )
CheckBoxThing:SetText( "Aimbot" )
CheckBoxThing:SetTextColor( Color( 0, 0, 0 ) )
CheckBoxThing:SetConVar( cmdStr.."_aimbot" ) 
CheckBoxThing:SizeToContents() 

local CheckBoxThing = vgui.Create( "DCheckBoxLabel", ESP )
CheckBoxThing:SetPos( 10,25 )
CheckBoxThing:SetText( "PlayerInfo" )
CheckBoxThing:SetTextColor( Color( 0, 0, 0 ) )
CheckBoxThing:SetConVar( cmdStr.."_playerinfo" ) 
CheckBoxThing:SizeToContents() 

local CheckBoxThing = vgui.Create( "DCheckBoxLabel", ESP )
CheckBoxThing:SetPos( 10,50 )
CheckBoxThing:SetText( "3D BoxESP" )
CheckBoxThing:SetTextColor( Color( 0, 0, 0 ) )
CheckBoxThing:SetConVar( cmdStr.."_3dboxesp" ) 
CheckBoxThing:SizeToContents() 

local CheckBoxThing = vgui.Create( "DCheckBoxLabel", ESP )
CheckBoxThing:SetPos( 10,75 )
CheckBoxThing:SetText( "2D BoxESP" )
CheckBoxThing:SetTextColor( Color( 0, 0, 0 ) )
CheckBoxThing:SetConVar( cmdStr.."_2dboxesp" ) 
CheckBoxThing:SizeToContents() 

local CheckBoxThing = vgui.Create( "DCheckBoxLabel", ESP )
CheckBoxThing:SetPos( 10,100 )
CheckBoxThing:SetText( "Glow ESP" )
CheckBoxThing:SetTextColor( Color( 0, 0, 0 ) )
CheckBoxThing:SetConVar( cmdStr.."_glowesp" ) 
CheckBoxThing:SizeToContents() 

local CheckBoxThing = vgui.Create( "DCheckBoxLabel", ESP )
CheckBoxThing:SetPos( 10,125 )
CheckBoxThing:SetText( "Chams" )
CheckBoxThing:SetTextColor( Color( 0, 0, 0 ) )
CheckBoxThing:SetConVar( cmdStr.."_chams" ) 
CheckBoxThing:SizeToContents() 

local CheckBoxThing = vgui.Create( "DCheckBoxLabel", ESP )
CheckBoxThing:SetPos( 10,150 )
CheckBoxThing:SetText( "Entity ESP" )
CheckBoxThing:SetTextColor( Color( 0, 0, 0 ) )
CheckBoxThing:SetConVar( cmdStr.."_entityesp" ) 
CheckBoxThing:SizeToContents() 

local CheckBoxThing = vgui.Create( "DCheckBoxLabel", ESP )
CheckBoxThing:SetPos( 10,175 )
CheckBoxThing:SetText( "Entity Chams" )
CheckBoxThing:SetTextColor( Color( 0, 0, 0 ) )
CheckBoxThing:SetConVar( cmdStr.."_entitychams" ) 
CheckBoxThing:SizeToContents() 

local CheckBoxThing = vgui.Create( "DCheckBoxLabel", ESP )
CheckBoxThing:SetPos( 10,200 )
CheckBoxThing:SetText( "Prop Chams" )
CheckBoxThing:SetTextColor( Color( 0, 0, 0 ) )
CheckBoxThing:SetConVar( cmdStr.."_propchams" ) 
CheckBoxThing:SizeToContents() 

local CheckBoxThing = vgui.Create( "DCheckBoxLabel", Misc )
CheckBoxThing:SetPos( 10,25 )
CheckBoxThing:SetText( "Chat Spammer" )
CheckBoxThing:SetTextColor( Color( 0, 0, 0 ) )
CheckBoxThing:SetConVar( cmdStr.."_chatspammer" ) 
CheckBoxThing:SizeToContents() 

local CheckBoxThing = vgui.Create( "DCheckBoxLabel", Misc )
CheckBoxThing:SetPos( 10,50 )
CheckBoxThing:SetText( "Namechanger" )
CheckBoxThing:SetTextColor( Color( 0, 0, 0 ) )
CheckBoxThing:SetConVar( cmdStr.."_namechanger" ) 
CheckBoxThing:SizeToContents() 

local CheckBoxThing = vgui.Create( "DCheckBoxLabel", Misc )
CheckBoxThing:SetPos( 10,75 )
CheckBoxThing:SetText( "Flashlight Spam" )
CheckBoxThing:SetTextColor( Color( 0, 0, 0 ) )
CheckBoxThing:SetConVar( cmdStr.."_flashlightspam" ) 
CheckBoxThing:SizeToContents() 

local CheckBoxThing = vgui.Create( "DCheckBoxLabel", Misc )
CheckBoxThing:SetPos( 10,100 )
CheckBoxThing:SetText( "Bunny Hop" )
CheckBoxThing:SetTextColor( Color( 0, 0, 0 ) )
CheckBoxThing:SetConVar( cmdStr.."_bhop" ) 
CheckBoxThing:SizeToContents() 

local CheckBoxThing = vgui.Create( "DCheckBoxLabel", Misc )
CheckBoxThing:SetPos( 10,125 )
CheckBoxThing:SetText( "Rainbow Physgun" )
CheckBoxThing:SetTextColor( Color( 0, 0, 0 ) )
CheckBoxThing:SetConVar( cmdStr.."_rainbowphys" ) 
CheckBoxThing:SizeToContents() 

local CheckBoxThing = vgui.Create( "DCheckBoxLabel", Misc )
CheckBoxThing:SetPos( 10,150 )
CheckBoxThing:SetText( "Lazer Eyes" )
CheckBoxThing:SetTextColor( Color( 0, 0, 0 ) )
CheckBoxThing:SetConVar( cmdStr.."_lazereyes" ) 
CheckBoxThing:SizeToContents() 

local CheckBoxThing = vgui.Create( "DCheckBoxLabel", Misc )
CheckBoxThing:SetPos( 10,175 )
CheckBoxThing:SetText( "Third Person" )
CheckBoxThing:SetTextColor( Color( 0, 0, 0 ) )
CheckBoxThing:SetConVar( cmdStr.."_thirdperson" ) 
CheckBoxThing:SizeToContents() 

local CheckBoxThing = vgui.Create( "DCheckBoxLabel", HUD )
CheckBoxThing:SetPos( 10,25 )
CheckBoxThing:SetText( "Watermark" )
CheckBoxThing:SetTextColor( Color( 0, 0, 0 ) )
CheckBoxThing:SetConVar( cmdStr.."_watermark" ) 
CheckBoxThing:SizeToContents() 

local CheckBoxThing = vgui.Create( "DCheckBoxLabel", HUD )
CheckBoxThing:SetPos( 10,50 )
CheckBoxThing:SetText( "Custom Crosshair v1" )
CheckBoxThing:SetTextColor( Color( 0, 0, 0 ) )
CheckBoxThing:SetConVar( cmdStr.."_crosshairv1" ) 
CheckBoxThing:SizeToContents() 

local CheckBoxThing = vgui.Create( "DCheckBoxLabel", HUD )
CheckBoxThing:SetPos( 10,75 )
CheckBoxThing:SetText( "Custom Crosshair v2" )
CheckBoxThing:SetTextColor( Color( 0, 0, 0 ) )
CheckBoxThing:SetConVar( cmdStr.."_crosshairv2" ) 
CheckBoxThing:SizeToContents() 

local CheckBoxThing = vgui.Create( "DCheckBoxLabel", HUD )
CheckBoxThing:SetPos( 10,100 )
CheckBoxThing:SetText( "Custom Crosshair v3" )
CheckBoxThing:SetTextColor( Color( 0, 0, 0 ) )
CheckBoxThing:SetConVar( cmdStr.."_crosshairv3" ) 
CheckBoxThing:SizeToContents() 

local Button = vgui.Create( "DButton", PropKill )
Button:SetText( "180 [Anozira_180]" )
Button:SetTextColor( Color( 255, 255, 255 ) )
Button:SetPos( 20, 25 )
Button:SetSize( 200, 50 )
Button.Paint = function( self, w, h )
	draw.RoundedBox( 0, 0, 0, w, h, Color( 41, 128, 185, 250 ) )
end
Button.DoClick = function()
	RunConsoleCommand( "anozira_180" )
end

local Button = vgui.Create( "DButton", PropKill )
Button:SetText( "180+up [Anozira_180up]" )
Button:SetTextColor( Color( 255, 255, 255 ) )
Button:SetPos( 20, 100 )
Button:SetSize( 200, 50 )
Button.Paint = function( self, w, h )
	draw.RoundedBox( 0, 0, 0, w, h, Color( 41, 128, 185, 250 ) )
end
Button.DoClick = function()
	RunConsoleCommand( "anozira_180up" )
end

end)
