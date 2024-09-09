local map = vim.keymap.set

local builtin = require("telescope.builtin")
map("n", "<leader>ff", builtin.find_files, { desc = "Find files" })
map("n", "<leader>fg", builtin.live_grep, { desc = "Live grep" })
map("n", "<leader>fb", builtin.buffers, { desc = "Find in buffers" })

map("n", "<leader>e", vim.cmd.Neotree, { desc = "File tree" })
