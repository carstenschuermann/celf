structure ClfSearch:> CLF_SEARCH =
struct
   open ClfTerms
   open ClfTables

   fun loop fs = if !cnt = (app (fn f => f ()) fs; !cnt) then () else loop fs
   exception Revisit

   fun fake () = ()

   and saturateWSgn worldmap =
      let
         val w = WSgn'
         val () = if isSome (MapWorld.find (worldmap, w))
                  then raise Revisit else ()
         val worldmap = MapWorld.insert (worldmap, w, ())
         val (child_searches, rulefns) = 
            ((fn x => x)
            , [])
         val worldmap' = child_searches worldmap
         val () = print ("Visiting " ^ strWorld w ^ "\n")
         val () = loop rulefns
      in
         worldmap'
      end handle Revisit => worldmap

   and saturateWHS x_0 worldmap =
      let
         val w = WHS' x_0
         val () = if isSome (MapWorld.find (worldmap, w))
                  then raise Revisit else ()
         val worldmap = MapWorld.insert (worldmap, w, ())
         val (child_searches, rulefns) = 
            (case prjPos x_0 of
               Tensor (x_0_0, x_0_1) => 
               (saturateWHS x_0_0
                o saturateWHS x_0_1
               , exec6 (x_0_0, x_0_1) ::
                 exec7 (x_0_1, x_0_0) ::
                 [])
             | One => 
               ((fn x => x)
               , [])
             | Down (x_0_0, x_0_1) => 
               (saturateWHA x_0_1
               , exec5 (x_0_1, x_0_0) ::
                 [])
            )
         val worldmap' = child_searches worldmap
         val () = print ("Visiting " ^ strWorld w ^ "\n")
         val () = loop rulefns
      in
         worldmap'
      end handle Revisit => worldmap

   and saturateWHA x_0 worldmap =
      let
         val w = WHA' x_0
         val () = if isSome (MapWorld.find (worldmap, w))
                  then raise Revisit else ()
         val worldmap = MapWorld.insert (worldmap, w, ())
         val (child_searches, rulefns) = 
            (case prjNeg x_0 of
               With (x_0_0, x_0_1) => 
               (saturateWHA x_0_0
                o saturateWHA x_0_1
               , exec3 (x_0_0, x_0_1) ::
                 exec4 (x_0_1, x_0_0) ::
                 [])
             | Lolli (x_0_0, x_0_1) => 
               (saturateWHA x_0_1
               , exec2 (x_0_1, x_0_0) ::
                 [])
             | Monad x_0_0 => 
               ((fn x => x)
               , exec1 x_0_0 ::
                 [])
             | Atom x_0_0 => 
               ((fn x => x)
               , exec0 x_0_0 ::
                 [])
            )
         val worldmap' = child_searches worldmap
         val () = print ("Visiting " ^ strWorld w ^ "\n")
         val () = loop rulefns
      in
         worldmap'
      end handle Revisit => worldmap

end
