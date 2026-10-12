#!/usr/bin/env python3
"""Execute each canonical notebook in an independent kernel, then normalize output IDs."""
from pathlib import Path
import sys
import nbformat
from nbconvert.preprocessors import ExecutePreprocessor
from normalize_notebook import normalize_string
ROOT=Path(__file__).resolve().parents[1]
for path in sorted((ROOT/'notebooks').glob('[0-9][0-9]_*.ipynb')):
    notebook=nbformat.read(path,as_version=4)
    executor=ExecutePreprocessor(timeout=600,kernel_name='python3')
    executor.preprocess(notebook,{'metadata':{'path':str(ROOT)}})
    for i,cell in enumerate(notebook.cells):
        cell.id=f'cell-{i:03d}';cell.metadata.pop('execution',None)
        for j,output in enumerate(cell.get('outputs',[])):
            for mime,payload in output.get('data',{}).items():
                if isinstance(payload,str):output['data'][mime]=normalize_string(payload,f'{i:03d}-{j:02d}')
    nbformat.validate(notebook);nbformat.write(notebook,path)
    print('Executed',path.name,flush=True)
