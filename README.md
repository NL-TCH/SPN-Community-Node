run: docker run -v ./config.json:/data/config.json image:latest

problem solved:
install spn when not installed, run when installed (after restarting) to prevent reinstalling after container reboot
provide config after building image, and not while, to create global usable image.


https://docs.safing.io/spn/hosting-a-community-node

SPN docker container script usage:


```mermaid
graph LR;
    A(config.json provided with container creation) --> B
    B(container runs init.sh) -.->|SPN installed?| C(NO, run spn_installer.sh) -.->|Ater installing immediately start| D
    B(container runs init.sh) -.->|SPN installed?| D(YES, run spn_startup.sh with config.json)
```