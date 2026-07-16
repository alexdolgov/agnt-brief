// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.0;

// imported contracts and libraries
import {GenericUpgradableAggregator} from "./GenericUpgradableAggregator.sol";

// errors
import "../../config/errors.sol";

/**
 * @title   GenericNextPriceAggregator
 * @author  dsshap
 * @dev     Reports the price of token that also has a next price
 */
contract GenericNextPriceAggregator is GenericUpgradableAggregator {
    /*///////////////////////////////////////////////////////////////
                                Events
    //////////////////////////////////////////////////////////////*/

    event NextPriceReported(uint256 roundId, uint256 nextPrice);

    /*///////////////////////////////////////////////////////////////
                         State Variables V1
    //////////////////////////////////////////////////////////////*/

    /// @dev roundId => data
    mapping(uint80 => int256) private nextPrices;

    /*///////////////////////////////////////////////////////////////
                Constructor for implementation Contract
    //////////////////////////////////////////////////////////////*/

    constructor(address _reporter) GenericUpgradableAggregator(_reporter) initializer {}

    /*///////////////////////////////////////////////////////////////
                        External Functions
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice override the next price
     * @dev only callable by the reporter
     * @param _nextPrice is the next price
     */
    function setNextPrice(uint256 _nextPrice) external {
        if (msg.sender != reporter) revert NoAccess();

        if (_nextPrice == 0) revert BadAmount();

        uint80 _roundId = uint80(latestRound());
        nextPrices[_roundId] = int256(_nextPrice);

        emit NextPriceReported(uint256(_roundId), _nextPrice);
    }

    /*///////////////////////////////////////////////////////////////
                        View Functions
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice get the next price for the latest round
     * @return nextPrice the next price for the latest round
     */
    function nextPrice() external view returns (int256) {
        return nextPrices[uint80(latestRound())];
    }

    /**
     * @notice get the next price for a specific round
     * @param _roundId is the round id
     * @return nextPrice next price fort the round id
     */
    function nextPriceAtRoundId(uint80 _roundId) external view returns (int256) {
        return nextPrices[_roundId];
    }
}
