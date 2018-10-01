pragma solidity ^0.4.24;


/**
 * @title BaseSecurityToken interface
 * @dev see https://github.com/ethereum/EIPs/pull/1462
 */
interface IBaseSecurityToken {    
    
    function attachDocument(bytes32 _name, string _uri, bytes32 _contentHash) external;

    function lookupDocument(bytes32 _name) external view returns (string, bytes32);

    /**
     * @return byte status code (ESC): 0x11 for Allowed, for other please refer to ERC-1066.
     */
    function checkTransferAllowed (address from, address to, uint256 value) external view returns (byte);
   
    /**
     * @return byte status code (ESC): 0x11 for Allowed, for other please refer to ERC-1066.
     */
    function checkTransferFromAllowed (address from, address to, uint256 value) external view returns (byte);
   
    /**
     * @return byte status code (ESC): 0x11 for Allowed, for other please refer to ERC-1066.
     */
    function checkMintAllowed (address to, uint256 value) external view returns (byte);
   
    /**
     * @return byte status code (ESC): 0x11 for Allowed, for other please refer to ERC-1066.
     */
    function checkBurnAllowed (address from, uint256 value) external view returns (byte);    
}
