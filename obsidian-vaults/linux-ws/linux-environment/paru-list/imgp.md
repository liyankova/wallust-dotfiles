---
tags:
  - linux
  - tools
  - cli
  - images
  - graphics
  - productivity
aliases: ["image processor", "batch image resizer"]
creation_date: 2025-08-06
---

# imgp: Fast Batch Image Processor

`imgp` is a simple but very fast command-line tool for batch processing images. Its main job is to resize, rotate, and optimize a whole folder of images at once.

It's a huge time-saver compared to opening a GUI app like GIMP for repetitive tasks.

---
## 🤔 Why It's Useful for Me
- **Content Creation:** Perfect for quickly preparing all screenshots or assets for a blog post, tutorial, or video.
- **Performance:** It's multithreaded and lives up to its "blazing fast" description.
- **Optimization:** It can significantly reduce image file sizes by optimizing quality and stripping unnecessary metadata, which is great for web performance.

---
## ⚙️ How to Install
`imgp` is available on the [[AUR]].

- **Installation Command:**
  > paru -S imgp

---
## 🚀 Common Commands / Usecase
`imgp` works on all specified files in the current directory. It creates processed copies by default, leaving your original files untouched.

- **To Resize All JPEGs to a Max Width of 1920px:**
  *Keeps the original aspect ratio.*
  > imgp -w 1920 *.jpg

- **To Resize All PNGs to an Exact 1280x720 Resolution:**
  *This will stretch the image if the aspect ratio is different.*
  > imgp -x 1280x720 *.png

- **To Optimize Images and Set Quality to 80%:**
  *The `-o` flag enables optimization.*
  > imgp -o -q 80 *.jpg

- **To Strip All Metadata (EXIF, etc.) for Privacy:**
  > imgp -m *.png

- **To Overwrite Original Files Instead of Creating Copies:**
  > ==**Warning:**== This will replace your original files.
  > imgp --overwrite ...

---
### My Workflow Example
A typical use case for me is preparing screenshots for a tutorial. I'll dump all the raw PNGs into a folder, `cd` into it, and run a single command to get them all web-ready.

- **Resize all PNGs to a max width of 1280px, optimize them, and overwrite the originals:**
  > imgp -w 1280 -o --overwrite *.png