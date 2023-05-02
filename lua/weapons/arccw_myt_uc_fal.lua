SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - Urban Coalition" -- edit this if you like
SWEP.UC_CategoryPack = "5Urban One-offs"
SWEP.AdminOnly = false

SWEP.PrintName = "Aurolaroix C1"
SWEP.TrueName = "C1A1"

SWEP.Trivia_Class = "Battle Rifle"
SWEP.Trivia_Desc = [[Shipped back from Départment du Nord, a land of constant snowstorm prohibits the use of conventional magazine. Conserve your ammo and take either 10 or 5 round load to fill up this machine.]]
SWEP.Trivia_Manufacturer = [[Héristal van Hoog-Zert [Département du Nord] ]]
SWEP.Trivia_Calibre = "7.62x51mm NATO"
SWEP.Trivia_Mechanism = "Gas-Operated Tilting Bolt"
SWEP.Trivia_Country = "Canada" -- skull emoji
SWEP.Trivia_Year = 1953

if GetConVar("arccw_truenames"):GetBool() then
    SWEP.PrintName = SWEP.TrueName
    SWEP.Trivia_Manufacturer = "FN Herstal"
    SWEP.Trivia_Country = "Belgium"
end

SWEP.Slot = 2
SWEP.CamAttachment = 3

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/arccw/c_uc_myt_fal.mdl"
SWEP.WorldModel = "models/weapons/arccw/c_uc_myt_fal.mdl"
SWEP.ViewModelFOV = 70

SWEP.DefaultBodygroups = "000110000000"

SWEP.ShotgunReload = true
SWEP.HybridReload = true

-- Damage --

SWEP.Damage = 65
SWEP.DamageMin = 35
SWEP.RangeMin = 50
SWEP.Range = 400
SWEP.Penetration = 20
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil
SWEP.MuzzleVelocity = 840
SWEP.PhysBulletMuzzleVelocity = 840

SWEP.BodyDamageMults = ArcCW.UC.BodyDamageMults

-- Mag size --

SWEP.ChamberSize = 1
SWEP.Primary.ClipSize = 20

-- Recoil --

SWEP.Recoil = 1.45
SWEP.RecoilSide = 0.6

SWEP.RecoilRise = 0.6
SWEP.RecoilPunch = 1
SWEP.VisualRecoilMult = 1
SWEP.MaxRecoilBlowback = 1
SWEP.MaxRecoilPunch = 1
SWEP.RecoilPunchBack = 2

SWEP.Sway = 0.6

-- Firerate / Firemodes --

SWEP.Delay = 60 / 700
SWEP.Num = 1
SWEP.Firemodes = {
    {
        Mode = 2,
    },
    {
        Mode = 1,
    },
    {
        Mode = 0,
    },
}

SWEP.ShootPitch = 100
SWEP.ShootVol = 120

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = false

SWEP.ReloadInSights = true

-- NPC --

SWEP.NPCWeaponType = "weapon_ar2"
SWEP.NPCWeight = 60

-- Accuracy --

SWEP.AccuracyMOA = 2
SWEP.HipDispersion = 950
SWEP.MoveDispersion = 250
SWEP.JumpDispersion = 1000

SWEP.Primary.Ammo = "ar2"
SWEP.MagID = "ak" -- who the hell even uses this

SWEP.HeatCapacity = 75
SWEP.HeatDissipation = 15
SWEP.HeatDelayTime = 3

-- SWEP.Malfunction = true
SWEP.MalfunctionMean = 200
--SWEP.MeleeTime = 1.5

-- Speed multipliers --

SWEP.SpeedMult = 0.9
SWEP.SightedSpeedMult = 0.75
SWEP.SightTime = 0.5
SWEP.ShootSpeedMult = 0.75

local path = ")^weapons/uc_fal/"
local common = ")/arccw_uc/common/"
local rottle = {common .. "cloth_1.ogg", common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_5.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}
local mech = {path .. "mech-01.ogg", path .. "mech-02.ogg", path .. "mech-03.ogg", path .. "mech-04.ogg", path .. "mech-05.ogg", path .. "mech-06.ogg"}
local ratel = {common .. "rattle1.ogg", common .. "rattle2.ogg", common .. "rattle3.ogg"}
local rutle = {common .. "movement-rifle-01.ogg", common .. "movement-rifle-02.ogg", common .. "movement-rifle-03.ogg", common .. "movement-rifle-04.ogg"}
local magdrop = {common .. "rifle_magdrop_1.ogg", common .. "rifle_magdrop_2.ogg", common .. "rifle_magdrop_3.ogg", common .. "rifle_magdrop_4.ogg"}

