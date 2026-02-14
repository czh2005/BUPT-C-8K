@echo off
chcp 65001 >nul
echo ========================================
echo   GhostLink 8K - 推送到 GitHub (czh2005)
echo ========================================
echo.

where git >nul 2>nul
if errorlevel 1 (
    echo [错误] 未检测到 Git。请先安装 Git: https://git-scm.com/
    pause
    exit /b 1
)

if not exist ".git" (
    echo 正在初始化仓库...
    git init
    git branch -M main
    echo.
    echo 请先在 GitHub 上新建空仓库: https://github.com/new
    echo 仓库名填: BUPT-C-8K （不要勾选 Add README）
    echo.
    set /p OK="创建好后按回车继续..."
    git remote add origin https://github.com/czh2005/BUPT-C-8K.git
)

REM 为本仓库设置 Git 用户信息（避免首次提交报错；仅影响本文件夹）
git config user.email "czh2005@users.noreply.github.com"
git config user.name "czh2005"

echo 添加并提交更改...
git add index.html styles.css script.js README.md deploy.bat
git status
git commit -m "Update: GhostLink 8K 官网与博客" 2>nul || git commit -m "Initial: GhostLink 8K 官网与博客"
echo 正在推送到 GitHub...
git push -u origin main
if errorlevel 1 (
    echo.
    echo 若提示仓库不存在，请先访问 https://github.com/new 创建仓库名 BUPT-C-8K
    echo 若提示需要登录，请配置 Git 凭据或 SSH。
)
echo.
pause
