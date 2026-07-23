{
  config.vim.languages = {
    enableFormat = true;
    enableTreesitter = true;
    enableExtraDiagnostics = true;

    nix.enable = true;
    markdown = {
      enable = true;
      extensions.markview-nvim.enable = true;
    };
    bash.enable = true;
    fish.enable = true;
    zsh.enable = true;

    html.enable = true;
    css.enable = true;
    scss.enable = true;
    json.enable = true;
    sql.enable = true;
    typescript.enable = true;
    php = {
      enable = true;
      lsp.servers = ["intelephense"];
    };
    go.enable = true;
    lua.enable = true;
    python.enable = true;
    java.enable = true;
    kotlin.enable = true;
    rust = {
      enable = true;
      extensions.rustaceanvim.enable = false;
      extensions.crates-nvim.enable = true;
    };
    toml.enable = true;
    docker.enable = true;
    env.enable = true;
  };
}
