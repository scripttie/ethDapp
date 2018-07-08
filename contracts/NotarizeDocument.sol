pragma solidity ^0.4.19;



contract NotarizeDocument {
	
	mapping(bytes32 => bool) private docProofs;
	
	//first notarize document
	function notarize(string document) public {
		bytes32 proof = proofForDoc(document);
		storeDocProof(proof);
	}
	function proofForDoc(bytes32 proof) private {
		docProofs[proof] = true;
	}

	//checking if documents exists and is notarized
	function checkDocument(string document) public constant returns (bool) {
		return docProofs[proof];
	}
}