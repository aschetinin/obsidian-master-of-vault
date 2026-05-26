---
tags: [home, index]
---

# Master Vault — точка входа

Единое хранилище для всех твоих AI-агентов.

## Структура

```
master-vault/
├── 00-home/        ← этот файл
├── agents/         ← правила работы per-agent
├── memory/         ← поведенческие правила (auto-load слой)
├── work/           ← рабочий контекст
├── personal/       ← личный контекст
├── cowork/         ← computer-use / file-org / demo
├── _templates/     ← Obsidian templates
└── _archive/       ← снэпшоты read-only
```

## Быстрая навигация

- [[../agents/_standard]] — стандарт оформления agents/<id>.md
- [[../agents/README]] — onboarding нового агента
- [[../memory/README]] — структура memory

## Что куда

| Тип | Куда |
|---|---|
| Правила работы агента | `agents/<agent-id>.md` |
| Поведенческое правило (для всех сессий) | `memory/` |
| Конкретный факт / решение / история | `<section>/knowledge/` |
| Сессия работы | `<section>/sessions/YYYY-MM-DD <тема>.md` |
| Шаблон заметки | `_templates/` |

Адаптируй под свои контексты.
