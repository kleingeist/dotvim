VIM Cheat-Sheet
===============

Kommandos
---------

* \<Leader> = "," (Standardmäßig "\")
* \<Leader>ig: grafisch Indentation Tiefe anzeigen
* Folding: za: toggle | zo: open | zc: close | zR: open all




Verwaltung mit git
------------------

* Installation auf anderen Rechnern:

    	git clone http://github.com/kleingeist/dotvim.git ~/.vim
    	ln -s ~/.vim/vimrc ~/.vimrc
    	git submodule update --init

* Upgrade aller Module:

    	git submodule foreach git pull origin master


http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/



Dokumentationsindex neu laden
-----------------------------

	call pathogen#helptags()

http://stackoverflow.com/questions/4180590/vim-helptag-generation



