# Установка

## Быстрый способ

```
git clone https://github.com/aschetinin/obsidian-master-of-vault.git
cd obsidian-master-of-vault
./install.sh
```

Спросит куда установить vault и создаст каркас.

## Установка вручную

```
# 1. Выбрать место (новая папка, не должна существовать)
VAULT_PATH="$HOME/Documents/master-vault"

# 2. Скопировать шаблон
cp -a template/master-vault "$VAULT_PATH"

# 3. Git init
cd "$VAULT_PATH"
git init -q
git add .
git commit -q -m "initial: master-vault from template"
```

## Открыть в Obsidian

`File → Open vault → <VAULT_PATH>`. Obsidian создаст `.obsidian/` директорию при первом открытии.

## Что дальше

1. Прочитай `agents/_standard.md` — стандарт оформления per-agent правил
2. Создай свой первый `agents/<agent-id>.md` по стандарту (например `agents/my-main-agent.md`)
3. Для каждого агента которого реально используешь — добавь по одному файлу agents/
4. Адаптируй секции (work/personal/cowork) под свои контексты — поменяй имена если нужно
5. Начни писать заметки

## Bootstrap каждого агента

Каждый агент должен научиться читать `agents/<его-id>.md` при работе с vault. Как это сделать — зависит от агента:

- **CLI агенты** — обычно через skill / hook / settings.json
- **GUI агенты** — Custom Instructions / System Prompt
- **IDE-встроенные** — workspace rules (`.cursor/rules/`, `.windsurfrules` и т.п.)
- **Web-based** — Custom GPT с system prompt / API integration

Конкретный механизм — описать в `agents/<agent-id>.md` секции `## Specifics`.

## Rollback

```
rm -rf "$VAULT_PATH"
```

Если ничего ценного не успел положить — спокойно удаляй.
