// SPDX-License-Identifier: AGPL-3.0
pragma solidity 0.8.13;

import 'lib/openzeppelin-contracts/contracts/token/ERC20/ERC20.sol';
import 'lib/openzeppelin-contracts/contracts/token/ERC20/utils/SafeERC20.sol';
import './interfaces/ILiquidStakingRewards.sol';
import '../../libraries/FixedPointMathLib.sol';

/**
 * @title LiquidStakingRewards
 * @author Atlendis Labs
 * @notice Implementation of the ILiquidStakingRewards
 */
contract LiquidStakingRewards is ILiquidStakingRewards {
    /*//////////////////////////////////////////////////////////////
                              LIBRARIES
    //////////////////////////////////////////////////////////////*/
    using SafeERC20 for ERC20;
    using FixedPointMathLib for uint256;

    /*//////////////////////////////////////////////////////////////
                               STRUCTS
    //////////////////////////////////////////////////////////////*/
    struct StakedPosition {
        uint256 initialValue;
        uint256 startEarningsPerDeposit;
    }

    /*//////////////////////////////////////////////////////////////
                               STORAGE
    //////////////////////////////////////////////////////////////*/

    address public immutable REWARDS_MANAGER;
    ERC20 public immutable TOKEN;

    uint256 public immutable DISTRIBUTION_RATE;

    uint256 public deposits;

    uint256 public pendingRewards;
    uint256 public earningsPerDeposit;
    uint256 public lastUpdateTimestamp;

    uint256 constant RAY = 1e27;

    // position ID -> staked position liquid staking
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
     * @dev constructor
     * @param rewardsManager Address of the rewards manager contract
     * @param token Address of the ERC20 token contract
     * @param distributionRate Value of the rate of rewards distribution
     */
    constructor(
        address rewardsManager,
        address token,
        uint256 distributionRate
    ) {
        if (distributionRate == 0) revert INVALID_ZERO_RATE();
        DISTRIBUTION_RATE = distributionRate;
        REWARDS_MANAGER = rewardsManager;
        TOKEN = ERC20(token);
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
        deposits += positionValue;
        stakedPositions[positionId] = StakedPosition({
            initialValue: positionValue,
            startEarningsPerDeposit: earningsPerDeposit
        });

        emit PositionStaked(positionId, owner, rate, positionValue);
    }

    /**
     * @inheritdoc IRewardsModule
     */
    function unstake(uint256 positionId, address owner) public onlyRewardsManager rewardsCollector {
        StakedPosition memory stakedPosition = stakedPositions[positionId];

        uint256 positionRewards = stakedPosition.initialValue.mul(
            earningsPerDeposit - stakedPosition.startEarningsPerDeposit,
            RAY
        );

        deposits -= stakedPosition.initialValue;
        pendingRewards -= positionRewards;

        delete stakedPositions[positionId];

        TOKEN.safeTransfer(owner, positionRewards);

        emit PositionUnstaked(positionId, owner, positionRewards);
    }

    /**
     * @inheritdoc IRewardsModule
     */
    function claimRewards(uint256 positionId, address owner) public onlyRewardsManager rewardsCollector {
        StakedPosition storage stakedPosition = stakedPositions[positionId];

        uint256 positionRewards = stakedPosition.initialValue.mul(
            earningsPerDeposit - stakedPosition.startEarningsPerDeposit,
            RAY
        );

        pendingRewards -= positionRewards;
        stakedPosition.startEarningsPerDeposit = earningsPerDeposit;

        TOKEN.safeTransfer(owner, positionRewards);

        emit RewardsClaimed(positionId, owner, positionRewards);
    }

    /*//////////////////////////////////////////////////////////////
                           PRIVATE METHODS
    //////////////////////////////////////////////////////////////*/

    /**
     * @dev Collect the rewards since last update and distribute them to staked positions
     */
    function collectRewards() private {
        if (deposits == 0) {
            lastUpdateTimestamp = block.timestamp;
            return;
        }
        uint256 maximumRewardsSinceLastUpdate = DISTRIBUTION_RATE * (block.timestamp - lastUpdateTimestamp);

        uint256 contractBalance = TOKEN.balanceOf(address(this));
        uint256 rewardsSinceLastUpdate = pendingRewards + maximumRewardsSinceLastUpdate <= contractBalance
            ? maximumRewardsSinceLastUpdate
            : contractBalance - pendingRewards;

        earningsPerDeposit += rewardsSinceLastUpdate.div(deposits, RAY);
        pendingRewards += rewardsSinceLastUpdate;
        lastUpdateTimestamp = block.timestamp;

        emit RewardsCollected(pendingRewards, earningsPerDeposit);
    }
}
