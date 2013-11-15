# Symfony2 bash completions
A really simple and quick script for Symfony2 console bash completions. These completions respond after you've typed `symfony` or `app/console` and press `TAB`.

## Installation
Copy the file `symfony2-completions.bash` to somewhere on your disk and add to your `.bashrc` or `.bash_profile`:

    source ~/path/to/symfony2-completsions.bash

And you should be good to go. For the first argument it will try to complete the command name, for the rest it will try to complete the command options. Note that your `symfony` or `app/console` utility needs to provide at least the `list` and `help` commands for this to work. Also, both of them should have the `--raw` option to display only raw output.
