open Lwt.Infix

module Panic (Time : Mirage_time_lwt.S) = struct

  let start _time =

    let rec loop = function
      | 0 -> Lwt.return_unit
      | n ->
        Logs.info (fun f -> f "panic");
        Time.sleep_ns (Duration.of_ms 100) >>= fun () ->
        loop (n-1)
    in
    loop 4

end
