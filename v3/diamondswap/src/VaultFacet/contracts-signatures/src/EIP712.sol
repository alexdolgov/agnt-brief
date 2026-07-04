// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import { IEIP712 } from "./interfaces/IEIP712.sol";

/// @notice EIP712 helpers for hashing and verifying typed data
/// @dev Maintains cross-chain replay protection in the event of a fork
/// @dev Reference: https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/utils/cryptography/EIP712.sol
/// @dev Reference: https://github.com/solidstate-network/solidstate-solidity/blob/d1ba52d0981e3d1e1feda525dca8dd0c07ea4a00/contracts/cryptography/EIP712.sol
contract EIP712 is IEIP712 {
    bytes32 internal constant EIP712_TYPE_HASH =
        keccak256("EIP712Domain(string name,string version,uint256 chainId,address verifyingContract)");

    bytes32 private immutable hashedName;
    bytes32 private immutable hashedVersion;
    uint256 private immutable chainId;
    /**
     * @notice calculate unique EIP-712 domain separator
     * @dev name and version inputs are hashed as required by EIP-712 because they are of dynamic-length types
     * @dev implementation of EIP712Domain struct type excludes the optional salt parameter
     * @param nameHash hash of human-readable signing domain name
     * @param versionHash hash of signing domain version
     * @return domainSeparator domain separator
     */

    function calculateDomainSeparator(bytes32 nameHash, bytes32 versionHash, uint256 chain)
        internal
        view
        returns (bytes32 domainSeparator)
    {
        // execute EIP-712 hashStruct procedure using assembly, equavalent to:
        //
        // domainSeparator = keccak256(
        //   abi.encode(
        //     EIP712_TYPE_HASH,
        //     nameHash,
        //     versionHash,
        //     block.chainid,
        //     address(this)
        //   )
        // );

        bytes32 typeHash = EIP712_TYPE_HASH;
        address thisAddress = address(this);

        assembly {
            // load free memory pointer
            let pointer := mload(64)

            mstore(pointer, typeHash)
            mstore(add(pointer, 32), nameHash)
            mstore(add(pointer, 64), versionHash)
            mstore(add(pointer, 96), chain)
            mstore(add(pointer, 128), thisAddress)

            domainSeparator := keccak256(pointer, 160)
        }
    }

    constructor(string memory _hashedName, string memory _hashedVersion) {
        hashedName = keccak256(bytes(_hashedName));
        hashedVersion = keccak256(bytes(_hashedVersion));
        chainId = block.chainid;

        if (hashedName == 0 || hashedVersion == 0) {
            revert("EIP712: hashedName and hashedVersion must be non-zero");
        }
    }

    /// @notice Returns the domain separator for the current chain.
    /// @dev Uses cached version if chainid and address are unchanged from construction.
    function DOMAIN_SEPARATOR() public view override returns (bytes32) {
        return calculateDomainSeparator(hashedName, hashedVersion, chainId);
    }

    /// @notice Creates an EIP-712 typed data hash
    function _hashTypedData(bytes32 dataHash) internal view returns (bytes32) {
        return keccak256(abi.encodePacked("\x19\x01", DOMAIN_SEPARATOR(), dataHash));
    }
}
