Class {
	#name : 'SparseMatrixEncoder',
	#superclass : 'Object',
	#category : 'CountrySparseMatrix',
	#package : 'CountrySparseMatrix'
}

{ #category : 'as yet unclassified' }
SparseMatrixEncoder >> denseToSparse: aDenseMatrix [
    | sparseMatrix rows cols |
    rows := aDenseMatrix size.
    cols := (aDenseMatrix first) size.
    sparseMatrix := SparseMatrix new initializeWithRows: rows columns: cols.
    1 to: rows do: [:i |
        1 to: cols do: [:j |
            ((aDenseMatrix at: i) at: j) = 0 ifFalse: [
                sparseMatrix addTripletAtRow: i column: j value: ((aDenseMatrix at: i) at: j)
            ].
        ].
    ].
    ^ sparseMatrix
]

{ #category : 'as yet unclassified' }
SparseMatrixEncoder >> sparseToDense: aSparseMatrix [
    ^ aSparseMatrix toArray

]
