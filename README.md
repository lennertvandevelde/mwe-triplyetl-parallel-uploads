# MWE parallel uploads triplyetl

## Test 1

```bash
bash 1_run_3_equal_etls.sh
```

- Run 3 etls
    - producing each 300,000 triples
    - with 2 writing to the same default graph
    - and one other to default 3
    - mergeGraphs: true
- Triples produced contain etl file name

### Expected

- default graph with 600,000 triples
- default 3 graph with 300,000 triples

### Result

- default graph with 300,000 triples
- default 3 graph with 300,000 triples

## Test 2

```bash
bash 2_run_2_unequal_etls.sh
```

- Run 2 etls
    - one producing 300,000 triples
    - one producing 270,000 triples
    - writing to the same default graph
    - mergeGraphs: true
- Triples produced contain etl file name

### Expected

- default graph with 570,000 triples

### Result

- default graph with 300,000 triples