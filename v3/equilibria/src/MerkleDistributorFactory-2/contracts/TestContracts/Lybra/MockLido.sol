// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

import "@shared/lib-contracts-v0.8/contracts/TestContracts/ERC20Mock.sol";

contract MockLido is ERC20Mock {
    constructor() ERC20Mock("Liquid staked Ether 2.0", "stETH") {}

    function submit(address) external payable returns (uint256) {
        _mint(msg.sender, msg.value);
        return msg.value;
    }
}
