# Obsidian: master of vault

Стартовый каркас одного Obsidian-vault'а как единой памяти для всех твоих AI-агентов (Claude Code, Claude Desktop, ChatGPT, Gemini, Cursor, Windsurf — любых).

Это **верхний уровень организации** — структура папок + стандарт оформления per-agent правил. Конкретные правила, шаблоны и agents/<id>.md ты пишешь под себя.

## Идея

Когда работаешь с несколькими AI-агентами параллельно — у каждого своя память и свои правила. Через 1-2 месяца:

- Одни и те же факты дублируются в memory каждого агента
- Правила расходятся между агентами
- Контекст утекает между разными сферами (работа / личное)
- При старте сессии агент грузит много «на всякий случай»

**Master Vault** — один файловый источник правды, доступный всем агентам:

- `agents/<agent-id>.md` — правила работы каждого агента по единому стандарту
- 3 секции по контексту: `work/`, `personal/`, `cowork/` (или свои)
- `memory/` — auto-load слой (поведенческие правила)
- `<section>/knowledge/` — selective load (факты, решения, история)

## Quickstart

```
git clone https://github.com/aschetinin/obsidian-master-of-vault.git
cd obsidian-master-of-vault
./install.sh
```

`install.sh` спросит куда установить vault и создаст каркас. Дальше — открой в Obsidian и начни наполнять под себя.

## Структура

```
master-vault/
├── 00-home/index.md      ← точка входа
├── agents/               ← правила per-agent
│   ├── _standard.md      ← стандарт оформления agents/<id>.md
│   └── README.md         ← onboarding нового агента
├── memory/               ← поведенческие правила (auto-load слой)
├── work/                 ← рабочий контекст
├── personal/             ← личный контекст
├── cowork/               ← computer-use / file-org / demo
├── _templates/           ← Obsidian templates под себя
└── _archive/             ← read-only снэпшоты
```

Подпапки внутри `work/personal/cowork/memory/` — **не создаются заранее**. Создаются по мере появления первого файла нужного типа. Что туда складывать — решаешь сам и фиксируешь в своих правилах.

## Что дальше после установки

1. Открой vault в Obsidian (`File → Open vault → <путь>`)
2. Прочитай `agents/_standard.md` — это стандарт оформления per-agent правил
3. Создай свой первый `agents/<agent-id>.md` по стандарту
4. Адаптируй структуру (триггеры для work/personal/cowork) под свои контексты
5. Начни писать заметки

## Docs

- [`docs/ARCHITECTURE.md`](docs/ARCHITECTURE.md) — концепция и устройство
- [`docs/INSTALL.md`](docs/INSTALL.md) — установка вручную

## License

MIT — см. [LICENSE](LICENSE).
