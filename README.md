# VetSec-Wargame
This is a Wargame VM designed for teaching and challenging people in the basics of Exploitation Development and Reverse Engineering.

# Motivation
I created this to help our growing community of Cyber Security veterans of [VetSec](https://veteransec.com/) learn about Exploitation
Development and Reverse Engineering. I intend on having this be open to the public for use by anyone (assuming credit is given if used
for purposes other than self learning). It is a work in progress, so please feel free to provide any feedback.

# TODO
- [x] Set up initial VM with preinstalled tools with [tutorial](https://veteransec.com/2018/09/22/creating-vetsecs-wargame-pt-1/)
- [ ] Create initial challenges with tutorials
- [ ] Work on intermediate challenges without tutorials

# How to use?
This VM can be used by installing [Vagrant](https://www.vagrantup.com/downloads.html) for your Host OS. You will also need to install [VirtualBox](https://www.virtualbox.org/) for your Host OS since the VM base is VirtualBox.

Then, you can use the Wargame by one of the following ways:

## Create the Wargame from scratch
Download the Wargame from Github via git clone or the zip file.
In root folder of VetSec-Wargame run `vagrant up` then `vagrant ssh` when it's done provisioning to log in.
The challenges are located in the home directory in the folder called 'challenges'.

## Run the pre-configured Wargame
If you would like to save a little time, I provided the Wargame in a [portable .box file on my Google Drive](https://drive.google.com/open?id=1Ed1H1PyxtKQaVGfGpYMqiZqRCq-NqK4i).  
Simply place the vetsec-wg.box file into a folder and just run `vagrant add vetsec-wg vetsec-wg.box` followed by `vagrant up`
Then `vagrant ssh` to ssh into the box and head to the challenges located in the home directory!

# Other useful information
default username: vagrant  
default password: vagrant

Please see my [blog post about the creation of this VM](https://veteransec.com/2018/09/22/creating-vetsecs-wargame-pt-1/) for other information about the VM.

## Common issues and fixes
### There is already a VM with this name created
If you ran `vagrant up` and tried to run this installation again in another folder on the same computer without running `vagrant destroy`, the old vm is lingering with the same name. To remove it, open virtual box and delete the old box, then you should be able to `vagrant up` in the new location.

# Contribute
If you would like to help contribute, please feel free to shoot me a message on any of my methods of communication and we can discuss things in need.

# Thank you!
I hope you find this to be useful in your endevours. I'm happy to help in any way I can if you reach out to me.
Also, please provide credit to me if you intend to use this for any purpose besides your own self teaching.
