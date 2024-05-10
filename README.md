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
can build it yourself with

```sh
qmk compile -j 12 -kb ergodox_ez -km bepo_tm_style
```

The latter, requires that you have set-up the `qmk` CLI tool. See the
[QMK Guide](https://docs.qmk.fm/#/newbs_getting_started) if needed.

The `_no_sleep` variant of the keymap does not have the *sleep* key in the upper
left corner. Instead it has a ctrl + alt + l shortcut.

The firmware can then be flashed with the following command for example:

```sh
teensy_loader_cli --mcu=TEENSY2 -w ergodox_ez_base_bepo_tm_style.hex
```

Which requires the Teensy CLI program.