SWEP.ShootSound = {
    path .. "fire-01.ogg",
    path .. "fire-02.ogg",
    path .. "fire-03.ogg",
    path .. "fire-04.ogg",
    path .. "fire-05.ogg",
    path .. "fire-06.ogg"
}
SWEP.ShootSoundSilenced = {
    path .. "fire-sup-01.ogg",
    path .. "fire-sup-02.ogg",
    path .. "fire-sup-03.ogg",
    path .. "fire-sup-04.ogg",
    path .. "fire-sup-05.ogg",
    path .. "fire-sup-06.ogg"
}
SWEP.DistantShootSound = nil
SWEP.DistantShootSoundSilenced = nil
SWEP.ShootDrySound = path .. "dryfire.ogg"

local tail = ")/arccw_uc/common/308/"

SWEP.DistantShootSoundOutdoors = {
    tail .. "fire-dist-308-rif-ext-01.ogg",
    tail .. "fire-dist-308-rif-ext-02.ogg",
    tail .. "fire-dist-308-rif-ext-03.ogg",
    tail .. "fire-dist-308-rif-ext-04.ogg",
    tail .. "fire-dist-308-rif-ext-05.ogg",
    tail .. "fire-dist-308-rif-ext-06.ogg"
}
SWEP.DistantShootSoundIndoors = {
    tail .. "fire-dist-308-rif-int-01.ogg",
    tail .. "fire-dist-308-rif-int-02.ogg",
    tail .. "fire-dist-308-rif-int-03.ogg",
    tail .. "fire-dist-308-rif-int-04.ogg",
    tail .. "fire-dist-308-rif-int-05.ogg",
    tail .. "fire-dist-308-rif-int-06.ogg"
}
SWEP.DistantShootSoundOutdoorsSilenced = {
    common .. "sup-tail-01.ogg",
    common .. "sup-tail-02.ogg",
    common .. "sup-tail-03.ogg",
    common .. "sup-tail-04.ogg",
    common .. "sup-tail-05.ogg",
    common .. "sup-tail-06.ogg",
    common .. "sup-tail-07.ogg",
    common .. "sup-tail-08.ogg",
    common .. "sup-tail-09.ogg",
    common .. "sup-tail-10.ogg"
}
SWEP.DistantShootSoundIndoorsSilenced = {
    common .. "fire-dist-int-pistol-light-01.ogg",
    common .. "fire-dist-int-pistol-light-02.ogg",
    common .. "fire-dist-int-pistol-light-03.ogg",
    common .. "fire-dist-int-pistol-light-04.ogg",
    common .. "fire-dist-int-pistol-light-05.ogg",
    common .. "fire-dist-int-pistol-light-06.ogg"
}
SWEP.DistantShootSoundOutdoorsVolume = 1
SWEP.DistantShootSoundIndoorsVolume = 1
SWEP.Hook_AddShootSound = ArcCW.UC.InnyOuty

SWEP.MuzzleEffect = "muzzleflash_6"
SWEP.ShellEffect = "arccw_uc_shelleffect"
SWEP.ShellModel = "models/weapons/arccw/uc_shells/556x45.mdl"
SWEP.ShellScale = 1.145
SWEP.ShellPitch = 90
SWEP.ShellScale = 1
SWEP.ShellRotateAngle = Angle(0, 0, 0)
SWEP.UC_ShellColor = Color(0.7*255, 0.2*255, 0.2*255)

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on

SWEP.IronSightStruct = {
    Pos = Vector(-2.73, -1, 0.8),
    Ang = Angle(0, 0.02, 0),
    Magnification = 1.1,
    ViewModelFOV = 65,
    SwitchToSound = "", -- sound that plays when switching to this sight
    CrosshairInSights = false
}
SWEP.LaserOffsetAngle = Angle(0, 0, 0)
SWEP.LaserIronsAngle = Angle(0, 0, 0)

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "rpg"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2

