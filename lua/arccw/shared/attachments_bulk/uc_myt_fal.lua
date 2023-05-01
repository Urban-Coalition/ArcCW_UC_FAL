-- Call ArcCW.LoadAttachmentType(att, "attachment_name") to define attachments in bulk
-- This reduces loading times by reducing the amount of lua files needed.



-- Magazines/Caliber Conversions ---------------------------------------------------------
local att = {}

att.PrintName = "IMBEL-A2 30-Round STANAG Mag"
att.AbbrevName = "30-Round 5.56 Mag"

att.Icon = Material("entities/att/ue_fal/r_imbel.png", "smooth mips")
att.Description = "The South Division did not need such stopping power of a full blown cartridge, instead opted for a more conventional magazine in an intermediate calibre."
att.Desc_Pros = {}
att.Desc_Cons = {}
att.Desc_Neutrals = {}
att.Slot = "uc_myt_scar_mag"
att.SortOrder = 30 + 56

att.Override_Ammo = "smg1"
att.Override_Trivia_Calibre = "5.56x45mm NATO"
att.Override_Trivia_Class = "Assault Rifle"

att.Mult_RPM = 1.083 -- 650 rpm
att.Mult_SightedSpeedMult = 1.05
att.Mult_ReloadTime = .95
att.Mult_Recoil = 0.45
att.Mult_HipDispersion = .75

att.Mult_Penetration = 14 / 20
att.Mult_DamageMin = 20 / 35
att.Mult_Damage = 34 / 65
att.ShootPitchVariation = 1
att.Override_ShellModel = "models/weapons/arccw/uc_shells/556x45.mdl"
att.Override_ShellScale = 1

att.GivesFlags = {"cal_556"}
att.Override_ShotgunReload = false
att.Override_HybridReload = false

att.AutoStats = true
att.HideIfBlocked = true

att.Override_ClipSize = 30

att.ActivateElements = {"conv_556"}

local path = ")weapons/uc_osk/"
local common = ")/arccw_uc/common/"
local tail556 = ")/arccw_uc/common/556x45/"
local fire556dist = {tail556 .. "fire-dist-556x45-rif-ext-01.ogg", tail556 .. "fire-dist-556x45-rif-ext-02.ogg", tail556 .. "fire-dist-556x45-rif-ext-03.ogg", tail556 .. "fire-dist-556x45-rif-ext-04.ogg", tail556 .. "fire-dist-556x45-rif-ext-05.ogg", tail556 .. "fire-dist-556x45-rif-ext-06.ogg"}
local fire556distint = {tail556 .. "fire-dist-556x45-rif-int-01.ogg", tail556 .. "fire-dist-556x45-rif-int-02.ogg", tail556 .. "fire-dist-556x45-rif-int-03.ogg", tail556 .. "fire-dist-556x45-rif-int-04.ogg", tail556 .. "fire-dist-556x45-rif-int-05.ogg", tail556 .. "fire-dist-556x45-rif-int-06.ogg"}
local fire556 = {path .. "fire-556-01.ogg", path .. "fire-556-02.ogg", path .. "fire-556-03.ogg", path .. "fire-556-04.ogg", path .. "fire-556-05.ogg", path .. "fire-556-06.ogg"}
local fire556supp = {path .. "fire-556-sup-01.ogg", path .. "fire-556-sup-02.ogg", path .. "fire-556-sup-03.ogg", path .. "fire-556-sup-04.ogg", path .. "fire-556-sup-05.ogg", path .. "fire-556-sup-06.ogg"}

att.Hook_GetShootSound = function(wep, fsound)
    if wep:GetBuff_Override("Silencer") then
        return fire556supp
    else
        return fire556
    end
end

att.Hook_GetDistantShootSoundOutdoors = function(wep, distancesound)
    if wep:GetBuff_Override("Silencer") then
        -- fallback to script
    else
        return fire556dist
    end
end

att.Hook_GetDistantShootSoundIndoors = function(wep, distancesound)
    if wep:GetBuff_Override("Silencer") then
        -- fallback to script
    else
        return fire556distint
    end
