{ pkgs, perSystem, ... }:

pkgs.mkShell {
  # Add build dependencies
  packages = [
    (perSystem.fenix.complete.withComponents [
      "cargo"
      "clippy"
      "rust-src"
      "rustc"
      "rustfmt"
      "rust-analyzer"
    ])
  ];

  # Add environment variables
  env = { };

  # Load custom bash code
  shellHook = ''

  '';
}
