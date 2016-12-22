# Nucleotide Count

Given a DNA string, compute how many times each nucleotide occurs in the string.

DNA is represented by an alphabet of the following symbols: 'A', 'C',
'G', and 'T'.

Each symbol represents a nucleotide, which is a fancy name for the
particular molecules that happen to make up a large part of DNA.

Shortest intro to biochemistry EVAR:

- twigs are to birds nests as
- nucleotides are to DNA and RNA as
- amino acids are to proteins as
- sugar is to starch as
- oh crap lipids

I'm not going to talk about lipids because they're crazy complex.

So back to nucleotides.

DNA contains four types of them: adenine (`A`), cytosine (`C`), guanine
(`G`), and thymine (`T`).

RNA contains a slightly different set of nucleotides, but we don't care
about that for now.

* * * *

For installation and learning resources, refer to the
[exercism help page](http://exercism.io/languages/erlang).

For running the tests provided, only libraries delivered with recent
versions of erlang are used, so there is no need to install anything.

In order to run the tests, you can issue the following commands from
the exercise directory. Please substitute `$EXERCISE` with the
exercises name.

```sh
erl -make
erl -noshell -eval "eunit:test($EXERCISE, [verbose])" -s init stop
```

## Source

The Calculating DNA Nucleotides_problem at Rosalind [http://rosalind.info/problems/dna/](http://rosalind.info/problems/dna/)

## Submitting Incomplete Problems
It's possible to submit an incomplete solution so you can see how others have completed the exercise.

