signature CLF_TERMS = 
sig
   type world
   type rel
   type mode
   type pos
   type neg
   
   datatype world_view =
      WSgn
   structure MapWorld: DISC_MAP where type key = world
   val strWorld: world -> String.string
   val injWorld: world_view -> world
   val prjWorld: world -> world_view
   val eqWorld: world -> world -> bool
   val WSgn': world
   
   datatype rel_view =
      Typ of Symbol.symbol
    | Con of Symbol.symbol * neg
   structure MapRel: DISC_MAP where type key = rel
   val strRel: rel -> String.string
   val injRel: rel_view -> rel
   val prjRel: rel -> rel_view
   val eqRel: rel -> rel -> bool
   val Typ': Symbol.symbol -> rel
   val Con': Symbol.symbol * neg -> rel
   
   datatype mode_view =
      Per
    | Aff
    | Lin
   structure MapMode: DISC_MAP where type key = mode
   val strMode: mode -> String.string
   val injMode: mode_view -> mode
   val prjMode: mode -> mode_view
   val eqMode: mode -> mode -> bool
   val Per': mode
   val Aff': mode
   val Lin': mode
   
   datatype pos_view =
      Down of mode * neg
    | One
    | Tensor of pos * pos
   structure MapPos: DISC_MAP where type key = pos
   val strPos: pos -> String.string
   val injPos: pos_view -> pos
   val prjPos: pos -> pos_view
   val eqPos: pos -> pos -> bool
   val Down': mode * neg -> pos
   val One': pos
   val Tensor': pos * pos -> pos
   
   datatype neg_view =
      Atom of Symbol.symbol
    | Monad of pos
    | Lolli of pos * neg
    | With of neg * neg
   structure MapNeg: DISC_MAP where type key = neg
   val strNeg: neg -> String.string
   val injNeg: neg_view -> neg
   val prjNeg: neg -> neg_view
   val eqNeg: neg -> neg -> bool
   val Atom': Symbol.symbol -> neg
   val Monad': pos -> neg
   val Lolli': pos * neg -> neg
   val With': neg * neg -> neg
end