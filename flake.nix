{
  inputs = { };
  outpus = inputs@{ ... }: {
    templates.shell = {
      path = ./shell;
      description = "Makes a flake.nix for setup up devshells. And also direnv.";
    };
  };
}
