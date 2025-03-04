return {
    ["pillbox"] = {
        paramedic = {
            model = "s_m_m_scientist_01",
            pos = vector4(-1852.819, -335.5544, 48.44815, 99.20287),
        },
        bossmenu = {
            pos = vector3(-1882.462, -298.296, 83.80048),
            min_grade = 2
        },
        zone = {
            pos = vec3(-1852.915, -338.3285, 49.44427),
            size = vec3(200.0, 200.0, 200.0),
        },
        blip = {
            enable = true,
            name = 'Hôpital',
            type = 61,
            scale = 1.0,
            color = 2,
            pos = vector3(-1852.915, -338.3285, 49.44427),
        },
        respawn = {
            {
                bedPoint = vector4(-1876.611, -298.0148, 49.46915, 144.8574),
                spawnPoint = vector4(-1876.079, -298.716, 48.47784, 47.02624)
            },
            -- {
            -- 	bedPoint = vector4(346.96, -590.64, 44.12, 338.0),
            -- 	spawnPoint = vector4(348.84, -583.36, 42.32, 68.24)
            -- },

        },
        stash = {
            ['ems_stash_1'] = {
                slots = 50,
                weight = 50, -- kg
                min_grade = 0,
                label = 'Ems stash',
                shared = true, -- false if you want to make everyone has a personal stash
                pos = vector3(-1865.127, -325.9807, 49.44815)
            }
        },
        pharmacy = {
            ["ems_shop_1"] = {
                job = true,
                label = "Pharmacy",
                grade = 0, -- works only if job true
                pos = vector3(-1825.708, -383.671, 49.4052),
                blip = {
                    enable = false,
                    name = 'Pharmacy',
                    type = 61,
                    scale = 0.7,
                    color = 2,
                    pos = vector3(315.5516, -598.6013, 43.2918),
                },
                items = {
                    { name = 'medicalbag',    label = "Medical Bag",   icon = "fas fa-briefcase-medical", price = 10 },
                    { name = 'bandage',       label = "Bandage",       icon = "fas fa-bandage",           price = 10 },
                    { name = 'defibrillator', label = "Defibrillator", icon = "fas fa-heartbeat",         price = 10 },
                    { name = 'tweezers',      label = "Tweezers",      icon = "fas fa-tools",             price = 10 },
                    { name = 'burncream',     label = "Burncream",     icon = "fas fa-fire-extinguisher", price = 10 },
                    { name = 'suturekit',     label = "Suturekit",     icon = "fas fa-scissors",          price = 10 },
                    { name = 'icepack',       label = "Ice Pack",      icon = "fas fa-snowflake",         price = 10 },
                }

            },
            --[[["ems_shop_2"] = {
                job = false,
                label = "Pharmacy",
                grade = 0, -- works only if job true
                pos = vector3(303.84, -597.6, 43.28),
                blip = {
                    enable = true,
                    name = 'Pharmacy',
                    type = 61,
                    scale = 0.7,
                    color = 2,
                    pos = vector3(303.84, -597.6, 43.28),
                },
                items = {
                    { name = 'bandage', label = "Bandage", icon = "fas fa-bandage", price = 10 },
                }
            },]]
        },
        garage = {
            ['ems_garage_1'] = {
                pedPos = vector4(-1834.402, -380.1832, 39.70826, 51.04283),
                model = 'mp_m_weapexp_01',
                spawn = vector4(-1839.913, -376.6259, 40.74471, 323.226),
                deposit = vector3(-1839.913, -376.6259, 40.74471),
                driverSpawnCoords = vector3(-1841.2, -372.5716, 40.764),

                vehicles = {
                    {
                        label = 'Ambulance',
                        spawn_code = 'ambulance',
                        min_grade = 3,
                        modifications = {} -- es. {color1 = {255, 12, 25}}
                    },
                }
            }
        },
        clothes = {
            enable = true,
            pos = vector4(-1812.501, -356.3168, 49.46538, 321.1897),
            model = 'a_f_m_bevhills_01',
            male = {
                [1] = {
                    ["Officier"] = {
                        ['mask_1']    = 0,
                        ['mask_2']    = 0,
                        ['arms']      = 0,
                        ['tshirt_1']  = 15,
                        ['tshirt_2']  = 0,
                        ['torso_1']   = 86,
                        ['torso_2']   = 0,
                        ['bproof_1']  = 0,
                        ['bproof_2']  = 0,
                        ['decals_1']  = 0,
                        ['decals_2']  = 0,
                        ['chain_1']   = 0,
                        ['chain_2']   = 0,
                        ['pants_1']   = 10,
                        ['pants_2']   = 2,
                        ['shoes_1']   = 56,
                        ['shoes_2']   = 0,
                        ['helmet_1']  = 34,
                        ['helmet_2']  = 0,
                        ['glasses_1'] = 34,
                        ['glasses_2'] = 1,
                    },
                    ["Sargent"] = {
                        ['mask_1']    = 0,
                        ['mask_2']    = 0,
                        ['arms']      = 0,
                        ['tshirt_1']  = 15,
                        ['tshirt_2']  = 0,
                        ['torso_1']   = 21,
                        ['torso_2']   = 0,
                        ['bproof_1']  = 0,
                        ['bproof_2']  = 0,
                        ['decals_1']  = 0,
                        ['decals_2']  = 0,
                        ['chain_1']   = 0,
                        ['chain_2']   = 0,
                        ['pants_1']   = 10,
                        ['pants_2']   = 2,
                        ['shoes_1']   = 23,
                        ['shoes_2']   = 0,
                        ['helmet_1']  = 34,
                        ['helmet_2']  = 0,
                        ['glasses_1'] = 34,
                        ['glasses_2'] = 1,
                    }
                },
                [2] = {
                    ["Sargent"] = {
                        ['mask_1']    = 0,
                        ['mask_2']    = 0,
                        ['arms']      = 0,
                        ['tshirt_1']  = 15,
                        ['tshirt_2']  = 0,
                        ['torso_1']   = 86,
                        ['torso_2']   = 0,
                        ['bproof_1']  = 0,
                        ['bproof_2']  = 0,
                        ['decals_1']  = 0,
                        ['decals_2']  = 0,
                        ['chain_1']   = 0,
                        ['chain_2']   = 0,
                        ['pants_1']   = 10,
                        ['pants_2']   = 2,
                        ['shoes_1']   = 56,
                        ['shoes_2']   = 0,
                        ['helmet_1']  = 34,
                        ['helmet_2']  = 0,
                        ['glasses_1'] = 34,
                        ['glasses_2'] = 1,
                    }
                },
            },
            female = {
                [1] = {
                    ["Officier"] = {
                        ['mask_1']    = 0,
                        ['mask_2']    = 0,
                        ['arms']      = 0,
                        ['tshirt_1']  = 15,
                        ['tshirt_2']  = 0,
                        ['torso_1']   = 86,
                        ['torso_2']   = 0,
                        ['bproof_1']  = 0,
                        ['bproof_2']  = 0,
                        ['decals_1']  = 0,
                        ['decals_2']  = 0,
                        ['chain_1']   = 0,
                        ['chain_2']   = 0,
                        ['pants_1']   = 10,
                        ['pants_2']   = 2,
                        ['shoes_1']   = 56,
                        ['shoes_2']   = 0,
                        ['helmet_1']  = 34,
                        ['helmet_2']  = 0,
                        ['glasses_1'] = 34,
                        ['glasses_2'] = 1,
                    }
                },
            },
        },
    },
}
