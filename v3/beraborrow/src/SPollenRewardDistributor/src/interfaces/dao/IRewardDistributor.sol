// SPDX-License-Identifier: MIT

pragma solidity 0.8.26;

import {IMultiAdapter} from "src/interfaces/dao/IMultiAdapter.sol";
import {IMetaBeraborrowCore} from "src/interfaces/core/IMetaBeraborrowCore.sol";
import {IPriceFeed} from "src/interfaces/core/IPriceFeed.sol";
import {IPollenSwapper} from "src/interfaces/dao/IPollenSwapper.sol";
import {IFeeDistributor} from "src/interfaces/dao/ve/IFeeDistributor.sol";
import {IPollenStaking} from "lib/rewards/interfaces/IPollenStaking.sol";
import {ISpotOracle} from "src/interfaces/core/spotOracles/ISpotOracle.sol";

interface IRewardDistributor {
    /// @notice Struct to hold the parameters for the RewardDistributor constructor.
    struct RewardDistributorInitParams {
        address _metaBeraborrowCore;
        address _swapper;
        address _priceFeed;
        address _pollenPriceFeed;
        address _staking;
        address _veFeeDistributor;
        address _multiAdapter;
        address _treasury;
        address _keeper;
        address _pollen;
        address _inputToken;
    }

    /// @notice Struct to hold the RewardDistributor base storage.
    struct RewardDistributorStorage {
        IMetaBeraborrowCore metaBeraborrowCore;
        IPollenSwapper swapper;
        IPriceFeed priceFeed;
        ISpotOracle pollenPriceFeed;
        IPollenStaking staking;
        IFeeDistributor veFeeDistributor;
        IMultiAdapter multiAdapter;
        uint256 slippageMult;
        uint256 ratio;
        uint256 totalWeeklyVeSplit;
        uint256 rewardFeeCut;
        uint256 lastKeeperTimestamp;
        address pollen;
        address inputToken;
        address treasury;
        address keeper;
        bool slippageCheckEnabled;
    }


    /// @notice Struct to hold Enso swap parameters
    struct SwapParams {
        bytes dexCalldata;
        address inputToken;
        address outputToken;
        address swapRouter;
    }

    /// @notice Event emitted on POLLEN reward.
    event Reward(
        uint256 amountIn,
        uint256 amountOut,
        uint256 slippageThreshold
    );

    /// @notice Error emitted when the caller is not the keeper.
    error OnlyKeeper(address caller);
    /// @notice Error emitted when the caller is not the owner.
    error OnlyOwner(address caller);
    /// @notice Error emitted when an address is zero.
    error ZeroAddress();
    /// @notice Error emitted when the slippage exceeds the threshold.
    error SlippageExceeded(
        uint256 amountOutValue,
        uint256 amountInValue,
        uint256 slippageThreshold
    );
    /// @notice Error emitted when the variable to change exceeds 100% in basis points.
    error OverBP();
    /// @notice Error emitted when the keeper cooldown is not met.
    error KeeperCooldownNotMet(uint256 timestamp);
    /// @notice Error emitted when the input token is zero.
    error InputTokenZeroAddress();

    function DISTRIBUTION_DATE() external view returns (uint256);
    function BP() external view returns (uint256);
    
    function harvestRewards(SwapParams calldata params) external;
    function setTreasury(address _treasury) external;
    function setSwapper(address _swapper) external;
    function setSlippageMult(uint256 _slippageMult) external;
    function setRewardFeeCut(uint256 _rewardFeeCut) external;
    function setKeeper(address _keeper) external;
    function setRatio(uint256 _ratio) external;
    function setInputToken(address _inputToken) external;

    function getTreasury() external view returns (address);
    function getMultiAdapter() external view returns (address);
    function getMetaBeraborrowCore() external view returns (address);
    function getSwapper() external view returns (address);
    function getPriceFeed() external view returns (address);
    function getStaking() external view returns (address);
    function getKeeper() external view returns (address);
    function getPollen() external view returns (address);
    function getInputToken() external view returns (address);
    function getVeFeeDistributor() external view returns (address);
    function getSlippageMult() external view returns (uint256);
    function getRatio() external view returns (uint256);
    function getTotalWeeklyVeSplit() external view returns (uint256);
    function getRewardFeeCut() external view returns (uint256);
    function getLastKeeperTimestamp() external view returns (uint256);
}
