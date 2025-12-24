return {
    "nvim-telescope/telescope.nvim",
    tag = "v0.2.0",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        require('telescope').setup({
			defaults = {
				path_display = {
					"filename_first",
				},
           	},
            pickers = {
                buffers = {
                    sort_lastused = true,
                    mappings = {
                        i = {
                            ["<C-x>"] = require('telescope.actions').delete_buffer,
                        },
                        n = {
                            ["<C-x>"] = require('telescope.actions').delete_buffer,
                            ["dd"] = require('telescope.actions').delete_buffer,
                        },
                    },
                },
			},
        })
    end,
}


