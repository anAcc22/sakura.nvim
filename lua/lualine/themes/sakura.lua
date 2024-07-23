local dark = {
    bl = '#1c1a1c',
    gl = '#2e2d2f',
    gr = '#3f3b3e',

    na = '#c5a3a9',
    nb = '#4e4044',
    nc = '#484042',

    ia = '#c58ea7',
    ib = '#503942',
    ic = '#463942',

    va = '#878fb9',
    vb = '#2e3448',
    vc = '#2a3033',

    ca = '#9e97d0',
    cb = '#31285e',
    cc = '#282530',
}
local light = {
    bl = '#ecdcdd',
    gl = '#ded3d3',
    gr = '#cdbdbd',

    na = '#484042',
    nb = '#c5a3a9',
    nc = '#e5d9df',

    ia = '#463942',
    ib = '#c58ea7',
    ic = '#e5d4de',

    va = '#2a3033',
    vb = '#878fb9',
    vc = '#c7cfd9',

    ca = '#282530',
    cb = '#9e97d0',
    cc = '#cfc8e0',
}
local palette = dark
if vim.o.background == "light" then
    palette = light
end
return {
    normal = {
        a = { bg = palette.na, fg = palette.bl },
        b = { bg = palette.nb },
        c = { bg = palette.nc },
    },
    insert = {
        a = { bg = palette.ia, fg = palette.bl },
        b = { bg = palette.ib },
        c = { bg = palette.ic },
    },
    visual = {
        a = { bg = palette.va, fg = palette.bl },
        b = { bg = palette.vb },
        c = { bg = palette.vc },
    },
    command = {
        a = { bg = palette.ca, fg = palette.bl },
        b = { bg = palette.cb },
        c = { bg = palette.cc },
    },
    inactive = {
        a = { bg = palette.gl },
        b = { bg = palette.gl },
        c = { bg = palette.gl },
    },
}
