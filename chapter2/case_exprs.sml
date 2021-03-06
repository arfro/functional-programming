datatype human = Str of string
                | StrInt of string * int
                | StrIntInt of string * int * int


fun f (person : human) =
      case person of
        (* pattern matching, here: constructor name *)
        Str s => s
        | StrInt (s,i) => s ^ Int.toString(i)
        | StrIntInt(s,i1,i2) => s ^ Int.toString(i1) ^ Int.toString(i2)
        (*if this is uncommented it will complain about...
        | Str s => "pizza"
        ...redundant match ^
        | Pizza => "pizza"
        ... ^ there is no constructor Pizza in human datatype
        *)


(*
case EXP0 OF
  PATTERN1 => EXP1
| PATTERN2 => EXP2
...
| PATTERNn => EXPn
*)
