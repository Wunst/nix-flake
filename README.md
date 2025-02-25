# Ben's NixOS configuration

This is my daily driver NixOS configuration. I use it on my desktop and plan to
eventually use it on my laptop and probably other devices (home servers, 
entertainment system) as well.

Developing this out in the open as a (hopefully) useful example for aspiring Nix
users.

## Systems

* **Desktop:** `systems/wunstpc`

## Design principles

* **Minimal system configuration, maximal user configuration:** Use
  `home-manager` for as much as possible, only resort to system configuration
  and/or manual GUI-based tweaking if something can't be (reasonably) done with
  `home-manager`, even using `home.file`. This makes the configuration portable 
  as it can even be used on non-NixOS systems.

* **Keep system and user configuration seperate:** for much the same reason, to
  keep the `home-manager` configuration portable.

* **Do not replace scriptable configuration systems, e.g. Lua:** Some programs,
  such as `neovim`, are already fully scriptable. I don't want to build another
  layer of abstraction on top of a working Turing-complete interface, so I
  don't use Nix wrappers like `nixvim`, instead including e.g. Lua files in this
  repo.

