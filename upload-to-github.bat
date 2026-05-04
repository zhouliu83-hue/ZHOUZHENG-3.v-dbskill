@echo off
REM dbskill 知识库 - 一键上传到 GitHub
REM 使用方法：双击运行，按提示操作

echo ======================================
echo dbskill 知识库 - GitHub 上传工具
echo ======================================
echo.

REM 检查是否在正确的目录
if not exist "skills\" (
    echo 错误：请在 dbskill-knowledge-base 目录中运行此脚本
    pause
    exit /b 1
)

echo 步骤 1/3：检查 Git...
where git >nul 2>&1
if %errorlevel% neq 0 (
    echo 错误：未安装 Git
    echo 请先安装 Git：https://git-scm.com/download/win
    pause
    exit /b 1
)
echo ✓ Git 已安装
echo.

echo 步骤 2/3：配置 Git 用户信息...
git config user.name "zhouliu83"
git config user.email "zhouliu83@example.com"
echo ✓ Git 用户配置完成
echo.

echo 步骤 3/3：上传到 GitHub
echo.
echo 请先完成以下准备工作：
echo 1. 在 GitHub 上创建仓库：https://github.com/new
echo    - Repository name: ZHOUZHENGdbskill
echo    - 不要勾选任何选项（保持空仓库）
echo 2. 创建 Personal Access Token：https://github.com/settings/tokens/new
echo    - Note: dbskill upload
echo    - Expiration: 90 days
echo    - 勾选：repo（全部）
echo    - 点击 Generate token
echo    - 复制 token（只显示一次！）
echo.
echo ======================================
set /p TOKEN=请粘贴你的 GitHub Personal Access Token: 

echo.
echo 正在添加远程仓库...
git remote remove origin >nul 2>&1
git remote add origin https://%TOKEN%@github.com/zhouliu83-hue/ZHOUZHENGdbskill.git

echo.
echo 正在推送到 GitHub...
git branch -M master
git push -u origin master

if %errorlevel% equ 0 (
    echo.
    echo ======================================
    echo ✓ 上传成功！
    echo.
    echo 访问你的仓库：
    echo https://github.com/zhouliu83-hue/ZHOUZHENGdbskill
    echo ======================================
) else (
    echo.
    echo ======================================
    echo ✗ 上传失败
    echo.
    echo 可能的原因：
    echo 1. Token 错误 → 重新生成 token
    echo 2. 仓库未创建 → 先在 GitHub 上创建
    echo 3. 仓库名错误 → 检查 ZHOUZHENGdbskill 拼写
    echo.
    echo 请查看上面的错误信息，或发给我帮你解决
    echo ======================================
)

echo.
pause
