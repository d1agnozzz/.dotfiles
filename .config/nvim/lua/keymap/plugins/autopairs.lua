-- NOTE: This file was used previously to integrate autopairs with coq
--
-- local npairs = require('nvim-autopairs')
-- MUtils = {}
-- MUtils.cr = function()
--
--   if vim.fn.pumvisible() ~= 0 then
--     if vim.fn.complete_info({ 'selected' }).selected ~= -1 then
--       return npairs.esc('<c-y>')
--
--     else
--       return npairs.esc('<c-e>') .. npairs.autopairs_cr()
--     end
--   else
--     return npairs.autopairs_cr()
--   end
-- end
-- MUtils.bs = function()
--   if vim.fn.pumvisible() ~= 0 and vim.fn.complete_info({ 'mode' }).mode == 'eval' then
--     return npairs.esc('<c-e>') .. npairs.autopairs_bs()
--   else
--     return npairs.autopairs_bs()
--   end
-- end
--
--
-- vim.keymap.set('i', '<cr>', 'v:lua.MUtils.cr()', {expr = true, noremap = false})
-- -- note: the following keymap breaks backspace in telescope
-- -- vim.keymap.set('i', '<bs>', 'v:lua.MUtils.bs()', {expr = true, noremap = false})
