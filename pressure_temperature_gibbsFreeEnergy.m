(* ::Package:: *)

(* ::Input:: *)
(*SetDirectory["/Volumes/MicroSD/Dropbox/PostDoc_SD/mathematica/David/surf"];*)
<<<<<<< HEAD
(*fileSurfs={"surf_1_P_T_G.dat","surf_2_P_T_G.dat"};*)
=======
(*fileSurfs={"surf_1_P_T_G.dat"};*)
>>>>>>> f6ac3b82e2d70f5849df956d391bd78d919b2be8
(*cacSurf=Table[ReadList[fileSurfs[[i]],{Number, Number,Number}],{i,1,Length[fileSurfs]}];*)


(* ::Input:: *)
<<<<<<< HEAD
(*(*Plot data for two surfaces*)*)
(*ListPlot3D[cacSurf]*)
=======
(*cacSurf[[1]][[-1]]*)


(* ::Input:: *)
(*ListPlot3D[cacSurf[[1]]]*)
>>>>>>> f6ac3b82e2d70f5849df956d391bd78d919b2be8


(* ::Input:: *)
(**)
<<<<<<< HEAD
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
(*(*Inspect equations*)*)
(*surf1=eqnForm/.fittedSurf1[[1]][[2]]*)
(*surf2=eqnForm/.fittedSurf2[[1]][[2]]*)


(* ::Input:: *)
(*(*Solve intersections*)*)
(*surfDiff=surf1-surf2*)
(*intersection=Solve[surfDiff==0,{T,p}][[1]]*)
(**)


(* ::Input:: *)
(*intersection[[1]][[2]]*)


(* ::Input:: *)
(*(*Plot the intersection - note it won't be value for this whole range*)*)


(* ::Input:: *)
(*Plot[intersection[[1]][[2]],{T,500,1200},AxesLabel->{"Temperature (K)","Pressure"}]*)
=======
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
>>>>>>> f6ac3b82e2d70f5849df956d391bd78d919b2be8
