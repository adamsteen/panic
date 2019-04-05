# panic
A setup to panic OpenBSD

install opam, ocaml and dependencies

```
doas pkg_add opam ocaml gmake
```

build panic

```
opam init
opam pin solo5-bindings-hvt https://github.com/adamsteen/solo5.git#fix_no_debug_345
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
