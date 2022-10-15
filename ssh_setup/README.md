# How to Setup SSH Server and Client

## Requirements

* Two computers running and Ubuntu based OS. 
* Git installed on both machines.
* *Disclaimer: This has only been tested on Linux Mint*

## Getting Started

* Clone this repo on the machine that is to be used as the SSH Server.
* Clone this repo on a machine that will be used on the Client.

## Setup SSH Server with Password Authentication

### On Server

1. We must initialize the SSH Server. This will default to use password authentication. 
    In the ssh_setup directory, run ```make setup-init-ssh-server```.


2. (*Optional*) If you enable key authentication on the SSH Server, you can always go back to 
    password authentication by running ```make setup-password-auth-ssh-server```.
   
### On Client

1. Users can ssh into the Server with password authentication by running ```ssh username@host```.
    You will then be prompted to enter your password.
   
## Setup SSH Server with Key Authentication

### On Client

1. Follow the steps above to set up the SSH Server with password authentication.


2. Create SSH Keys and copy them over to the SSH Server. 
   Do this by running ```make setup-key-auth-ssh-client```.
   This will place SSH Keys in the ~/.ssh/ directory.

### On Server

1. Disable password authentication and enable key authentication on the SSH Server. 
   Do this by running ```make setup-key-auth-ssh-server```.
   

### On Client

1. You can log in to the SSH Server by running one of the following:
    * ```ssh username@host``` if the SSH Key has been added to the client's ssh-agent. See 
      https://stackoverflow.com/questions/59618087/why-can-i-connect-through-ssh-without-using-the-required-private-key .
      
    * ```ssh -i ~/.ssh/mark-utility-box-1.ssh-server.key username@host``` SSH Key is not in ssh-agent.