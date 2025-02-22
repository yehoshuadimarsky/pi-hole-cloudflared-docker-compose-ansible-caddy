# Example Docker Compose and Ansible configuration for running AdGuard and Tailscale

Example configuration for using AdGuard, Docker Compose, Ansible, and Tailscale to over-engineer your home network for privacy and security.

## Usage

1. Download the [Raspberry Pi Imager](https://www.raspberrypi.org/software/) and flash the latest version of Raspberry Pi OS *Lite*.
    1. Set the SSH method to your SSH public key
    1. Set the username to `pi`
    1. Set up the Wifi connection details
1. Go to your router, find the newly connected RPI, and assign it a static IP address
1. Edit the file `hosts.yml` with the internal static IP address of your Raspberry PI
1. Get a Tailscale auth key, set it as an env var:
    ```shell
    export TAILSCALE_KEY=<key>
    ```
1. Run `./setup.sh`
1. Go to `http://<internal ip address>:3000` to access the AdGuard Admin Web UI
1. Follow instructions there to set it up and connect it to your router

## Credit

Ben Balter's excellent [How I re-over-engineered my home network for privacy and security](https://ben.balter.com/2021/09/01/how-i-re-over-engineered-my-home-network/) and [How I over-engineered my home network for privacy and security](https://ben.balter.com/2020/12/04/over-engineered-home-network-for-privacy-and-security/).