It's a script to periodically restart hotspot set up on my Raspberry PI.

Hotspot is managed with: [garywill/linux-router](https://github.com/garywill/linux-router)

The first step is to disconnect the Raspberry from my phone's hotspot (it disconnects ssh).

## Configuration
Set up ssid:
`echo your_ssid > ssid.txt`
Set up password:
`echo your_password > password.txt`

## Usage
`./keep_hotspot_alive.sh >> log`
