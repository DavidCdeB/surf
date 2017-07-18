(* ::Package:: *)

(* ::Input:: *)
(*SetDirectory["/Volumes/MicroSD/Dropbox/PostDoc_SD/mathematica/David/surf"];*)
(*fileSurfs={"surf_1_P_T_G.dat","surf_2_P_T_G.dat"};*)
(*cacSurf=Table[ReadList[fileSurfs[[i]],{Number, Number,Number}],{i,1,Length[fileSurfs]}];*)


(* ::Input:: *)
(*(*Plot data for two surfaces*)*)
(*ListPlot3D[cacSurf]*)


(* ::Input:: *)
(**)
(*(*Guess a quadratic form*)*)
(*eqnForm=aaa+bbb*T+ccc*p+ddd*T^2+eee*p^2+fff*p*T;*)


(* ::Input:: *)
(*(*Fit quadrativ form to data*)*)
(*fittedSurf1=NonlinearModelFit[cacSurf[[1]],eqnForm,{aaa,bbb,ccc,ddd,eee,fff},{p,T}]*)
(*fittedSurf2=NonlinearModelFit[cacSurf[[2]],eqnForm,{aaa,bbb,ccc,ddd,eee,fff},{p,T}]*)


(* ::Input:: *)
(*(*Contour plot quadratic form*)*)
(*ContourPlot[fittedSurf1[p,T],{p,-5,15},{T,100,1000}]*)
(*ContourPlot[fittedSurf2[p,T],{p,-5,15},{T,100,1000}]*)


(* ::Input:: *)
(*(*Plot in 3D*)*)
(*p1=Plot3D[fittedSurf1[p,T],{p,-4,12},{T,100,2000},PlotStyle->{Red,Directive[Opacity[0.4]]}];*)
(*p2=ListPlot3D[cacSurf[[1]],PlotStyle->{Green,Directive[Opacity[0.4]]}];*)
(*p3=Plot3D[fittedSurf2[p,T],{p,-4,12},{T,100,2000},PlotStyle->{Orange,Directive[Opacity[0.4]]}];*)
(*p4=ListPlot3D[cacSurf[[2]],PlotStyle->{Blue,Directive[Opacity[0.4]]}];*)
(**)


(* ::Input:: *)
(*(*Show plots*)*)
(*Show[{p1,p2}]*)
(*Show[{p3,p4}]*)
(**)


(* ::Input:: *)
(*Show[{p1,p3}]*)


(* ::Input:: *)
(*(*Inspect equations*)*)
(*surf1=eqnForm/.fittedSurf1[[1]][[2]]*)
(*surf2=eqnForm/.fittedSurf2[[1]][[2]]*)


(* ::Input:: *)
(*(*Solve intersections*)*)
(*surfDiff=surf1-surf2*)
(*intersection=Solve[surfDiff==0,{T,p}]//Simplify*)
(**)


(* ::Input:: *)
(**)
(*intersection*)


(* ::Input:: *)
(*(*Plot the intersection - note it won't be value for this whole range*)*)


(* ::Input:: *)
(*Plot[{intersection[[1]][[1]][[2]],intersection[[2]][[1]][[2]]},{T,10,1500},AxesLabel->{"Temperature (K)","Pressure"}]*)


(* ::Input:: *)
(*(*Find out the lowest temperature - ie solve for when is the top curve equal to the bottom curve*)*)


(* ::Input:: *)
(*topCurve=intersection[[2]][[1]][[2]]*)
(*bottomCurve=intersection[[1]][[1]][[2]]*)
(*Solve[topCurve==bottomCurve,T][[1]]*)


(* ::Input:: *)
(*(*56 is pretty close to 59!*)*)
