(*  Celf
 *  Copyright (C) 2008 Anders Schack-Nielsen and Carsten Sch�rmann
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

signature PRETTYPRINT =
sig

val printMode : Syntax.mode -> string

val printImpl : bool ref
val printLVarCtx : int ref

val printKind : Syntax.kind -> string
val printType : Syntax.asyncType -> string
val printSyncType : Syntax.syncType -> string
val printObj : Syntax.obj -> string
val printMonadObj : Syntax.monadObj -> string

val printPreType : Syntax.asyncType -> string
val printPreObj : Syntax.obj -> string

end