end

att.Hook_SelectReloadAnimation = function(wep, anim)
    return anim .. "_556"
end

att.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_556"
end

ArcCW.LoadAttachmentType(att, "uc_myt_fal_cal_556")

---------------------------------------------------------------------------------------------------------------------


-- Stocks ---------------------------------------------------------
local att = {}

att.PrintName = "Folding Stock"
att.Icon = Material("entities/att/ue_fal/s_fold.png", "smooth mips")
att.Description = "Skeleton stock. Completes with ARM CLIPPING when folded"
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Ignore = false
att.Slot = "uc_myt_fal_stock"

att.AutoStats = true
att.SortOrder = 4

att.Add_BarrelLength = 0

att.ToggleStats = {
    {
        PrintName = "Extended",
        AutoStats = true,
        ActivateElements = {"stock_fold"},
		Mult_HipDispersion = 0.75,
		Mult_MoveDispersion = 0.85,
		Mult_SightTime = 1.15,
		Mult_Recoil = 1.25,
		Mult_Sway = 1.5,
    },
    {
        PrintName = "Collapsed",
        AutoStats = true,
        Mult_HipDispersion = 0.6,
        Mult_MoveDispersion = 0.6,
        Mult_RecoilSide = 2,
        ActivateElements = {"stock_foldf"},
    },
}

ArcCW.LoadAttachmentType(att, "uc_myt_fal_stock_fold")



local att = {}

-- Barrels ---------------------------------------------------------
att.PrintName = "20\" Wood Barrel"
att.Icon = Material("entities/att/ue_scar/u_rail.png", "smooth mips")
att.Description = "Extended barrel with added wood. Bayonetta"
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "uc_myt_fal_hg"

att.AutoStats = true
att.SortOrder = 20

att.Mult_SightTime = 1.15
att.Mult_SightedSpeedMult = 0.9
att.Mult_HipDispersion = 1.2

att.Mult_Recoil = 0.8
att.Mult_AccuracyMOA = 0.75
att.Mult_Range = 1.5
att.Mult_RPM = 0.9
att.Mult_Sway = 1.2

att.Add_BarrelLength = 5
att.Mult_PhysBulletMuzzleVelocity = 0.8

att.ActivateElements = {"hg_l"}
ArcCW.LoadAttachmentType(att, "uc_myt_scar_hg_l")

local att = {}

att.PrintName = "24\" MKX Barrel"
att.Icon = Material("entities/att/ue_scar/u_20.png", "smooth mips")
att.Description = "Extended barrel with added handguard. Texture scretching galore."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "uc_myt_scar_hg"

att.AutoStats = true
att.SortOrder = 24

att.Mult_SightTime = 1.2
att.Mult_SightedSpeedMult = 0.7
att.Mult_HipDispersion = 1.25

att.Mult_Recoil = 0.75
att.Mult_AccuracyMOA = 0.65
att.Mult_Range = 2
att.Mult_RPM = 0.875
att.Mult_Sway = 1.5

att.Add_BarrelLength = 8
att.Mult_PhysBulletMuzzleVelocity = 1.2

att.ActivateElements = {"hg_20"}
ArcCW.LoadAttachmentType(att, "uc_myt_scar_hg_20")

local att = {}

att.PrintName = "10\" CQC Barrel"
att.Icon = Material("entities/att/ue_scar/u_xs.png", "smooth mips")
att.Description = "Carbine length handguard and barrel package."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "uc_myt_scar_hg"

att.AutoStats = true
att.SortOrder = 10

att.LHIK = true
att.LHIK_Priority = -20
att.Model = "models/weapons/arccw/c_uc_myt_scar.mdl"
att.ModelBodygroups = "1460563944"
att.DroppedModel = "models/items/boxsrounds.mdl"
att.ModelOffset = (Vector(0.41, 0, -1.63) - Vector(3.5, 0, -3.2))