SWEP.ActivePos = Vector(0.3, 1, 0.8)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.SprintPos = Vector(0.5, 1, 0.5)
SWEP.SprintAng = Angle(-8.5, 15, -10)

SWEP.CrouchPos = Vector(-0.7, 0.6, 0)
SWEP.CrouchAng = Angle(0, 0, -14)

SWEP.HolsterPos = Vector(-1, -1, 1.2)
SWEP.HolsterAng = Angle(-15, 8, -10)

SWEP.BarrelOffsetSighted = Vector(0, 0, 0)
SWEP.BarrelOffsetHip = Vector(0, 0, 0)

SWEP.CustomizePos = Vector(0, 0, 0)
SWEP.CustomizeAng = Angle(0, 0, 0)

SWEP.BarrelLength = 24

SWEP.BulletBones = {
    [0] = "b_wpn_mag_b1",
    [1] = "b_wpn_mag_b1"
}

SWEP.AttachmentElements = {
    ["o_rail"] = { VMBodygroups = { {ind = 8, bg = 1}, }, },

    ["stock_tube"] = { VMBodygroups = { {ind = 7, bg = 4}, }, },
    ["stock_fold"] = { VMBodygroups = { {ind = 7, bg = 1}, }, },
    ["stock_foldf"] = { VMBodygroups = { {ind = 7, bg = 2}, }, },
    ["stock_imballs"] = { VMBodygroups = { {ind = 7, bg = 3}, }, },

    ["conv_556"] = {
    NameChange = "Relicosseur I2",
    TrueNameChange = "IMBEL-A2",
    VMBodygroups = { {ind = 5, bg = 1}, {ind = 2, bg = 3}, },
    },
    ["x_40"] = { VMBodygroups = { {ind = 5, bg = 1}, {ind = 2, bg = 2}, }, },
    ["c_30"] = { NameChange = [[Trudeau <3]], VMBodygroups = { {ind = 4, bg = 2}, {ind = 2, bg = 1}, },	 },

    ["hg_wood"] = { VMBodygroups = { {ind = 1, bg = 5}, },	AttPosMods = {[4] = { vpos = Vector(0, 0.925, 8.6) },} },
    ["hg_cqc"] = { VMBodygroups = { {ind = 1, bg = 4}, {ind = 9, bg = 4} },	AttPosMods = {[3] = { vpos = Vector(0, 0, 17.1) },} },
    ["hg_para"] = { VMBodygroups = { {ind = 1, bg = 2}, },	AttPosMods = {[4] = { vpos = Vector(0, 1.45, 7) },} },
    ["hg_xs"] = { VMBodygroups = { {ind = 1, bg = 1}, {ind = 9, bg = 1} },	AttPosMods = {[3] = { vpos = Vector(0, 0, 14.5) }, [4] = { vpos = Vector(0, 0.85, 7) },} },
    ["hg_aus"] = { VMBodygroups = { {ind = 1, bg = 6}, {ind = 9, bg = 5} },	AttPosMods = {[3] = { vpos = Vector(0, 0, 25.25) },} },
}

SWEP.Hook_ModifyBodygroups = function(wep, data)
    local vm = data.vm
    local handguard = wep.Attachments[2].Installed
    if wep.Attachments[4].Installed then
        if handguard == "uc_myt_fal_hg_xs" then vm:SetBodygroup(10, 0)
            elseif handguard == "uc_myt_fal_hg_para" then vm:SetBodygroup(10, 2)
            elseif handguard == "uc_myt_fal_hg_l" then vm:SetBodygroup(10, 3)
            else   vm:SetBodygroup(10, 1)
        end
    end

    if wep.Attachments[3].Installed then vm:SetBodygroup(9, 3) end
end

SWEP.ExtraSightDist = 2
SWEP.GuaranteeLaser = false

SWEP.WorldModelOffset = {
    pos = Vector(-5, 3, -5.5),
    ang = Angle(-10, 0, 180)
}

SWEP.MirrorVMWM = true


