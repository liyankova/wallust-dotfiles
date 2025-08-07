---
tags:
  - linux
  - tools
  - git
  - security
  - encryption
  - gpg
aliases: ["git secret"]
creation_date: 2025-08-06
---

# git-secret: Managing Secrets in a Git Repo

`git-secret` is a command-line tool that lets you store sensitive files (like API tokens, `.env` files, private keys) inside a Git repository securely.

It works by using GPG to encrypt the sensitive files. This creates new, encrypted versions of those files (with a `.secret` extension) which are safe to commit and push to a remote repository like GitHub. Only people whose GPG public keys have been added to the repository can decrypt them.

---
## ✅ Prerequisites: GPG
This tool is fundamentally a wrapper around GPG (GNU Privacy Guard). For it to work, you need:

1.  **`gpg` installed on your system.**
    > paru -S gnupg

2.  **A GPG key pair** associated with the email you use for Git.
    > \# To check if you have a key
    > gpg --list-secret-keys
    >
    > \# If you don't have one, you can generate it
    > gpg --full-generate-key

---
## ⚙️ How to Install
`git-secret` is available on the [[AUR]].

- **Installation Command:**
  > paru -S git-secret

---
## 🚀 Workflow & Common Commands
The process is a clear cycle. Imagine you have a file named `api-keys.env` that you want to secure inside your `[[wallust-dotfiles]]` repo.

- **Step 1: Initialize `git-secret` in your repo.**
  *This only needs to be done once per repository.*
  > cd ~/dotfiles
  >
  > git secret init

- **Step 2: Tell `git-secret` who can decrypt the files.**
  *You must add your own GPG key so you can decrypt your own files.*
  > git secret tell your.email@example.com

- **Step 3: Add the file you want to encrypt.**
  *This tells `git-secret` to track this file, but it doesn't encrypt it yet.*
  > git secret add api-keys.env

  > ==**CRITICAL STEP:**== Add the original, unencrypted file to your main `.gitignore` file immediately! You must **never** commit the original `api-keys.env`.
  >
  > echo "api-keys.env" >> .gitignore

- **Step 4: Encrypt the files (Hide).**
  *This creates the `api-keys.env.secret` file, which is safe to commit.*
  > git secret hide

  > *You can now run `git add api-keys.env.secret` and `git add .gitignore`, then commit and push.*

- **Step 5: Decrypt the files (Reveal).**
  *After cloning your dotfiles repo on a new machine, this is the command you run to get your secret files back.*
  > git secret reveal

---
## 🛠️ Other Useful Commands

- **To see which files are being tracked by `git-secret`:**
  > git secret list

- **To see who has decryption access:**
  > git secret whoknows