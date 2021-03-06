vimfiles
========

How to install
--------------

Because of [YouCompleteMe][1] plugin you need to make sure you have Vim > 7.3.584,
The compile instructions are [here][2].

To download and install this repository, follow these steps:

    $ git clone https://github.com/lsmag/vim-config ~/.vim
    $ cd ~/.vim
    $ git submodule update --init --recursive
    $ ln -s ~/.vim/.vimrc ~/.vimrc
    $ ln -s ~/.vim/.gvimrc ~/.gvimrc

You also need to follow [these instructions][1] in order to install YouCompleteMe.

Finally, I use [Meslo font][3] in GVim, you might want to install it.


Some shortcuts
--------------

 - The *leader* is mapped to *comma*
 - The *semicollon* is mapped to *collon*
 - *<leader>w* (**,w** in normal mode)  saves the file
 - *<leaderW* (**,W** in normal mode) will save and quit (same as :wq)
 - *F3* will toggle number+relativenumber (hybrid mode)


[1]: https://github.com/Valloric/YouCompleteMe#ubuntu-linux-x64-super-quick-installation
[2]: https://github.com/Valloric/YouCompleteMe/wiki/Building-Vim-from-source
[3]: https://github.com/Lokaltog/powerline-fonts/tree/master/Meslo
