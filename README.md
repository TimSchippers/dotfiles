# Dot files

Welcome to my dot files. I"m using dotbot to bootstrap my dotfiles so that everything can live in this repository, but it makes the symlinks to the right places with the install script, so you only put in one command and make a coffee.

I'm using homebrew, so right now it's only for mac. Before you run he install command please look at the Brewfile, there is everything it will download so delete one's you don't want, mostly the casks because that are full apps.
Because alot of programs install python or nodeJS, this will install it with version managers and always look for these installs so you always know that if you are working with it on your own you have complete control over which version.
It also installs zsh via homebrew so everything you want to update and upgrade can be done with one command.

to install simply type in:

```zsh
$ ./install
```

If you want to learn more about this system, see the dotfiles course on udemy by [EIEIOxyz](https://www.udemy.com/course/dotfiles-from-start-to-finish-ish/?couponCode=ST15MT20425G2), i took some inspiration from him with the dotbot usage.
