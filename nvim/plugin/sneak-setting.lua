vim.cmd [[
let g:sneak#label = 1
    " 2-character Sneak (default)
    nmap cl <Plug>Sneak_s
    nmap cL <Plug>Sneak_S
    " visual-mode
    xmap ? <Plug>Sneak_s
    xmap ? <Plug>Sneak_S
    " operator-pending-mode
    omap ? <Plug>Sneak_s
    omap ? <Plug>Sneak_S
]]
