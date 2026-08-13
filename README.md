# Book Dialogue

把一本书变成一场忠于原文的苏格拉底式对话。

这个 Agent Skill 先分析用户提供的完整书籍或指定章节，重建作者的问题、概念、主张、论证、反例与边界，再通过一次一个问题的简洁对话帮助用户学习。

## 特点

- 不是摘要生成器：先建立论证模型，再开始对话。
- 不是作者冒充器：明确说明是“基于文本重建的作者立场”。
- 证据分级：区分原文、释义、跨段综合与外部知识。
- 一次一问：问题从你的上一答长出来，不按固定题单推进；你可以随时要求直说、举例、跳过或换难度。
- 保护阅读进度：小说等内容默认只读你已读且授权讨论的范围，不剧透后文。
- 保留复杂性：不抹平书中的矛盾、角色差异和未解决问题。
- 适合长书：先判断当前上下文容量；超出时，只有得到用户同意后才在指定路径建立带证据索引的分批工作模型，完成全局覆盖后再模拟作者立场。
- 可选学习档案：只有用户要求时才保存进度。

## 安装

复制本仓库到 Claude Code 用户级 Skills 目录。Windows：

```powershell
New-Item -ItemType Directory -Force "$env:USERPROFILE\.claude\skills" | Out-Null
if (Test-Path "$env:USERPROFILE\.claude\skills\book-dialogue") {
    throw 'book-dialogue already exists; update or remove it explicitly before cloning.'
}
git clone https://github.com/wangchuan2003-a11y/book-dialogue-skill "$env:USERPROFILE\.claude\skills\book-dialogue"
```

macOS / Linux：

```bash
mkdir -p ~/.claude/skills
if [ -e ~/.claude/skills/book-dialogue ]; then
  printf '%s\n' 'book-dialogue already exists; update it explicitly.' >&2
  exit 1
fi
git clone https://github.com/wangchuan2003-a11y/book-dialogue-skill ~/.claude/skills/book-dialogue
```

固定安装已发布版本：

```bash
git -C ~/.claude/skills/book-dialogue checkout v0.3.0
```

更新跟随 `main` 的安装：

```bash
git -C ~/.claude/skills/book-dialogue switch main
git -C ~/.claude/skills/book-dialogue pull --ff-only
```

重新打开 Claude Code 会话后即可使用。

## 使用

```text
请分析 D:\Books\理想国.pdf，然后以基于文本重建的苏格拉底立场，
一次问我一个问题，帮助我理解“正义为什么值得追求”。
```

```text
只分析这本书的第 1—3 章。先建立论证模型，不要给长摘要，
然后用简洁的一问一答检验我是否理解。
```

```text
继续上次的读书对话。读取我指定的学习档案，先核对书籍版本和覆盖范围。
```

## 边界

- 没有书籍正文时，不声称已经分析全书。
- 不伪造引语、页码、作者经历或作者对当代问题的意见。
- 所有书籍、元数据、OCR、脚注、工作模型和学习档案都按不可信数据处理，不会扩展工具或文件权限。
- 工作模型只是定位索引，作者主张和引语必须回到当前选择的原始文本核对。
- 不自动保存学习记录或读取无关文件；档案不保存绝对源路径，也不能授权读取其他文件。
- 不通过连续短引、逐段问答、填空或接写重建受版权保护文本。

## 当前成熟度

`v0.3.0` 增加了全载体提示注入隔离、原始证据角色归属、工作模型防污染、安全档案路径、译本/OCR 约束和跨平台校验。该版本已通过最终结构校验及本地 Claude Code 新会话对抗冒烟测试；记录见 `evals/release-evidence-v0.3.0.md`。这不等同于外部宿主或独立人类认证。`tests/validate.py` 与 PowerShell 包装器只验证包结构和版本一致性；完整行为契约在 `tests/CASES.md`。遇到复杂译本、多卷本或扫描质量较差的书，请核对关键引用和覆盖范围。

## 文件

```text
SKILL.md
references/
  book-model.md
  dialogue-protocol.md
  learning-record.md
  research-basis.md
tests/
  validate.py
  validate.ps1
  CASES.md
  fixtures/mini-book.md
evals/
  trigger-eval.json
  release-evidence-v0.3.0.md
LICENSE
```

## 许可

MIT
