local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end


local opts = {
  tools = {   -- rust-tools options
    autoSetHints = true,
    hover_with_actions = true,
    inlay_hints = {
      show_parameter_hints = false,
      parameter_hints_prefix = "",
      other_hints_prefix = "",
    },
  },

  -- all the opts to send to nvim-lspconfig
  -- these override the defaults set by tust-toosl.nvim_lsp
  -- see https://github.com/neovim/nvim-lspconfig/blob/mster/doc/server_configuration.md#rust_analyzer
  server = {
    -- on_attach is a callback called when the language server attaches to the buffer
    -- on_attach = on_attach
    settings = {
      -- to enable rust-analyzer settings visit:
      -- https://github.com/rust-analyzer/rust/rust-analyzer/blob/mster/docs/user/generated_config.adoc
      ["rust-analyzer"] = {
        -- enable clippy on save
        checkOnSave = {
          command = "clippy"
        },
      }
    }
  },
}

return opts
