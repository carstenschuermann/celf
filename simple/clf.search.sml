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

end
