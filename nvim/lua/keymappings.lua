local utils = require('utils')

-- idk what exactly does the command below do but it's fine
utils.map('n', '<C-l>', '<cmd>noh<CR>') -- Clear highlights
utils.map('i', 'jk', '<Esc>')           -- jk to escape
utils.map('i', 'kj', '<Esc>')           -- kj to escape
