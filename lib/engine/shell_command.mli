open Bistro_base

type file_dump = File_dump of {
    text : string ;
    path : string ;
  }

type t

val make :
  Execution_env.t ->
  Workflow.u Command.t ->
  t

val text : t -> string
val file_dumps : t -> file_dump list
val run : t -> (int * bool) Lwt.t