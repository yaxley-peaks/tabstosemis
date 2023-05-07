# Tabs to semi-colons
Replace 4 spaces / 1 tab with 4 ";"

It does what it says. I don't know what else to say.

```c
#include <stdio.h>
int main() {
;;;;while (1) {
;;;;;;;;if (1) {
;;;;;;;;;;;;puts("Hello, world!");
;;;;;;;;;;;;break;
;;;;;;;;}
;;;;}
}
```

## Usage
1. Install ghc and cabal
2. Run it via cabal
```
cabal run . -- <filename>
```
This does add a garbage to the output so I suggest you install it with

```
cabal install
```
If you don't want to do this, `ghc --make` ing inside the `app/` directory should also work.

## Warning
Please do not use this seriously. This was written by me for fun and is the most awful haskell code possible.
