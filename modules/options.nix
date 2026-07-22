{
  lib,
  pkgs,
  ...
}: {
  config.vim = {
    viAlias = true;
    vimAlias = true;
    debugMode.enable = false;

    # Extra packages available on PATH inside Neovim's wrapper, not tied
    # to a specific language/plugin module.
    extraPackages = with pkgs; [
      ripgrep
      fd
    ];

    # Vim options
    opts = {
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

    # Autogroups and autocommands
    augroups = [
      {
        name = "YankHighlight";
        clear = true;
      }
    ];

    autocmds = [
      {
        event = ["TextYankPost"];
        pattern = ["*"];
        group = "YankHighlight";
        callback = lib.generators.mkLuaInline ''
          function()
            vim.highlight.on_yank()
          end
        '';
      }
    ];
  };
}
