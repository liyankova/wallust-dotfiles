---
tags:
  - linux
  - tools
  - cli
  - tui
  - rss
  - productivity
aliases: ["newsboat rss"]
creation_date: 2025-08-06
---

# newsboat: Your RSS Feed Reader in the Terminal

`newsboat` is a simple but powerful RSS/Atom feed reader for the terminal. It lets you aggregate all your favorite blogs, news sites, and project updates into one clean, keyboard-driven interface, free from the distractions of a web browser.

It's a modern and actively maintained fork of the original `newsbeuter`.

---
## 🤔 Why It's Great for My Workflow
- **Distraction-Free:** It keeps me updated on things I care about without needing to open a dozen browser tabs and get sidetracked.
- **Keyboard-Centric:** The entire interface is navigable with [[Vim]]-like keybindings, making it incredibly fast to browse through headlines and articles.
- **Organized:** I can categorize my feeds with tags to keep things tidy.
- **Extensible:** It can be integrated with other CLI tools, like opening links in a specific browser or piping article content to other scripts.

---
## ⚙️ How to Install
`newsboat` is available in the Arch `community` repository.

- **Installation Command:**
  > paru -S newsboat

---
## 🛠️ Configuration: Adding Your Feeds
The most important step is telling `newsboat` which feeds to follow. This is done in a simple text file.

- **Step 1: Create the config directory and `urls` file.**
  > mkdir -p ~/.config/newsboat
  >
  > touch ~/.config/newsboat/urls

- **Step 2: Add your feed URLs to the file.**
  > nvim ~/.config/newsboat/urls

  > *Inside the file, add one URL per line. You can optionally add tags after the URL, separated by a space.*
  >
  > **Example `urls` file:**
  > ```
  > # Tech News
  > [https://www.phoronix.com/rss.php](https://www.phoronix.com/rss.php) "Linux" "Hardware"
  > [https://itsfoss.com/feed/](https://itsfoss.com/feed/) "Linux"
  >
  > # Web Development
  > [https://web.dev/blog/rss.xml](https://web.dev/blog/rss.xml) "WebDev" "Google"
  > [https://frontendmastery.com/feed/](https://frontendmastery.com/feed/) "WebDev" "Frontend"
  >
  > # Project Releases
  > [https://github.com/hyprwm/Hyprland/releases.atom](https://github.com/hyprwm/Hyprland/releases.atom) "Hyprland"
  > ```

---
## 🚀 How to Use & Essential Keybindings

- **To Launch:**
  > newsboat

### Keybindings Inside the App
-   **General:**
    -   **`r`**: Reload the currently selected feed.
    -   **`R`**: Reload **all** feeds.
    -   **`q`**: Quit the application or go back to the previous screen.
    -   **`?`**: Show the help screen with all keybindings.

-   **In the Feed List:**
    -   **`j` / `k`** or **`Up` / `Down`**: Navigate up and down the list of feeds.
    -   **`Enter`**: Open a feed to see its list of articles.

-   **In the Article List:**
    -   **`j` / `k`**: Navigate up and down the list of articles.
    -   **`Enter`**: Open an article to read it inside `newsboat`.
    -   **`o`**: ==Open the article's link in your default web browser.== This is one of the most used commands.