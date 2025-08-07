---
tags:
  - linux
  - tools
  - cli
  - yaml
  - json
  - data-manipulation
  - development
  - devops
aliases: ["yq yaml processor"]
creation_date: 2025-08-06
---

# yq: The `jq` for YAML (and more)

`yq` is a lightweight and portable command-line YAML processor. It uses a syntax that is very similar to `[[jq]]`, making it the perfect tool for slicing, dicing, and transforming YAML files right from the terminal.

It's not just for YAML—it can also read and write JSON, XML, and other formats, making it a true data-conversion Swiss Army knife.

---
## 🤔 Why It's Essential
- **Easily read and extract values** from common config files like `docker-compose.yml`, GitHub Actions workflows, or Ansible playbooks.
- **Programmatically modify YAML files** in scripts, which is incredibly useful for automation.
- **Convert between formats.** Need to turn a JSON API response into a YAML config file? `yq` can do it in one line.

---
## ⚙️ How to Install
`yq` is a popular tool available in the Arch `community` repository.

- **Installation Command:**
  > paru -S yq

---
## 🚀 Common Commands / Usecase
The syntax is very intuitive if you already know `[[jq]]`. Let's assume we have this simple `docker-compose.yml` file:

```yaml
version: "3.8"
services:
  web:
    image: "nginx:1.25"
    ports:
      - "8080:80"
  db:
    image: "postgres:15"
    volumes:
      - "db_data:/var/lib/postgresql/data"
volumes:
  db_data:
  ```
- **To Pretty-Print a YAML File (with colors):**
    
    > yq . docker-compose.yml
    
- **To Extract a Specific Value:** _Use `.key.subkey` to navigate the structure._
    
    > yq '.services.web.image' docker-compose.yml
    
    > _Output: `nginx:1.25`_
    
- **To Extract an Item from a List (Array):**
    
    > yq '.services.web.ports[0]' docker-compose.yml
    
    > _Output: `8080:80`_
    
- **To Update a Value In-Place:** _The `-i` flag modifies the file directly._
    
    > ==**Warning:**== This will change your original file. yq -i '.services.web.image = "nginx:latest"' docker-compose.yml
    
- **To Convert YAML to JSON:**
    
    > yq -o=json . docker-compose.yml
    
- **To Convert JSON to YAML:**
    
    > cat package.json | yq -P -
    
    > _The `-P` flag pretty-prints the YAML output._
    

> **My Workflow:** My most common use is quickly checking or changing an image tag in a `docker-compose.yml` file without having to open the editor.
> 
> > # Check the current database image yq '.services.db.image' docker-compose.yml
> 
> > # Update the database image to a new version yq -i '.services.db.image = "postgres:16-alpine"' docker-compose.yml