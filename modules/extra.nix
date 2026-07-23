{pkgs, ...}: {
  config.vim = {
    # Extra packages available on PATH inside Neovim's wrapper
    extraPackages = with pkgs; [
      lazygit
      ripgrep
      fd
    ];

    # Extra lazy plugins
    lazy.plugins = {
      "neogen" = {
        package = pkgs.vimPlugins.neogen;
        setupModule = "neogen";
      };
    };

    keymaps = [
      {
        key = "<leader>ng";
        mode = "n";
        silent = true;
        action = ":Neogen<CR>";
        desc = "Generate code documentation";
      }
    ];
  };
}
