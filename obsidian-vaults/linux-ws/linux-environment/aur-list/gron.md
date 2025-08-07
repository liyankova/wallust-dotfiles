---
tags:
  - linux
  - tools
  - cli
  - json
  - data-manipulation
  - productivity
aliases: ["gron json"]
creation_date: 2025-08-06
---

# gron: Making JSON Greppable

`gron` is a brilliant utility that transforms JSON data into a flat, discrete set of assignments. This makes the JSON structure much easier to understand and, most importantly, allows you to use standard text-based tools like `grep` to find what you're looking for.

It can also reverse the process, turning the flat assignments back into valid JSON.

---
## 🤔 Why It's So Useful
Imagine you have a huge, nested JSON response from an API and you want to find a specific key or value. Trying to `grep` that file is a nightmare. `gron` solves this.

- **Makes JSON Readable:** It turns complex nested structures into a simple, line-by-line path format.
- **Enables `grep`:** You can easily pipe the output of `gron` into `grep` to find exactly the path you need.
- **Helps Discover API Structures:** It's an amazing tool for exploring a new API. You can `curl` an endpoint, pipe it to `gron`, and instantly see the entire data structure.

---
## ⚙️ How to Install
`gron` is available in the Arch `community` repository.

- **Installation Command:**
  > paru -S gron

---
## 🚀 Common Commands / Usecase
The most common workflow is piping a JSON source (from `cat` or `curl`) into `gron`.

- **To "Flatten" a local JSON file:**
  > cat package.json | gron

- **To Explore a live API endpoint:**
  > curl -s https://api.github.com/repos/AstroNvim/AstroNvim | gron

- **The Real Power: Combining with `grep`**
  *Let's say you want to find the SSH clone URL from that GitHub API response.*
  > curl -s https://api.github.com/repos/AstroNvim/AstroNvim | gron | grep ssh_url
  >
  > *This will instantly give you the line:*
  > `json.ssh_url = "git@github.com:AstroNvim/AstroNvim.git";`

- **To Turn Flattened Data Back into JSON:**
  *Use the `-u` or `--ungron` flag.*
  > \# Find the line you want
  > curl -s https://api.github.com/repos/AstroNvim/AstroNvim | gron | grep ssh_url
  >
  > \# Now, ungron it to get just that value as valid JSON
  > curl -s https://api.github.com/repos/AstroNvim/AstroNvim | gron | grep ssh_url | gron -u
  >
  > *This will output:*
  > `{"ssh_url": "git@github.com:AstroNvim/AstroNvim.git"}`

> `gron` is an indispensable tool for any developer who works with APIs. It turns frustrating JSON exploration into a simple, greppable task.