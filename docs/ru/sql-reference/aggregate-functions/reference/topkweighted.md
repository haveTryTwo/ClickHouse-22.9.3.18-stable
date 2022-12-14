---
slug: /ru/sql-reference/aggregate-functions/reference/topkweighted
sidebar_position: 109
---

# topKWeighted {#topkweighted}

Возвращает массив наиболее часто встречающихся значений в указанном столбце. Результирующий массив упорядочен по убыванию частоты значения (не по самим значениям). Дополнительно учитывается вес значения.

**Синтаксис**

``` sql
topKWeighted(N)(x, weight)
```

**Аргументы**

-   `N` — количество элементов для выдачи.
-   `x` — значение.
-   `weight` — вес. Каждое значение учитывается `weight` раз при расчёте частоты. [UInt64](../../../sql-reference/data-types/int-uint.md).

**Возвращаемое значение**

Возвращает массив значений с максимально приближенной суммой весов.

**Пример**

Запрос:

``` sql
SELECT topKWeighted(10)(number, number) FROM numbers(1000)
```

Результат:

``` text
┌─topKWeighted(10)(number, number)──────────┐
│ [999,998,997,996,995,994,993,992,991,990] │
└───────────────────────────────────────────┘
```

**Смотрите также**

-   [topK](../../../sql-reference/aggregate-functions/reference/topk.md)
