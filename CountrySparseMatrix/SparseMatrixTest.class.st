Class {
	#name : 'SparseMatrixTest',
	#superclass : 'TestCase',
	#category : 'CountrySparseMatrix-Tests',
	#package : 'CountrySparseMatrix',
	#tag : 'Tests'
}

{ #category : 'tests' }
SparseMatrixTest >> testDenseToSparseConversion [
    | denseMatrix sparseMatrix tripletsExpected |
    denseMatrix := #(#(0 0 5) #(6 0 0) #(0 7 0)).
    sparseMatrix := SparseMatrixEncoder denseToSparse: denseMatrix.
    "On s'attend aux triplets : (1,3,5), (2,1,6) et (3,2,7)"
    tripletsExpected := OrderedCollection with: {1. 3. 5}
                                           with: {2. 1. 6}
                                           with: {3. 2. 7}.
    self assert: sparseMatrix triplets equals: tripletsExpected.
]

{ #category : 'tests' }
SparseMatrixTest >> testSparseToDenseConversion [
    | denseMatrix sparseMatrix resultDense |
    denseMatrix := #(#(0 0 5) #(6 0 0) #(0 7 0)).
    sparseMatrix := SparseMatrixEncoder denseToSparse: denseMatrix.
    resultDense := sparseMatrix toArray.
    self assert: denseMatrix equals: resultDense.
]
