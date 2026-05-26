// SPDX-License-Identifier: MIT

pragma solidity =0.7.6;

import "./INameVersion.sol";

/**
 * @dev Convenience contract for name and version information
 */
abstract contract NameVersion is INameVersion {
    bytes32 public immutable override nameId;
    bytes32 public immutable override versionId;

    constructor(string memory name, string memory version) {
        nameId = keccak256(abi.encodePacked(name));
        versionId = keccak256(abi.encodePacked(version));
    }
}
