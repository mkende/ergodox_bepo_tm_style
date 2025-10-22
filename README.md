# Bépo compatible keymap for the Ergodox EZ, *TypeMatrix* style.

This repository host a couple of BÉPO layouts for Ergodox keyboards.

This is a QMK *userspace* repo. See the QMK documentation on how to use it:
https://docs.qmk.fm/#/newbs_external_userspace

The keymap here is meant to be used with a [Bépo](http://bepo.fr) layout. It is
designed to be somewhat similar to a TypeMatrix keyboard so that switching
between one and the other is easy.

![The Keymap](img/V6.png)

*This keymap is generated using http://www.keyboard-layout-editor.com.*

You can download the keymap on the
[releases page](https://github.com/mkende/ergodox_bepo_tm_style/releases) or you
can build it yourself.

## Building the firmware

Set up your python environment

```sh
sudo apt-get install pipx
pipx install qmk
git clone --recurse-submodules https://github.com/mkende/ergodox_bepo_tm_style.git
cd ergodox_bepo_tm_style
qmk setup
```

During the qmk setup, choose to keep the current `qmk_firmware` and to continue.

Then, you can build the firmware with the following command if you have a legacy
Ergodox EZ keyboard:

```sh
qmk compile -j 12 -kb ergodox_ez -km bepo_tm_style
```

Or, if you have a newer STM32 based one, you can use the following command:

```sh
qmk compile -j 12 -kb zsa/ergodox_ez/stm32 -km bepo_tm_style
```

See the [QMK Guide](https://docs.qmk.fm/#/newbs_getting_started) for more
details.

The firmware can then be flashed with the following command for example:

```sh
teensy_loader_cli --mcu=TEENSY2 -w ergodox_ez_base_bepo_tm_style.hex
```

Which requires the Teensy CLI program.

## OS Specific behavior

The layout has some OS specific behavior:

-   On MacOS, it uses `ctrl+c/x/v` for copy/cut/paste, instead of the older
    shortcut used on other systems (which have the advantage of not depending on
    the current keymap). So the shortcut function will work only with a Bépo
    layout at the system level.

    In addition, the sleep function is sent with `gui+shift+power`.

    Note that it is expected that you will switch the gui and control keys at
    the OS level when using this keyboard layout on a MacOS.

-   On Linux, the sleep function is sent with `ctrl+shift+L` which locks the
    computer on most systems (otherwise a shortcut can be added in the settings
    of your Window Manager).

-   On Windows, the sleep function is sent with the `Sleep` media key.

## Variants

### Keyboard

The layouts can be built with the `zsa/ergodox_ez/m32u4` keyboard (which is the
default for `zsa/ergodox_ez` or even just `ergodox_ez`). This is the legacy
Ergodox EZ keyboards, pre-2024, using a Teensy-like MCU.

Otherwise, the layouts can be built for the `zsa/ergodox_ez/stm32` keyboard
which correspond to the more recent models, using a STM32 MCU. Note that the
layout code is completely shared between the two keyboards but, technically,
the stm32 variant uses the layouts defined in the `keyboards/zsa/ergodox_ez`
folder intead of the `keyboards/ergodox_ez` folder used by the legacy variants.

The layout is meant to work with an Ergodox EZ *original* (neither *shine* nor
*glow*). However it will probably work with them too.

### Keymaps

The `_left_handed` variant of the keymap swap the macro key (on the right thumb
cluster) with the swap-hand key (on the left thumb cluster). So that the
keyboard can be used entirely with the right hand if you are using the mouse
with your left hand.
