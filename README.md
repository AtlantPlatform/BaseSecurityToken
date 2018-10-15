# [ERC-1462](https://eips.ethereum.org/EIPS/eip-1462): BaseSecurityToken

An extension to ERC-20 standard token that provides compliance with securities regulations and legal enforceability.

```solidity
interface BaseSecurityToken /* is ERC-20 */ {
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

Join the [discussion](https://ethereum-magicians.org/t/erc-1462-base-security-token/1501)!

## Reference Implementation

Please refer to [IBaseSecurityToken.sol](contracts/IBaseSecurityToken.sol) and [BaseSecurityToken.sol](contracts/BaseSecurityToken.sol).

```
$ make lint
solhint "contracts/**/*.sol"

solium -d contracts/

No issues found.
```

## License

**For `erc-1462.md`:**
Copyright and related rights waived via [CC0](https://creativecommons.org/publicdomain/zero/1.0/).

If not stated otherwise, all sources are licensed under Microsoft Reference Source
License (MS-RSL) that can be found in the [LICENSE](/LICENSE) file.
