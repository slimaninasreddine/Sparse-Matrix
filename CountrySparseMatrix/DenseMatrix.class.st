Class {
	#name : 'DenseMatrix',
	#superclass : 'Object',
	#instVars : [
		'matrix',
		'rows',
		'cols'
	],
	#category : 'CountrySparseMatrix',
	#package : 'CountrySparseMatrix'
}

{ #category : 'initialization' }
DenseMatrix >> atRow: i column: j [
    ^ (matrix at: i) at: j

]

{ #category : 'initialization' }
DenseMatrix >> initializeWithMatrix: a2DArray [
    matrix := a2DArray.
    rows := a2DArray size.
    cols := (a2DArray first) size.
    ^ self

]

{ #category : 'initialization' }
DenseMatrix >> setAtRow: i column: j value: aValue [
    ((matrix at: i) at: j) put: aValue.
]

{ #category : 'initialization' }
DenseMatrix >> toArray [
    ^ matrix
]
