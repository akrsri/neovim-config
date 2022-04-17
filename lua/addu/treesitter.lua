local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
  return
end

configs.setup {
  ensure_installed = {
    "c",
    "go",
    "html",
    "java",
    "javascript",
    "lua",
    "make",
    "php",
    "python",
    "rust",
    "solidity",
    "svelte",
    "tsx",
    "typescript",
    "vim",
    "vue",
    "zig"
  },  -- one of "all", "maintained", or a list of languages
  sync_install = false,   -- install languages synchronously (only applied to 'ensure_installed'
  ignore_install = { "" },  -- list of parsers to ignore installing
  highlight = {
    enable = true,  -- false will disable the whole extension
    disable = { "" },   -- list of languages that will be disabled
    additional_vim_regex_highlighting = true,
  },
  indent = { enable = true, disable = { "yaml" } },
  autotag = {
    enable = true,
  },
}
