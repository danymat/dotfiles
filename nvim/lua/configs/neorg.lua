require('neorg').setup {
    load = {
        ["core.defaults"] = {},
        ["core.keybinds"] = {
            config = {
                default_keybinds = true,
                neorg_leader = "<Leader>o"
            }
        },
        ["core.norg.concealer"] = {}, -- Allows for use of icons
        ["core.norg.dirman"] = { -- Manage your directories with Neorg
            config = {
                workspaces = {
                    main = "~/neorg",
                    gtd = "~/gtd"
                }
            }
        },
        ["core.gtd.base"] = {
            config = {
                workspace = "gtd",
                exclude = { "gtd.norg", "neogen.norg" }
            }
        },
        ["core.integrations.telescope"] = {},
        ["core.norg.completion"] = {
            config = {
                engine = "nvim-cmp"
            }
        },
    },
    logger = {
		level = "info" -- Show trace, info, warning, error and fatal messages
	}
}
