---
tags:
  - linux
  - tools
  - cli
  - tui
  - data-manipulation
  - python
aliases: ["VisiData", "terminal spreadsheet"]
creation_date: 2025-08-06
---

# VisiData: The Terminal Spreadsheet Multitool

VisiData is an incredibly powerful interactive tool for discovering, cleaning, and analyzing data, all within your terminal. It's best described as a "spreadsheet from the future" with [[Vim]]-like keybindings.

It can open almost any structured data format (CSV, JSON, SQLite, logs, etc.) and turn it into a navigable table for exploration.

---
## 🤔 Why It's So Powerful
- **Universal Data Viewer:** It can open and make sense of a huge variety of data files, making it a single tool for many different data sources.
- **Keyboard-Driven:** ==Everything is done with keyboard shortcuts==, which makes data exploration and manipulation incredibly fast once you learn the basics.
- **Instant Analysis:** You can get instant insights from your data, like frequency counts, statistics, and even plots, with just a few keystrokes.
- **Non-Destructive:** It loads the data into memory and any changes you make won't be saved to the original file unless you explicitly tell it to. It's safe to explore.

---
## ⚙️ How to Install
`visidata` is available in the Arch `community` repository.

- **Installation Command:**
  > paru -S visidata

---
## 🚀 How to Use & Essential Keybindings

- **To Open a File:**
  > vd /path/to/data.csv
  >
  > \# You can also pipe data into it
  > cat data.json | vd

### Keybindings Inside the App
The key to `visidata` is learning the shortcuts. `q` is your best friend—it always takes you back to the previous screen or quits.

- **Navigation:**
  - **`h` `j` `k` `l`**: Move around, just like in Vim.
  - **`g` `h`** and **`g` `l`**: Go to the first and last columns.
  - **`g` `k`** and **`g` `j`**: Go to the first and last rows.

- **Sorting:**
  - **`[`**: Sort the current column in ascending order.
  - **`]`**: Sort the current column in descending order.

- **Analysis (The Killer Feature):**
  - **`Shift + I`** (on a column header): Open a **Frequency Sheet**. This instantly shows you a table of each unique value in that column and how many times it appears, sorted by frequency.
  - **`Shift + F`**: Creates a simple histogram/frequency plot for the current column.

- **Filtering & Selecting:**
  - **`"`**: Prompt to select all rows matching a regex.
  - **`|`**: Prompt to filter out rows that don't match a regex.
  - **`s`**: Select the current row.
  - **`u`**: Unselect the current row.

- **General:**
  - **`z` `?`**: Open the full command/help sheet.
  - **`q`**: Go back one "sheet" or quit the application.

> **My Workflow Example:** Imagine I get a `users.json` file from an API. I can immediately get insights from it without writing any code.
> 1.  Run `vd users.json`.
> 2.  Navigate to the `country` column with `l`.
> 3.  Press `Shift + I` on the `country` column header.
>
> VisiData instantly opens a new sheet showing me a count of users from each country, sorted from most to least common. It's an incredibly fast way to understand a dataset.