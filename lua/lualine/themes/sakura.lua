local dark = {
    bl = '#1c1a1c',
    gl = '#2e2d2f',
    gr = '#3f3b3e',
    wi = '#ecdcdd',

    na = '#c5a3a9',
    nb = '#4e4034',

    ia = '#c58ea7',
    ib = '#543042',

    va = '#878fb9',
    vb = '#2e3448',

    ca = '#9e97d0',
    cb = '#31285e',
}
local light = {
    bl = '#ecdcdd',
    gl = '#ded3d3',
    gr = '#cdbdbd',

    na = '#4e4034',
    nb = '#c5a3a9',

    ia = '#543042',
    ib = '#c58ea7',

    va = '#2e3448',
    vb = '#878fb9',

    ca = '#31285e',
    cb = '#9e97d0',
}
local palette = dark
if vim.o.background == "light" then
    palette = light
end
return {
    normal = {
        a = { bg = palette.na, fg = palette.bl, gui = "bold" },
        b = { bg = palette.nb },
        c = { bg = palette.gr },
    },
    insert = {
        a = { bg = palette.ia, fg = palette.bl, gui = "bold" },
        b = { bg = palette.ib },
        c = { bg = palette.gr },
    },
    visual = {
        a = { bg = palette.va, fg = palette.bl, gui = "bold" },
        b = { bg = palette.vb },
        c = { bg = palette.gr },
    },
    command = {
        a = { bg = palette.ca, fg = palette.bl, gui = "bold" },
        b = { bg = palette.cb },
        c = { bg = palette.gr },
    },
    inactive = {
        a = { bg = palette.gl, gui = "bold" },
        b = { bg = palette.gl },
        c = { bg = palette.gl },
    },
}
