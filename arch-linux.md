# No networking after initial install/reboot:

```
Try these steps.
# first find the name of n/w adapters
ip addr
# next turn it up
sudo dhcpcd ethx
# enable dhcpcd so you donot have to do it every time you reboot
sudo systemctl enable dhcpcd@ethx.service

NOTE: replace ethx with whatever you found in first command
```
