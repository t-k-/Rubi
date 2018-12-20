(* ::Package:: *)

(************************************************************************)
(* This file was generated automatically by the Mathematica front end.  *)
(* It contains Initialization cells from a Notebook file, which         *)
(* typically will have the same name as this file except ending in      *)
(* ".nb" instead of ".m".                                               *)
(*                                                                      *)
(* This file is intended to be loaded into the Mathematica kernel using *)
(* the package loading commands Get or Needs.  Doing so is equivalent   *)
(* to using the Evaluate Initialization Cells menu command in the front *)
(* end.                                                                 *)
(*                                                                      *)
(* DO NOT EDIT THIS FILE.  This entire file is regenerated              *)
(* automatically each time the parent Notebook file is saved in the     *)
(* Mathematica front end.  Any changes you make to this file will be    *)
(* overwritten.                                                         *)
(************************************************************************)



(* ::Code:: *)
Int[(a_.+b_.*ArcTan[c_+d_.*x_])^p_.,x_Symbol] :=
  1/d*Subst[Int[(a+b*ArcTan[x])^p,x],x,c+d*x] /;
FreeQ[{a,b,c,d},x] && IGtQ[p,0]


(* ::Code:: *)
Int[(a_.+b_.*ArcCot[c_+d_.*x_])^p_.,x_Symbol] :=
  1/d*Subst[Int[(a+b*ArcCot[x])^p,x],x,c+d*x] /;
FreeQ[{a,b,c,d},x] && IGtQ[p,0]


(* ::Code:: *)
Int[(a_.+b_.*ArcTan[c_+d_.*x_])^p_,x_Symbol] :=
  Unintegrable[(a+b*ArcTan[c+d*x])^p,x] /;
FreeQ[{a,b,c,d,p},x] && Not[IGtQ[p,0]]


(* ::Code:: *)
Int[(a_.+b_.*ArcCot[c_+d_.*x_])^p_,x_Symbol] :=
  Unintegrable[(a+b*ArcCot[c+d*x])^p,x] /;
FreeQ[{a,b,c,d,p},x] && Not[IGtQ[p,0]]


(* ::Code:: *)
Int[(e_.+f_.*x_)^m_.*(a_.+b_.*ArcTan[c_+d_.*x_])^p_.,x_Symbol] :=
  1/d*Subst[Int[(f*x/d)^m*(a+b*ArcTan[x])^p,x],x,c+d*x] /;
FreeQ[{a,b,c,d,e,f,m},x] && EqQ[d*e-c*f,0] && IGtQ[p,0]


(* ::Code:: *)
Int[(e_.+f_.*x_)^m_.*(a_.+b_.*ArcCot[c_+d_.*x_])^p_.,x_Symbol] :=
  1/d*Subst[Int[(f*x/d)^m*(a+b*ArcCot[x])^p,x],x,c+d*x] /;
FreeQ[{a,b,c,d,e,f,m},x] && EqQ[d*e-c*f,0] && IGtQ[p,0]


(* ::Code:: *)
Int[(e_.+f_.*x_)^m_*(a_.+b_.*ArcTan[c_+d_.*x_])^p_.,x_Symbol] :=
  (e+f*x)^(m+1)*(a+b*ArcTan[c+d*x])^p/(f*(m+1)) - 
  b*d*p/(f*(m+1))*Int[(e+f*x)^(m+1)*(a+b*ArcTan[c+d*x])^(p-1)/(1+(c+d*x)^2),x] /;
FreeQ[{a,b,c,d,e,f},x] && IGtQ[p,0] && ILtQ[m,-1]


(* ::Code:: *)
Int[(e_.+f_.*x_)^m_*(a_.+b_.*ArcCot[c_+d_.*x_])^p_.,x_Symbol] :=
  (e+f*x)^(m+1)*(a+b*ArcCot[c+d*x])^p/(f*(m+1)) + 
  b*d*p/(f*(m+1))*Int[(e+f*x)^(m+1)*(a+b*ArcCot[c+d*x])^(p-1)/(1+(c+d*x)^2),x] /;
FreeQ[{a,b,c,d,e,f},x] && IGtQ[p,0] && ILtQ[m,-1]


(* ::Code:: *)
Int[(e_.+f_.*x_)^m_.*(a_.+b_.*ArcTan[c_+d_.*x_])^p_.,x_Symbol] :=
  1/d*Subst[Int[((d*e-c*f)/d+f*x/d)^m*(a+b*ArcTan[x])^p,x],x,c+d*x] /;
FreeQ[{a,b,c,d,e,f,m,p},x] && IGtQ[p,0]


(* ::Code:: *)
Int[(e_.+f_.*x_)^m_.*(a_.+b_.*ArcCot[c_+d_.*x_])^p_.,x_Symbol] :=
  1/d*Subst[Int[((d*e-c*f)/d+f*x/d)^m*(a+b*ArcCot[x])^p,x],x,c+d*x] /;
