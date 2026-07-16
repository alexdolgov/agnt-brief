// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

// We import these here to force Hardhat to compile them.
// This ensures that their artifacts are available for Hardhat Ignition to use.
import '@openzeppelin/contracts/proxy/ERC1967/ERC1967Proxy.sol';

contract ERC1967Proxyy is ERC1967Proxy {
    constructor(address impl, bytes memory data) payable ERC1967Proxy(impl, data) {}
}
