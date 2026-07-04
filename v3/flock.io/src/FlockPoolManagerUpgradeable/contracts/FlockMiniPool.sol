// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/math/SafeMath.sol";
import "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import "./interfaces/IFlockMainManager.sol";
import "./interfaces/IFlockPoolManager.sol";
import "./config/FlockConfig.sol";
import "./config/ConfigHelper.sol";

/**
 * @title FlockMiniPool
 * @notice A mini pool for delegation
 * @author Ryon
 */
contract FlockMiniPool is Ownable {
    ///////////////////////////////////////////////////////////////////////
    ////////////////////////////// LIBRARIES //////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    using ConfigHelper for FlockConfig;
    using EnumerableSet for EnumerableSet.AddressSet;
    using SafeMath for uint256;

    ///////////////////////////////////////////////////////////////////////
    //////////////////////////////// STRUCTS //////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    /**
     * @dev Struct to store the delegation information for a delegator
     */
    struct DelegationInfo {
        uint256 amount;
        uint256 since;
    }

    ///////////////////////////////////////////////////////////////////////
    ////////////////////////////// VARIABLES //////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    uint256 public totalDelegationAmount;
    uint256 public totalPastTemporalDelegation;
    address public user;
    mapping(address => uint256) public pastTemporalDelegationMap;
    mapping(address => DelegationInfo) public delegationMap;
    mapping(address => uint256) public lastStakeTimestamp;
    mapping(address => uint256) public claimedRewards;

    EnumerableSet.AddressSet internal delegators;
    DelegationInfo public activeTotalDelegationInfo;
    FlockConfig public config;

    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////// EVENTS //////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    event Delegate(address indexed _delegator, address indexed _user, uint256 _amount);
    event Undelegate(address indexed _delegator, address indexed _user, uint256 _amount);
    event Claim(address indexed _delegator, uint256 _amount);
    event CollectFee(address indexed _delegator, uint256 _amount);
    event Fund(uint256 _amount);

    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////// CONSTRUCTOR /////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    constructor(address _user, address _flockConfig) {
        config = FlockConfig(_flockConfig);
        user = _user;
    }

    ///////////////////////////////////////////////////////////////////////
    ////////////////////////////// USER CALLS /////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    /**
     * @notice Delegate tokens
     * @param _amount The amount of tokens to delegate
     */
    function delegate(uint256 _amount) external {
        address delegator = msg.sender;
        require(_amount > 0, "Amount must be greater than zero");
        require(config.getFlockToken().transferFrom(delegator, address(this), _amount), "Transfer failed");
        addPastTemporalDelegation(delegator, delegationMap[delegator]);
        delegationMap[delegator] = DelegationInfo(delegationMap[delegator].amount.add(_amount), block.timestamp);
        delegators.add(delegator);
        updateTotalDelegationInfoAndPastTemporalDelegation(_amount, 0, 0, 0);
        totalDelegationAmount += _amount;
        lastStakeTimestamp[delegator] = block.timestamp;
        config.getMainManager().afterDelegationUpdate(user);
        config.getPoolManager().addDelegatorToPool(delegator);
        emit Delegate(delegator, user, _amount);
    }

    /**
     * @notice Undelegate tokens
     * @param _amount The amount of tokens to undelegate
     */
    function undelegate(uint256 _amount) external {
        address delegator = msg.sender;
        require(lastStakeTimestamp[delegator] + 1 days < block.timestamp, "You can't undelegate before 1 day");
        require(delegationOf(delegator).amount >= _amount, "User has insufficient token delegated");
        require(config.getFlockToken().transfer(delegator, _amount), "transfer failed");
        addPastTemporalDelegation(delegator, delegationMap[delegator]);
        delegationMap[delegator] = DelegationInfo(delegationMap[delegator].amount.sub(_amount), block.timestamp);
        updateTotalDelegationInfoAndPastTemporalDelegation(0, _amount, 0, 0);
        totalDelegationAmount -= _amount;
        if (delegationOf(delegator).amount == 0) {
            delegators.remove(delegator);
        }
        config.getMainManager().afterDelegationUpdate(user);
        emit Undelegate(delegator, user, _amount);
    }

    /**
     * @notice Claim rewards
     */
    function claimRewards() external {
        address delegator = msg.sender;
        uint256 rewards = claimable(delegator);
        require(rewards > 0, "No rewards to claim");
        uint256 fee = rewards.mul(config.getPoolManager().getProtocolFeePercentage()).div(config.getPoolManager().getPercentageBase());
        require(config.getFlockToken().transfer(delegator, rewards - fee), "transfer failed");
        require(config.getFlockToken().transfer(config.flockTokenAddress(), fee), "transfer failed");
        claimedRewards[delegator] += rewards - fee;
        resetDelegationTimestampWithTemporalDelegation(delegator, 0);
        emit Claim(delegator, rewards - fee);
        emit CollectFee(delegator, fee);
    }

    ///////////////////////////////////////////////////////////////////////
    ///////////////////// PERMISSIONLESS CALLS ////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    /**
     * @notice Fund the pool
     * @param _reward The reward amount
     */
    function fundPool(uint256 _reward) external {
        require(config.getFlockToken().transferFrom(msg.sender, address(this), _reward), "Transfer failed");
        emit Fund(_reward);
    }

    ///////////////////////////////////////////////////////////////////////
    ////////////////////////////// ACCESSORS //////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    /**
     * @notice Get the delegation info for a delegator
     * @param _delegator The delegator address
     */
    function delegationOf(address _delegator) public view returns (DelegationInfo memory) {
        return delegationMap[_delegator];
    }

    /**
     * @notice Get the total delegation amount
     */
    function getTotalDelegationAmount() external view returns (uint256) {
        return totalDelegationAmount;
    }

    /**
     * @notice Get the total claimable rewards for a delegator
     * @param _delegator The delegator address
     */
    function claimable(address _delegator) public view returns (uint256) {
        uint256 rewards = config.getFlockToken().balanceOf(address(this)).sub(totalDelegationAmount);
        uint256 receiverTemporalDelegationAmount = receiverTemporalDelegation(_delegator);
        uint256 totalTemporalDelegationAmount = totalTemporalDelegation();
        if (totalTemporalDelegationAmount == 0) {
            return 0;
        }
        return receiverTemporalDelegationAmount.mul(rewards).div(totalTemporalDelegationAmount);
    }

    /* @notice Total receiver temporal stakes
     * @param _delegator the address of receiver
     */
    function receiverTemporalDelegation(address _delegator) public view returns (uint256) {
        DelegationInfo memory delegationValue = delegationOf(_delegator);
        return pastTemporalDelegationMap[_delegator].add(calculateTemporalDelegation(delegationValue));
    }

    /**
     * @notice Get the total past temporal delegation
     */
    function totalTemporalDelegation() public view returns (uint256) {
        return calculateTemporalDelegation(activeTotalDelegationInfo).add(totalPastTemporalDelegation);
    }

    /**
     * @notice Get the delegators
     */
    function getDelegators() external view returns (address[] memory) {
        return delegators.values();
    }

    /**
     * @notice Get the total past temporal delegation
     */
    function interestPerYear() external view returns (uint256) {
        uint256 rewards = config.getFlockToken().balanceOf(address(this)).sub(totalDelegationAmount);
        uint256 totalTemporalDelegationAmount = totalTemporalDelegation();
        if (totalTemporalDelegationAmount == 0) {
            return 0;
        }
        uint256 percentageBase = config.getPoolManager().getPercentageBase();
        return rewards.mul(percentageBase).mul(365 days).div(totalTemporalDelegationAmount);
    }

    /**
     * @notice Get the total reward for a delegator
     * @param _delegator The delegator address
     */
    function totalRewardForDelegator(address _delegator) external view returns (uint256) {
        return claimable(_delegator) + claimedRewards[_delegator];
    }

    ///////////////////////////////////////////////////////////////////////
    ////////////////////////////// INTERNAL ///////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    /**
     * @notice Add past temporal stake for a delegator
     * @param _delegator The delegator address
     * @param _delegationInfo The delegation info
     */
    function addPastTemporalDelegation(address _delegator, DelegationInfo memory _delegationInfo) internal {
        uint256 additionalPastTemporalDelegation = calculateTemporalDelegation(_delegationInfo);
        pastTemporalDelegationMap[_delegator] = pastTemporalDelegationMap[_delegator].add(additionalPastTemporalDelegation);
    }

    /**
     * @notice Calculate the temporal stake for a delegator
     * @param _delegationInfo The delegation info
     */
    function calculateTemporalDelegation(DelegationInfo memory _delegationInfo) internal view returns (uint256) {
        return _delegationInfo.amount.mul(block.timestamp.sub(_delegationInfo.since));
    }

    /**
     * @notice Update the total delegation info and past temporal delegation
     * @param _increaseInDelegation The increase in delegation
     * @param _decreaseInDelegation The decrease in delegation
     * @param _increaseInPastTemporalDelegation The increase in past temporal delegation
     * @param _decreaseInPastTemporalDelegation The decrease in past temporal delegation
     */
    function updateTotalDelegationInfoAndPastTemporalDelegation(uint256 _increaseInDelegation, uint256 _decreaseInDelegation, uint256 _increaseInPastTemporalDelegation, uint256 _decreaseInPastTemporalDelegation) internal {
        uint256 additionalPastTemporalStake = calculateTemporalDelegation(activeTotalDelegationInfo);
        totalPastTemporalDelegation = totalPastTemporalDelegation.add(additionalPastTemporalStake);
        totalPastTemporalDelegation = totalPastTemporalDelegation.add(_increaseInPastTemporalDelegation).sub(_decreaseInPastTemporalDelegation);
        activeTotalDelegationInfo = DelegationInfo(activeTotalDelegationInfo.amount.add(_increaseInDelegation).sub(_decreaseInDelegation), block.timestamp);
    }

    /**
     * @notice Reset the delegation timestamp with temporal delegation
     * @param _delegator The delegator address
     * @param _temporalDelegation The temporal delegation
     */
    function resetDelegationTimestampWithTemporalDelegation(address _delegator, uint256 _temporalDelegation) internal {
        resetDelegationTimestamp(_delegator);
        adjustTotalDelegationWithTemporalDelegation(_delegator, _temporalDelegation);
        pastTemporalDelegationMap[_delegator] = _temporalDelegation;
    }

    /**
     * @notice Reset the delegation timestamp
     * @param _delegator The delegator address
     */
    function resetDelegationTimestamp(address _delegator) internal {
        addPastTemporalDelegation(_delegator, delegationMap[_delegator]);
        delegationMap[_delegator] = DelegationInfo(delegationMap[_delegator].amount, block.timestamp);
    }

    /**
     * @notice Adjust the total delegation with temporal delegation
     * @param _delegator The delegator address
     * @param _temporalDelegation The temporal delegation
     */
    function adjustTotalDelegationWithTemporalDelegation(address _delegator, uint256 _temporalDelegation) internal {
        uint256 increaseInPastTemporalDelegation = 0;
        uint256 decreaseInPastTemporalDelegation = 0;
        if (pastTemporalDelegationMap[_delegator] >= _temporalDelegation) {
            decreaseInPastTemporalDelegation = pastTemporalDelegationMap[_delegator].sub(_temporalDelegation);
        } else {
            increaseInPastTemporalDelegation = _temporalDelegation.sub(pastTemporalDelegationMap[_delegator]);
        }
        updateTotalDelegationInfoAndPastTemporalDelegation(0, 0, increaseInPastTemporalDelegation, decreaseInPastTemporalDelegation);
    }
}
