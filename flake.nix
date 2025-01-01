{
  inputs = { };
  outputs = inputs@{ ... }: {
    templates.shell = {
      path = ./shell;
      description = "Makes a flake.nix for setup up devshells. And also direnv.";
    };
    templates.python = {
      path = ./python;
      description = "Makes a flake.nix for python3 shells with packages. And also direnv.";
    };
    templates.rust = {
      path = ./rust;
      description = "Uses https://github.com/ipetkov/crane for its template and I add my stuff on top of it. (Like direnv)";
    };
  };
}
