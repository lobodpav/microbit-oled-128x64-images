# OLED SSD1306 128x64px images

# Local development

## Install the necessary tooling

1. `mkc` to build and deploy to micro:bit
2. `minicom` to connect to micro:bit serial interface for input/output

```shell
npm install makecode -g
brew install minicom
```

## Install the dependencies

To install the dependencies defined in the [pxt.json](pxt.json), run

```shell
make install
```

The dependencies will be downloaded into the [pxt_modules](pxt_modules) directory.

## Build the code

The binaries will be created into the [built](built) directory.

```shell
make build
```

## Build & deploy the code

```shell
make deploy
```

## Connect to micro:bit's serial interface

```shell
make connect
```

Once connected, press `Esc+X` to exit and reset.

### Minicom setup

Before running the `minicom` command to connect to micro:bit,
configure `minicom` by either running this command

```shell
cat <<EOF > ~/.minirc.dfl
#pu escape-key       ^A
pu localecho        Yes
pu linewrap         Yes
EOF
```

or following these setup steps:

1. Run `minicom -s` to start setup.
2. Go to `Serial port setup`.
3. Disable `Hardware Flow Control` to allow micro:bit to receive characters typed on the keyboard.
4. Go to `Screen`.
5. Enable `Local echo` to print out pressed characters on the keyboard.
6. Enable `Line Wrap` to automatically wrap long lines instead of clipping them when they exceed the screen width.
7. In the `Keyboard and Misc` section, you can change the `Command key is` to whatever shortcut. The default is `Esc+z`.
8. Click `Save setup as..` to persist the changes to the `~/.minirc.dfl`.
9. Click `Exit`

### Multiple open serial connections

Be careful not to have more than one serial connection open.
For example, [MakeCode editor](https://makecode.microbit.org/#editor) keeps an open connection
so you must first disconnect before executing `minicom`.

When 2 serial connections are open at the same time,
you will observe data losses as each connection receives parts of the output :)
