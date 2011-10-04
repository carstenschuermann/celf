(*  Celf
 *  Copyright (C) 2008 Anders Schack-Nielsen and Carsten Schürmann
 *
 *  This file is part of Celf.
 *
 *  Celf is free software: you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation, either version 3 of the License, or
 *  (at your option) any later version.
 *
 *  Celf is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with Celf.  If not, see <http://www.gnu.org/licenses/>.
 *)

signature IMPLICITVARS =
sig

type implicits = (string * Syntax.asyncType) list

val resetUCTable : unit -> unit
val mapUCTable : (Syntax.asyncType -> Syntax.asyncType) -> unit
val appUCTable : (Syntax.asyncType -> unit) -> unit
val getUCTable : unit -> Syntax.asyncType SymbTable.Table
val noUCVars : unit -> unit
val newUCVar : Syntax.asyncType -> Syntax.head
val apxUCLookup : string -> Syntax.apxAsyncType
val ucLookup : string -> Syntax.asyncType
val sort : unit -> implicits

end
