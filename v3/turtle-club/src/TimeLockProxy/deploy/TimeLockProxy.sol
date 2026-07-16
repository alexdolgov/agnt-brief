// SPDX-License-Identifier: MIT
pragma solidity =0.8.26;

import {ERC1967Proxy} from "@openzeppelin/contracts/proxy/ERC1967/ERC1967Proxy.sol";

// @notice Provides the base functionality for deploying a Timelock contract.
/// @dev This abstract contract should be inherited by contracts that implement specific deployment logic for Timelock contracts.
contract TimeLockProxy is ERC1967Proxy {
    constructor(address implementation, bytes memory data) ERC1967Proxy(implementation, data) {
        // Custom initialization logic can go here if needed
    }
    // Unique marker to differentiate runtime bytecode on explorers
    function __proxyKind() external pure returns (bytes32) {
        return keccak256("TimeLockProxy");
    }
}