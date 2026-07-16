// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {ERC1967Proxy} from "openzeppelin/proxy/ERC1967/ERC1967Proxy.sol";

/**
 * @notice  HNUSDProxy is ERC1967Proxy
 * @dev     explicitly declare a contract here to increase readability
 */
contract HNUSDProxy is ERC1967Proxy {
    constructor(address logic, bytes memory data) payable ERC1967Proxy(logic, data) {}
}
