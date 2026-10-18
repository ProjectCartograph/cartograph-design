{
  description = "Cartograph design: one pinned toolchain for checking the documents";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

  outputs = { self, nixpkgs }:
    let
      systems = [ "x86_64-linux" "aarch64-linux" "x86_64-darwin" "aarch64-darwin" ];
      forEachSystem = f: nixpkgs.lib.genAttrs systems (system: f nixpkgs.legacyPackages.${system});
    in
    {
      devShells = forEachSystem (pkgs: {
        default = pkgs.mkShell {
          # Mermaid measures text to lay out a diagram, so the browser it
          # drives needs fonts, even in a container that has none.
          FONTCONFIG_FILE = pkgs.makeFontsConf { fontDirectories = [ pkgs.dejavu_fonts ]; };
          name = "cartograph-design";
          packages = with pkgs; [ just bashInteractive coreutils gnugrep gnused git jujutsu python3 mermaid-cli rsync ];
          shellHook = ''
            export CARTOGRAPH_TOOLCHAIN=1
          '';
        };
      });
      formatter = forEachSystem (pkgs: pkgs.nixpkgs-fmt);
    };
}
