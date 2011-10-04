structure ClfTerms:> CLF_TERMS =
struct
   (* Datatype views *)

   datatype fake_ = Fake_ of fake_
   
   and world_view =
      WSgn
   and world = injWorld of world_view
   
   and rel_view =
      Typ of Symbol.symbol
    | Con of Symbol.symbol * neg
   and rel = injRel of rel_view
   
   and mode_view =
      Per
    | Aff
    | Lin
   and mode = injMode of mode_view
   
   and pos_view =
      Down of mode * neg
    | One
    | Tensor of pos * pos
   and pos = injPos of pos_view
   
   and neg_view =
      Atom of Symbol.symbol
    | Monad of pos
    | Lolli of pos * neg
    | With of neg * neg
   and neg = injNeg of neg_view
   

   (* Constructor-specific projections, injections, and aborts *)

   fun prjWorld (injWorld x) = x
   fun prjRel (injRel x) = x
   fun prjMode (injMode x) = x
   fun prjPos (injPos x) = x
   fun prjNeg (injNeg x) = x
   val WSgn' = injWorld WSgn
   val Typ' = injRel o Typ
   val Con' = injRel o Con
   val Per' = injMode Per
   val Aff' = injMode Aff
   val Lin' = injMode Lin
   val Down' = injPos o Down
   val One' = injPos One
   val Tensor' = injPos o Tensor
   val Atom' = injNeg o Atom
   val Monad' = injNeg o Monad
   val Lolli' = injNeg o Lolli
   val With' = injNeg o With
   

   (* String encoding functions *)

   fun strFake_ (Fake_ x) = strFake_ x
   
   and strWorld x_ = 
      case prjWorld x_ of
         WSgn =>
         "wSgn"
   
   and strRel x_ = 
      case prjRel x_ of
         Typ x_0 =>
         ("(typ"
          ^ " " ^ Symbol.name x_0
          ^ ")")
       | Con (x_0, x_1) =>
         ("(con"
          ^ " " ^ Symbol.name x_0
          ^ " " ^ strNeg x_1
          ^ ")")
   
   and strMode x_ = 
      case prjMode x_ of
         Per =>
         "per"
       | Aff =>
         "aff"
       | Lin =>
         "lin"
   
   and strPos x_ = 
      case prjPos x_ of
         Down (x_0, x_1) =>
         ("(down"
          ^ " " ^ strMode x_0
          ^ " " ^ strNeg x_1
          ^ ")")
       | One =>
         "one"
       | Tensor (x_0, x_1) =>
         ("(tensor"
          ^ " " ^ strPos x_0
          ^ " " ^ strPos x_1
          ^ ")")
   
   and strNeg x_ = 
      case prjNeg x_ of
         Atom x_0 =>
         ("(atom"
          ^ " " ^ Symbol.name x_0
          ^ ")")
       | Monad x_0 =>
         ("(monad"
          ^ " " ^ strPos x_0
          ^ ")")
       | Lolli (x_0, x_1) =>
         ("(lolli"
          ^ " " ^ strPos x_0
          ^ " " ^ strNeg x_1
          ^ ")")
       | With (x_0, x_1) =>
         ("(with"
          ^ " " ^ strNeg x_0
          ^ " " ^ strNeg x_1
          ^ ")")
   

   (* Equality *)

   fun eqWorld (x: world) (y: world) = x = y
   fun eqRel (x: rel) (y: rel) = x = y
   fun eqMode (x: mode) (y: mode) = x = y
   fun eqPos (x: pos) (y: pos) = x = y
   fun eqNeg (x: neg) (y: neg) = x = y
   
   
   (* Map helpers: sub *)

   fun subT x_ = DiscMap.subX x_

   fun subNat x_ = DiscMap.subII x_

   fun subString x_ = DiscMap.subS x_

   and subWorld x_ = 
      case prjWorld x_ of
         WSgn =>
         (fn x => x)
   
   and subRel x_ = 
      case prjRel x_ of
         Con (x_0, x_1) =>
         subNeg x_1 o
         subT x_0 o
         DiscMap.sub 0
       | Typ x_0 =>
         subT x_0 o
         DiscMap.sub 1
   
   and subMode x_ = 
      case prjMode x_ of
         Lin =>
         DiscMap.sub 0
       | Aff =>
         DiscMap.sub 1
       | Per =>
         DiscMap.sub 2
   
   and subPos x_ = 
      case prjPos x_ of
         Tensor (x_0, x_1) =>
         subPos x_1 o
         subPos x_0 o
         DiscMap.sub 0
       | One =>
         DiscMap.sub 1
       | Down (x_0, x_1) =>
         subNeg x_1 o
         subMode x_0 o
         DiscMap.sub 2
   
   and subNeg x_ = 
      case prjNeg x_ of
         With (x_0, x_1) =>
         subNeg x_1 o
         subNeg x_0 o
         DiscMap.sub 0
       | Lolli (x_0, x_1) =>
         subNeg x_1 o
         subPos x_0 o
         DiscMap.sub 1
       | Monad x_0 =>
         subPos x_0 o
         DiscMap.sub 2
       | Atom x_0 =>
         subT x_0 o
         DiscMap.sub 3
   
   
   (* Map helpers: unzip *)

   fun unzipT x_ = DiscMap.unzipX x_

   fun unzipNat x_ = DiscMap.unzipII x_

   fun unzipString x_ = DiscMap.unzipS x_

   and unzipWorld x_ = 
      case prjWorld x_ of
         WSgn =>
         (fn x => x)
   
   and unzipRel x_ = 
      case prjRel x_ of
         Con (x_0, x_1) =>
         unzipNeg x_1 o
         unzipT x_0 o
         DiscMap.unzip (0, 2)
       | Typ x_0 =>
         unzipT x_0 o
         DiscMap.unzip (1, 2)
   
   and unzipMode x_ = 
      case prjMode x_ of
         Lin =>
         DiscMap.unzip (0, 3)
       | Aff =>
         DiscMap.unzip (1, 3)
       | Per =>
         DiscMap.unzip (2, 3)
   
   and unzipPos x_ = 
      case prjPos x_ of
         Tensor (x_0, x_1) =>
         unzipPos x_1 o
         unzipPos x_0 o
         DiscMap.unzip (0, 3)
       | One =>
         DiscMap.unzip (1, 3)
       | Down (x_0, x_1) =>
         unzipNeg x_1 o
         unzipMode x_0 o
         DiscMap.unzip (2, 3)
   
   and unzipNeg x_ = 
      case prjNeg x_ of
         With (x_0, x_1) =>
         unzipNeg x_1 o
         unzipNeg x_0 o
         DiscMap.unzip (0, 4)
       | Lolli (x_0, x_1) =>
         unzipNeg x_1 o
         unzipPos x_0 o
         DiscMap.unzip (1, 4)
       | Monad x_0 =>
         unzipPos x_0 o
         DiscMap.unzip (2, 4)
       | Atom x_0 =>
         unzipT x_0 o
         DiscMap.unzip (3, 4)
   
   
   (* Maps *)

   structure MapWorld = DiscMapFn
   (struct
      type key = world
      val unzip = unzipWorld
      val sub = subWorld
   end)

   structure MapRel = DiscMapFn
   (struct
      type key = rel
      val unzip = unzipRel
      val sub = subRel
   end)

   structure MapMode = DiscMapFn
   (struct
      type key = mode
      val unzip = unzipMode
      val sub = subMode
   end)

   structure MapPos = DiscMapFn
   (struct
      type key = pos
      val unzip = unzipPos
      val sub = subPos
   end)

   structure MapNeg = DiscMapFn
   (struct
      type key = neg
      val unzip = unzipNeg
      val sub = subNeg
   end)

end