FreeQ[{a,b,c,d,e,f,m,p},x] && IGtQ[p,0]


(* ::Code:: *)
Int[(e_.+f_.*x_)^m_.*(a_.+b_.*ArcTan[c_+d_.*x_])^p_,x_Symbol] :=
  Unintegrable[(e+f*x)^m*(a+b*ArcTan[c+d*x])^p,x] /;
FreeQ[{a,b,c,d,e,f,m,p},x] && Not[IGtQ[p,0]]


(* ::Code:: *)
Int[(e_.+f_.*x_)^m_.*(a_.+b_.*ArcCot[c_+d_.*x_])^p_,x_Symbol] :=
  Unintegrable[(e+f*x)^m*(a+b*ArcCot[c+d*x])^p,x] /;
FreeQ[{a,b,c,d,e,f,m,p},x] && Not[IGtQ[p,0]]


(* ::Code:: *)
Int[ArcTan[a_+b_.*x_]/(c_+d_.*x_^n_.),x_Symbol] :=
  I/2*Int[Log[1-I*a-I*b*x]/(c+d*x^n),x] -
  I/2*Int[Log[1+I*a+I*b*x]/(c+d*x^n),x] /;
FreeQ[{a,b,c,d},x] && RationalQ[n]


(* ::Code:: *)
Int[ArcCot[a_+b_.*x_]/(c_+d_.*x_^n_.),x_Symbol] :=
  I/2*Int[Log[(-I+a+b*x)/(a+b*x)]/(c+d*x^n),x] -
  I/2*Int[Log[(I+a+b*x)/(a+b*x)]/(c+d*x^n),x] /;
FreeQ[{a,b,c,d},x] && RationalQ[n]


(* ::Code:: *)
Int[ArcTan[a_+b_.*x_]/(c_+d_.*x_^n_),x_Symbol] :=
  Unintegrable[ArcTan[a+b*x]/(c+d*x^n),x] /;
FreeQ[{a,b,c,d,n},x] && Not[RationalQ[n]]


(* ::Code:: *)
Int[ArcCot[a_+b_.*x_]/(c_+d_.*x_^n_),x_Symbol] :=
  Unintegrable[ArcCot[a+b*x]/(c+d*x^n),x] /;
FreeQ[{a,b,c,d,n},x] && Not[RationalQ[n]]


(* ::Code:: *)
Int[(A_.+B_.*x_+C_.*x_^2)^q_.*(a_.+b_.*ArcTan[c_+d_.*x_])^p_.,x_Symbol] :=
  1/d*Subst[Int[(C/d^2+C/d^2*x^2)^q*(a+b*ArcTan[x])^p,x],x,c+d*x] /;
FreeQ[{a,b,c,d,A,B,C,p,q},x] && EqQ[B*(1+c^2)-2*A*c*d,0] && EqQ[2*c*C-B*d,0]


(* ::Code:: *)
Int[(A_.+B_.*x_+C_.*x_^2)^q_.*(a_.+b_.*ArcCot[c_+d_.*x_])^p_.,x_Symbol] :=
  1/d*Subst[Int[(C/d^2+C/d^2*x^2)^q*(a+b*ArcCot[x])^p,x],x,c+d*x] /;
FreeQ[{a,b,c,d,A,B,C,p,q},x] && EqQ[B*(1+c^2)-2*A*c*d,0] && EqQ[2*c*C-B*d,0]


(* ::Code:: *)
Int[(e_.+f_.*x_)^m_.*(A_.+B_.*x_+C_.*x_^2)^q_.*(a_.+b_.*ArcTan[c_+d_.*x_])^p_.,x_Symbol] :=
  1/d*Subst[Int[((d*e-c*f)/d+f*x/d)^m*(C/d^2+C/d^2*x^2)^q*(a+b*ArcTan[x])^p,x],x,c+d*x] /;
FreeQ[{a,b,c,d,e,f,A,B,C,m,p,q},x] && EqQ[B*(1+c^2)-2*A*c*d,0] && EqQ[2*c*C-B*d,0]


(* ::Code:: *)
Int[(e_.+f_.*x_)^m_.*(A_.+B_.*x_+C_.*x_^2)^q_.*(a_.+b_.*ArcCot[c_+d_.*x_])^p_.,x_Symbol] :=
  1/d*Subst[Int[((d*e-c*f)/d+f*x/d)^m*(C/d^2+C/d^2*x^2)^q*(a+b*ArcCot[x])^p,x],x,c+d*x] /;
FreeQ[{a,b,c,d,e,f,A,B,C,m,p,q},x] && EqQ[B*(1+c^2)-2*A*c*d,0] && EqQ[2*c*C-B*d,0]


