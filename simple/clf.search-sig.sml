signature CLF_SEARCH =
sig
   val saturateWSgn: unit ClfTerms.MapWorld.map -> unit ClfTerms.MapWorld.map
   val saturateWHS: ClfTerms.pos -> unit ClfTerms.MapWorld.map -> unit ClfTerms.MapWorld.map
   val saturateWHA: ClfTerms.neg -> unit ClfTerms.MapWorld.map -> unit ClfTerms.MapWorld.map
end
