{...}: {
  config.vim.languages = {
    enableFormat = true;
    enableTreesitter = true;
    enableExtraDiagnostics = true;

    nix.enable = true;
    markdown.enable = true;
    bash.enable = true;
    fish.enable = true;

    html.enable = true;
    css.enable = true;
    scss.enable = true;
    typescript.enable = true;
    php.enable = true;
    go.enable = true;
    lua.enable = true;
  };
}
