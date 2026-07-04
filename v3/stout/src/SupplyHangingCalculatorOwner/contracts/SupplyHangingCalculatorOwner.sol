// SPDX-License-Identifier: MIT

pragma solidity >=0.8.24 <0.9.0;

import {Ownable} from "./abstract/Ownable.sol";
import {IBaseContracts} from "./interface/IBaseContracts.sol";
import {ISupplyHangingCalculator} from "./interface/ISupplyHangingCalculator.sol";

contract SupplyHangingCalculatorOwner is Ownable {
    ISupplyHangingCalculator public immutable supplyCalculator;
    error ZeroAddress();
    error InvalidSafetyMargin();

    constructor(IBaseContracts baseContracts_) {
        _ensureNonzeroAddress(address(baseContracts_));
        supplyCalculator = baseContracts_.supplyCalculator();
        _ensureNonzeroAddress(address(supplyCalculator));
    }

    function setSafetyMargin(uint256 newSafetyMargin) external onlyOwner {
        if (newSafetyMargin > 100) revert InvalidSafetyMargin();
        supplyCalculator.setSafetyMargin(newSafetyMargin);
    }

    function _ensureNonzeroAddress(address addr) private pure {
        if (addr == address(0)) {
            revert ZeroAddress();
        }
    }
}
