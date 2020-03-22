# Overview
These set of scripts and Ansible playbooks is supposed to be used on a desktop Ubuntu 18.04.4 LIVE booted x86 PC with unfettered access to the Internet. It turns the computer into a Folding @ Home client that at this time of writing (3/21/20) has diverted its entire distributed computing project to fight COVID-19.

# Get started
This assumes the default mode by booting a PC from a USB stick. If you already have Ubuntu 18.04 installed. Check the alternative install method.

- Download the Ubuntu [iso image](http://releases.ubuntu.com/18.04.4/ubuntu-18.04.4-desktop-amd64.iso) and make a bootable USB stick.
- When the node is booted, select your preferred language and then "Try Ubuntu". 
- On the Ubuntu desktop, right-click and select "Open Terminal" at the bottom of the popup menu.
- Optional: If you want you use a particular username, team or want to use a NVIDIA GPU, here are some variables to set:
  ```
  export USERNAME=MyUserName
  export TEAM=MyTeamNumber
  export USE_GPU=true
  ```
  **Note:** Default values are Anonymous, no team and not using a GPU.
- Type the following into the Terminal and hit enter to start the installer:
```
wget -q https://datamattsson.io/fah-bionic-bootstrap -O- | sudo bash
```
- When the installer finishes, the Folding @ Home client should be looking for work. Access the web UI on the computer by accessing https://localhost:8080
- Thank you for donating your resources to fight COVID-19.

# Alternative install method
