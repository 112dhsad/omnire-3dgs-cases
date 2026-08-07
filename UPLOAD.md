# Uploading this showcase to GitHub

## Recommended: command line

1. On GitHub, create a new empty repository such as `omnire-3dgs-cases`. Do not add a README or license during creation.
2. Open a terminal in this folder and run:

```bash
git init
git add .
git commit -m "Add OmniRe 3DGS qualitative results"
git branch -M main
git remote add origin https://github.com/YOUR_USERNAME/omnire-3dgs-cases.git
git push -u origin main
```

Replace `YOUR_USERNAME` with your GitHub account name.

## Browser upload

All six MP4 files are under 25 MiB, so they can also be uploaded through the GitHub web interface. Preserve the directory structure shown in `README.md`; relative video links rely on those paths.

## Optional inline video players

The repository currently uses stable relative links to MP4 files. If you prefer GitHub-hosted inline players:

1. Edit `README.md` on GitHub.
2. Drag an MP4 into the Markdown editor and wait for GitHub to insert an uploaded asset URL.
3. Replace the corresponding `Open MP4` link with the inserted URL.

Keep the repository copies if you want the videos to remain available in cloned versions of the project.
