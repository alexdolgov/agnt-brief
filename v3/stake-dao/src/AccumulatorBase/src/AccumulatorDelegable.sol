// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.28;

import {ERC20} from "solady/src/tokens/ERC20.sol";
import {SafeTransferLib} from "solady/src/utils/SafeTransferLib.sol";
import {AccumulatorBase} from "src/AccumulatorBase.sol";
import {IVeBoost} from "src/interfaces/IVeBoost.sol";

/// @title AccumulatorDelegable
/// @notice This contract is an extension of the AccumulatorBase, designed to manage and distribute rewards
///         to a delegation contract in a decentralized finance (DeFi) protocol. It leverages the veBoost
///         mechanism to enhance reward distribution without transferring governance rights.
///
///         The contract holds reward tokens and distributes them to a specified delegation contract based on
///         the boost received and the balance of veTokens (e.g., veCRV). It applies a defaultDelegationCapBps to the
///         calculated delegation share, allowing for flexible reward strategies.
abstract contract AccumulatorDelegable is AccumulatorBase {
    ///////////////////////////////////////////////////////////////
    /// --- CONSTANTS
    ///////////////////////////////////////////////////////////////

    address public immutable token;
    address public immutable veToken;

    ///////////////////////////////////////////////////////////////
    /// --- STATE
    ///////////////////////////////////////////////////////////////
    address public veBoost;
    address public veBoostDelegation;

    mapping(address => bool) public isDelegationCapSetter;
    mapping(uint256 => uint256) public delegationCapBpsForEpoch;

    ///////////////////////////////////////////////////////////////
    /// --- EVENTS
    ///////////////////////////////////////////////////////////////

    /// @notice Emitted when the delegationCapBps is set for an epoch
    event DelegationCapSetForEpoch(uint256 epoch, uint256 newDelegationCap);

    /// @notice Emitted when the delegationCapSetter is set
    event DelegationCapSetterSet(address delegationCapSetter, bool allowed);

    /// @notice Emitted when the veBoost is set
    event VeBoostSet(address oldVeBoost, address newVeBoost);

    /// @notice Emitted when the veBoostDelegation is set
    event VeBoostDelegationSet(address oldVeBoostDelegation, address newVeBoostDelegation);

    /// @notice Emitted when the rewards are shared with the delegation contract
    event RewardsSharedWithDelegation(address token, address to, uint256 amount);

    /// @notice Throws if epoch cap is not set
    error EpochCapNotSet();

    /// @notice Throws if caller is not the delegationCapSetter or the governance
    error NotDelegationCapSetterOrGovernance();

    modifier onlyDelegationCapSetterOrGovernance() {
        if (!isDelegationCapSetter[msg.sender] && msg.sender != governance) revert NotDelegationCapSetterOrGovernance();
        _;
    }

    /// @notice Constructor for the AccumulatorDelegable contract.
    /// @param _gauge The address of the gauge.
    /// @param _rewardToken The address of the reward token.
    /// @param _locker The address of the locker.
    /// @param _governance The address of the governance.
    /// @param _token The address of the reward token managed by the contract.
    /// @param _veToken The address of the veToken (e.g., veCRV) used to calculate the boost.
    /// @param _veBoost The address of the veBoost contract, which manages the boost received.
    /// @param _veBoostDelegation The address of the delegation contract to which rewards are distributed.
    constructor(
        address _gauge,
        address _rewardToken,
        address _locker,
        address _governance,
        address _token,
        address _veToken,
        address _veBoost,
        address _veBoostDelegation
    ) AccumulatorBase(_gauge, _rewardToken, _locker, _governance) {
        token = _token;
        veToken = _veToken;
        veBoost = _veBoost;
        veBoostDelegation = _veBoostDelegation;
    }

    /// @notice Shares the rewards with the delegation contract
    function _shareWithDelegation() internal returns (uint256 delegationShare) {
        uint256 amount = ERC20(token).balanceOf(address(this));
        if (amount == 0) return 0;
        if (veBoost == address(0) || veBoostDelegation == address(0)) return 0;

        /// Share the rewards with the delegation contract.
        uint256 boostReceived = IVeBoost(veBoost).received_balance(locker);
        if (boostReceived == 0) return 0;

        /// Get the veToken balance of the locker.
        uint256 lockerVEToken = ERC20(veBoost).balanceOf(locker);

        /// Calculate the percentage of token delegated to the VeBoost contract.
        uint256 bpsDelegated = boostReceived * DENOMINATOR / lockerVEToken;

        uint256 epoch = currentEpoch();
        uint256 capBps = getDelegationCapBpsForEpoch(epoch);

        /// Apply the capBps.
        if (capBps != 0) {
            amount = amount * capBps / DENOMINATOR;
        }

        /// Calculate the expected delegation share.
        delegationShare = amount * bpsDelegated / DENOMINATOR;

        SafeTransferLib.safeTransfer(token, veBoostDelegation, delegationShare);

        emit RewardsSharedWithDelegation(token, veBoostDelegation, delegationShare);
    }

    ///////////////////////////////////////////////////////////////
    /// --- SETTERS
    ///////////////////////////////////////////////////////////////

    /// @notice Sets the delegationCapBps for an epoch
    /// @param epoch The epoch
    /// @param delegationCapBps The new delegationCapBps
    function setDelegationCapBpsForEpoch(uint256 delegationCapBps, uint256 epoch)
        external
        onlyDelegationCapSetterOrGovernance
    {
        emit DelegationCapSetForEpoch(epoch, delegationCapBps);
        delegationCapBpsForEpoch[epoch] = delegationCapBps;
    }

    function setDelegationCapSetter(address delegationCapSetter, bool allowed) external onlyGovernance {
        emit DelegationCapSetterSet(delegationCapSetter, allowed);
        isDelegationCapSetter[delegationCapSetter] = allowed;
    }

    /// @notice Sets the veBoost
    /// @param _veBoost The new veBoost
    function setVeBoost(address _veBoost) external onlyGovernance {
        emit VeBoostSet(veBoost, _veBoost);
        veBoost = _veBoost;
    }

    /// @notice Sets the veBoostDelegation
    /// @param _veBoostDelegation The new veBoostDelegation
    function setVeBoostDelegation(address _veBoostDelegation) external onlyGovernance {
        emit VeBoostDelegationSet(veBoostDelegation, _veBoostDelegation);
        veBoostDelegation = _veBoostDelegation;
    }

    function currentEpoch() public view returns (uint256) {
        return block.timestamp / 1 weeks * 1 weeks;
    }

    function getDelegationCapBpsForEpoch(uint256 epoch) public view returns (uint256) {
        uint256 c = delegationCapBpsForEpoch[epoch];
        require(c != 0, EpochCapNotSet());
        return c;
    }
}
