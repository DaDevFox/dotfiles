local function open_nvim_tree(data)
  -- buffer is a directory
  local directory = vim.fn.isdirectory(data.file) == 1

  if not directory then
    return
  end

  -- change to the directory
  vim.cmd.cd(data.file)

  -- open the tree
  require("nvim-tree.api").tree.open()
end

local function open_nvim_tree_new_window(data)
  -- buffer is a directory
  local directory = vim.fn.isdirectory(data.file) == 1

  if not directory then
    return
  end

  -- create a new, empty buffer
  vim.cmd.enew()

  -- wipe the directory buffer
  vim.cmd.bw(data.buf)

  -- change to the directory
  vim.cmd.cd(data.file)

  -- open the tree
  require("nvim-tree.api").tree.open()
end

local function change_root_to_global_cwd()
  local api = require("nvim-tree.api")
  local global_cwd = vim.fn.getcwd(-1, -1)
  api.tree.change_root(global_cwd)
end

local function my_on_attach(bufnr)
  local api = require("nvim-tree.api")

  local function opts(desc)
    return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end

  -- default mappings
  api.config.mappings.default_on_attach(bufnr)

  -- custom mappings
  vim.keymap.set("n", "<C-t>", api.tree.change_root_to_parent, opts("Up"))
  vim.keymap.set("n", "?", api.tree.toggle_help, opts("Help"))
end

-- pass to setup along with your other options

return {
  {
    "nvim-tree/nvim-tree.lua",
    on_attach = my_on_attach,
    -- live filtering previews
    live_filter = {
      prefix = "[FILTER]: ",
      always_show_folders = false, -- Turn into false from true by default
    },
  },
}
