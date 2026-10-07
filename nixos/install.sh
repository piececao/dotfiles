#!/bin/sh

exec nixos-install --flake '.#ZOOT' --option substituters "https://mirrors.cernet.edu.cn/nix-channels/store https://cache.nixos.org"
