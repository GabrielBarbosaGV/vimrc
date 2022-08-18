local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/vim/plugged')

Plug('junegunn/fzf', { ['do'] = vim.fn['fzf#install'] })
Plug('udalov/kotlin-vim')
Plug('shaunsingh/nord.nvim')

vim.call('plug#end')

local noremap = {
	noremap = true
}

local map = vim.api.nvim_set_keymap

map('i', 'kj', '<Esc>', noremap)
map('i', 'Kj', '<Esc>', noremap)
map('i', 'kJ', '<Esc>', noremap)
map('i', 'KJ', '<Esc>', noremap)

map('n', 'ç', ':', noremap)

map('n', '<C-p>', ':FZF<CR>', noremap)

local set = vim.opt

set.rnu = true
set.nu = true

set.ts = 4
set.sw = 4

vim.cmd('colorscheme nord')
