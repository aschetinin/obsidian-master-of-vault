---
tags: [memory]
---

# Memory — auto-load слой поведенческих правил

В отличие от `<section>/knowledge/` (selective load по триггеру), эта папка предназначена для **auto-load** при старте сессии — поведенческие правила которые должны влиять на **каждую** сессию.

## Что сюда писать

| Тип | Когда |
|---|---|
| Поведенческое правило | «Не делай так» / «делай так» — урок для будущих сессий |
| Состояние проекта | Snapshot где остановились, deferred backlog |
| Pointer на внешнюю систему | URL/паттерны внешнего сервиса для запоминания |

**Тест перед записью:** это должно влиять на КАЖДУЮ будущую сессию? Да → сюда. Нет → в `<section>/knowledge/`.

## Структура

Решаешь сам. Варианты:

- **Плоская:** `memory/feedback_<тема>.md`, `memory/project_<тема>.md`, `memory/reference_<тема>.md`
- **С подпапками:** `memory/feedback/`, `memory/project/`, `memory/reference/`
- **С индексом:** `memory/INDEX.md` + любая структура

Зависит от того как auto-load работает у твоего основного агента (читает один файл с индексом / читает всю папку / другое).

## Auto-load механизм

У каждого агента свой механизм. Примеры:

- **Claude Code:** auto-memory hook читает `~/.claude/projects/<encoded-cwd>/memory/MEMORY.md` на SessionStart. Можно сделать symlink на эту папку.
- **Claude Desktop:** через Custom Instructions «прочитай memory/* при старте сессии»
- **Cursor / Windsurf:** workspace rules могут включать чтение файлов из vault
- **Web / API агенты:** включить content в system prompt

Описать конкретный механизм каждого агента — в его `agents/<id>.md` секции `## When to read`.

## См. также

- [[../agents/_standard]] — стандарт оформления agents/<id>.md
- [[../00-home/index]] — навигация vault
