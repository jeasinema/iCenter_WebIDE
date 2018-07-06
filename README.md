iCenter Web IDE(on-going)
===

This is the repo of a [cloud9](https://c9.io)-based web IDE for embedded system development, used by iCenter, Tsinghua University.

## Usage
1. Install corss-compiler for ARM embedded devices
```bash
$ sudo apt install gcc-arm-none-eabi
```
2. setup workspace tempate by running `./stm32/get_mbed_wb.sh`
```bash
$ cd stm32
$ bash get_mbed_wb.sh
```
3. Install `nodejs@8`
4. Install `Cloud9` from this [fork](https://github.com/jeasinema/core), target path should be `./c9sdk`
5. Clone and install `cloud9-launcher` from this [fork](https://github.com/jeasinema/cloud9-launcher). 
6. set the correct path(c9sdk and template workspace) in the config file of cloud9-launcher
7. run `cloud9-launcher`

## TODO

- [ ] workspace cloning when openning
- [ ] workspace renamming
- [ ] multi c9 instance by nginx 
- [ ] new web UI for management and template choosing
