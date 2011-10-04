structure ClfTables =
struct
   open ClfTerms

   (* Indexes on terms *)

   val cnt = ref 0

   type typ_0 = unit list MapX.map
   val typ_0: typ_0 ref = ref MapX.empty
   fun typ_0_lookup (x: typ_0, x_0) = 
      (case MapX.find (x, x_0) of
         NONE => []
       | SOME x => 
         x)
   fun typ_0_insert (y_0: typ_0, x_0, ()) = 
      let
         val y_1 = 
            case MapX.find (y_0, x_0) of
               NONE => []
             | SOME y => y
      in
         MapX.insert (y_0, x_0,
         () :: y_1)
      end
   
   type con_0 = unit list MapNeg.map MapX.map
   val con_0: con_0 ref = ref MapX.empty
   fun con_0_lookup (x: con_0, (x_0, x_1)) = 
      (case MapX.find (x, x_0) of
         NONE => []
       | SOME x => 
         (case MapNeg.find (x, x_1) of
            NONE => []
          | SOME x => 
            x))
   fun con_0_insert (y_0: con_0, (x_0, x_1), ()) = 
      let
         val y_1 = 
            case MapX.find (y_0, x_0) of
               NONE => MapNeg.empty
             | SOME y => y
         val y_2 = 
            case MapNeg.find (y_1, x_1) of
               NONE => []
             | SOME y => y
      in
         MapX.insert (y_0, x_0,
         MapNeg.insert (y_1, x_1,
         () :: y_2))
      end
   
   (* Term matching *)

   exception Brk

   fun assertTyp x_0 =
      let
         val () = 
            if null (typ_0_lookup (!typ_0, x_0))
            then () else raise Brk
      in
         (cnt := !cnt + 1
          ; typ_0 := typ_0_insert (!typ_0, x_0, ()) 
         )
      end handle Brk => () (* Duplicate assertion *)

   fun assertCon (x_0, x_1) =
      let
         val () = 
            if null (con_0_lookup (!con_0, (x_0, x_1)))
            then () else raise Brk
      in
         (cnt := !cnt + 1
          ; con_0 := con_0_insert (!con_0, (x_0, x_1), ()) 
         )
      end handle Brk => () (* Duplicate assertion *)

   (* Eager run-saturation functions for the McAllester loop *)

   fun fake () = ()
end
