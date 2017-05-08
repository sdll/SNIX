# Edit this configuration fible to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  imports = [];

  # List services that you want to enable:
  security.sudo.enable = true;

  users = {
    defaultUserShell = "/nix/var/nix/profiles/default/bin/zsh";
    groups = {
      aleph= {
        gid = 1000;
      };
    };
    users = {
      aleph= {
        isNormalUser = true;
	home = "/home/aleph";
        createHome = true;
	description = "Alexander Illarionov";
        uid = 1000;
	group = "aleph";
	extraGroups = [
		"audio"
		"git"
		"networkmanager"
		"video"
		"input"
		"wheel"
		];
        shell = "/run/current-system/sw/bin/zsh";
	subUidRanges = [
	        { startUid = 100000; count = 65536; }
                ];
        subGidRanges = [
		    { startGid = 100000; count = 65536; }
	        ];
      };
    };
  };
}
