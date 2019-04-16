Minimal D/Allegro 5 example
===========================

Test if Allegro 5 programs in D can display graphics in a window.

Build instructions
------------------

1. Install a D toolchain.
    * On Arch: `# pacman -S dlang`
    * On Debian/Ubuntu: `# apt-get install ldc dub`
    * On macOS, install [Homebrew](https://brew.sh/), then run `$ brew install ldc dub`.

2. Install Allegro 5.2.
    * On Arch: `# pacman -S pkgconf allegro`
    * On Debian/Ubuntu: `# apt-get install pkgconf liballegro5-dev`, this will not install any addons for audio, text, ..., those aren't needed for this minimal example.
    * On macOS: `brew install allegro`

3. Clone this *min-d-a5* repository, enter its main directory, run `dub`.

Expected result
---------------

If this minimal D/Allegro 5 example builds and runs, it will open a window sized 640x480. This window will show solid red for 2 seconds, then solid green for 2 seconds, then solid blue for 2 seconds. Then the program terminates.

During its 6-second run, this program will print a message to standard output whenever a new color should be visible.

Historical background
---------------------

macOS 10.14 seems to have issues with OpenGL:

* [Allegro 5.2 issue #960](https://github.com/liballeg/allegro5/issues/960)
* [Lix issue #381](https://github.com/SimonN/LixD/issues/381)

If the minimal D/Allegro 5 example already fails to display graphics, the issue should not be specific to Lix. It may instead be a problem with Allegro 5 or macOS 10.14's handling of OpenGL.
