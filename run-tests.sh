#!/bin/bash

cd tests/in

for F in *.jsonld; do
  F="${F%.jsonld}"
  np op import -t cedar -o ../pre/$F.trig $F.jsonld
  np mktrusty -o ../nanopubs/$F.trig ../pre/$F.trig
  np html -s -o ../html/$F.html ../nanopubs/$F.trig
done
