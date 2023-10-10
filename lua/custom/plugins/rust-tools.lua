return {
  'simrat39/rust-tools.nvim',
  filetypes = {'rs', 'rust'},
  server = {
    on_attach = function(_, bufnr)
      -- Hover actions
      vim.keymap.set("n", "<C-space>", require('rust-tools').hover_actions.hover_actions, { buffer = bufnr, 'Hover actions' })
      -- Code action groups
      vim.keymap.set("n", "ga", require('rust-tools').code_action_group.code_action_group, { buffer = bufnr, desc = 'Code actions' })
  end,
  }
}
