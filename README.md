# panic
A setup to panic OpenBSD

install opam and ocaml

```
doas pkg_add opam ocaml
```

build panic

```
mirage configure -t hvt && gmake depends && gmake
```

run panic

```
doas ./panic.sh
```

wait ...

OpenBSD will panic in about 10mins, sometimes quicker sometimes slower

or you can run

```
doas ./panic-slow.sh
```

This might take a short while or a long while to generate a panic, i don't know!
