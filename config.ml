open Mirage

let main =
  foreign
    ~packages:[package "duration"]
    "Unikernel.Panic" (time @-> job)

let () =
  register "panic" [main $ default_time]
