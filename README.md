# GhostLink 8K — 项目官网与博客

终极物理层隐身鼠标加速器 · 真·物理透传 | 8K 竞技级 | 驱动全兼容 | 反作弊零风险

本仓库为 **可托管在 GitHub Pages 的静态网页博客**，用于：

- 展示产品介绍（营销型方案说明）
- **进展更新**：发布项目重要节点与动态
- **捐赠致谢**：公示捐赠者名单（可选匿名）
- **预约名单**：预约项目上线 / 优先购买资格

---

## 本地预览

用浏览器直接打开根目录下的 `index.html` 即可，或使用本地服务器：

```bash
# 若已安装 Python 3
python -m http.server 8080

# 若已安装 Node.js 的 npx
npx serve .
```

然后访问 `http://localhost:8080`（端口以实际为准）。

---

## 托管到 GitHub Pages

1. **在 GitHub 新建仓库**（如 `BUPT-C-8K`），不要勾选 “Add a README” 等，保持空仓库。

2. **把本目录推送到该仓库**（用户名：**czh2005**）：

   ```bash
   cd 网页博客
   git init
   git add index.html styles.css script.js README.md deploy.bat
   git commit -m "Initial: GhostLink 8K 官网与博客"
   git branch -M main
   git remote add origin https://github.com/czh2005/BUPT-C-8K.git
   git push -u origin main
   ```

   或在 Windows 下进入本文件夹后双击运行 **`deploy.bat`**（需先已在 GitHub 建好空仓库 `BUPT-C-8K`）。

3. **开启 GitHub Pages**  
   - 打开：<https://github.com/czh2005/BUPT-C-8K/settings/pages>  
   - **Source** 选 **Deploy from a branch**  
   - **Branch** 选 `main`，目录选 **/ (root)**，点 Save  
   - 等待 1–2 分钟，博客地址：  
     **https://czh2005.github.io/BUPT-C-8K/**

若仓库名改为 `czh2005.github.io`，则地址为 **https://czh2005.github.io/**。

---

## 如何更新内容

### 进展更新

在 `index.html` 里找到 `<div class="timeline">`，在其中按时间倒序追加：

```html
<article class="timeline-item">
  <time class="timeline-date">2025-02-20</time>
  <div class="timeline-content">
    <h3>你的标题</h3>
    <p>具体进展说明...</p>
  </div>
</article>
```

### 捐赠者名单

在 `index.html` 里找到 `<ul class="donor-list">`，追加：

```html
<li><span class="name">昵称（或“匿名”）</span> <span class="date">2025-02-14</span></li>
```

若暂无记录，可保留“（暂无记录）”占位。

### 预约名单

在 `index.html` 里找到 `<ul class="waitlist">`，按预约顺序追加（`ord` 为序号）：

```html
<li><span class="ord">1</span><span class="name">昵称或备注</span></li>
<li><span class="ord">2</span><span class="name">另一人</span></li>
```

改完后执行 `git add`、`git commit`、`git push`，GitHub Pages 会自动更新。

---

## 文件说明

| 文件           | 说明                         |
|----------------|------------------------------|
| `index.html`   | 主页面：介绍、进展、捐赠、预约 |
| `styles.css`   | 样式（深色科技风）           |
| `script.js`    | 脚本占位，便于以后扩展       |
| `README.md`    | 本说明与部署步骤             |

---

*让辅助归于物理，让反作弊无处着力。*
