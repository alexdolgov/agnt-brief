// SPDX-License-Identifier: MIT
/*
Copyright 2025 Giza Association
Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), 
to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, 
and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE 
WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. 
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, 
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/
pragma solidity 0.8.26;

import {Ownable} from "src/utils/Ownable.sol";
import {IEarningPowerCalculator} from "src/interfaces/IEarningPowerCalculator.sol";
import {DepositCheckpoint} from "src/Staker.sol";
import {IStaker} from "src/interfaces/IStaker.sol";

struct UserBoost {
    uint256 amount;
    uint256 earningPower;
    uint16 boost;
}

struct Boost {
    uint32 ts_step;
    uint16 boost;
}

/// @title Tw_EarningPowerCalculator
/// @notice A time-weighted earning power calculator that rewards longer staking periods.
/// This calculator applies progressively higher boosts to deposits based on their staking duration.
///
/// Key features:
/// - Configurable time-based boost tiers that increase earning power over time
/// - Processes each deposit checkpoint separately to account for different staking durations
/// - Admin can update boost parameters to adjust incentives without contract redeployment
/// - Integrates with the Staker contract to access user deposit history
contract Tw_EarningPowerCalculator is IEarningPowerCalculator, Ownable {
    /*//////////////////////////////////////////////////////////////
                             EVENTS
    //////////////////////////////////////////////////////////////*/
    event BoostsSet();
    event StakerSet(address staker);

    /*//////////////////////////////////////////////////////////////
                             ERRORS
    //////////////////////////////////////////////////////////////*/

    error InvalidLength();
    error TimestamptNotIncreasing();

    /*//////////////////////////////////////////////////////////////
                             STORAGE
    //////////////////////////////////////////////////////////////*/

    /// @notice The staker contract
    IStaker public staker;

    /// @notice The boosts
    Boost[] public boosts;

    /// @notice The precision of the boosts
    uint256 public BOOST_PRECISION = 10000;

    constructor(address _owner) Ownable(_owner) {}

    /*//////////////////////////////////////////////////////////////
                             ADMIN
    //////////////////////////////////////////////////////////////*/

    /// @notice Set the staker contract
    /// @param _staker The address of the staker contract
    function setStaker(address _staker) external onlyOwner {
        staker = IStaker(_staker);
        emit StakerSet(address(staker));
    }

    /// @notice Set the boosts
    /// @param _ts_steps The timestamps of the boosts
    /// @param _boosts The boosts
    function setBoosts(uint32[] memory _ts_steps, uint16[] memory _boosts) external onlyOwner {
        if (_ts_steps.length != _boosts.length || _ts_steps.length == 0) {
            revert InvalidLength();
        }

        for (uint256 i = 0; i < _ts_steps.length - 1; i++) {
            if (_ts_steps[i] > _ts_steps[i + 1]) revert TimestamptNotIncreasing();
        }

        delete boosts;

        for (uint256 i = 0; i < _ts_steps.length; i++) {
            boosts.push(Boost({ts_step: _ts_steps[i], boost: _boosts[i]}));
        }
        emit BoostsSet();
    }

    /*//////////////////////////////////////////////////////////////
                             BOOST
    //////////////////////////////////////////////////////////////*/

    /// @notice Get the earning power
    /// @param _staker The address of the staker
    /// @return The earning power
    function getEarningPower(uint256, /*_amountStaked */ address _staker) external view returns (uint256) {
        DepositCheckpoint[] memory history = staker.getUserCheckpointHistory(_staker);
        uint256 totalEarningPower = 0;
        for (uint256 i = 0; i < history.length; i++) {
            (uint256 boostedAmount,) = _calculateEarningPower(history[i]);
            totalEarningPower += boostedAmount;
        }
        return totalEarningPower;
    }

    /// @notice Get the new earning power
    /// @param _staker The address of the staker
    /// @param _oldEarningPower The old earning power
    /// @return The new earning power and whether it has increased
    function getNewEarningPower(uint256, /*_amountStaked*/ address _staker, uint256 _oldEarningPower)
        external
        view
        returns (uint256, bool)
    {
        DepositCheckpoint[] memory history = staker.getUserCheckpointHistory(_staker);
        uint256 totalEarningPower = 0;
        for (uint256 i = 0; i < history.length; i++) {
            (uint256 boostedAmount,) = _calculateEarningPower(history[i]);
            totalEarningPower += boostedAmount;
        }
        if (totalEarningPower != _oldEarningPower) {
            return (totalEarningPower, true);
        }
        return (_oldEarningPower, false);
    }

    /*//////////////////////////////////////////////////////////////
                             INTERNAL
    //////////////////////////////////////////////////////////////*/

    /// @notice Calculate the earning power
    /// @param _checkpoint The checkpoint
    /// @return The earning power
    function _calculateEarningPower(DepositCheckpoint memory _checkpoint) internal view returns (uint256, uint16) {
        // If checkpoint amount is 0, return 0
        if (_checkpoint.amount == 0) {
            return (0, 0);
        }

        // Calculate how long the tokens have been staked
        uint256 timeStaked = block.timestamp - _checkpoint.timestamp;

        // Start with no boost
        uint16 appliedBoost = 0;

        // Find the highest applicable boost based on staking duration
        for (uint256 i = 0; i < boosts.length; i++) {
            // If the current boost's timestamp is less than or equal to how long tokens were staked,
            // this boost (or a higher one) applies
            if (boosts[i].ts_step <= timeStaked) {
                appliedBoost = boosts[i].boost;
            } else {
                // Once we find a timestamp greater than our staking duration, we can break
                break;
            }
        }

        uint256 boostedAmount = _checkpoint.amount * (BOOST_PRECISION + appliedBoost) / BOOST_PRECISION;

        return (boostedAmount, appliedBoost);
    }

    /*//////////////////////////////////////////////////////////////
                             VIEW
    //////////////////////////////////////////////////////////////*/

    /// @notice View functions exposing the user boosts
    /// @param _staker The address of the staker
    /// @return The user boosts
    function getUserBoosts(address _staker) external view returns (UserBoost[] memory) {
        DepositCheckpoint[] memory history = staker.getUserCheckpointHistory(_staker);
        UserBoost[] memory userBoosts = new UserBoost[](history.length);
        for (uint256 i = 0; i < history.length; i++) {
            (uint256 boostedAmount, uint16 appliedBoost) = _calculateEarningPower(history[i]);
            userBoosts[i] = UserBoost({amount: history[i].amount, earningPower: boostedAmount, boost: appliedBoost});
        }
        return userBoosts;
    }
}
