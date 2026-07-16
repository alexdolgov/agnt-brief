// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import {ERC1967Proxy} from "@openzeppelin/contracts/proxy/ERC1967/ERC1967Proxy.sol";

/**
 * @title StreamFactoryProxy
 * @dev Proxy specifically for StreamFactory contract deployments
 */
contract StreamFactoryProxy is ERC1967Proxy {
    bytes32 private constant PROXY_KIND = keccak256("StreamFactoryProxy");

    constructor(address implementation, bytes memory data) ERC1967Proxy(implementation, data) {
        // Custom initialization logic can go here if needed
    }

    // Unique marker to differentiate runtime bytecode on explorers
    function __proxyKind() external pure returns (bytes32) {
        return PROXY_KIND;
    }
}
