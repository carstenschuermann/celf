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
   
   type subordS_0 = unit list MapHead.map MapHead.map MapPos.map
   val subordS_0: subordS_0 ref = ref MapPos.empty
   fun subordS_0_lookup (x: subordS_0, (x_0, x_1, x_2)) = 
      (case MapPos.find (x, x_0) of
         NONE => []
       | SOME x => 
         (case MapHead.find (x, x_1) of
            NONE => []
          | SOME x => 
            (case MapHead.find (x, x_2) of
               NONE => []
             | SOME x => 
               x)))
   fun subordS_0_insert (y_0: subordS_0, (x_0, x_1, x_2), ()) = 
      let
         val y_1 = 
            case MapPos.find (y_0, x_0) of
               NONE => MapHead.empty
             | SOME y => y
         val y_2 = 
            case MapHead.find (y_1, x_1) of
               NONE => MapHead.empty
             | SOME y => y
         val y_3 = 
            case MapHead.find (y_2, x_2) of
               NONE => []
             | SOME y => y
      in
         MapPos.insert (y_0, x_0,
         MapHead.insert (y_1, x_1,
         MapHead.insert (y_2, x_2,
         () :: y_3)))
      end
   
   type subordS_1 = (head * head) list MapPos.map
   val subordS_1: subordS_1 ref = ref MapPos.empty
   fun subordS_1_lookup (x: subordS_1, x_0) = 
      (case MapPos.find (x, x_0) of
         NONE => []
       | SOME x => 
         x)
   fun subordS_1_insert (y_0: subordS_1, x_0, (x_1, x_2)) = 
      let
         val y_1 = 
            case MapPos.find (y_0, x_0) of
               NONE => []
             | SOME y => y
      in
         MapPos.insert (y_0, x_0,
         (x_1, x_2) :: y_1)
      end
   
   type subordA_0 = unit list MapHead.map MapHead.map MapNeg.map
   val subordA_0: subordA_0 ref = ref MapNeg.empty
   fun subordA_0_lookup (x: subordA_0, (x_0, x_1, x_2)) = 
      (case MapNeg.find (x, x_0) of
         NONE => []
       | SOME x => 
         (case MapHead.find (x, x_1) of
            NONE => []
          | SOME x => 
            (case MapHead.find (x, x_2) of
               NONE => []
             | SOME x => 
               x)))
   fun subordA_0_insert (y_0: subordA_0, (x_0, x_1, x_2), ()) = 
      let
         val y_1 = 
            case MapNeg.find (y_0, x_0) of
               NONE => MapHead.empty
             | SOME y => y
         val y_2 = 
            case MapHead.find (y_1, x_1) of
               NONE => MapHead.empty
             | SOME y => y
         val y_3 = 
            case MapHead.find (y_2, x_2) of
               NONE => []
             | SOME y => y
      in
         MapNeg.insert (y_0, x_0,
         MapHead.insert (y_1, x_1,
         MapHead.insert (y_2, x_2,
         () :: y_3)))
      end
   
   type subordA_1 = (head * head) list MapNeg.map
   val subordA_1: subordA_1 ref = ref MapNeg.empty
   fun subordA_1_lookup (x: subordA_1, x_0) = 
      (case MapNeg.find (x, x_0) of
         NONE => []
       | SOME x => 
         x)
   fun subordA_1_insert (y_0: subordA_1, x_0, (x_1, x_2)) = 
      let
         val y_1 = 
            case MapNeg.find (y_0, x_0) of
               NONE => []
             | SOME y => y
      in
         MapNeg.insert (y_0, x_0,
         (x_1, x_2) :: y_1)
      end
   
   type subord_0 = unit list MapHead.map MapHead.map
   val subord_0: subord_0 ref = ref MapHead.empty
   fun subord_0_lookup (x: subord_0, (x_0, x_1)) = 
      (case MapHead.find (x, x_0) of
         NONE => []
       | SOME x => 
         (case MapHead.find (x, x_1) of
            NONE => []
          | SOME x => 
            x))
   fun subord_0_insert (y_0: subord_0, (x_0, x_1), ()) = 
      let
         val y_1 = 
            case MapHead.find (y_0, x_0) of
               NONE => MapHead.empty
             | SOME y => y
         val y_2 = 
            case MapHead.find (y_1, x_1) of
               NONE => []
             | SOME y => y
      in
         MapHead.insert (y_0, x_0,
         MapHead.insert (y_1, x_1,
         () :: y_2))
      end
   
   type subord_1 = (head * head) list 
   val subord_1: subord_1 ref = ref []
   fun subord_1_lookup (x: subord_1, ()) = 
      x
   fun subord_1_insert (y_0: subord_1, (), (x_0, x_1)) = 
      let
      in
         (x_0, x_1) :: y_0
      end
   
   type subord_2 = head list MapHead.map
   val subord_2: subord_2 ref = ref MapHead.empty
   fun subord_2_lookup (x: subord_2, x_0) = 
      (case MapHead.find (x, x_0) of
         NONE => []
       | SOME x => 
         x)
   fun subord_2_insert (y_0: subord_2, x_0, x_1) = 
      let
         val y_1 = 
            case MapHead.find (y_0, x_0) of
               NONE => []
             | SOME y => y
      in
         MapHead.insert (y_0, x_0,
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

   fun assertSubordS (x_0, x_1, x_2) =
      let
         val () = 
            if null (subordS_0_lookup (!subordS_0, (x_0, x_1, x_2)))
            then () else raise Brk
      in
         (cnt := !cnt + 1
          ; subordS_0 := subordS_0_insert (!subordS_0, (x_0, x_1, x_2), ()) 
          ; subordS_1 := subordS_1_insert (!subordS_1, x_0, (x_1, x_2)) 
         )
      end handle Brk => () (* Duplicate assertion *)

   fun assertSubordA (x_0, x_1, x_2) =
      let
         val () = 
            if null (subordA_0_lookup (!subordA_0, (x_0, x_1, x_2)))
            then () else raise Brk
      in
         (cnt := !cnt + 1
          ; subordA_0 := subordA_0_insert (!subordA_0, (x_0, x_1, x_2), ()) 
          ; subordA_1 := subordA_1_insert (!subordA_1, x_0, (x_1, x_2)) 
         )
      end handle Brk => () (* Duplicate assertion *)

   fun assertSubord (x_0, x_1) =
      let
         val () = 
            if null (subord_0_lookup (!subord_0, (x_0, x_1)))
            then () else raise Brk
      in
         (cnt := !cnt + 1
          ; subord_0 := subord_0_insert (!subord_0, (x_0, x_1), ()) 
          ; subord_1 := subord_1_insert (!subord_1, (), (x_0, x_1)) 
          ; subord_2 := subord_2_insert (!subord_2, x_0, x_1) 
         )
      end handle Brk => () (* Duplicate assertion *)

   (* Eager run-saturation functions for the McAllester loop *)

   fun fake () = ()
   
   (* subord H1 H2 *)
   and exec14 () =
      app (exec14_app)
         (subord_1_lookup (!subord_1, ()))

   and exec14_app (x_0, x_1) =
      exec14_1 (x_0, x_1) ()
   
   (* subord H2 H3 *)
   and exec14_1 (H1, H2) () =
      app (exec14_1_app (H1, H2))
         (subord_2_lookup (!subord_2, H2))

   and exec14_1_app (H1, H2) x_1 =
      exec14_2 (H1, x_1) ()
   
   (* subord H1 H3 *)
   and exec14_2 (H1, H3) () =
     (assertSubord (H1, H3)
     )
   
   (* subordS S H1 H2 *)
   and exec13 (S, A) () =
      app (exec13_app (S, A))
         (subordS_1_lookup (!subordS_1, S))

   and exec13_app (S, A) (x_1, x_2) =
      exec13_1 (S, A, x_1, x_2) ()
   
   (* subordA (lolli S A) H1 H2 *)
   and exec13_1 (S, A, H1, H2) () =
     (assertSubordA ((Lolli' (S, A)), H1, H2)
     )
   
   (* subordA A H1 H2 *)
   and exec12 (S, A) () =
      app (exec12_app (S, A))
         (subordA_1_lookup (!subordA_1, A))

   and exec12_app (S, A) (x_1, x_2) =
      exec12_1 (S, A, x_1, x_2) ()
   
   (* subordA (lolli S A) H1 H2 *)
   and exec12_1 (S, A, H1, H2) () =
     (assertSubordA ((Lolli' (S, A)), H1, H2)
     )
   
   (* subordS S2 H1 H2 *)
   and exec11 (S1, S2) () =
      app (exec11_app (S1, S2))
         (subordS_1_lookup (!subordS_1, S2))

   and exec11_app (S1, S2) (x_1, x_2) =
      exec11_1 (x_1, x_2, S1, S2) ()
   
   (* subordS (tensor S1 S2) H1 H2 *)
   and exec11_1 (H1, H2, S1, S2) () =
     (assertSubordS ((Tensor' (S1, S2)), H1, H2)
     )
   
   (* subordS S1 H1 H2 *)
   and exec10 (S1, S2) () =
      app (exec10_app (S1, S2))
         (subordS_1_lookup (!subordS_1, S1))

   and exec10_app (S1, S2) (x_1, x_2) =
      exec10_1 (x_1, x_2, S1, S2) ()
   
   (* subordS (tensor S1 S2) H1 H2 *)
   and exec10_1 (H1, H2, S1, S2) () =
     (assertSubordS ((Tensor' (S1, S2)), H1, H2)
     )
   
   (* subordA A H1 H2 *)
   and exec9 (A, P) () =
      app (exec9_app (A, P))
         (subordA_1_lookup (!subordA_1, A))

   and exec9_app (A, P) (x_1, x_2) =
      exec9_1 (A, x_1, x_2, P) ()
   
   (* subordS (down P A) H1 H2 *)
   and exec9_1 (A, H1, H2, P) () =
     (assertSubordS ((Down' (P, A)), H1, H2)
     )
   
   (* headS S H1 *)
   and exec8 (S, A) () =
      app (exec8_app (S, A))
         (headS_1_lookup (!headS_1, S))

   and exec8_app (S, A) x_1 =
      exec8_1 (S, A, x_1) ()
   
   (* headA A H2 *)
   and exec8_1 (S, A, H1) () =
      app (exec8_1_app (S, A, H1))
         (headA_1_lookup (!headA_1, A))

   and exec8_1_app (S, A, H1) x_1 =
      exec8_2 (S, A, H1, x_1) ()
   
   (* subordA (lolli S A) H1 H2 *)
   and exec8_2 (S, A, H1, H2) () =
     (assertSubordA ((Lolli' (S, A)), H1, H2)
     )
   
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
