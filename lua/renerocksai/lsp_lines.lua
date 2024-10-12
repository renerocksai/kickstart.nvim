-- Disable virtual_text since it's redundant due to lsp_lines.
vim.diagnostic.config {
  virtual_text = true, -- false, if I enable lsp_lines
}
