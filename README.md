# erase-config

Erase the config of a Portal with the debug port available.

## Requirements

You need to install `openocd` and `nc`.

## Preparing the cable

You will need some kind of debug probe, in this example we will show the ST-Link which is very common. You will also need a TC-2030NL Tag-Connect cable, and dupont wires to wire them up together as follows:

### Step 1

Connect four male-to-female dupont wires to the debug probe. You will need the following signals:

- SWDIO
- SWCLK
- GND
- 3.3V

![1-a](img/1-a.jpg?raw=true)

Note that on this specific kind of debugger the signals are on the second row of pins:

![1-b](img/1-b.jpg?raw=true)

### Step 2

Connect the other end of the dupont wires to the Tag-Connect cable as follows. Note the orientation of the cable, which is very important (the "notch" is at the bottom).

![2](img/2.jpg?raw=true)

### Step 3

Locate the debug port on the back of your Portal and connect the cable to it. The cable has spring loaded pins, so you may have to manually apply a bit of pressure to form a good connection.

![3](img/3.jpg?raw=true)

If you've wired up everything correctly you will see the display power on.

You are now ready to run the script, which will only take a few seconds.

## How to run

Clone this project, enter the directory and run `./run.sh`.

If you get permission problems you can try running it with sudo: `sudo ./run.sh`

If successful your device will reboot into the initialization screen. You may have to perform a "cold boot" (remove and re-apply power) for the init screen to appear.

## License

This project is licensed under MIT
