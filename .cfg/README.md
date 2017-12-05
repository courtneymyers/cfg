# Dotfiles

This repo contains my configured dotfiles, using a slightly modified setup laid out in this [Atlassian Developer blog post](https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/).

Dotfiles are created in their normal place: the home directory, instead of saving them elsewhere and setting up symlinks to their expected locations. The files themselves are tracked with git in a `~/.cfg` directory. An alias for `git` is created that sets the git directory to `~/.cfg`, and the git working tree to the home directory.

## Setup
  1. Clone this repository to `~/.cfg`.
  ```
  git clone git@github.com:courtneymyers/cfg.git $HOME/.cfg
  ```

  1. Setup `cfg` alias to `git`, tracking files in the home directory, using repo saved in `~/.cfg`.
  ```
  alias cfg='/usr/bin/git --git-dir=$HOME/.cfg/.git --work-tree=$HOME'
  ```
  (_NOTE:_ the above alias is also set in `.bashrc` file, so you can skip this step if you start a new terminal session, or `source $HOME/.bashrc`).

  1. Initially ignore all files in the home directory. Add files as desired to repository.
  ```
  cfg config --local status.showUntrackedFiles no
  ```
