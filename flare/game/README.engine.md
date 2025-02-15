# Flare

Flare (Free Libre Action Roleplaying Engine) is a simple game engine
built to handle a very specific kind of game: single-player 2D action RPGs.
Flare is not a reimplementation of an existing game or engine.
It is a tribute to and exploration of the action RPG genre.

Rather than building a very abstract, robust game engine,
the goal of this project is to build several real games
and harvest an engine from the common, reusable code.

The Flare engine, which is purely a runtime, is written in C++.

Flare uses simple file formats (INI-style config files) for most of the game data,
allowing anyone to easily modify game contents. Open formats are preferred (png, ogg).
For creating maps, we also support [Tiled](http://www.mapeditor.org/) with the Flare plugin.

Originally the first game to be developed using this engine was part of this
repository. As the engine became mature, the game content was moved to an
extra repository and is now called [flare-game]. (happened around sept. 2012)

[flare-game]: https://github.com/flareteam/flare-game

## Copyright and License

Most of Flare is Copyright © 2010-2013 Clint Bellanger.
Contributors retain copyrights to their original contributions.

Flare's source code is released under the GNU GPL v3. Later versions are permitted.

Flare's default mod (includes engine translations) is released under GNU GPL v3 and CC-BY-SA 3.0.
Later versions are permitted.

The default mod contains the Liberation Sans font which is released under the SIL Open Font License, Version 1.1.

The GNU Unifont font is released under GPL v2, with the exception that embedding the font in a document does not in itself bind that document to the terms of the GPL.


## Links

The following links are specific to the engine

* [Homepage](http://flarerpg.org)
* [Source](https://github.com/flareteam/flare-engine)
* [Forums](http://opengameart.org/forums/flare)
* Email     clintbellanger@gmail.com

## Games made with flare

The official game from the Flare team, the Empyrean Campaign can be found on the [flare-game](https://github.com/flareteam/flare-game) repository.
A collection of other mods produced by the community can be found on the the [Mods](https://flarerpg.org/mods/) page on the offical website.

## Building from Source

Flare uses SDL2, SDL2\_image, SDL2\_mixer, and SDL2\_ttf. Please see the [INSTALL.md](INSTALL.engine.md) file for instructions.

## Settings

Settings are stored in one of these places:

### Linux/Mac OS X/Unix
    $XDG_CONFIG_HOME/flare/
    $HOME/.config/flare/
    ./config
### Windows
	%APPDATA%\flare\config
	config\
### Linux (Snap)
    $HOME/snap/flare-rpg/current/.config/flare/
### Linux (Flatpak)
    $HOME/.var/app/org.flarerpg.Flare/config/flare/

Here you can enable fullscreen, change the game resolution, enable mouse-move, and change keybindings.
The settings files are created the first time you run Flare.

## Save Files

Save files are stored in one of these places:

### Linux/Mac OS X/Unix
    $XDG_DATA_HOME/flare/
    $HOME/.local/share/flare/
    ./userdata
### Windows
	%APPDATA%\flare\userdata
	userdata\
### Linux (Snap)
    $HOME/snap/flare-rpg/current/.local/share/flare/
### Linux (Flatpak)
    $HOME/.var/app/org.flarerpg.Flare/data/flare/


If permissions are correct, the game is automatically saved when you exit.
In addition, there is a `mods` directory in this location, which can be used to override system-wide mods.

## Command-line Flags

| Flag              | Description
|-------------------|----------------
| `--help`          | Prints the list of command-line flags.
| `--version`       | Prints the release version.
| `--data-path`     | Specifies an exact path to look for mod data.
| `--debug-event`   | Prints verbose hardware input information.
| `--renderer`      | Specifies the rendering backend to use. The default is 'sdl\_hardware'. Also available is 'sdl', which is a software-based renderer.
| `--no-audio`      | Disables sound effects and music.
| `--mods`          | Starts the game with only these mods enabled.
| `--load-slot`     | Loads a save slot by numerical index.
| `--load-script`   | Execute's a script upon loading a saved game. The script path is mod-relative.
| `--safe-video`    | Launches with the minimum video settings.
