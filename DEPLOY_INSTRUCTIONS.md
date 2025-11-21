# How to Push to GitHub Pages

Your GitHub Pages site is hosted at: `https://h41lz.github.io/oliver-lanuza.github.io/`

## Repository Setup
- **Username**: `h41lz`
- **Repository**: `oliver-lanuza.github.io`

## Steps to Deploy:

### 1. Initialize Git Repository (if not already done)
```powershell
git init
```

### 2. Add All Files
```powershell
git add .
```

### 3. Create Initial Commit
```powershell
git commit -m "Initial commit - Portfolio website"
```

### 4. Add Remote Repository
```powershell
git remote add origin https://github.com/h41lz/oliver-lanuza.github.io.git
```

### 5. Push to GitHub
```powershell
git branch -M main
git push -u origin main
```

## Important Note About File Location

Your portfolio website files are currently in the `My_Portfolio/Website/` directory. Since GitHub Pages is configured to deploy from `/ (root)`, you need to move your files to the repository root.

### Move Files to Root (Required)

**Before pushing to GitHub**, copy all files from `My_Portfolio/Website/` to the root directory of your repository so that:
- `My_Portfolio/Website/index.html` → `index.html` (in root)
- `My_Portfolio/Website/style.css` → `style.css` (in root)
- `My_Portfolio/Website/CV.html` → `CV.html` (in root)
- And all other files (images, CSS, JS, subdirectories, etc.)

This ensures GitHub Pages can find your `index.html` file at the root when it builds your site.

## Setting Up GitHub Pages

After pushing your code to GitHub:

1. Go to your repository on GitHub: `https://github.com/h41lz/oliver-lanuza.github.io`
2. Click on **Settings** (in the repository menu bar)
3. Scroll down to **Pages** in the left sidebar
4. Under **Build and deployment**:
   - **Source**: Should be set to "Deploy from a branch"
   - **Branch**: Should show:
     - Branch: `main` 
     - Folder: `/ (root)`
   - If it shows "Your GitHub Pages site is currently being built from the main branch" - you're all set! ✅
   - If not configured yet, select `main` branch and `/ (root)` folder, then click **Save**
5. GitHub Pages will build your site and it will be available at `https://h41lz.github.io/oliver-lanuza.github.io/` after a few minutes

## After Pushing

1. Wait a few minutes for GitHub Pages to build
2. Visit `https://h41lz.github.io/oliver-lanuza.github.io/` to see your changes
3. Any future changes: just commit and push:
   ```powershell
   git add .
   git commit -m "Your commit message"
   git push
   ```