SWEP.Attachments = {
    {
        PrintName = "Optic",
        DefaultAttName = "Iron Sights",
        InstalledEles = {"o_rail"},
        Slot = {"optic"},
        Bone = "W_Main",
        VMScale = Vector(1, 1, 1),
        Offset = {
            vpos = Vector(-0, -1.6, -5),
            vang = Angle(90, 0, -90),
        },
        MergeSlots = {15},
    },
    {
        PrintName = "Barrel",
        DefaultAttName = "21\" Standard Barrel",
        Slot = "uc_myt_fal_hg",
        Bone = "W_Main",
        Offset = {
            vpos = Vector(3.5, -4.25, -7),
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Muzzle",
        Slot = "muzzle",
        Bone = "W_Main",
        ExcludeFlags = {"fal_nomuz"},
        Offset = {
            vpos = Vector(0, 0, 20),
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Underbarrel",
        Slot = "foregrip",
        Bone = "W_Main",
        Offset = {
            vpos = Vector(0, 1, 8.6),
            vang = Angle(90, 0, -90),
        },
        InstalledEles = {"mount_underbarrel"},
        ExcludeFlags = {"fal_noub"},
        MergeSlots = {13},
    },
    {
        PrintName = "Tactical",
        Slot = "tac",
        Bone = "body",
        Offset = {
            vpos = Vector(-0.8, 0, 17),
            vang = Angle(90, 0, 180),
        },
        InstalledEles = {"mount_tactical"},
    },
    {
        PrintName = "Stock",
        Slot = {"uc_myt_fal_stock"},
        DefaultAttName = "Standard Stock",
        MergeSlots = {14},
    },
    {
        PrintName = "Magazine",
        Slot = "uc_myt_fal_mag",
        DefaultAttName = "20-Round Mag",
        DefaultAttIcon = Material("entities/att/acwatt_ud_m16_mag_30.png", "smooth mips"),
    },
    {
        PrintName = "Ammo Type",
        DefaultAttName = "\"FMJ\" Full Metal Jacket",
        DefaultAttIcon = Material("entities/att/arccw_uc_ammo_generic.png", "mips smooth"),
        Slot = "uc_ammo",
    },
    {
        PrintName = "Powder Load",
        Slot = "uc_powder",
        DefaultAttName = "Standard Load"
    },
    {
        PrintName = "Training Package",
        Slot = "uc_tp",
        DefaultAttName = "Basic Training"
    },
    {
        PrintName = "Internals",
        Slot = "uc_fg",
        DefaultAttName = "Standard Internals"
    },
    {
        PrintName = "Charm",
        Slot = {"charm", "fml_charm", "mp5_charm"},
        FreeSlot = true,
        Bone = "body",
        Offset = {
            vpos = Vector(0.5, 1.3, 3),
            vang = Angle(90, 0, -90),
        },
    },
    {	--13--
        PrintName = "M203 slot",
        Slot = "uc_ubgl",
        Bone = "W_Main",
        Offset = {
            vpos = Vector(0, 0.1, 6.9), -- this is also changed by ModifyBodygroups
            vang = Angle(90, 0, -90),
        },
        Hidden = true,
        InstalledEles = {"mount_underbarrel"},
    },

    {	--14--
        PrintName = "Tube Stock Adaptor",
        Slot = {"go_stock"},
        Hidden = true,
        InstalledEles = {"stock_tube"},
        Bone = "W_Main",
        VMScale = Vector(1.05, 1.05, 1.05),
        Offset = {
            vpos = Vector(0, 0.5, -10.5),
            vang = Angle(90, 0, -90),
        },
    },
    {	--15--
        PrintName = "Optic Sniper",
        InstalledEles = {"o_rail", "blockstrip"},
        Hidden = true,
        Slot = {"optic_sniper"}, -- fuck all optics use this :<
        Bone = "W_Main",
        VMScale = Vector(1, 1, 1),
        Offset = {
            vpos = Vector(-0, -1.6, -5),
            vang = Angle(90, 0, -90),
        },
    },
}

SWEP.Animations = {
    ["idle"] = {
        Source = "idle"
    },
    ["idle_empty"] = {
        Source = "idle_empty",
    },
    ["fix"] = {
        Source = "fix",
        ShellEjectAt = 0.35,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKEaseIn = 0.2,
        LHIKEaseOut = 0.3,
        LHIKOut = 0.7,
        SoundTable = {
            {s = rottle, 			                    t = 0/40},
            {s = path .. "chback.ogg", 		            t = 3/40},
            {s = path .. "chforward.ogg", 		        t = 18/40},
            {s = common .. "shoulder.ogg",              t = 38/40, v = 0.5},
        },
    },
    ["draw"] = {
        Source = "draw",
        SoundTable = {
            {s = common .. "raise.ogg", t = 0},
            {s = common .. "shoulder.ogg", t = 0.15},
            {s = path .. "rattle_3.ogg", t = 0.2},
        },
    },
    ["draw_empty"] = {
        Source = "draw_empty",
        Time = 20 / 30,
        SoundTable = {
            {s = common .. "raise.ogg", t = 0},
            {s = common .. "shoulder.ogg", t = 0.15},
            {s = path .. "rattle_3.ogg", t = 0.2},
        },
    },
    ["ready"] = {
        Source = "deploy",
        LHIK = true,
        LHIKIn = 0.3,
        LHIKEaseIn = 0.4,
        LHIKEaseOut = 0.15,
        LHIKOut = 0.4,
        SoundTable = {
            {s = common .. "raise.ogg", t = 0},
            {s = common .. "rattle.ogg", t = 0.2 + 5/40},
            {s = path .. "chpull.ogg",   t = 18/40},
            {s = common .. "cloth_4.ogg",  t = 0.5 + 5/40},
            {s = path .. "chrelease.ogg",  t = 32/40},
        },
        ProcDraw = false,
    },
    ["holster"] = {
        Source = "holster",
        LHIK = false,
        LHIKIn = 0.3,
        LHIKEaseIn = 0.4,
        LHIKEaseOut = 0.15,
        LHIKOut = 0.4,
        SoundTable = {
            {s = ratel, t = 0},
            {s = common .. "cloth_6.ogg", t = 0.2},
        },
    },
    ["holster_empty"] = {
        Source = "holster_empty",
        LHIK = false,
        LHIKIn = 0.3,
        LHIKEaseIn = 0.4,
        LHIKEaseOut = 0.15,
        LHIKOut = 0.4,
        SoundTable = {
            {s = ratel, t = 0},
            {s = common .. "cloth_6.ogg", t = 0.2},
        },
    },
    ["fire"] = {
        Source = "fire",
        ShellEjectAt = 0.01,
        SoundTable = {{ s = mech, t = 0, v = 0.25 }},
    },
    ["fire_iron"] = {
        Source = "fire",
        ShellEjectAt = 0.01,
        SoundTable = {
            {s = common .. "common_mech_light.ogg", t = 0},
            { s = mech, t = 0 }
        },
    },
    ["fire_empty"] = {
        Source = "fire_empty",
        ShellEjectAt = 0.01,
        SoundTable = {
            {s = common .. "common_mech_light.ogg", t = 0},
            {s = path .. "mech_last.ogg", t = 0}, -- Temporary
        },
    },
    ["fire_iron_empty"] = {
        Source = "fire_empty",
        ShellEjectAt = 0.01,
        SoundTable = {
            {s = common .. "common_mech_light.ogg", t = 0},
            {s = path .. "mech_last.ogg", t = 0}, -- Temporary
        },
    },
    ["reload_empty"] = {
        Source = "reload_empty",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        MinProgress = 132/40,
        LastClip1OutTime = 58/40,
        LHIK = true,
        LHIKIn = 4.275,
        LHIKEaseIn = 0.35,
        LHIKEaseOut = 0.3,
        LHIKOut = 0.7,
        SoundTable = {
            {s = rottle,  t = 0.0},
            {s = path .. "chback.ogg", t = 5/30, v = 1.95},
            {s = path .. "chlock.ogg", t = 13/30, v = 1.95},
            {s = ratel,  t = 23/30},
            {s = rottle,  t = 24/30},
            {s = common .. "magpouch_gear.ogg", t = 25/30},
            {s = path .. "magrel.ogg", t = 27/30},
            {s = path .. "magout.ogg", t = 30/30},
            {s = rottle,  t = 49/30},
            {s = rottle,  t = 55/30},
            {s = {common .. "rifle_magdrop_1.ogg",common .. "rifle_magdrop_2.ogg",common .. "rifle_magdrop_3.ogg",common .. "rifle_magdrop_4.ogg",common .. "rifle_magdrop.ogg"}, t = 51/30, v = 0.25},
            {s = path .. "struggle.ogg", t = 57/30},
            {s = path .. "magin.ogg", t = 62/30},
            {s = rottle,  t = 75/30},
            {s = path .. "chslap.ogg", t = 80/30},
            {s = ratel,  t = 81/30},
            {s = common .. "grab.ogg", t = 87/30},
            {s = common .. "shoulder.ogg", t = 88/30},
        },
    },
    ["reload_empty_40"] = {
        Source = "reload_empty_40",
        RareSourceChance = 100,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        MinProgress = 273/40,
        LastClip1OutTime = 58/40,
        LHIK = true,
        LHIKIn = 7.9,
        LHIKEaseIn = 0.4,
        LHIKEaseOut = 0.3,
        LHIKOut = 0.7,
        SoundTable = {
            {s = rottle,  t = 0.0},
            {s = path .. "chback.ogg", t = 6/30, v = 1.95},
            {s = path .. "chlock.ogg", t = 13/30, v = 1.95},
            {s = ratel,  t = 23/30},
            {s = rottle,  t = 23/30},
            {s = path .. "magrel.ogg", t = 27/30},
            {s = path .. "magout.ogg", t = 30/30},
            {s = common .. "magpouch.ogg", t = 47/30},
            {s = rottle,  t = 49/30},
            {s = rottle,  t = 55/30},
            {s = {common .. "rifle_magdrop_1.ogg",common .. "rifle_magdrop_2.ogg",common .. "rifle_magdrop_3.ogg",common .. "rifle_magdrop_4.ogg",common .. "rifle_magdrop.ogg"}, t = 51/30, v = 0.25},
            {s = path .. "struggle.ogg", t = 57/30},
            {s = path .. "magin.ogg", t = 62/30},
            {s = rottle,  t = 75/30},
            {s = path .. "chslap.ogg", t = 80/30},
            {s = ratel,  t = 81/30},
            {s = common .. "grab.ogg", t = 92/30},
            {s = common .. "shoulder.ogg", t = 93/30},
        },
    },

    ["sgreload_start"] = {
        Source = "sgreload_start",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN,
        LHIK = true,
        LHIKIn = 0.2,
        LHIKEaseIn = 0.2,
        LHIKOut = 0,
        SoundTable = {
            {s = path .. "turn.ogg",  t = 0}, -- Temporary
            {s = rottle,  t = 0.1},
            {s = path .. "grab.ogg",  t = 0.15},
        }
    },
    ["sgreload_insert"] = {
        Source = "sgreload_insert",
        MinProgress = 0.24,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN,
        TPAnimStartTime = 0.3,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0,
        SoundTable = {
            {s = shellin,  t = 0},
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0.05, v = 0.5},
        },
    },
    ["sgreload_insert_5"] = {
        Source = "sgreload_insert_5",
        RestoreAmmo = 5,
        MinProgress = 0.24,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN,
        TPAnimStartTime = 0.3,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0,
        SoundTable = {
            {s = shellin,  t = 0},
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0.05, v = 0.5},
        },
    },
    ["sgreload_insert_10"] = {
        Source = "sgreload_insert_10",
        RestoreAmmo = 10,
        MinProgress = 0.24,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN,
        TPAnimStartTime = 0.3,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0,
        SoundTable = {
            {s = shellin,  t = 0},
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0.05, v = 0.5},
        },
    },
    ["sgreload_finish"] = {
        Source = "sgreload_finish",
        LHIK = true,
        LHIKIn = 0,
        MinProgress = 0.24,
        LHIKEaseOut = 0.2,
        LHIKOut = 0.3,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN,
        TPAnimStartTime = 0.8,
        SoundTable = {
            {s = rottle,  t = 0.2},
            {s = path .. "return.ogg",  t = 0.475}, -- Temporary
            {s = common .. "shoulder.ogg",  t = 0.55},
        },
    },

    ["reload_empty_556"] = {
        Source = "reload_empty_556",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0.5,
        LHIKEaseOut = 0.25,
        MinProgress = 2.1,
        LastClip1OutTime = 50/30,
        SoundTable = {
        },
    },
    ["reload_556"] = {
        Source = "reload_556",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0.5,
        LHIKEaseOut = 0.25,
        MinProgress = 2.1,
        LastClip1OutTime = 50/30,
        SoundTable = {
        },
    },

    ["reload_empty_mag"] = {
        Source = "reload_empty_mag",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0.5,
        LHIKEaseOut = 0.25,
        MinProgress = 2.1,
        LastClip1OutTime = 50/30,
        SoundTable = {
            {s = rottle, 			                    t = 0/40},
            {s = path .. "magout.ogg", 			        t = 3/40},
            {s = rottle, 			                    t = 17/40},
            {s = magdrop, 			                    t = 40/40, v = 0.25},
            {s = common .. "magpouch.ogg",              t = 32/40},
            {s = path .. "magplace.ogg", 		        t = 42/40},
            {s = path .. "magin.ogg", 			        t = 58/40},
            {s = rottle, 			                    t = 69/40},
            {s = path .. "chback.ogg", 		            t = 74/40},
            {s = path .. "chforward.ogg", 		        t = 87/40},
            {s = common .. "shoulder.ogg",              t = 99/40, v = 0.75},
        },
    },
    ["reload_mag"] = {
        Source = "reload_mag",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0.5,
        LHIKEaseOut = 0.25,
        MinProgress = 2.1,
        LastClip1OutTime = 50/30,
        SoundTable = {
            {s = rottle, 			                    t = 0/40},
            {s = path .. "magout.ogg", 			        t = 1/40},
            {s = rottle, 			                    t = 17/40},
            {s = common .. "magpouch.ogg",              t = 32/40},
            {s = path .. "magplace.ogg", 		        t = 40/40},
            {s = path .. "magin.ogg", 			        t = 55/40},
            {s = rottle, 			                    t = 60/40},
            {s = common .. "shoulder.ogg",              t = 69/40, v = 0.25},
        },
    },

    ["bash"] = { Source = "stab", },
    ["bash_empty"] = { Source = "stab_emp", },
    ["bash_bayo"] = { Source = "stab", },
    ["bash_empty_bayo"] = { Source = "stab_emp", },

    ["enter_inspect"] = {
        Source = "inspect_enter",
        LHIK = true,
        LHIKIn = 0.2,
        LHIKOut = 0,
        SoundTable = {
            {s = rottle, t = 0},
            {s = common .. "movement-rifle-02.ogg", t = 0.1},
        },
    },
    ["idle_inspect"] = {
        Source = "inspect_loop",
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0,
    },
    ["exit_inspect"] = {
        Source = "inspect_exit",
        LHIK = true,
        LHIKIn = 0,
        LHIKEaseOut = 0.375,
        LHIKOut = 0.6,
        SoundTable = {
            {s = rottle, 			                    t = 0/40},
            {s = common .. "shoulder.ogg", 	        	t = 88/40, v = .5},
        },
    },
    ["enter_inspect_empty"] = {
        Source = "inspect_enter_empty",
        LHIK = true,
        LHIKIn = 0.2,
        LHIKOut = 0,
        SoundTable = {
            {s = rottle, t = 0},
            {s = common .. "movement-rifle-02.ogg", t = 0.1},
        },
    },
    ["idle_inspect_empty"] = {
        Source = "inspect_loop_empty",
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0,
    },
    ["exit_inspect_empty"] = {
        Source = "inspect_exit_empty",
        LHIK = true,
        LHIKIn = 0,
        LHIKEaseOut = 0.375,
        LHIKOut = 0.6,
        SoundTable = {
            {s = rottle, 			                    t = 0/40},
            {s = common .. "shoulder.ogg", 	        	t = 88/40, v = .5},
        },
    },
}


SWEP.Hook_SelectInsertAnimation = function(wep, data)
    local insertAmt = wep:HasBottomlessClip() and math.huge or math.min(wep:GetCapacity() + wep:GetChamberSize() - wep:Clip1())
    if !wep:HasInfiniteAmmo() then
        insertAmt = math.min(insertAmt, wep:GetOwner():GetAmmoCount(wep:GetPrimaryAmmoType()))
    end
    if !wep.Attachments[15].Installed and insertAmt >= 10 then
        return {count = 10, anim = "sgreload_insert_10", empty = false}
    elseif !wep.Attachments[15].Installed and insertAmt >= 5 then
        return {count = 5, anim = "sgreload_insert_5", empty = false}
    end
end

SWEP.Hook_Think = ArcCW.UC.ADSReload