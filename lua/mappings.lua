local map = vim.keymap.set

map("n", ";", ":", { desc = "Enter CMD mode" })

local builtin = require("telescope.builtin")
map("n", "<leader>ff", builtin.find_files, { desc = "Find files" })
map("n", "<leader>fg", builtin.live_grep, { desc = "Live grep" })
map("n", "<leader>fb", builtin.buffers, { desc = "Find in buffers" })
map("n", "<leader>fz", "<CMD>Telescope current_buffer_fuzzy_find<CR>", { desc = "Fuzzy search in current buffer" })

map("n", "<leader>e", vim.cmd.Neotree, { desc = "File tree" })
map("n", "<leader>l", vim.cmd.Lazy, { desc = "Open Lazy" })
map("n", "<leader>x", vim.cmd.BufferClose, { desc = "Close buffer" })
map("n", "<tab>", vim.cmd.bprev, { desc = "Next buffer" })
map("n", "<tab>", vim.cmd.bnext, { desc = "Previous buffer" })

map("n", "gD", vim.lsp.buf.declaration, { desc = "Go to declaration" })
map("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
map("n", "[", "<CMD>lua vim.diagnostic.goto_prev()<CR>", { desc = "Go to previous diagnostic" })
map("n", "]", "<CMD>vim.diagnostic.goto_next()<CR>", { desc = "Go to next diagnostic" })
map("n", "gi", "<CMD>vim.lsp.buf.implementation<CR>", { desc = "Go to implementation" })
map("n", "<leader>sh", vim.lsp.buf.signature_help, { desc = "Show signature help" })
map("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code action" })
map("n", "<leader>ra", "<CMD>lua require('renamer').rename()<CR>", { desc = "Rename" })

map("n", "<leader>th", "<CMD>ToggleTerm direction=horizontal<CR>", { desc = "Horizontal terminal" })
map("n", "<leader>tv", "<CMD>ToggleTerm direction=vertical size=40<CR>", { desc = "Vertical terminal" })
map("n", "<leader>tf", "<CMD>ToggleTerm direction=float<CR>", { desc = "Floating terminal" })
map("n", "<leader>tt", "<CMD>ToggleTerm direction=tab<CR>", { desc = "Tab terminal" })

map("n", "<C-h>", "<C-w>h", { desc = "Switch window left" })
map("n", "<C-l>", "<C-w>l", { desc = "Switch window right" })
map("n", "<C-j>", "<C-w>j", { desc = "Switch window down" })
map("n", "<C-k>", "<C-w>k", { desc = "Switch window up" })

map("n", "<Esc>", "<cmd>noh<CR>", { desc = "Clear highlights" })

map("n", "<leader>n", "<cmd>set nu!<CR>", { desc = "Toggle line number" })
map("n", "<leader>rn", "<cmd>set rnu!<CR>", { desc = "Toggle relative number" })
