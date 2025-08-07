---
tags:
  - linux
  - tools
  - cli
  - networking
  - security
  - ssh
  - sysadmin
aliases: ["SSH", "Secure Shell"]
creation_date: 2025-08-06
---

# OpenSSH: Secure Remote Connections

`OpenSSH` is the primary tool for securely connecting to and managing remote computers over a network. It's a suite of utilities that uses the Secure Shell (SSH) protocol to encrypt all traffic, preventing eavesdropping and connection hijacking.

It is the standard for remote administration, secure file transfers, and interacting with services like [[GitHub]].

---
## 🤔 Key Components
The `openssh` package provides several crucial commands:
- **`ssh`**: The client program you use to log into a remote machine.
- **`scp`**: Secure copy, for transferring files to and from a remote machine.
- **`ssh-keygen`**: The utility for creating your SSH key pairs.

---
## ⚙️ How to Install
`OpenSSH` is a fundamental package and is almost always pre-installed, even on a minimal [[EndeavourOS]] system.

- **Installation Command (just in case):**
  > paru -S openssh

---
## 🛠️ Configuration: SSH Key-Based Authentication
Using SSH keys is ==far more secure and convenient== than typing a password every time. The workflow involves creating a key pair (private and public) and giving your public key to the server you want to connect to.

- **Step 1: Generate a Key Pair (if you don't have one):**
  *The `-t ed25519` flag uses the modern, recommended algorithm.*
  > ssh-keygen -t ed25519 -C "your_email@example.com"

  > *When prompted, it's best to accept the default file location (`~/.ssh/id_ed25519`) and set a strong passphrase for your key.*

- **Step 2: Copy Your Public Key to the Server:**
  *This is the easiest way to authorize your key on another Linux server.*
  > ssh-copy-id username@remote_host

  > *This command automatically appends your public key (`~/.ssh/id_ed25519.pub`) to the `~/.ssh/authorized_keys` file on the remote server.*

- **For [[GitHub]]:** As we did before, you copy the contents of your `~/.ssh/id_ed25519.pub` file and paste it into the "SSH and GPG keys" section in your account settings.

---
## 🚀 Common Commands / Usecase

- **To Connect to a Remote Server:**
  > ssh username@hostname_or_ip

- **To Copy a File from Your Laptop to a Server (Upload):**
  > scp /path/to/local/file.txt username@remote_host:/path/to/remote/directory/

- **To Copy a File from a Server to Your Laptop (Download):**
  > scp username@remote_host:/path/to/remote/file.txt /path/to/local/directory/

- **To Test Your Connection to GitHub:**
  > ssh -T git@github.com

### Power User Tip: Local Port Forwarding
You can use SSH to securely forward a port from a remote machine to your local machine.

> \# Forward local port 8080 to port 80 on the remote server
> ssh -L 8080:localhost:80 username@remote_host

> *After running this, you can open `http://localhost:8080` in your browser on your laptop, and you will be securely connected to the web server running on the remote machine. Incredibly useful for development!*