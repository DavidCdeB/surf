(* ::Package:: *)

(* ::Input:: *)
(*SetDirectory["/Volumes/MicroSD/Dropbox/PostDoc_SD/mathematica/David/surf"];*)
(*fileSurfs={"surf_1_P_T_G.dat"};*)
(*cacSurf=Table[ReadList[fileSurfs[[i]],{Number, Number,Number}],{i,1,Length[fileSurfs]}];*)


(* ::Input:: *)
(*cacSurf[[1]][[-1]]*)


(* ::Input:: *)
(*ListPlot3D[cacSurf[[1]]]*)


(* ::Input:: *)
(**)
(*eqnForm=aaa+bbb*T+ccc*p+ddd*T^2+eee*p^2+fff*p*T;*)
(**)
(**)


(* ::Input:: *)
(**)


(* ::Input:: *)
(*fittedSurf=NonlinearModelFit[cacSurf[[1]],eqnForm,{aaa,bbb,ccc,ddd,eee,fff},{p,T}]*)


(* ::Input:: *)
(*fittedSurf*)


(* ::Input:: *)
(*ContourPlot[fittedSurf[p,T],{p,-5,15},{T,100,1000}]*)


(* ::Input:: *)
(*p1=Plot3D[fittedSurf[p,T],{p,-4,12},{T,100,2000}]*)
(*p2=ListPlot3D[cacSurf[[1]]]*)


(* ::Input:: *)
(*Show[ListPlot3D[cacSurf[[1]],PlotStyle->Red],Plot3D[fittedSurf[p,T],{p,-4,12},{T,100,2000}]]*)


(* ::Input:: *)
(*fittedSurf*)


(* ::Input:: *)
(*fittedSurf[5,1000]*)


(* ::Input:: *)
(*Show[p1,p2]*)


(* ::Input:: *)
(*Show[Plot3D[fittedSurf[p,T]+20,{p,-5,15},{T,100,1000}],ListPlot3D[cacSurf[[1]]]]*)
