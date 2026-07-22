{
  config.vim = {
    lsp = {
      enable = true;
      formatOnSave = true;

      # Nice-to-haves around the LSP UX.
      lspkind.enable = true;
      trouble.enable = true;
      nvim-docs-view.enable = true;
    };

    debugger = {
      nvim-dap = {
        enable = true;
        ui.enable = true;
      };
    };
  };
}
