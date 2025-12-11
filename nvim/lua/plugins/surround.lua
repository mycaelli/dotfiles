return {
  'echasnovski/mini.surround',
  config = function()
    require('mini.surround').setup()
  end,
  opts = {
    search_method = "cover_or_next",
  }
}

-- add = 'sa', -- Add surrounding in Normal and Visual modes
-- delete = 'sd', -- Delete surrounding
-- find = 'sf', -- Find surrounding (to the right)
-- find_left = 'sF', -- Find surrounding (to the left)
-- highlight = 'sh', -- Highlight surrounding
-- replace = 'sr', -- Replace surrounding
-- update_n_lines = 'sn', -- Update `n_lines`
--
-- suffix_last = 'l', -- Suffix to search with "prev" method
-- suffix_next = 'n', -- Suffix to search with "next" method


-- =========================
-- MOTIONS / TEXT OBJECTS ÚTEIS
-- =========================

-- iw  → inner word      (só a palavra, sem espaço)
-- aw  → a word          (palavra + possível espaço depois)

-- iW  → inner WORD      (sequência sem espaço, tipo foo.bar/baz)
-- aW  → a WORD          (igual acima, incluindo espaço em volta)

-- is  → inner sentence  (frase sem pontuação final)
-- as  → a sentence      (frase + pontuação, tipo ".")

-- ip  → inner paragraph (bloco de texto atual, sem linha em branco)
-- ap  → a paragraph     (parágrafo + linha em branco de separação)

-- i)  → inner parentheses   (conteúdo dentro de (...))
-- a)  → a parentheses       (inclui os parênteses)
-- i]  → inner brackets      (conteúdo dentro de [...])
-- a]  → a brackets
-- i}  → inner braces        (conteúdo dentro de {...})
-- a}  → a braces
-- i"  → inner double quotes (texto dentro de "...")
-- a"  → a double quotes
-- i'  → inner single quotes (texto dentro de '...')
-- a'  → a single quotes
-- i`  → inner backticks     (texto dentro de `...`)
-- a`  → a backticks

-- t)  → até o caractere ')', sem incluir ele
-- t"  → até a próxima aspas "
-- f)  → até e incluindo o caractere ')'
-- f"  → até e incluindo a próxima aspas "

-- w   → até o começo da próxima palavra
-- e   → até o fim da palavra atual
-- b   → até o começo da palavra anterior
-- ge  → até o fim da palavra anterior
