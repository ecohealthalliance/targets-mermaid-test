---
title: Test for Targets Version and Mermaid Graphs
output: 
  rmarkdown::html_document:
    keep_md: true
---



<noscript>

```{=html}
<style>
 .withscript {display:none;}
</style>
```
</noscript>

[This diagram shows all the components of the workflow for the livestock model:]{.withscript}

```{=html}
<script src="https://cdn.jsdelivr.net/npm/mermaid/dist/mermaid.min.js"></script>
<script>mermaid.initialize({startOnLoad:true});</script>
<style>.classLabel.label {}</style>
<div class="mermaid withscript" style="width:130%;transform: translateX(-15%);">
graph LR
subgraph identifier[" "]
    direction LR
    x7420bd9270f8d27d([""Up to date""]):::uptodate --- xa8565c104d8f0705([""Dispatched""]):::dispatched
    xa8565c104d8f0705([""Dispatched""]):::dispatched --- xbf4603d6c2c2ad6b([""Stem""]):::none
    xbf4603d6c2c2ad6b([""Stem""]):::none --- x70a5fa6bea6f298d[""Pattern""]:::none
  end
  subgraph Graph
    direction LR
    xbdaa1c76f68c6866(["data0"]):::uptodate --> x2af092d9c4bc49f8["map1"]:::uptodate
    xc2859abe1e8ff0dd(["data1"]):::uptodate --> x2af092d9c4bc49f8["map1"]:::uptodate
    xc2859abe1e8ff0dd(["data1"]):::uptodate --> x9cef051438f38232["map2"]:::uptodate
    xbb79d73e1031a1b5(["data2"]):::uptodate --> x9cef051438f38232["map2"]:::uptodate
    x2af092d9c4bc49f8["map1"]:::uptodate --> x3cf834c85337965a["map3"]:::uptodate
    x2af092d9c4bc49f8["map1"]:::uptodate --> xc38e0e65ebbf3c2c["map4"]:::uptodate
    x9cef051438f38232["map2"]:::uptodate --> xc38e0e65ebbf3c2c["map4"]:::uptodate
    xbb79d73e1031a1b5(["data2"]):::uptodate --> x37cb4ca88ab9ab16["map5"]:::uptodate
    x2af092d9c4bc49f8["map1"]:::uptodate --> x37cb4ca88ab9ab16["map5"]:::uptodate
    xbb79d73e1031a1b5(["data2"]):::uptodate --> x6c69aee37d3116dd["map6"]:::uptodate
    x2af092d9c4bc49f8["map1"]:::uptodate --> x6c69aee37d3116dd["map6"]:::uptodate
    xb874ea9d58a88b75(["test_report"]):::dispatched --> xb874ea9d58a88b75(["test_report"]):::dispatched
  end
  classDef uptodate stroke:#000000,color:#ffffff,fill:#354823;
  classDef dispatched stroke:#000000,color:#000000,fill:#DC863B;
  classDef none stroke:#000000,color:#000000,fill:#94a4ac;
  linkStyle 0 stroke-width:0px;
  linkStyle 1 stroke-width:0px;
  linkStyle 2 stroke-width:0px;
  linkStyle 14 stroke-width:0px;
classDef default font-size:25px;
</div>
```

