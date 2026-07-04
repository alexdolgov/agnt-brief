// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

import "../../pricing/IPriceOracle.sol";
import "../../pricing/ISharePriceCalculator.sol";

/**
 * @title SharePriceOracle
 * @notice Bridge contract that exposes SharePriceCalculator's price as an IPriceOracle
 * @dev Allows ShareToken price to be used in PriceRouter alongside market oracles
 */
contract SharePriceOracle is IPriceOracle {
    // ============ State ============
    ISharePriceCalculator public immutable calculator;

    // ============ Errors ============
    error InvalidCalculator();

    // ============ Constructor ============

    /**
     * @notice Initialize with SharePriceCalculator
     * @param _calculator Address of the SharePriceCalculator contract
     */
    constructor(address _calculator) {
        if (_calculator == address(0)) revert InvalidCalculator();
        calculator = ISharePriceCalculator(_calculator);
    }

    // ============ IPriceOracle Implementation ============

    /**
     * @notice Get the latest share price
     * @return PriceInfo with current share price and VALID status
     * @dev Always returns VALID status as share price is admin-controlled
     */
    function latestPriceInfo() external view override returns (PriceInfo memory) {
        uint256 price = calculator.getSharePrice();
        return PriceInfo(price, PriceStatus.VALID);
    }

    /**
     * @notice Get decimals for the price
     * @return Always 18 as share price is in WAD format
     */
    function decimals() external pure override returns (uint8) {
        return 18;
    }
}
