require("neorg").setup({
	load = {
		["core.defaults"] = {},
		["core.keybinds"] = {
			config = {
				default_keybinds = true,
				neorg_leader = "<Leader>o",
			},
		},
		["core.norg.concealer"] = {
			config = {
				icon_preset = "diamond",
                markup = { enable = false },
			},
		}, -- Allows for use of icons
		["core.norg.dirman"] = { -- Manage your directories with Neorg
			config = {
				workspaces = {
					gtd = "~/Documents/000 Meta/00.03 gtd",
					work = "~/Documents/000 Meta/00.04 work/",
					insa = "~/Documents/101 Personnel/40-49 Insa/46 5A/101.46.00 Notes",
					hack = "~/Documents/000 Meta/00.05 hack",
					test = "~/Developer/neorg_test",
				},
			},
		},

		["core.gtd.base"] = {
			config = {
				workspace = "gtd",
				-- workspace = "test",
				exclude = { "gtd.norg", "neogen.norg", "kenaos.norg" },
				-- custom_tag_completion = true,
			},
		},
		["core.presenter"] = {
			config = {
				zen_mode = "truezen",
			},
		},

		-- ["core.integrations.telescope"] = {},
		["core.norg.completion"] = {
			config = {
				engine = "nvim-cmp",
			},
		},
		-- ["core.zettelkasten"] = {},
        ["core.norg.journal"] = {},
		["core.norg.qol.toc"] = {},
	},
	-- logger = {
	-- 	level = "info", -- Show trace, info, warning, error and fatal messages
	-- },
})
