// SPDX-License-Identifier: MIT
pragma solidity ^0.8.27;

// Force Hardhat to compile ERC1967Proxy so its artifact is available for deploy scripts.
import '@openzeppelin/contracts/proxy/ERC1967/ERC1967Proxy.sol';
import '@openzeppelin/contracts/governance/TimelockController.sol';
