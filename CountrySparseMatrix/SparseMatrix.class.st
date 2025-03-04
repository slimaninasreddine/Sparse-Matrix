Class {
	#name : 'SparseMatrix',
	#superclass : 'Object',
	#instVars : [
		'rows',
		'cols',
		'triplets'
	],
	#category : 'CountrySparseMatrix',
	#package : 'CountrySparseMatrix'
}

{ #category : 'initialization' }
SparseMatrix >> addTripletAtRow: i column: j value: aValue [
    triplets add: {i. j. aValue}.

]

{ #category : 'initialization' }
SparseMatrix >> initializeWithRows: aRowCount columns: aColCount [
    rows := aRowCount.
    cols := aColCount.
    triplets := OrderedCollection new.
    ^ self
]

{ #category : 'initialization' }
SparseMatrix >> toArray [
    | dense |
    "Création d'un tableau dense initialisé avec des lignes contenant des zéros"
    dense := (1 to: rows) collect: [:i | Array new: cols withAll: 0].
    triplets do: [:t |
        | i j value |
        i := t first.
        j := t second.
        value := t third.
        (dense at: i) at: j put: value.
    ].
    ^ dense
]

{ #category : 'initialization' }
SparseMatrix >> triplets [
    ^ triplets
]
