pragma solidity 0.4.24;

import "./IBaseSecurityToken20.sol";

// Uses return status codes from ERC-1066.

contract BaseSecurityToken is IBaseSecurityToken {
	function transfer(address to, uint256 value) external returns (bool) {
		require(checkTransferAllowed(msg.sender, to, value) == hex"11");
		return base.transfer(to, value);
	}

	function transferFrom(address from, address to, uint256 value) external returns (bool) {
		require(checkTransferFromAllowed(from, to, value) == hex"11");
		return base.transferFrom(from, to, value);
	}

    function checkTransferAllowed (address from, address to, uint256 value) public view returns (byte) {
    	// allowed by default
    	return hex"11";
    }
   
    function checkTransferFromAllowed (address from, address to, uint256 value) public view returns (byte) {
    	// allowed by default
    	return hex"11";
    }
   
    function checkMintAllowed (address to, uint256 value) public view returns (byte) {
    	// allowed by default
    	return hex"11";
    }
   
    function checkBurnAllowed (address from, uint256 value) public view returns (byte) {
    	// allowed by default
    	return hex"11";
    }

    function attachDocument(bytes32 _name, string _uri, bytes32 _contentHash) external {
    	throw(); // TODO
    }
   
    function lookupDocument(bytes32 _name) external view returns (string, bytes32) {
    	throw(); // TODO
    }
}
