{ config, pkgs, ... }:

{
  imports = [];          
  environment.systemPackages = with pkgs; [   
  	#python
	#pythonFull
    	python36Full

	# aspell
	# enchant
	# aspellDicts.en
        
	# python27Packages.setuptools
	# python35Packages.pip
	# python35Packages.setuptools
	# python35Packages.pyperclip
	# python35Packages.ipython
	# python35Packages.jupyter
	# python35Packages.notebook
	# python35Packages.ipykernel
	# python35Packages.tornado 
  ];
}