att.Mult_SightTime = 0.85
att.Mult_SpeedMult = 1.025
att.Mult_SightedSpeedMult = 1.1
att.Mult_HipDispersion = 0.7

att.Mult_RPM = 1.15
att.Mult_Recoil = 1.5
att.Mult_AccuracyMOA = 2
att.Mult_Range = 0.5
att.Mult_Sway = 0.75

att.Add_BarrelLength = -6
att.Mult_PhysBulletMuzzleVelocity = 0.729167

att.ActivateElements = {"hg_s", "hg_short"}
att.ExcludeFlags = {"conv_ak70"}
ArcCW.LoadAttachmentType(att, "uc_myt_scar_hg_s")

local att = {}

att.PrintName = "6.5\" PDW Barrel"
att.Icon = Material("entities/att/ue_scar/u_s.png", "smooth mips")
att.Description = "Shoot your finger off with this one trick."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "uc_myt_scar_hg"

att.AutoStats = true
att.SortOrder = 6.5

att.LHIK = true
att.LHIK_Priority = -20
att.Model = "models/weapons/arccw/c_uc_myt_scar.mdl"
att.ModelBodygroups = "1460563944"
att.DroppedModel = "models/items/boxsrounds.mdl"
att.ModelOffset = (Vector(0.41, 0, -1.63) - Vector(5, 0, -3.2))

att.Mult_SightTime = 0.85
att.Mult_SpeedMult = 1.025
att.Mult_SightedSpeedMult = 1.1
att.Mult_HipDispersion = 0.7

att.Mult_RPM = 1.25
att.Mult_Recoil = 1.75
att.Mult_AccuracyMOA = 2.5
att.Mult_Range = 0.35
att.Mult_Sway = 0.7

att.Add_BarrelLength = -10
att.Mult_PhysBulletMuzzleVelocity = 0.65

att.ActivateElements = {"hg_xs", "hg_short"}
att.ExcludeFlags = {"conv_ak70"}
ArcCW.LoadAttachmentType(att, "uc_myt_scar_hg_xs")



local att = {}

att.PrintName = "16\" Whisper Barrel"
att.Icon = Material("entities/att/ue_scar/u_sd.png", "smooth mips")
att.Description = "Mytton, youre susposed to stop digging up dead horses"
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "uc_myt_scar_hg"

att.AutoStats = true
att.SortOrder = 16

att.Silencer = true
att.SDBarrel = true
att.Override_MuzzleEffect = "muzzleflash_suppressed"

att.Mult_SightTime = 1.05

att.Mult_Range = 0.85
att.Mult_Recoil = 0.95
att.Mult_AccuracyMOA = 1.15
att.Mult_HipDispersion = 0.9

att.Add_BarrelLength = 4
att.Mult_PhysBulletMuzzleVelocity = 1.2

att.Override_Jamming = true
att.Override_HeatLockout = false
att.Override_HeatFix = false
att.Override_HeatCapacity = 90
att.Override_HeatDelayTime = 2
att.Override_HeatDissipation = 7.5

att.Mult_ShootVol = 0.65

att.ActivateElements = {"hg_sd"}
att.GivesFlags = {"sd"}
ArcCW.LoadAttachmentType(att, "uc_myt_scar_hg_sd")



-- Grips ---------------------------------------------------------

local att = {}

att.PrintName = "Flat Grip"
att.Icon = Material("entities/att/acwatt_ud_m16_stock_608.png", "smooth mips")
att.Description = "you cant even fucking see it"
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "uc_myt_scar_grip"

att.AutoStats = true

att.ActivateElements = {"grip_flat"}
ArcCW.LoadAttachmentType(att, "uc_myt_scar_grip_flat")

local att = {}

att.PrintName = "Skeleton Grip"
att.Icon = Material("entities/att/acwatt_ud_m16_stock_608.png", "smooth mips")
att.Description = "Hollow Knight Silksong"
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "uc_myt_scar_grip"

att.AutoStats = true

att.ActivateElements = {"grip_hollow"}
ArcCW.LoadAttachmentType(att, "uc_myt_scar_grip_ske")
