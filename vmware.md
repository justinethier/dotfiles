# Signing kernel mods on a Linux host with secure boot

"Cannot open /dev/vmmon: No such file or directory" error when powering on a VM (2146460), Powering on a virtual machine on Linux hosts that boots from UEFI with secure boot enabled fails. Instructions from https://kb.vmware.com/s/article/2146460

To correct the issue with secure boot enabled:

Generate a key pair using the openssl to sign vmmon and vmnet modules:

    $openssl req -new -x509 -newkey rsa:2048 -keyout MOK.priv -outform DER -out MOK.der -nodes -days 36500 -subj "/CN=VMware/"

Replace MOK with the name of the file you want for the key.
 
Sign the modules using the generated key by running these commands:

    $sudo /usr/src/linux-headers-`uname -r`/scripts/sign-file sha256 ./MOK.priv ./MOK.der $(modinfo -n vmmon)

    $sudo /usr/src/linux-headers-`uname -r`/scripts/sign-file sha256 ./MOK.priv ./MOK.der $(modinfo -n vmnet)

Import the public key to the system's MOK list by running this command:

    $sudo mokutil --import MOK.der
 
Confirm a password for this MOK enrollment request.
Reboot your machine. Follow the instructions to complete the enrollment from the UEFI consol.
