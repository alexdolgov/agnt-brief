// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { StakelessGauge } from "./StakelessGauge.sol";
import { IMinter } from "./interfaces/IMinter.sol";
import { IVotingEscrow } from "./interfaces/IVotingEscrow.sol";
import { IMerklGaugeConfig } from "./interfaces/IMerklGaugeConfig.sol";
import { DistributionParameters } from "./interfaces/merkl/DistributionParameters.sol";
import { IDistributionCreator } from "./interfaces/merkl/IDistributionCreator.sol";

contract MerklGauge is StakelessGauge {
    using SafeERC20 for IERC20;
    /* --------------------------------------------------------------
     * Storage 
    -------------------------------------------------------------- */

    uint256 public constant PERIOD = 7 days;

    address public immutable veToken;
    address public immutable token;
    address public immutable merklGaugeConfig;

    address public pool;
    address public merklDistributionCreator;

    /* --------------------------------------------------------------
     * Constructor
    -------------------------------------------------------------- */

    constructor(
        IMinter minter,
        address _veToken,
        address _merklGaugeConfig
    ) StakelessGauge(minter) {
        veToken = _veToken;
        token = IVotingEscrow(_veToken).token();
        merklGaugeConfig = _merklGaugeConfig;
    }

    function initialize(
        uint256 _relativeWeightCap,
        address _merklDistributionCreator,
        address _pool
    ) external {
        merklDistributionCreator = _merklDistributionCreator;
        pool = _pool;
        __StakelessGauge_init(_relativeWeightCap);
        IDistributionCreator(_merklDistributionCreator).acceptConditions();
    }

    /* --------------------------------------------------------------
     * Utils 
    -------------------------------------------------------------- */

    function _createMerklCampaign(uint256 _amount, address rewardToken) internal {
        IMerklGaugeConfig.MerklConfig memory config = IMerklGaugeConfig(merklGaugeConfig).getConfig(address(this));

        DistributionParameters memory params = DistributionParameters({
            rewardId: bytes32(""),
            uniV3Pool: pool,
            rewardToken: rewardToken,
            amount: _amount,
            positionWrappers: IMerklGaugeConfig(merklGaugeConfig).getPositionWrappers(),
            wrapperTypes: IMerklGaugeConfig(merklGaugeConfig).getWrapperTypes(),
            propToken0: config.propToken0,
            propToken1: config.propToken1,
            propFees: config.propFees,
            epochStart: uint32(block.timestamp),
            numEpoch: uint32(168), // 1 week (7*24)
            isOutOfRangeIncentivized: config.isOutOfRangeIncentivized,
            boostedReward: 25000, // 2.5x boost
            boostingAddress: veToken,
            additionalData: bytes("")
        });

        IERC20(rewardToken).safeIncreaseAllowance(merklDistributionCreator, _amount);
        IDistributionCreator(merklDistributionCreator).createDistribution(params);
    }

    function _postMintAction(uint256 _mintAmount) internal override {
        _createMerklCampaign(_mintAmount, token);
    }

    function createMerklCampaign(uint256 _amount, address rewardToken) external nonReentrant {
        require(msg.sender == _gaugeController.admin(), "!admin");
        _createMerklCampaign(_amount, rewardToken);
    }
}
