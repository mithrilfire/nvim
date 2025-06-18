-- get lazy package manager
require("config.lazy")

-- styling
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.fillchars = { eob = " " }
vim.opt.showmode = false
vim.opt.signcolumn = "yes"
vim.o.confirm = true
-- vim.o.cmdheight = 0

vim.fn.matchadd("HighlightInfo", [[\v<TODO>:]])
vim.fn.matchadd("HighlightInfoText", [[\v<TODO>:\s*\zs.*$]])
vim.fn.matchadd("HighlightHint", [[\v<NOTE>:]])
vim.fn.matchadd("HighlightHintText", [[\v<NOTE>:\s*\zs.*$]])
vim.fn.matchadd("HighlightWarn", [[\v<(FIX|FIXIT|WARN)>:]])
vim.fn.matchadd("HighlightWarnText", [[\v<(FIX|FIXIT|WARN)>:\s*\zs.*$]])
vim.fn.matchadd("HighlightDang", [[\v<(BUG|ERR|DANG)>:]])
vim.fn.matchadd("HighlightDangText", [[\v<(BUG|ERR|DANG)>:\s*\zs.*$]])

-- editing
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4

vim.schedule(function()
  vim.opt.clipboard = "unnamedplus"
end)

vim.keymap.set("n", "<esc>", "<cmd>nohlsearch <CR>")
vim.keymap.set("n", "<leader>w", ":w<CR>")
vim.keymap.set("n", "<leader><leader>x", "<cmd>source %<CR>")
vim.keymap.set("n", "<leader>x", ":.lua<CR>")
vim.keymap.set("v", "<leader>x", ":lua<CR>")

vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "High light when yanking text",
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.hl.on_yank()
  end,
})
