DROP TABLE IF EXISTS merge_tree;
set allow_deprecated_syntax_for_merge_tree=1;
CREATE TABLE merge_tree (x UInt64, date Date) ENGINE = MergeTree(date, x, 1);

INSERT INTO merge_tree VALUES (1, '2000-01-01');
SELECT x AS y, y FROM merge_tree;

DROP TABLE IF EXISTS merge_tree;
