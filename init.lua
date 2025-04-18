vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.wo.relativenumber = true
vim.g.mapleader = " "
vim.wo.fillchars = "eob: "
vim.g.rust_recommended_style = 0
vim.g.markdown_recommended_style = 0
vim.keymap.set("n", "<leader>e", ":noh<CR>", {})
vim.opt.termguicolors = true
vim.opt.nu = true
vim.opt.cursorline = true
vim.opt.cursorlineopt = "number"
vim.diagnostic.config({ virtual_text = true })



local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins")



vim.o.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme gruvbox]])



vim.api.nvim_set_keymap('n', '<leader>n', ':NvimTreeToggle<CR>', { noremap = true, silent = true })



local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})



vim.keymap.set("n", "<leader>g", ":Glow<return>")



vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { noremap = true })
vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, { noremap = true })




vim.keymap.set({'n', 'v'}, '<leader>y', [["+y]]);
vim.keymap.set(
    "n",
    "<leader>ce",
    "i#include <iostream><CR><CR>using namespace std;<CR><CR>int main() {<CR><CR>}<Esc>ki<Tab>"
)
