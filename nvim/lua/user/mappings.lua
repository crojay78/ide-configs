local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

vim.keymap.set("n", "H", ":bnext<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "L", ":bprev<CR>", { noremap = true, silent = true })

vim.keymap.set("n", "<leader>tt", ":terminal<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>t", "<cmd>TodoTelescope<CR>", { noremap = true, silent = true })

vim.keymap.set("n", "gm", function()
  require("telescope.builtin").lsp_document_symbols({
    symbols = { "Function", "Method" }, -- Zeigt nur Methoden/Funktionen
  })
end, { noremap = true, silent = true })
-- Verschiebe Zeilen nach unten im visuellen Modus
vim.api.nvim_set_keymap("v", "J", ":m '>+1<CR>gv=gv", { noremap = true, silent = true })
-- Verschiebe Zeilen nach oben im visuellen Modus
vim.api.nvim_set_keymap("v", "K", ":m '<-2<CR>gv=gv", { noremap = true, silent = true })

vim.g.VM_maps = {
  ["Find Under"] = "gb",
}
