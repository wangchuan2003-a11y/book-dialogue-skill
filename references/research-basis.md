# 相邻项目与研究参考

检索日期：2026-08-13。这里只记录会改变 Book Dialogue 设计的原则；不复制其他项目的提示词、命名和示例。

## GitHub 项目

| 来源 | 已读范围 | 可取设计 | 不采纳内容 |
|---|---|---|---|
| [m4vic/socratic](https://github.com/m4vic/socratic) `8c7e1fd`，MIT，106★ | `SKILL.md` | 问题集应按当前信号动态选择；停止条件是剩余问题不会改变结果，不是穷尽问题库 | 面向工程架构的 697 问题和领域包，与读书目标无关 |
| [Jeremy-xuan/SocraticNovel](https://github.com/Jeremy-xuan/SocraticNovel) `38579ca`，31★，许可证未明确 | `SOCRATIC_DESIGN.md`、`system_core.md` | 问题从学习者上一句话长出来；计划是无序地图而非固定剧本；学习者接近答案时不要立刻展开；分级支架；盲测“没听到上一句还会这样问吗” | 虚拟人物模仿、长篇叙事、自动写学习日志、固定课程和过重状态系统 |
| [yogsoth-ai/de-anthropocentric-research-engine](https://github.com/yogsoth-ai/de-anthropocentric-research-engine) `fa000d2`，Apache-2.0，378★ | `skills/socratic-probing/` | 澄清、前提、证据、反方、后果、元问题可作为内部问题类型池 | 一轮同时输出六类问题；这会破坏一次一问 |
| [kevins981/Socratic](https://github.com/kevins981/Socratic) `f4ee379`，Apache-2.0，80★ | README 与架构说明 | 把知识模型作为可审查的一等产物；主动暴露歧义和边界 | 面向企业 KnowledgeOps 的服务、数据库和自动知识写回 |

## 教学与评估研究

- **GuideEval / Discerning Minds or Generic Tutors?** ([arXiv:2508.06583v2](https://arxiv.org/html/2508.06583v2))：强导师先分辨正确、错误和困惑，再选择确认、纠错、重构或推进。研究报告的常见失败包括错答仍被肯定、困惑后只继续追问、掌握后仍重复教学。问题深度本身不能证明教学有效。
- **SocraticAI** ([arXiv:2512.03501v1](https://arxiv.org/html/2512.03501v1))：要求学习者先说当前理解和尝试；基于课程材料检索；对话后做简短反思；无法解决时升级。其三周部署结果缺少样本量、对照和学习测量，因此只采纳工作流，不采纳效果结论。
- **Book2Dial** ([Findings of ACL 2024](https://aclanthology.org/2024.findings-acl.578/))：从教材生成教师—学生对话；论文明确报告即使较强方法仍会产生无依据内容和重复。这支持“每次文本性主张回到原文核验”和“检测重复对话”。
- **Unifying AI Tutor Evaluation** ([NAACL 2025](https://aclanthology.org/2025.naacl-long.57/))：提醒区分答题系统与教学系统，并以学习者的错误或困惑为评估起点。公开页面未列八个维度的细节，因此不补造量表。

## 转化为本 Skill 的原则

1. **先看学习者，再看学习地图。** 下一问必须由上一答中的具体判断、误解或困惑决定。
2. **地图不是剧本。** 预先只保留无序里程碑，不固定问题序列。
3. **先判状态，再选动作。** 区分正确、部分正确、错误、困惑、不同意和请求直答。
4. **支架逐级增加信息。** 缩小范围、给文本线索、指出前提、简短解释；不能重复同一问题。
5. **保留用户控制。** 用户可随时要求直说、举例、跳过、换难度、核对原文或暂停。
6. **每个文本性判断重新落地。** 长对话中不能只依赖早期摘要或学习档案。
7. **阶段反思必须轻量。** 只在转折、结束或用户要求时，让用户用自己的话说明发生了什么变化；不每轮强制。
