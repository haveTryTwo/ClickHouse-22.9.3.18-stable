---
slug: /zh/sql-reference/data-types/string
---
# 字符串 {#string}

字符串可以任意长度的。它可以包含任意的字节集，包含空字节。因此，字符串类型可以代替其他 DBMSs 中的 VARCHAR、BLOB、CLOB 等类型。

## 编码 {#bian-ma}

ClickHouse 没有编码的概念。字符串可以是任意的字节集，按它们原本的方式进行存储和输出。
若需存储文本，我们建议使用 UTF-8 编码。至少，如果你的终端使用UTF-8（推荐），这样读写就不需要进行任何的转换了。
同样，对不同的编码文本 ClickHouse 会有不同处理字符串的函数。
比如，`length` 函数可以计算字符串包含的字节数组的长度，然而 `lengthUTF8` 函数是假设字符串以 UTF-8 编码，计算的是字符串包含的 Unicode 字符的长度。
