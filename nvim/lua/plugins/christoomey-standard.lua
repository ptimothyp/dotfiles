return {
  'christoomey/vim-system-copy',
  config = function()
    vim.cmd(
      [[
if has('Win64')
  let g:system_copy#copy_command='clip'
  let g:system_copy#paste_command='powershell.exe -NoLogo -NoProfile -Noninteractive -Command "Get-Clipboard"'
endif
      ]]
    )
  end
}
