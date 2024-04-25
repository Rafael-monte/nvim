vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("i", "jj", "<Esc>", { noremap = true })
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" })
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" })

-- Window management
-- Ctrl + w + v Splits the screen horizontally
-- Ctrl + w + s Splits it vertically
-- Ctrl + w + = Set all tabs in equal size

keymap.set("n", "<C-w>x", "<cmd>close<CR>", { desc = "Closes the current window" })


-- Shortcuts
keymap.set("n", "<C-a>", "<cmd>Explore<CR>", { desc = "Opens the explorer" })

-- Tabs 
keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Opens a new tab" })
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Closes current tab" })
keymap.set("n", "<leader>tl", "<cmd>tabn<CR>", { desc = "Go to next tab" })
keymap.set("n", "<leader>th", "<cmd>tabp<CR>", { desc = "Go to previous tab" })
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc= "Open current buffer in new tab" })
