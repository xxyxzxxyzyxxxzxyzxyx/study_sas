/*
    /data/sample_stream_with_commas.csv
    a,aa,aaa,aaaa,aaaaa,b,bb,bbb,bbbb,bbbbb
*/;

data temp;
    infile "/data/sample_stream_with_commas.csv" dlm="," dsd flowover;
    retain col1;
    length col1 $;
    input col1 @@;
run;