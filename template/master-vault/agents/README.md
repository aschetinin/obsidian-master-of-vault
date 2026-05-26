---
tags: [agents, onboarding]
---

# Onboarding нового агента

Каждый агент описывается одним файлом `agents/<agent-id>.md` по [[_standard|стандарту]].

## Шаги

### 1. Определи `agent_id`

Короткое kebab-case имя: `claude-code`, `chatgpt`, `gemini`, `cursor`, `windsurf`, ...

### 2. Создай файл

```
agents/<agent-id>.md
```

По стандарту из [[_standard]]. Минимум — frontmatter + 6 обязательных секций.

### 3. Bootstrap агента

Каждый агент должен научиться **читать свой `agents/<agent-id>.md`** при работе с vault. Способ зависит от агента:

| Тип агента | Где описать bootstrap |
|---|---|
| CLI с skills/hooks | skill или SessionStart hook |
| GUI app | Custom Instructions / System Prompt |
| IDE-встроенный | workspace rules (`.cursor/rules/` и т.п.) |
| Web / API | Custom GPT system prompt / API prompt |

Описать конкретный механизм в секции `## Specifics` своего `agents/<agent-id>.md`.

### 4. Тест

В новой сессии агента — спроси что-то vault-related. Агент должен:
- Прочитать `agents/<agent-id>.md`
- Следовать описанным в нём правилам
- Не грузить весь vault целиком

## Депрекация

Когда агент больше не используется — `status: deprecated` в frontmatter. Файл не удаляется, остаётся для истории. Через время можно перенести в `_archive/agents/`.

## См. также

- [[_standard]] — детальный стандарт оформления agents/<id>.md
- [[../00-home/index]] — навигация vault
