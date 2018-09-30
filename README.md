BaseSecurityToken
-----------------

An extension to ERC-20 standard token that provides compliance with securities regulations and legal enforceability.

```solidity
interface BaseSecurityToken /* is ERC20 */ {
    // Checking functions
    function checkTransferAllowed (address from, address to, uint256 value) public view returns (byte);
    function checkTransferFromAllowed (address from, address to, uint256 value) public view returns (byte);
    function checkMintAllowed (address to, uint256 value) public view returns (byte);
    function checkBurnAllowed (address from, uint256 value) public view returns (byte);

    // Documentation functions
    function attachDocument(bytes32 _name, string _uri, bytes32 _contentHash) external;
    function lookupDocument(bytes32 _name) external view returns (string, bytes32);
}
```

## License

**For `erc-1462.md`:**
Copyright and related rights waived via [CC0](https://creativecommons.org/publicdomain/zero/1.0/).

If not stated otherwise, all sources are licensed under Microsoft Reference Source
License (MS-RSL) that can be found in the [LICENSE](/LICENSE) file.
