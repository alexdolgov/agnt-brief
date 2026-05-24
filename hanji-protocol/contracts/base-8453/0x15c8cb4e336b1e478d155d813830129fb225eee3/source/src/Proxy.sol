// SPDX-License-Identifier: BUSL-1.1
// (c) Long Gamma Labs, 2024-2025.
pragma solidity ^0.8.30;


import { ERC1967Proxy } from "@openzeppelin/contracts/proxy/ERC1967/ERC1967Proxy.sol";


contract Proxy is ERC1967Proxy {
    constructor(address _implementation, bytes memory _data) ERC1967Proxy(_implementation, _data) {}
}
