# Step-by-Step Guide: Push Changes to GitHub Pages

Since you've already published your website and made changes to `index.html`, follow these steps:

## Quick Push Steps (After Making Changes)

### Step 1: Open PowerShell/Terminal
Navigate to your project directory:
```powershell
cd F:\Portfolio\221200507-WebApp
```

### Step 2: Check What Changed
```powershell
git status
```
This will show you which files have been modified (you should see `index.html` listed).

### Step 3: Add Your Changes
Add the modified `index.html` file to staging:
```powershell
git add index.html
```
Or if you want to add all changed files:
```powershell
git add .
```

### Step 4: Commit Your Changes
Create a commit with a descriptive message:
```powershell
git commit -m "Update index.html - [describe your changes]"
```
Example messages:
- `git commit -m "Update index.html - fixed navigation menu"`
- `git commit -m "Update index.html - added new section"`
- `git commit -m "Update index.html - improved content"`

### Step 5: Push to GitHub
Push your changes to the main branch:
```powershell
git push origin main
```
Or if you've set up the upstream branch:
```powershell
git push
```

### Step 6: Wait for GitHub Pages to Update
- GitHub Pages will automatically rebuild your site
- Wait **1-5 minutes** for changes to appear
- Visit: `https://h41lz.github.io/Portfolio-Website/` to see your updates

---

## Alternative: Use the Deployment Script

You can also use the provided `deploy.ps1` script:

```powershell
.\deploy.ps1
```

The script will:
1. Check if git is initialized
2. Add all files
3. Ask for a commit message
4. Push to GitHub

---

## Troubleshooting

### ⚠️ If you get "rejected - fetch first" error

**Error message:**
```
! [rejected]        main -> main (fetch first)
error: failed to push some refs
hint: Updates were rejected because the remote contains work that you do not have locally.
```

**This happens when:** The remote repository (GitHub) has changes that you don't have in your local repository. This can occur if:
- You made changes directly on GitHub (web interface)
- You're working from multiple computers
- Someone else pushed changes

**Solution - Pull first, then push:**

1. **Pull the remote changes:**
   ```powershell
   git pull origin main
   ```
   This will download and merge the remote changes with your local changes.

2. **If there are merge conflicts:**
   - Git will show you which files have conflicts
   - Open the conflicted files and look for `<<<<<<<`, `=======`, and `>>>>>>>` markers
   - Edit the files to resolve conflicts (keep the code you want)
   - Save the files

3. **After resolving conflicts (if any), add and commit:**
   ```powershell
   git add .
   git commit -m "Merge remote changes with local updates"
   ```

4. **Now push your changes:**
   ```powershell
   git push origin main
   ```

**⚠️ If you get "You have not concluded your merge" error:**

This means you have an unfinished merge. Complete it first:

1. **Check status:**
   ```powershell
   git status
   ```

2. **If conflicts are already resolved, complete the merge:**
   ```powershell
   git commit -m "Complete merge with remote changes"
   ```

3. **Add any other changes and commit:**
   ```powershell
   git add .
   git commit -m "Update files"
   ```

4. **Then push:**
   ```powershell
   git push origin main
   ```

**Alternative - If you want to see what changed on remote first:**
```powershell
git fetch origin
git log HEAD..origin/main
```
This shows you what commits are on the remote that you don't have locally.

**Note for PowerShell:** Use `;` instead of `&&` to chain commands:
```powershell
git pull origin main; git push origin main
```

### If you get "nothing to commit"
- Make sure you saved your `index.html` file
- Check `git status` to see if changes are detected

### If you get authentication errors
- You may need to authenticate with GitHub
- Use a Personal Access Token or SSH key

### If changes don't appear on the website
- Wait a few more minutes (GitHub Pages can take up to 5 minutes)
- Check the Actions tab in your GitHub repository to see if deployment succeeded
- Clear your browser cache and refresh

---

## Your Repository Info
- **Repository**: `https://github.com/H41lz/Portfolio-Website`
- **Live Site**: `https://h41lz.github.io/Portfolio-Website/`
- **Branch**: `main`

