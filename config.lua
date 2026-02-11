Config = {}

Config.DefaultSettings = {
    currencySymbol = '$',
    enableAnimation = true,
    debug = false,
    useTargetSystem = true, -- إذا كنت تستخدم نظام target مثل qb-target
    enableBlips = true
}

Config.Shops = {
    --24/7
    ['24/7supermarket1'] = {
        name = "24/7 Supermarket",
        label = "24/7 Supermarket",
        blip = {id = 52, color = 4, scale = 0.5},
        npc = {
            model = 'mp_m_shopkeep_01',
            coords = vector4(24.5, -1346.5, 29.5, 268.0),
            animation = {dict = 'mp_am_hold_up', anim = 'purchase_handgun'},
            target = {
                distance = 2.5,
                options = {
                    {
                        label = 'Open Shop',
                        icon = 'fas fa-shopping-basket',
                        action = function()
                            TriggerServerEvent('ST-Shop:openShop', '24/7supermarket1')
                        end
                    }
                }
            }
        },
        items = {
            {item = 'tosti', price = 10, display = 'tosti', category = 'food'},
            {item = 'water', price = 5, display = 'Water', category = 'drink'},
            {item = 'sandwich', price = 15, display = 'sandwich', category = 'food'},
            {item = 'cola', price = 5, display = 'cola', category = 'drink'},
            {item = 'beer', price = 20, display = 'beer', category = 'alcohol'},
            {item = 'mountaindew', price = 30, display = 'dew', category = 'drink'},
            {item = 'lighter', price = 2, display = 'Lighter', category = 'tools'}
        },
        whitelist = {
            enabled = false,
            jobs = {}
        }
    },
    ['24/7supermarket2'] = {
        name = "24/7 Supermarket",
        label = "24/7 Supermarket",
        blip = {id = 52, color = 4, scale = 0.5},
        npc = {
            model = 'mp_m_shopkeep_01',
            coords = vector4(2555.531, 380.7753, 108.62, 3.15),
            animation = {dict = 'mp_am_hold_up', anim = 'purchase_handgun'},
            target = {
                distance = 2.5,
                options = {
                    {
                        label = 'Open Shop',
                        icon = 'fas fa-shopping-basket',
                        action = function()
                            TriggerServerEvent('ST-Shop:openShop', '24/7supermarket2')
                        end
                    }
                }
            }
        },
        items = {
            {item = 'tosti', price = 10, display = 'tosti', category = 'food'},
            {item = 'water', price = 5, display = 'Water', category = 'drink'},
            {item = 'sandwich', price = 15, display = 'sandwich', category = 'food'},
            {item = 'cola', price = 5, display = 'cola', category = 'drink'},
            {item = 'beer', price = 20, display = 'beer', category = 'alcohol'},
            {item = 'mountaindew', price = 30, display = 'dew', category = 'drink'},
            {item = 'lighter', price = 2, display = 'Lighter', category = 'tools'}
        },
        whitelist = {
            enabled = false,
            jobs = {}
        }
    },
    ['24/7supermarket3'] = {
        name = "24/7 Supermarket",
        label = "24/7 Supermarket",
        blip = {id = 52, color = 4, scale = 0.5},
        npc = {
            model = 'mp_m_shopkeep_01',
            coords = vector4(373.0044, 328.0462, 103.56, 255.95),
            animation = {dict = 'mp_am_hold_up', anim = 'purchase_handgun'},
            target = {
                distance = 2.5,
                options = {
                    {
                        label = 'Open Shop',
                        icon = 'fas fa-shopping-basket',
                        action = function()
                            TriggerServerEvent('ST-Shop:openShop', '24/7supermarket3')
                        end
                    }
                }
            }
        },
        items = {
            {item = 'tosti', price = 10, display = 'tosti', category = 'food'},
            {item = 'water', price = 5, display = 'Water', category = 'drink'},
            {item = 'sandwich', price = 15, display = 'sandwich', category = 'food'},
            {item = 'cola', price = 5, display = 'cola', category = 'drink'},
            {item = 'beer', price = 20, display = 'beer', category = 'alcohol'},
            {item = 'mountaindew', price = 30, display = 'dew', category = 'drink'},
            {item = 'lighter', price = 2, display = 'Lighter', category = 'tools'}
        },
        whitelist = {
            enabled = false,
            jobs = {}
        }
    },
     ['24/7supermarket4'] = {
        name = "24/7 Supermarket",
        label = "24/7 Supermarket",
        blip = {id = 52, color = 4, scale = 0.5},
        npc = {
            model = 'mp_m_shopkeep_01',
            coords = vector4(-3040.54, 584.0482, 7.9089, 18.4),
            animation = {dict = 'mp_am_hold_up', anim = 'purchase_handgun'},
            target = {
                distance = 2.5,
                options = {
                    {
                        label = 'Open Shop',
                        icon = 'fas fa-shopping-basket',
                        action = function()
                            TriggerServerEvent('ST-Shop:openShop', '24/7supermarket4')
                        end
                    }
                }
            }
        },
        items = {
            {item = 'tosti', price = 10, display = 'tosti', category = 'food'},
            {item = 'water', price = 5, display = 'Water', category = 'drink'},
            {item = 'sandwich', price = 15, display = 'sandwich', category = 'food'},
            {item = 'cola', price = 5, display = 'cola', category = 'drink'},
            {item = 'beer', price = 20, display = 'beer', category = 'alcohol'},
            {item = 'mountaindew', price = 30, display = 'dew', category = 'drink'},
            {item = 'lighter', price = 2, display = 'Lighter', category = 'tools'}
        },
        whitelist = {
            enabled = false,
            jobs = {}
        }
    },
    ['24/7supermarket5'] = {
        name = "24/7 Supermarket",
        label = "24/7 Supermarket",
        blip = {id = 52, color = 4, scale = 0.5},
        npc = {
            model = 'mp_m_shopkeep_01',
            coords = vector4(-3243.91, 1000.140, 12.830, 355.15),
            animation = {dict = 'mp_am_hold_up', anim = 'purchase_handgun'},
            target = {
                distance = 2.5,
                options = {
                    {
                        label = 'Open Shop',
                        icon = 'fas fa-shopping-basket',
                        action = function()
                            TriggerServerEvent('ST-Shop:openShop', '24/7supermarket5')
                        end
                    }
                }
            }
        },
        items = {
            {item = 'tosti', price = 10, display = 'tosti', category = 'food'},
            {item = 'water', price = 5, display = 'Water', category = 'drink'},
            {item = 'sandwich', price = 15, display = 'sandwich', category = 'food'},
            {item = 'cola', price = 5, display = 'cola', category = 'drink'},
            {item = 'beer', price = 20, display = 'beer', category = 'alcohol'},
            {item = 'mountaindew', price = 30, display = 'dew', category = 'drink'},
            {item = 'lighter', price = 2, display = 'Lighter', category = 'tools'}
        },
        whitelist = {
            enabled = false,
            jobs = {}
        }
    },
    ['24/7supermarket6'] = {
        name = "24/7 Supermarket",
        label = "24/7 Supermarket",
        blip = {id = 52, color = 4, scale = 0.5},
        npc = {
            model = 'mp_m_shopkeep_01',
            coords = vector4(2676.629, 3280.213, 55.241, 324.52),
            animation = {dict = 'mp_am_hold_up', anim = 'purchase_handgun'},
            target = {
                distance = 2.5,
                options = {
                    {
                        label = 'Open Shop',
                        icon = 'fas fa-shopping-basket',
                        action = function()
                            TriggerServerEvent('ST-Shop:openShop', '24/7supermarket6')
                        end
                    }
                }
            }
        },
        items = {
            {item = 'tosti', price = 10, display = 'tosti', category = 'food'},
            {item = 'water', price = 5, display = 'Water', category = 'drink'},
            {item = 'sandwich', price = 15, display = 'sandwich', category = 'food'},
            {item = 'cola', price = 5, display = 'cola', category = 'drink'},
            {item = 'beer', price = 20, display = 'beer', category = 'alcohol'},
            {item = 'mountaindew', price = 30, display = 'dew', category = 'drink'},
            {item = 'lighter', price = 2, display = 'Lighter', category = 'tools'}
        },
        whitelist = {
            enabled = false,
            jobs = {}
        }
    },
    ['24/7supermarket7'] = {
        name = "24/7 Supermarket",
        label = "24/7 Supermarket",
        blip = {id = 52, color = 4, scale = 0.5},
        npc = {
            model = 'mp_m_shopkeep_01',
            coords = vector4(1959.276, 3741.477, 32.343, 293.17),
            animation = {dict = 'mp_am_hold_up', anim = 'purchase_handgun'},
            target = {
                distance = 2.5,
                options = {
                    {
                        label = 'Open Shop',
                        icon = 'fas fa-shopping-basket',
                        action = function()
                            TriggerServerEvent('ST-Shop:openShop', '24/7supermarket7')
                        end
                    }
                }
            }
        },
        items = {
            {item = 'tosti', price = 10, display = 'tosti', category = 'food'},
            {item = 'water', price = 5, display = 'Water', category = 'drink'},
            {item = 'sandwich', price = 15, display = 'sandwich', category = 'food'},
            {item = 'cola', price = 5, display = 'cola', category = 'drink'},
            {item = 'beer', price = 20, display = 'beer', category = 'alcohol'},
            {item = 'mountaindew', price = 30, display = 'dew', category = 'drink'},
            {item = 'lighter', price = 2, display = 'Lighter', category = 'tools'}
        },
        whitelist = {
            enabled = false,
            jobs = {}
        }
    },
    ['24/7supermarket8'] = {
        name = "24/7 Supermarket",
        label = "24/7 Supermarket",
        blip = {id = 52, color = 4, scale = 0.5},
        npc = {
            model = 'mp_m_shopkeep_01',
            coords = vector4(1728.567, 6416.705, 35.037, 245.27),
            animation = {dict = 'mp_am_hold_up', anim = 'purchase_handgun'},
            target = {
                distance = 2.5,
                options = {
                    {
                        label = 'Open Shop',
                        icon = 'fas fa-shopping-basket',
                        action = function()
                            TriggerServerEvent('ST-Shop:openShop', '24/7supermarket8')
                        end
                    }
                }
            }
        },
        items = {
            {item = 'tosti', price = 10, display = 'tosti', category = 'food'},
            {item = 'water', price = 5, display = 'Water', category = 'drink'},
            {item = 'sandwich', price = 15, display = 'sandwich', category = 'food'},
            {item = 'cola', price = 5, display = 'cola', category = 'drink'},
            {item = 'beer', price = 20, display = 'beer', category = 'alcohol'},
            {item = 'mountaindew', price = 30, display = 'dew', category = 'drink'},
            {item = 'lighter', price = 2, display = 'Lighter', category = 'tools'}
        },
        whitelist = {
            enabled = false,
            jobs = {}
        }
    },
    ['24/7supermarket9'] = {
        name = "24/7 Supermarket",
        label = "24/7 Supermarket",
        blip = {id = 52, color = 4, scale = 0.5},
        npc = {
            model = 'mp_m_shopkeep_01',
            coords = vector4(549.3123, 2669.726, 42.156, 97.89),
            animation = {dict = 'mp_am_hold_up', anim = 'purchase_handgun'},
            target = {
                distance = 2.5,
                options = {
                    {
                        label = 'Open Shop',
                        icon = 'fas fa-shopping-basket',
                        action = function()
                            TriggerServerEvent('ST-Shop:openShop', '24/7supermarket9')
                        end
                    }
                }
            }
        },
        items = {
            {item = 'tosti', price = 10, display = 'tosti', category = 'food'},
            {item = 'water', price = 5, display = 'Water', category = 'drink'},
            {item = 'sandwich', price = 15, display = 'sandwich', category = 'food'},
            {item = 'cola', price = 5, display = 'cola', category = 'drink'},
            {item = 'beer', price = 20, display = 'beer', category = 'alcohol'},
            {item = 'mountaindew', price = 30, display = 'dew', category = 'drink'},
            {item = 'lighter', price = 2, display = 'Lighter', category = 'tools'}
        },
        whitelist = {
            enabled = false,
            jobs = {}
        }
    },
    --LTD
    ['LTDsupermarket1'] = {
        name = "LTD Supermarket",
        label = "LTD Supermarket",
        blip = {id = 52, color = 4, scale = 0.5},
        npc = {
            model = 'mp_m_shopkeep_01',
            coords = vector4(-47.4158, -1758.76, 29.420, 45.88),
            animation = {dict = 'mp_am_hold_up', anim = 'purchase_handgun'},
            target = {
                distance = 2.5,
                options = {
                    {
                        label = 'Open Shop',
                        icon = 'fas fa-shopping-basket',
                        action = function()
                            TriggerServerEvent('ST-Shop:openShop', 'LTDsupermarket1')
                        end
                    }
                }
            }
        },
        items = {
            {item = 'tosti', price = 10, display = 'tosti', category = 'food'},
            {item = 'water', price = 5, display = 'Water', category = 'drink'},
            {item = 'sandwich', price = 15, display = 'sandwich', category = 'food'},
            {item = 'cola', price = 5, display = 'cola', category = 'drink'},
            {item = 'beer', price = 20, display = 'beer', category = 'alcohol'},
            {item = 'mountaindew', price = 30, display = 'dew', category = 'drink'},
            {item = 'lighter', price = 2, display = 'Lighter', category = 'tools'}
        },
        whitelist = {
            enabled = false,
            jobs = {}
        }
    },
    ['LTDsupermarket2'] = {
        name = "LTD Supermarket",
        label = "LTD Supermarket",
        blip = {id = 52, color = 4, scale = 0.5},
        npc = {
            model = 'mp_m_shopkeep_01',
            coords = vector4(-706.156, -914.571, 19.215, 87.57),
            animation = {dict = 'mp_am_hold_up', anim = 'purchase_handgun'},
            target = {
                distance = 2.5,
                options = {
                    {
                        label = 'Open Shop',
                        icon = 'fas fa-shopping-basket',
                        action = function()
                            TriggerServerEvent('ST-Shop:openShop', 'LTDsupermarket2')
                        end
                    }
                }
            }
        },
        items = {
            {item = 'tosti', price = 10, display = 'tosti', category = 'food'},
            {item = 'water', price = 5, display = 'Water', category = 'drink'},
            {item = 'sandwich', price = 15, display = 'sandwich', category = 'food'},
            {item = 'cola', price = 5, display = 'cola', category = 'drink'},
            {item = 'beer', price = 20, display = 'beer', category = 'alcohol'},
            {item = 'mountaindew', price = 30, display = 'dew', category = 'drink'},
            {item = 'lighter', price = 2, display = 'Lighter', category = 'tools'}
        },
        whitelist = {
            enabled = false,
            jobs = {}
        }
    },
    ['LTDsupermarket3'] = {
        name = "LTD Supermarket",
        label = "LTD Supermarket",
        blip = {id = 52, color = 4, scale = 0.5},
        npc = {
            model = 'mp_m_shopkeep_01',
            coords = vector4(1164.912, -323.647, 69.205, 101.54),
            animation = {dict = 'mp_am_hold_up', anim = 'purchase_handgun'},
            target = {
                distance = 2.5,
                options = {
                    {
                        label = 'Open Shop',
                        icon = 'fas fa-shopping-basket',
                        action = function()
                            TriggerServerEvent('ST-Shop:openShop', 'LTDsupermarket3')
                        end
                    }
                }
            }
        },
        items = {
            {item = 'tosti', price = 10, display = 'tosti', category = 'food'},
            {item = 'water', price = 5, display = 'Water', category = 'drink'},
            {item = 'sandwich', price = 15, display = 'sandwich', category = 'food'},
            {item = 'cola', price = 5, display = 'cola', category = 'drink'},
            {item = 'beer', price = 20, display = 'beer', category = 'alcohol'},
            {item = 'mountaindew', price = 30, display = 'dew', category = 'drink'},
            {item = 'lighter', price = 2, display = 'Lighter', category = 'tools'}
        },
        whitelist = {
            enabled = false,
            jobs = {}
        }
    },
    ['LTDsupermarket4'] = {
        name = "LTD Supermarket",
        label = "LTD Supermarket",
        blip = {id = 52, color = 4, scale = 0.5},
        npc = {
            model = 'mp_m_shopkeep_01',
            coords = vector4(-1819.50, 793.4622, 138.08, 133.16),
            animation = {dict = 'mp_am_hold_up', anim = 'purchase_handgun'},
            target = {
                distance = 2.5,
                options = {
                    {
                        label = 'Open Shop',
                        icon = 'fas fa-shopping-basket',
                        action = function()
                            TriggerServerEvent('ST-Shop:openShop', 'LTDsupermarket4')
                        end
                    }
                }
            }
        },
        items = {
            {item = 'tosti', price = 10, display = 'tosti', category = 'food'},
            {item = 'water', price = 5, display = 'Water', category = 'drink'},
            {item = 'sandwich', price = 15, display = 'sandwich', category = 'food'},
            {item = 'cola', price = 5, display = 'cola', category = 'drink'},
            {item = 'beer', price = 20, display = 'beer', category = 'alcohol'},
            {item = 'mountaindew', price = 30, display = 'dew', category = 'drink'},
            {item = 'lighter', price = 2, display = 'Lighter', category = 'tools'}
        },
        whitelist = {
            enabled = false,
            jobs = {}
        }
    },
    ['LTDsupermarket5'] = {
        name = "LTD Supermarket",
        label = "LTD Supermarket",
        blip = {id = 52, color = 4, scale = 0.5},
        npc = {
            model = 'mp_m_shopkeep_01',
            coords = vector4(1697.332, 4923.458, 42.063, 330.0),
            animation = {dict = 'mp_am_hold_up', anim = 'purchase_handgun'},
            target = {
                distance = 2.5,
                options = {
                    {
                        label = 'Open Shop',
                        icon = 'fas fa-shopping-basket',
                        action = function()
                            TriggerServerEvent('ST-Shop:openShop', 'LTDsupermarket5')
                        end
                    }
                }
            }
        },
        items = {
            {item = 'tosti', price = 10, display = 'tosti', category = 'food'},
            {item = 'water', price = 5, display = 'Water', category = 'drink'},
            {item = 'sandwich', price = 15, display = 'sandwich', category = 'food'},
            {item = 'cola', price = 5, display = 'cola', category = 'drink'},
            {item = 'beer', price = 20, display = 'beer', category = 'alcohol'},
            {item = 'mountaindew', price = 30, display = 'dew', category = 'drink'},
            {item = 'lighter', price = 2, display = 'Lighter', category = 'tools'}
        },
        whitelist = {
            enabled = false,
            jobs = {}
        }
    },
    --Rob's Liquor
    ['Liquorsupermarket1'] = {
        name = "Liquors Supermarket",
        label = "Liquors Supermarket",
        blip = {id = 52, color = 4, scale = 0.5},
        npc = {
            model = 'mp_m_shopkeep_01',
            coords = vector4(1134.127, -981.788, 46.415, 274.46),
            animation = {dict = 'mp_am_hold_up', anim = 'purchase_handgun'},
            target = {
                distance = 2.5,
                options = {
                    {
                        label = 'Open Shop',
                        icon = 'fas fa-shopping-basket',
                        action = function()
                            TriggerServerEvent('ST-Shop:openShop', 'Liquorsupermarket1')
                        end
                    }
                }
            }
        },
        items = {
            {item = 'tosti', price = 10, display = 'tosti', category = 'food'},
            {item = 'water', price = 5, display = 'Water', category = 'drink'},
            {item = 'sandwich', price = 15, display = 'sandwich', category = 'food'},
            {item = 'cola', price = 5, display = 'cola', category = 'drink'},
            {item = 'beer', price = 20, display = 'beer', category = 'alcohol'},
            {item = 'mountaindew', price = 30, display = 'dew', category = 'drink'},
            {item = 'lighter', price = 2, display = 'Lighter', category = 'tools'}
        },
        whitelist = {
            enabled = false,
            jobs = {}
        }
    },
    ['Liquorsupermarket2'] = {
        name = "Liquors Supermarket",
        label = "Liquors Supermarket",
        blip = {id = 52, color = 4, scale = 0.5},
        npc = {
            model = 'mp_m_shopkeep_01',
            coords = vector4(-1222.47, -908.693, 12.326, 36.9),
            animation = {dict = 'mp_am_hold_up', anim = 'purchase_handgun'},
            target = {
                distance = 2.5,
                options = {
                    {
                        label = 'Open Shop',
                        icon = 'fas fa-shopping-basket',
                        action = function()
                            TriggerServerEvent('ST-Shop:openShop', 'Liquorsupermarket2')
                        end
                    }
                }
            }
        },
        items = {
            {item = 'tosti', price = 10, display = 'tosti', category = 'food'},
            {item = 'water', price = 5, display = 'Water', category = 'drink'},
            {item = 'sandwich', price = 15, display = 'sandwich', category = 'food'},
            {item = 'cola', price = 5, display = 'cola', category = 'drink'},
            {item = 'beer', price = 20, display = 'beer', category = 'alcohol'},
            {item = 'mountaindew', price = 30, display = 'dew', category = 'drink'},
            {item = 'lighter', price = 2, display = 'Lighter', category = 'tools'}
        },
        whitelist = {
            enabled = false,
            jobs = {}
        }
    },
    ['Liquorsupermarket3'] = {
        name = "Liquors Supermarket",
        label = "Liquors Supermarket",
        blip = {id = 52, color = 4, scale = 0.5},
        npc = {
            model = 'mp_m_shopkeep_01',
            coords = vector4(-1485.80, -378.475, 40.163, 134.76),
            animation = {dict = 'mp_am_hold_up', anim = 'purchase_handgun'},
            target = {
                distance = 2.5,
                options = {
                    {
                        label = 'Open Shop',
                        icon = 'fas fa-shopping-basket',
                        action = function()
                            TriggerServerEvent('ST-Shop:openShop', 'Liquorsupermarket3')
                        end
                    }
                }
            }
        },
        items = {
            {item = 'tosti', price = 10, display = 'tosti', category = 'food'},
            {item = 'water', price = 5, display = 'Water', category = 'drink'},
            {item = 'sandwich', price = 15, display = 'sandwich', category = 'food'},
            {item = 'cola', price = 5, display = 'cola', category = 'drink'},
            {item = 'beer', price = 20, display = 'beer', category = 'alcohol'},
            {item = 'mountaindew', price = 30, display = 'dew', category = 'drink'},
            {item = 'lighter', price = 2, display = 'Lighter', category = 'tools'}
        },
        whitelist = {
            enabled = false,
            jobs = {}
        }
    },
    ['Liquorsupermarket4'] = {
        name = "Liquors Supermarket",
        label = "Liquors Supermarket",
        blip = {id = 52, color = 4, scale = 0.5},
        npc = {
            model = 'mp_m_shopkeep_01',
            coords = vector4(-2966.42, 390.2493, 15.043, 89.95),
            animation = {dict = 'mp_am_hold_up', anim = 'purchase_handgun'},
            target = {
                distance = 2.5,
                options = {
                    {
                        label = 'Open Shop',
                        icon = 'fas fa-shopping-basket',
                        action = function()
                            TriggerServerEvent('ST-Shop:openShop', 'Liquorsupermarket4')
                        end
                    }
                }
            }
        },
        items = {
            {item = 'tosti', price = 10, display = 'tosti', category = 'food'},
            {item = 'water', price = 5, display = 'Water', category = 'drink'},
            {item = 'sandwich', price = 15, display = 'sandwich', category = 'food'},
            {item = 'cola', price = 5, display = 'cola', category = 'drink'},
            {item = 'beer', price = 20, display = 'beer', category = 'alcohol'},
            {item = 'mountaindew', price = 30, display = 'dew', category = 'drink'},
            {item = 'lighter', price = 2, display = 'Lighter', category = 'tools'}
        },
        whitelist = {
            enabled = false,
            jobs = {}
        }
    },

    ['Liquorsupermarket5'] = {
        name = "Liquor Supermarket",
        label = "Liquor Supermarket",
        blip = {id = 52, color = 4, scale = 0.5},
        npc = {
            model = 'mp_m_shopkeep_01',
            coords = vector4(1166.651, 2710.746, 38.157, 167.98),
            animation = {dict = 'mp_am_hold_up', anim = 'purchase_handgun'},
            target = {
                distance = 2.5,
                options = {
                    {
                        label = 'Open Shop',
                        icon = 'fas fa-shopping-basket',
                        action = function()
                            TriggerServerEvent('ST-Shop:openShop', 'Liquorsupermarket5')
                        end
                    }
                }
            }
        },
        items = {
            {item = 'tosti', price = 10, display = 'tosti', category = 'food'},
            {item = 'water', price = 5, display = 'Water', category = 'drink'},
            {item = 'sandwich', price = 15, display = 'sandwich', category = 'food'},
            {item = 'cola', price = 5, display = 'cola', category = 'drink'},
            {item = 'beer', price = 20, display = 'beer', category = 'alcohol'},
            {item = 'mountaindew', price = 30, display = 'dew', category = 'drink'},
            {item = 'lighter', price = 2, display = 'Lighter', category = 'tools'}
        },
        whitelist = {
            enabled = false,
            jobs = {}
        }
    },
   
    ['ammunation'] = {
        name = "Ammunation",
        label = "Ammunation",
        blip = {id = 110, color = 1, scale = 0.5},
        npc = {
            model = 's_m_y_ammucity_01',
            coords = vector4(22.53541, -1105.52, 29.797, 162.52),
            animation = {dict = 'anim@heists@heist_corona@single_team', anim = 'single_team_loop_boss'},
            target = {
                distance = 2.5,
                options = {
                    {
                        label = 'Open Ammunation',
                        icon = 'fas fa-gun',
                        action = function()
                            TriggerServerEvent('ST-Shop:openShop', 'ammunation')
                        end
                    }
                }
            }
        },
        items = {
            {item = 'weapon_knife', price = 100, display = 'Knife', category = 'weapons'},
            {item = 'weapon_flashlight', price = 100, display = 'Flashlight', category = 'weapons'},
            {item = 'weapon_dagger', price = 100, display = 'Dagger', category = 'weapons'},
            {item = 'weapon_hammer', price = 50, display = 'Hammer', category = 'weapons'}
        },
        whitelist = {
            enabled = false,
            jobs = {}
            -- license = 'weapon'
        }
    },
    --tools
    ['ToolsShop'] = {
        name = "Tools Shop",
        label = "Tools Shop",
        blip = {id = 544, color = 81, scale = 0.8},
        npc = {
            model = 's_m_y_armymech_01',
            coords = vector4(2749.041, 3482.226, 55.666, 149.69),
            animation = {dict = 'mp_am_hold_up', anim = 'purchase_handgun'},
            target = {
                distance = 2.5,
                options = {
                    {
                        label = 'Open Shop',
                        icon = 'fa-solid fa-screwdriver-wrench',
                        action = function()
                            TriggerServerEvent('ST-Shop:openShop', 'ToolsShop')
                        end
                    }
                }
            }
        },
        items = {
            {item = 'lockpick', price = 15, display = 'Lockpick', category = 'tools'},
            {item = 'parachute', price = 25, display = 'Parachute', category = 'tools'},
            {item = 'diving_gear', price = 100, display = 'Diving Gear', category = 'tools'},
            {item = 'a4sheets', price = 10, display = 'A4 Sheets', category = 'tools'},
            {item = 'head_bag', price = 10, display = 'Head Bag', category = 'tools'},
            {item = 'lighter', price = 5, display = 'Lighter', category = 'tools'}
        },
        whitelist = {
            enabled = false,
            jobs = {}
        }
    },

    --jobs
    ['police'] = {
        name = "police",
        label = "police",
        blip = {id = 52, color = 4, scale = 0.5},
        -- ما في npc → يشتغل BoxZone
        coords = vector4(482.4355, -1005.34, 28.928, 90.55),
        items = {
            {item = 'tosti', price = 10, display = 'tosti', category = 'food'},
            {item = 'water', price = 5, display = 'Water', category = 'drink'},
            {item = 'sandwich', price = 15, display = 'sandwich', category = 'food'},
            {item = 'cola', price = 5, display = 'cola', category = 'drink'},
            {item = 'beer', price = 20, display = 'beer', category = 'alcohol'},
            {item = 'mountaindew', price = 30, display = 'dew', category = 'drink'},
            {item = 'lighter', price = 2, display = 'Lighter', category = 'tools'}
        },
        whitelist = {
            enabled = false,
            jobs = {}
        }
    },

}

