{
  description = "svelte-chessground — devShell composed from chess-flake bundles";

  inputs.workspace.url = "github:obazin/chess-flake";

  outputs =
    { self, workspace }:
    {
      devShells = builtins.mapAttrs (system: lib: {
        default = lib.bundles.nodeShell { name = "svelte-chessground"; };
      }) workspace.lib;
    };
}
