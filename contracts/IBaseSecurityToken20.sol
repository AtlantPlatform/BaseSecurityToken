pragma solidity 0.4.24;

import "./openzeppelin/IERC20.sol";

interface IBaseSecurityToken is IERC20 {    
    function checkTransferAllowed (address from, address to, uint256 value) public view returns (byte);
   
    function checkTransferFromAllowed (address from, address to, uint256 value) public view returns (byte);
   
    function checkMintAllowed (address to, uint256 value) public view returns (byte);
   
    function checkBurnAllowed (address from, uint256 value) public view returns (byte);

    function attachDocument(bytes32 _name, string _uri, bytes32 _contentHash) external;
   
    function lookupDocument(bytes32 _name) external view returns (string, bytes32);
}
