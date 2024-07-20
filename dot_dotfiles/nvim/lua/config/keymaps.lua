-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local util = require("mondyjosh.util")

-- Enforce counts
util.cowboy()

local keymap = vim.keymap

--- Map leader to spacebar
vim.g.mapleader = " "

-- Q invokes ancient evils (Ex mode); let's disable that
keymap.set("n", "Q", "<nop>")

-- Remap Esc to Ctrl-C to overide subtle differences
keymap.set("i", "<C-c>", "<Esc>")

-- Increment/decrement
keymap.set("n", "+", "<C-a>", { desc = "Increment highlighted number by 1" })
keymap.set("n", "-", "<C-x>", { desc = "Decrement highlighted number by 1" })

-- Use move command to move highlighted sections up/down when highlighted
keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move highlighted section down" })
keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move highlighted section up" })

-- Append line below to current line, but cursor remains at same place
keymap.set("n", "J", "mzJ`z", { desc = "Append line below to current line" })

-- Half-page jumping, but keep cursor in middle of the screen
keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Jump a half-page down" })
keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Jump a half-page up" })

-- Keep search terms in the middle of the screen
keymap.set("n", "n", "nzzzv", { desc = "Search forward for the search term" })
keymap.set("n", "N", "Nzzzv", { desc = "Search backward for the search term" })

-- When pasting over a word, delete highlighted word directly into the
-- void register, preserving the original paste word
keymap.set("x", "<leader>p", [["_dP]], { desc = "Paste over a word (and preserve the word)" })

-- Yank into system clipboard instead of vim yank register
keymap.set({ "n", "v" }, "<leader>y", [["+y]], { desc = "Yank selection into system clipboard" })
keymap.set("n", "<leader>Y", [["+Y]], { desc = "Yank entire line into system clipboard" })

-- Delete to void register instead of cutting
keymap.set({ "n", "v" }, "<leader>d", [["_d]], { desc = "Delete to void register instead of cutting" })

-- Invoke tmux integration to bounce between projects
keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>", { desc = "Initiate tmux-sessionizer" })

-- Quickfix navigation
keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz", { desc = "Quickfix - jump to next entry in quickfix list" })
keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz", { desc = "Quickfix - jump to previous entry in quickfix list" })
keymap.set(
  "n",
  "<leader>k",
  "<cmd>lnext<CR>zz",
  { desc = "Quickfix - jump to next entry in location list for the current window" }
)
keymap.set(
  "n",
  "<leader>j",
  "<cmd>lprev<CR>zz",
  { desc = "Quickfix - jump to previous entry in location list for the current window" }
)

-- Start a search & replace with the word at the the cursor's current position
keymap.set(
  "n",
  "<leader>s",
  [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
  { desc = "Start search & replace with the word at cursor's position" }
)

-- While in a file, make it an executable
keymap.set(
  "n",
  "<leader>x",
  "<cmd>!chmod +x %<CR>",
  { silent = true, desc = "Make a file executable (while in a file)" }
)
