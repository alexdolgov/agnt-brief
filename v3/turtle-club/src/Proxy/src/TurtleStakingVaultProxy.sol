// SPDX-License-Identifier: MIT
pragma solidity =0.8.26;

import "@openzeppelin/contracts/proxy/ERC1967/ERC1967Proxy.sol";

/**
 * @title TurtleStakingVaultProxy
 * @dev Proxy specifically for TurtleStakingVault deployments.
 */
contract TurtleStakingVaultProxy is ERC1967Proxy {
    constructor(address implementation, bytes memory data) ERC1967Proxy(implementation, data) { }

    // Unique marker to differentiate runtime bytecode on explorers
    function __proxyKind() external pure returns (bytes32) {
        return keccak256("TurtleStakingVaultProxy");
    }
}
