
" Tittle: win_dev.nvim
" Description: A simple plugin to help you develop neovim windows
" Author: @ChrisArthLisboa
" License: MIT
" Version: 0.1.0
" Repository: https://github.com/ChrisArthLisboa/win_dev_nvim
" =============================================================================


if exists('g:loaded_win_dev_nvim')
  finish
endif

let g:loaded_win_dev_nvim = 1

" =============================================================================

let s:win_dev_nvim = expand('<sfile>:h:r') . "/../lua/win_dev_nvim/deps"
exe "lua package.path = package.path .. ';" . s:win_dev_nvim . "/lua-?/init.lua'"

" =============================================================================

" COMMANDS

" is
command! -nargs=1 IsExternal lua require('win_dev_nvim').is_external(<f-args>)
command! -nargs=1 IsRelative lua require('win_dev_nvim').is_relative(<f-args>)

" Gets
command! -nargs=0 GetWinID lua require('win_dev_nvim').get_win_id()
command! -nargs=? GetWinConfig lua require('win_dev_nvim').get_win_config(<f-args>)
command! -nargs=? GetWinBuffer lua require('win_dev_nvim').get_win_buffer(<f-args>)
command! -nargs=? GetWinBorder lua require('win_dev_nvim').get_win_border(<f-args>)
command! -nargs=? GetWinZInedx lua require('win_dev_nvim').get_win_z_index(<f-args>)
