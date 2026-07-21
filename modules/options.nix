{pkgs, ...}: {
  config = {
    # Extra packages available on PATH inside Neovim's wrapper, not tied
    # to a specific language/plugin module.
    vim.extraPackages = with pkgs; [
      ripgrep
      fd
    ];

    # Vim options
    vim.opts = {
      hlsearch = true;
      inccommand = "split";
      scrolloff = 10;
      cursorline = true;
      mouse = "a";

      expandtab = true;
      smartindent = true;
      breakindent = true;

      ignorecase = true;
      smartcase = true;
      signcolumn = "yes";

      updatetime = 250;
      timeoutlen = 300;

      completeopt = "menu,preview,noselect";

      termguicolors = true;
      undofile = true;
    };
  };
}
