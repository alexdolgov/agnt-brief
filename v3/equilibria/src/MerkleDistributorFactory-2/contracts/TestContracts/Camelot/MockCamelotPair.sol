// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

import "@shared/lib-contracts-v0.8/contracts/TestContracts/ERC20Mock.sol";
import "../../Interfaces/Camelot/ICamelotPair.sol";

contract MockCamelotPair is ICamelotPair, ERC20Mock {
    address public token0;
    address public token1;

    constructor(address _token0, address _token1) ERC20Mock("Camelot Pair", "CMLT") {
        token0 = _token0;
        token1 = _token1;
    }
}