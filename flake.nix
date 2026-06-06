{
  description = "svelte-chessground — devShell composed from chess-flake bundles";

  inputs.workspace.url = "git+ssh://git@github.com/obazin/chess-flake.git?ref=main";

  outputs =
    { self, workspace }:
    {
      devShells = builtins.mapAttrs (system: lib: {
        default = lib.bundles.nodeShell { name = "svelte-chessground"; };
      }) workspace.lib;
    };
}
