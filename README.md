Daily backups of the map at uacontrolmap.com

---

**Upcoming changes to this repository (May 1, 2026)**

Two changes are coming to how this repo is organized:

**1. `latest.kmz` is moving to its own branch**

The most recent map file is now available on a dedicated `latest` branch. If you're linking to or downloading `latest.kmz`, please update your URL:

Old (will stop updating May 1):
`https://github.com/owlmaps/UAControlMapBackups/raw/master/latest.kmz`

New (active now):
`https://github.com/owlmaps/UAControlMapBackups/raw/latest/latest.kmz`

The new URL is already live, so you can switch at any time. After May 1, the old file on the master branch will no longer be updated and will eventually be removed.

**2. Daily backups moving to year-based subfolders**

Starting May 1, daily backup files will be saved into subfolders by year (`2022/`, `2023/`, ..., `2026/`). Existing files will be moved into their respective folders automatically. If you have scripts or bookmarks pointing to specific backup files in the repo root, you'll need to update the paths to include the year prefix.
