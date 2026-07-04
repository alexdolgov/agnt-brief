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

import {Ownable} from "./utils/Ownable.sol";
import {SafeERC20} from "openzeppelin-contracts/contracts/token/ERC20/utils/SafeERC20.sol";
import {IERC20} from "openzeppelin-contracts/contracts/token/ERC20/IERC20.sol";
import {IStaker} from "./interfaces/IStaker.sol";

/// @notice Emission schedule data
struct Schedule {
    /// @notice Timestamp for scheduled emission
    uint32 timestamp;
    /// @notice Amount of tokens to be distributed at the timestamp
    uint192 amount;
    /// @notice Whether the distribution has been distributed
    bool distributed;
}

/// @title EmissionDistributor
/// @notice A time-based token distribution system that follows a predefined emission schedule.
/// This contract manages the controlled release of GIZA tokens to the staking contract at
/// specified timestamps.
///
/// Key features:
/// - Configurable emission schedule with timestamps and amounts
/// - Automated distribution support via Gelato integration
/// - Authorization system for schedule management
/// - Failsafe token recovery mechanism for emergencies
///
/// The emission schedule is enforced by time-locks, ensuring tokens are only distributed
/// when scheduled and only once per scheduled event.
contract EmissionDistributor is Ownable {
    using SafeERC20 for IERC20;

    /*//////////////////////////////////////////////////////////////
                             EVENTS
    //////////////////////////////////////////////////////////////*/

    event AddedAuthorized(address indexed addr);
    event RemovedAuthorized(address indexed addr);
    event EmissionScheduleUpdated();
    event EmissionDistributed(uint32 timestamp, uint192 amount);

    /*//////////////////////////////////////////////////////////////
                             ERRORS
    //////////////////////////////////////////////////////////////*/

    error InvalidLength();
    error TimestampsNotIncreasing();
    error NotDistributionTime();
    error InsufficientBalance();
    error ScheduleOver();
    error AlreadyDistributed();

    /*//////////////////////////////////////////////////////////////
                             STORAGE
    //////////////////////////////////////////////////////////////*/

    /// @notice Giza token
    IERC20 public immutable giza;

    /// @notice Staker contract
    IStaker public immutable staker;

    /// @notice Array of emission schedule entries defining when and how much token to distribute
    Schedule[] public emissionSchedule;

    /// @notice Mapping of addresses authorized to update emission schedules
    mapping(address => bool) public isAuthorized;

    constructor(address _owner, address _giza, address _staker) Ownable(_owner) {
        giza = IERC20(_giza);
        staker = IStaker(_staker);
    }

    /*//////////////////////////////////////////////////////////////
                             OWNER
    //////////////////////////////////////////////////////////////*/

    /// @notice Recover token from the contract in case of emergency
    /// @param token The address of the token to recover
    /// @param to The address to send the recovered tokens to
    /// @param amount The amount of tokens to recover
    function recoverToken(address token, address to, uint256 amount) external onlyOwner {
        IERC20(token).safeTransfer(to, amount);
    }

    /// @notice Add an address to the authorized list
    /// @param _address The address to authorize
    function addAuthorized(address _address) external onlyOwner {
        isAuthorized[_address] = true;
        emit AddedAuthorized(_address);
    }

    /// @notice Remove an address from the authorized list
    /// @param _address The address to remove authorization from
    function removeAuthorized(address _address) external onlyOwner {
        isAuthorized[_address] = false;
        emit RemovedAuthorized(_address);
    }

    /// @notice Update the emission schedule with new timestamps and amounts
    /// @param timestamps Array of timestamps for scheduled emissions, must be in descending order
    /// @param amounts Array of token amounts corresponding to each timestamp
    /// @dev Only authorized addresses can call this function
    function updateEmissionSchedule(uint32[] memory timestamps, uint192[] memory amounts) external onlyAuthorized {
        _updateEmissionSchedule(timestamps, amounts);
    }

    /*//////////////////////////////////////////////////////////////
                            ENTRYPOINT
    //////////////////////////////////////////////////////////////*/

    /// @notice Distribute emissions to the staker
    function distributeEmissions() external {
        Schedule storage nextDistribution = _nextEmission();
        if (block.timestamp < nextDistribution.timestamp) revert NotDistributionTime();
        if (giza.balanceOf(address(this)) < nextDistribution.amount) revert InsufficientBalance();

        nextDistribution.distributed = true;
        giza.approve(address(staker), nextDistribution.amount);
        staker.notifyRewardAmount(nextDistribution.amount);
        emit EmissionDistributed(nextDistribution.timestamp, nextDistribution.amount);
    }

    /*//////////////////////////////////////////////////////////////
                            VIEW
    //////////////////////////////////////////////////////////////*/

    /// @notice Check if the distribution can be distributed
    /// @return True if the distribution can be distributed, false otherwise
    /// @return The selector of the function to call if the distribution can be distributed
    /// @dev This function is exposed for Gelato automation
    function canDistribute() external view returns (bool, bytes memory) {
        Schedule memory nextDistribution = getNextDistribution();
        if (nextDistribution.distributed) return (false, bytes("AlreadyDistributed"));
        if (block.timestamp < nextDistribution.timestamp) return (false, bytes("NotDistributionTime"));
        if (giza.balanceOf(address(this)) < nextDistribution.amount) {
            return (false, bytes("InsufficientBalance"));
        }
        return (true, abi.encodeWithSelector(EmissionDistributor.distributeEmissions.selector));
    }

    /// @notice Get the next distribution
    /// @return The next distribution
    function getNextDistribution() public view returns (Schedule memory) {
        for (uint256 i = 0; i < emissionSchedule.length; i++) {
            if (!emissionSchedule[i].distributed) {
                return emissionSchedule[i];
            }
        }
        return Schedule({timestamp: 0, amount: 0, distributed: true});
    }

    /*//////////////////////////////////////////////////////////////
                            Internal
    //////////////////////////////////////////////////////////////*/

    /// @notice Internal implementation of updating the emission schedule
    /// @param timestamps Array of timestamps for scheduled emissions
    /// @param amounts Array of token amounts corresponding to each timestamp
    /// @dev Validates that timestamps are in ascending order and arrays have the same length
    function _updateEmissionSchedule(uint32[] memory timestamps, uint192[] memory amounts) internal {
        if (timestamps.length != amounts.length || timestamps.length == 0) {
            revert InvalidLength();
        }

        // Delete existing array (clears all elements and resets length to 0)
        delete emissionSchedule;

        // Build new emission schedule and validate timestamps in one loop
        for (uint256 i = 0; i < timestamps.length; i++) {
            // Check timestamps are in ascending order (except for the first element)
            if (i > 0 && timestamps[i - 1] > timestamps[i]) revert TimestampsNotIncreasing();

            // Add to emission schedule
            emissionSchedule.push(Schedule({timestamp: timestamps[i], amount: amounts[i], distributed: false}));
        }
        emit EmissionScheduleUpdated();
    }

    /// @notice Internal implementation of getting the next distribution
    /// @return The next distribution
    function _nextEmission() internal view returns (Schedule storage) {
        for (uint256 i = 0; i < emissionSchedule.length; i++) {
            if (!emissionSchedule[i].distributed) {
                return emissionSchedule[i];
            }
        }
        revert ScheduleOver();
    }

    /// @notice Modifier that restricts function access to authorized addresses
    /// @dev Checks if the sender is authorized or is the owner
    modifier onlyAuthorized() {
        if (!isAuthorized[msg.sender] && msg.sender != owner) revert Unauthorized();
        _;
    }
}
