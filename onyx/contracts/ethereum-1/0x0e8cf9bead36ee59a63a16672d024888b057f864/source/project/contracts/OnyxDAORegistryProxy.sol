// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import "@openzeppelin/contracts/proxy/ERC1967/ERC1967Proxy.sol";

/**
 * @title OnyxDAORegistryProxy
 * @notice Simple ERC1967 proxy for the OnyxDAORegistry implementation (UUPS).
 */
contract OnyxDAORegistryProxy is ERC1967Proxy {
    constructor(address logic, bytes memory initData) ERC1967Proxy(logic, initData) {}
}
