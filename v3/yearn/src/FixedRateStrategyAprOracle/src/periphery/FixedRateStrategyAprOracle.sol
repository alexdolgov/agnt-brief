// SPDX-License-Identifier: AGPL-3.0
pragma solidity ^0.8.18;

import {AprOracleBase} from "@periphery/AprOracle/AprOracleBase.sol";

contract FixedRateStrategyAprOracle is AprOracleBase {
    event RateUpdated(address indexed strategy, uint256 oldRate, uint256 newRate);

    mapping(address strategy => uint256 rate) public rates;

    constructor() AprOracleBase("Fixed Rate Strategy APR Oracle", msg.sender) {}

    /**
     * @notice Sets the fixed APR for a strategy.
     * @dev The rate is the annualized APR scaled by 1e18.
     *
     *      ie. 10% == 1e17
     *
     * @param _strategy The strategy to set the APR for.
     * @param _rate The APR scaled by 1e18.
     */
    function setRate(address _strategy, uint256 _rate) external onlyGovernance {
        require(_strategy != address(0), "zero strategy");

        uint256 _oldRate = rates[_strategy];
        rates[_strategy] = _rate;

        emit RateUpdated(_strategy, _oldRate, _rate);
    }

    /**
     * @notice Returns the fixed APR for a strategy.
     * @dev Debt changes do not affect fixed rates.
     *
     * @param _strategy The strategy to get the apr for.
     * @return . The expected apr for the strategy represented as 1e18.
     */
    function aprAfterDebtChange(address _strategy, int256) external view override returns (uint256) {
        return rates[_strategy];
    }
}
