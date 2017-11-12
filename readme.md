- need `https://github.com/qmk/qmk_firmware` to build the layout
- `cp -r ergodox_ez PATH_TO_QMK_FIRMWARE_REPO/keyboards/.`
- `cd PATH_TO_QMK_FIRMWARE_REPO`
- `make ergodox_ez:LAYOUT`


# flashing from arch linux?

1. copy over contents of `ergodox_ez` to `qmk_firmware/keyboards/.`:
    `cp -r ergodox_ez PATH_TO_QMK_FW_REPO/keyboards/.`
2. run make from qmk\_firmware folder:
    `make ergodox_ez:LAYOUT`
3. run `teensy-loader-cli` to flash the firmware onto the keyboard (remember to put the keyboard
    in reset mode):
    `teensy-loader-cli -mmcu=atmega32u4 FILE`

# misc notes

use `utils/find_ergodox.sh` to search through connected usb devices for an ergodox

# Teensy 2.0 microcontroller:

AVR ATMEGA32U4

## resources

- [qmk firwmare docs](https://docs.qmk.fm)
- [teensy usb development board info](https://deskthority.net/wiki/Teensy)
- [qmk firmware mouse keys](https://docs.qmk.fm/feature_mouse_keys.html)

