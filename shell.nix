let

sources = import ./nix/sources.nix {};
pkgs = import sources.nixpkgs {};
easy-ps = import sources.easy-purescript-nix { inherit pkgs; };

in

pkgs.mkShell {
  buildInputs = [
    easy-ps.purs-0_14_3
    easy-ps.spago
  ];
}
