---
slug: /ru/sql-reference/statements/select/format
sidebar_label: FORMAT
---

# Секция FORMAT {#format-clause}

ClickHouse поддерживает широкий спектр [форматов сериализации](../../../interfaces/formats.md) это может быть использовано, в частности, для результатов запросов. Существует несколько способов выбора формата для `SELECT`, один из них заключается в том, чтобы указать `FORMAT format` в конце запроса, чтобы получить результирующие данные в любом конкретном формате.

Определенный формат может использоваться для удобства, интеграции с другими системами или для повышения производительности.

## Формат по умолчанию {#default-format}

Если `FORMAT` предложение опущено, используется формат по умолчанию, который зависит как от настроек, так и от интерфейса, используемого для доступа к серверу ClickHouse. Для [HTTP интерфейса](../../../interfaces/http.md) и [клиента командной строки](../../../interfaces/cli.md) в пакетном режиме, формат по умолчанию — `TabSeparated`. Для клиента командной строки в интерактивном режиме по умолчанию используется формат `PrettyCompact` (он производит компактные человекочитаемые таблицы).

## Детали реализации {#implementation-details}

При использовании клиента командной строки данные всегда передаются по сети во внутреннем эффективном формате (`Native`). Клиент самостоятельно интерпретирует `FORMAT` предложение запроса и форматирует сами данные (тем самым освобождая сеть и сервер от дополнительной нагрузки).
