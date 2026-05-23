// SPDX-License-Identifier: AGPL-3.0
pragma solidity 0.8.13;

import '../../interfaces/ICustodian.sol';
import '../../libraries/FixedPointMathLib.sol';
import './interfaces/ICustodianRewards.sol';

/**
 * @title CustodianRewards
 * @author Atlendis Labs
 * @notice Implementation of the ICustodianRewards
 */
contract CustodianRewards is ICustodianRewards {
    /*//////////////////////////////////////////////////////////////
                               STRUCTS
    //////////////////////////////////////////////////////////////*/
    struct StakedPosition {
        uint256 initialValue;
        uint256 adjustedAmount;
    }

    /*//////////////////////////////////////////////////////////////
                              LIBRARIES
    //////////////////////////////////////////////////////////////*/

    using FixedPointMathLib for uint256;

    /*//////////////////////////////////////////////////////////////
                               STORAGE
    //////////////////////////////////////////////////////////////*/

    address public immutable REWARDS_MANAGER;
    ICustodian public immutable CUSTODIAN;

    uint256 public rewards;
    uint256 public liquidityRatio;
    uint256 public unallocatedRewards;
    uint256 public totalStakedAdjustedAmount;

    uint256 constant RAY = 1e27;

    // position ID -> staked position custodian
    mapping(uint256 => StakedPosition) public stakedPositions;

    /*//////////////////////////////////////////////////////////////
                              MODIFIERS
    //////////////////////////////////////////////////////////////*/

    /**
     * @dev Restrict sender to Rewards Manager contract
     */
    modifier onlyRewardsManager() {
        if (msg.sender != REWARDS_MANAGER) revert UNAUTHORIZED(msg.sender, REWARDS_MANAGER);
        _;
    }

    /**
     * @dev Trigger the collection of rewards
     */
    modifier rewardsCollector() {
        collectRewards();
        _;
    }

    /*//////////////////////////////////////////////////////////////
                             CONSTRUCTOR
    //////////////////////////////////////////////////////////////*/

    /**
     * @dev Constructor
     * @param rewardsManager Address of the rewards manager contract
     * @param custodian Address of the custodian contract
     */
    constructor(address rewardsManager, address custodian) {
        REWARDS_MANAGER = rewardsManager;
        CUSTODIAN = ICustodian(custodian);
        liquidityRatio = RAY;
    }

    /*//////////////////////////////////////////////////////////////
                           PUBLIC METHODS
    //////////////////////////////////////////////////////////////*/

    /**
     * @inheritdoc IRewardsModule
     */
    function stake(
        uint256 positionId,
        address owner,
        uint256 rate,
        uint256 positionValue
    ) public onlyRewardsManager rewardsCollector {
        uint256 adjustedAmount = positionValue.div(liquidityRatio, RAY);
        totalStakedAdjustedAmount += adjustedAmount;
        stakedPositions[positionId] = StakedPosition({initialValue: positionValue, adjustedAmount: adjustedAmount});
        emit PositionStaked(positionId, owner, rate, positionValue, adjustedAmount);
    }

    /**
     * @inheritdoc IRewardsModule
     */
    function unstake(uint256 positionId, address owner) public onlyRewardsManager rewardsCollector {
        StakedPosition memory stakedPosition = stakedPositions[positionId];

        uint256 positionRewards = stakedPosition.adjustedAmount.mul(liquidityRatio, RAY) - stakedPosition.initialValue;

        totalStakedAdjustedAmount -= stakedPosition.adjustedAmount;
        delete stakedPositions[positionId];

        CUSTODIAN.withdrawRewards(positionRewards, owner);

        emit PositionUnstaked(positionId, owner, positionRewards);
    }

    /**
     * @inheritdoc IRewardsModule
     */
    function claimRewards(uint256 positionId, address owner) public onlyRewardsManager rewardsCollector {
        StakedPosition storage stakedPosition = stakedPositions[positionId];

        uint256 positionRewards = stakedPosition.adjustedAmount.mul(liquidityRatio, RAY) - stakedPosition.initialValue;
        uint256 adjustedAmountDecrease = stakedPosition.adjustedAmount -
            stakedPosition.initialValue.div(liquidityRatio, RAY);
        totalStakedAdjustedAmount -= adjustedAmountDecrease;
        stakedPosition.adjustedAmount -= adjustedAmountDecrease;

        CUSTODIAN.withdrawRewards(positionRewards, owner);

        emit RewardsClaimed(positionId, owner, positionRewards, adjustedAmountDecrease);
    }

    /*//////////////////////////////////////////////////////////////
                           PRIVATE METHODS
    //////////////////////////////////////////////////////////////*/

    /**
     * @dev Collect the rewards since last update and distribute them to staked positions
     */
    function collectRewards() private {
        CUSTODIAN.collectRewards();
        uint256 currentRewards = CUSTODIAN.getRewards();
        uint256 rewardsSinceLastUpdate = currentRewards - rewards;

        if (totalStakedAdjustedAmount > 0) {
            liquidityRatio += rewardsSinceLastUpdate.div(totalStakedAdjustedAmount, RAY);
        } else {
            unallocatedRewards += rewardsSinceLastUpdate;
        }
        rewards = currentRewards;

        emit RewardsCollected(rewards, liquidityRatio, unallocatedRewards);
    }
}
