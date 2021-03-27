{
  description = "Nix flake for libvfde";

  outputs = { self, nixpkgs }: {

    packages.x86_64-linux.libvfde = nixpkgs.legacyPackages.x86_64-linux.callPackage ./default.nix {};

    defaultPackage.x86_64-linux = self.packages.x86_64-linux.libvfde;

  };
}
