---
tags:
  - linux
  - tools
  - cli
  - json
  - data-manipulation
  - development
aliases: ["jq json processor"]
creation_date: 2025-08-06
---

# jq: The JSON Processor

`jq` is a lightweight and flexible command-line JSON processor. Think of it as `sed` or `grep`, but built specifically for slicing, dicing, and transforming JSON data.

It's an indispensable tool for working with APIs, config files, and any other command that outputs JSON.

---
## 🤔 Why It's Essential
- **Easily extract specific values** from complex, nested JSON returned by an API.
- **Makes reading JSON in the terminal manageable** by pretty-printing and colorizing it.
- **Incredibly powerful for shell scripting** when you need to process JSON output from other tools.

---
## ⚙️ How to Install
`jq` is a standard and popular tool available in the official repositories of most distributions.

- **Installation Command (on EndeavourOS):**
  > paru -S jq

---
## 🚀 Common Commands / Usecase
The best way to understand `jq` is to see it in action. Let's assume we have a simple `package.json` file:
```json
{
  "name": "my-project",
  "version": "1.0.0",
  "scripts": {
    "dev": "vite dev",
    "build": "vite build"
  },
  "keywords": ["react", "vite", "typescript"]
}
```

- **To Pretty-Print JSON:** _The `.` filter means "the entire input". This is the simplest way to make a messy JSON string readable._
    
    > cat package.json | jq '.'
    
- **To Extract a Single Value:** _Use `.keyname` to get the value of a specific key._
    
    > cat package.json | jq '.version'
    
    > _Output: `"1.0.0"`_
    
- **To Work with Arrays:**
    
    > # Get the first keyword cat package.json | jq '.keywords[0]' _Output: `"react"`_
    
    > # "Unwrap" the array, printing each item on a new line cat package.json | jq '.keywords[]' _Output:_ _"react"_ _"vite"_ _"typescript"_
    
- **To Create a New, Simpler Object:** _You can build a new JSON object using data from the input._
    
    > cat package.json | jq '{ name: .name, dev_script: .scripts.dev }'
    
    > _Output:_ _`{ "name": "my-project", "dev_script": "vite dev" }`_
    
- **To Get Just the Raw String (without quotes):** _Use the `-r` flag for "raw output"._
    
    > cat package.json | jq -r '.version'
    
    > _Output: `1.0.0`_
    

> **My Workflow:** A very common use for me is quickly checking the latest version of a package from the npm registry API.
> 
> > # Find the latest version of Prettier curl -s https://www.google.com/search?q=https://registry.npmjs.org/prettier | jq -r '.["dist-tags"].latest'