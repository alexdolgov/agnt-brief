// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

import "@shared/lib-contracts-v0.8/contracts/TestContracts/ERC20Mock.sol";

contract MockesLBR is ERC20Mock {
    constructor() ERC20Mock("esLBR", "esLBR") {}

    function _transfer(address, address, uint256) internal virtual override {
        revert("NA");
    }
}
