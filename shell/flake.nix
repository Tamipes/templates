{
  inputs = {
    # Enable this to not reuse the system defined nixpkgs
    # but that means having another instance of it on the system
    # nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    flake-utils.url = "github:numtide/flake-utils";
  };
  outputs = { nixpkgs, flake-utils }: flake-utils.lib.eachDefaultSystem (system:
    let pkgs = nixpkgs { inherit system; }; in {

      devShells.default = pkgs.mkShell {
        packages = [ pkgs.hello ];

        # Useful for easily including the build tools of a package which is defined here.
        # inputsFrom = [ localPkg ];

        # shellHook = ''
        #   echo I AM HERE!
        # '';
      };

    });
}
