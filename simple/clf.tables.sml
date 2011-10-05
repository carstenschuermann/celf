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
   
   type headS_0 = unit list MapHead.map MapPos.map
   val headS_0: headS_0 ref = ref MapPos.empty
   fun headS_0_lookup (x: headS_0, (x_0, x_1)) = 
      (case MapPos.find (x, x_0) of
         NONE => []
       | SOME x => 
         (case MapHead.find (x, x_1) of
            NONE => []
          | SOME x => 
            x))
   fun headS_0_insert (y_0: headS_0, (x_0, x_1), ()) = 
      let
         val y_1 = 
            case MapPos.find (y_0, x_0) of
               NONE => MapHead.empty
             | SOME y => y
         val y_2 = 
            case MapHead.find (y_1, x_1) of
               NONE => []
             | SOME y => y
      in
         MapPos.insert (y_0, x_0,
         MapHead.insert (y_1, x_1,
         () :: y_2))
      end
   
   type headS_1 = head list MapPos.map
   val headS_1: headS_1 ref = ref MapPos.empty
   fun headS_1_lookup (x: headS_1, x_0) = 
      (case MapPos.find (x, x_0) of
         NONE => []
       | SOME x => 
         x)
   fun headS_1_insert (y_0: headS_1, x_0, x_1) = 
      let
         val y_1 = 
            case MapPos.find (y_0, x_0) of
               NONE => []
             | SOME y => y
      in
         MapPos.insert (y_0, x_0,
         x_1 :: y_1)
      end
   
   type headA_0 = unit list MapHead.map MapNeg.map
   val headA_0: headA_0 ref = ref MapNeg.empty
   fun headA_0_lookup (x: headA_0, (x_0, x_1)) = 
      (case MapNeg.find (x, x_0) of
         NONE => []
       | SOME x => 
         (case MapHead.find (x, x_1) of
            NONE => []
          | SOME x => 
            x))
   fun headA_0_insert (y_0: headA_0, (x_0, x_1), ()) = 
      let
         val y_1 = 
            case MapNeg.find (y_0, x_0) of
               NONE => MapHead.empty
             | SOME y => y
         val y_2 = 
            case MapHead.find (y_1, x_1) of
               NONE => []
             | SOME y => y
      in
         MapNeg.insert (y_0, x_0,
         MapHead.insert (y_1, x_1,
         () :: y_2))
      end
   
   type headA_1 = head list MapNeg.map
   val headA_1: headA_1 ref = ref MapNeg.empty
   fun headA_1_lookup (x: headA_1, x_0) = 
      (case MapNeg.find (x, x_0) of
         NONE => []
       | SOME x => 
         x)
   fun headA_1_insert (y_0: headA_1, x_0, x_1) = 
      let
         val y_1 = 
            case MapNeg.find (y_0, x_0) of
               NONE => []
             | SOME y => y
      in
         MapNeg.insert (y_0, x_0,
         x_1 :: y_1)
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

   fun assertHeadS (x_0, x_1) =
      let
         val () = 
            if null (headS_0_lookup (!headS_0, (x_0, x_1)))
            then () else raise Brk
      in
         (cnt := !cnt + 1
          ; headS_0 := headS_0_insert (!headS_0, (x_0, x_1), ()) 
          ; headS_1 := headS_1_insert (!headS_1, x_0, x_1) 
         )
      end handle Brk => () (* Duplicate assertion *)

   fun assertHeadA (x_0, x_1) =
      let
         val () = 
            if null (headA_0_lookup (!headA_0, (x_0, x_1)))
            then () else raise Brk
      in
         (cnt := !cnt + 1
          ; headA_0 := headA_0_insert (!headA_0, (x_0, x_1), ()) 
          ; headA_1 := headA_1_insert (!headA_1, x_0, x_1) 
         )
      end handle Brk => () (* Duplicate assertion *)

   (* Eager run-saturation functions for the McAllester loop *)

   fun fake () = ()
   
   (* headS A H *)
   and exec7 (A, B) () =
      app (exec7_app (A, B))
         (headS_1_lookup (!headS_1, A))

   and exec7_app (A, B) x_1 =
      exec7_1 (x_1, A, B) ()
   
   (* headS (tensor B A) H *)
   and exec7_1 (H, A, B) () =
     (assertHeadS ((Tensor' (B, A)), H)
     )
   
   (* headS A H *)
   and exec6 (A, B) () =
      app (exec6_app (A, B))
         (headS_1_lookup (!headS_1, A))

   and exec6_app (A, B) x_1 =
      exec6_1 (x_1, A, B) ()
   
   (* headS (tensor A B) H *)
   and exec6_1 (H, A, B) () =
     (assertHeadS ((Tensor' (A, B)), H)
     )
   
   (* headA A H *)
   and exec5 (A, B) () =
      app (exec5_app (A, B))
         (headA_1_lookup (!headA_1, A))

   and exec5_app (A, B) x_1 =
      exec5_1 (x_1, A, B) ()
   
   (* headS (down B A) H *)
   and exec5_1 (H, A, B) () =
     (assertHeadS ((Down' (B, A)), H)
     )
   
   (* headA A H *)
   and exec4 (A, B) () =
      app (exec4_app (A, B))
         (headA_1_lookup (!headA_1, A))

   and exec4_app (A, B) x_1 =
      exec4_1 (x_1, A, B) ()
   
   (* headA (with B A) H *)
   and exec4_1 (H, A, B) () =
     (assertHeadA ((With' (B, A)), H)
     )
   
   (* headA A H *)
   and exec3 (A, B) () =
      app (exec3_app (A, B))
         (headA_1_lookup (!headA_1, A))

   and exec3_app (A, B) x_1 =
      exec3_1 (x_1, A, B) ()
   
   (* headA (with A B) H *)
   and exec3_1 (H, A, B) () =
     (assertHeadA ((With' (A, B)), H)
     )
   
   (* headA A H *)
   and exec2 (A, B) () =
      app (exec2_app (A, B))
         (headA_1_lookup (!headA_1, A))

   and exec2_app (A, B) x_1 =
      exec2_1 (x_1, A, B) ()
   
   (* headA (lolli B A) H *)
   and exec2_1 (H, A, B) () =
     (assertHeadA ((Lolli' (B, A)), H)
     )
   
   (* headA (monad B) monadic *)
   and exec1 B () =
     (assertHeadA ((Monad' B), Monadic')
     )
   
   (* headA (atom Q) (atomic Q) *)
   and exec0 Q () =
     (assertHeadA ((Atom' Q), (Atomic' Q))
     )
end
