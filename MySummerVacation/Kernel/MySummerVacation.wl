(* ::Package:: *)

(* ::Section:: *)
(*Package Header*)


BeginPackage["AndyHunt`TestPaclet1`"];


(* ::Text:: *)
(*Declare your public symbols here:*)


MySummerVacation;


Begin["`Private`"];


(* ::Section:: *)
(*Definitions*)


(* ::Text:: *)
(*Define your public and private symbols here:*)


MySummerVacation[num_Integer:5] := 
Module[{
	nouns=RandomChoice[WordList["Noun"], num],
	verbs=RandomChoice[WordList["Verb"], num]
},

Column[{
	Style["Vacation List","Subsection"],
	Framed @ Graphics[
		Map[
			With[{vrb=Part[verbs,#], nn=Part[nouns,#]},
				Inset[
					StringJoin[ vrb, " a ", nn],
					Scaled[{RandomChoice[Range[0.25, 0.75, 0.05]], Part[Reverse @ Range[0.1, 0.9, ((0.85-0.1)/num)],#] }]
				]
			]&, Range[Max @@ Length/@{nouns, verbs}]
		]
	]
}
]

]


(* ::Section::Closed:: *)
(*Package Footer*)


End[];
EndPackage[];
