# Overview
These set of scripts and Ansible playbooks is supposed to be used on a desktop Ubuntu 18.04.4 LIVE booted x86 PC with unfettered access to the Internet. It turns the computer into a Folding @ Home client that at this time of writing (3/21/20) has diverted its entire distributed computing project to fight COVID-19.

# Get started
This assumes the default mode by booting a PC from a USB stick. If you already have Ubuntu 18.04 installed or want to use your NVIDIA GPU, check the alternative install method.

- Download the Ubuntu [iso image](http://releases.ubuntu.com/18.04.4/ubuntu-18.04.4-desktop-amd64.iso) and make a bootable USB stick.
- When the node is booted, select your preferred language and then "Try Ubuntu". 
- On the Ubuntu desktop, right-click and select "Open Terminal" at the bottom of the popup menu.
- Optional: If you want you use a particular username or team, here are some variables to set:
  ```
  export FOLDER=MyUserName
  export TEAM=MyTeamNumber
  ```
  **Note:** Default values are Anonymous and no team.
- Type the following into the Terminal and hit enter to start the installer:
```
wget -q https://datamattsson.io/fah-bionic-bootstrap -O- | sudo -E bash
```
- When the installer finishes, the Folding @ Home client should be looking for work. Access the web UI on the computer by accessing [http://localhost:8080](http://localhost:8080)
- Thank you for donating your resources to fight COVID-19.

# Alternative install method
These procedures assumes you already have a Ubuntu 18.04 desktop running. If the PC has a NVIDIA GPU with the proper driver loaded, the Folding @ Home client will use the GPU instead of the CPU when looking for work.

- Install Ansible:
  ```
  apt-get install -y ansible
  ```
- Download and run the interactive installer:
  ```
  wget -q datamattsson.io/fah-bionic-installer -O /tmp/installer.yaml
  sudo ansible-playbook /tmp/installer.yaml
  ```
- When the installer finishes, the Folding @ Home client should be looking for work. Access the web UI on the computer by accessing [http://localhost:8080](http://localhost:8080)
