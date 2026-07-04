// SPDX-License-Identifier: BUSL-1.1
pragma solidity =0.8.9;

import {IERC20Upgradeable} from "@openzeppelin/contracts-upgradeable/token/ERC20/utils/SafeERC20Upgradeable.sol";
import {IStakingCore} from "../Interfaces/IStakingCore.sol";
import {IWAVAX} from "../Interfaces/IWAVAX.sol";


interface IStakingV3 is IStakingCore{

    /* ========== DATA STRUCTURES ========== */

    struct RewardTokenCategory {
        address token;
        uint8 category;
    }

    struct RewardTokenStorage {
        uint256 index;
        mapping(uint256 => RewardTokenData) data;
    }

    struct CustomRewardTokenStorage {
        uint256 index;
        mapping(uint256 => CustomRewardTokenData) data;
    }

    struct CustomRewardReceiver {
        address receiver;
        uint256 amount;
    }

    struct RewardTokenData {
        uint256 periodFinish;
        uint256 rewardRate; // Total tokens per second distribution rate (tokenPerSec * 1e18 mantissa)
        uint256 rewardsDuration;
        uint256 lastUpdateTime;
        uint256 rewardPerTokenStored;
        uint256 totalAmount;
        mapping(address => uint256) accountRewardPerTokenPaid;
        mapping(address => uint256) rewards;
    }

    struct CustomRewardTokenData {
        bool registered;
        uint256 totalAmount;
        mapping(address => uint256) rewards;
    }

    struct DynamicFeeData {
       uint256 startRate;
       uint256 startTimestamp;
       uint256 duration;
    }

    /* ========== STATE VARIABLES ========== */

    function stakeToken() external view returns(IERC20Upgradeable);

    function wavax() external view returns(IWAVAX);

    function stakeBalance(address account) external view returns(uint256);

    function totalStake() external view returns(uint256);

    function stakeFeeMantissa() external view returns(uint256);

    function unstakeFeeMantissa() external view returns(uint256);

    function dynamicStakeFee() external view returns(uint256, uint256, uint256);

    function dynamicUnstakeFee() external view returns(uint256, uint256, uint256);

    function feesRedistributionPeriod() external view returns(uint256);


    //  ┌───────────────────────────────────────┐
    //  │   ____  _        _    _               │
    //  │  / ___|| |_ __ _| | _(_)_ __   __ _   │
    //  │  \___ \| __/ _` | |/ / | '_ \ / _` |  │
    //  │   ___) | || (_| |   <| | | | | (_| |  │
    //  │  |____/ \__\__,_|_|\_\_|_| |_|\__, |  │
    //  │                               |___/   │
    //  └───────────────────────────────────────┘

    /* ========== USER ========== */

    function stake(uint256 amount) external;

    function stakeFor(address receiver, uint256 amount, bool collectFee) external;

    function unstake(uint256 amount) external;

    function unstakeAll() external;

    function exit() external;

    /* ========== PRIVILEGED ========== */

    function unstakeFrom(address staker, address receiver, uint256 amount, bool collectFee) external;

    /* ========== VIEW ========== */

    function isStaking(address account) external view returns (bool);

    // ┌───────────────────────────────────────────┐
    // │   ____                            _       │
    // │  |  _ \ _____      ____ _ _ __ __| |___   │
    // │  | |_) / _ \ \ /\ / / _` | '__/ _` / __|  │
    // │  |  _ <  __/\ V  V / (_| | | | (_| \__ \  │
    // │  |_| \_\___| \_/\_/ \__,_|_|  \__,_|___/  │
    // │                                           │
    // └───────────────────────────────────────────┘

    /* ========== ADMIN ========== */

    function addReward(address token, uint8 category, uint256 amount, uint256 duration) external;

    function removeReward(address receiver, address token, uint8 category) external;

    function addCustomReward(address token, uint8 category, CustomRewardReceiver[] calldata receivers) external;

    function removeCustomReward(address receiver, address token, uint8 category) external;

    /* ========== USER ========== */

    function claimReward(address token, uint8 category) external returns(uint256);

    function claimRewardFor(address token, uint8 category, address claimer) external returns(uint256);

    function claimAllRewards() external;

    function claimAllRewardsFor(address claimer) external;

    function compoundStakeToken(uint8 category) external returns(bool);

    /* ========== VIEW ========== */

    function claimableReward(address token, uint8 category, address account) external view returns (uint256);

    function getRewardTokensListIndex(uint256 index) external view returns (RewardTokenCategory memory);

    function getCustomRewardTokensListIndex(uint256 index) external view returns (RewardTokenCategory memory);

    function rewardTokensListLenght() external view returns (uint256);

    function customRewardTokensListLenght() external view returns (uint256);


    // ┌────────────────────────┐
    // │   _____                │
    // │  |  ___|__  ___  ___   │
    // │  | |_ / _ \/ _ \/ __|  │
    // │  |  _|  __/  __/\__ \  │
    // │  |_|  \___|\___||___/  │
    // │                        │
    // └────────────────────────┘

    /* ========== ADMIN ========== */

    function setStakeFee(uint256 fee) external;

    function setUnstakeFee(uint256 fee) external;

    function setDynamicStakeFee(uint256 startRate, uint256 duration) external;

    function setDynamicUnstakeFee(uint256 startRate, uint256 duration) external;

    function setFeesRedistributionPeriod(uint256 newPeriod) external;

    /* ========== VIEW ========== */

    function calculateStakeFee(uint256 amount) external view returns(uint256);

    function calculateUnstakeFee(uint256 amount) external view returns(uint256);

    function stakeFeeRate() external view returns(uint256);

    function unstakeFeeRate() external view returns(uint256);


    // ┌────────────────────────────────────────────────────┐
    // │   __  __ _                 _   _                   │
    // │  |  \/  (_) __ _ _ __ __ _| |_(_) ___  _ __  ___   │
    // │  | |\/| | |/ _` | '__/ _` | __| |/ _ \| '_ \/ __|  │
    // │  | |  | | | (_| | | | (_| | |_| | (_) | | | \__ \  │
    // │  |_|  |_|_|\__, |_|  \__,_|\__|_|\___/|_| |_|___/  │
    // │            |___/                                   │
    // └────────────────────────────────────────────────────┘

    /* ========== ADMIN ========== */

    function migrate(address staker, address newStaking) external;

    function receiveMigration(address receiver, uint256 amount) external;


    // ┌───────────────────────┐
    // │   __  __ _            │
    // │  |  \/  (_)___  ___   │
    // │  | |\/| | / __|/ __|  │
    // │  | |  | | \__ \ (__   │
    // │  |_|  |_|_|___/\___|  │
    // │                       │
    // └───────────────────────┘

    function setWavax(address wavax_) external;

    function pauseStaking() external;

    function unpauseStaking() external;

}
