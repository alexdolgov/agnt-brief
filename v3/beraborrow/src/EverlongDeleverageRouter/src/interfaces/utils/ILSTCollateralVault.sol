// SPDX-License-Identifier: MIT

pragma solidity 0.8.26;

import {IERC20} from "@openzeppelin/contracts/interfaces/IERC20.sol";
import {EnumerableSet} from "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import {IBaseCollateralVault} from "src/interfaces/utils/IBaseCollateralVault.sol";
import {EmissionsLib} from "src/libraries/EmissionsLib.sol";

interface ILSTCollateralVault is IBaseCollateralVault {
    struct LSTCollVaultStorage {
        uint16 minPerformanceFee;
        uint16 maxPerformanceFee;
        uint16 performanceFee; // over yield, in basis points
        /// @dev We currently don't know the lstVault implementation, but if it were to be possible for them to remove tokens from the rewardTokens
        /// There would be no need to remove it from here since the amounts should continue being accounted for in the virtual balance
        EnumerableSet.AddressSet rewardedTokens;

        address _lstVault;
        address mainRewardTokenVault;
        address mainRewardToken;
        address lstWrapper;
        uint96 lastUpdate;

        mapping(address tokenIn => uint) threshold;
    }

    struct LSTInitParams {
        BaseInitParams _baseParams;
        uint16 _minPerformanceFee;
        uint16 _maxPerformanceFee;
        uint16 _performanceFee; // over yield, in basis points
        address _lstVault;
        address _mainRewardTokenVault;
        address _lstWrapper;
    }

    struct RebalanceParams {
        address sentCurrency; 
        uint sentAmount; 
        address swapper;
        bytes payload;
    }

    function rebalance(RebalanceParams calldata p) external;

    function pullRewards() external;

    function setUnlockRatePerSecond(address token, uint64 _unlockRatePerSecond) external;

    function internalizeDonations(address[] memory tokens, uint128[] memory amounts) external;

    function setPairThreshold(address tokenIn, uint thresholdInBP) external;

    function setPerformanceFee(uint16 _performanceFee) external;
    function setWithdrawFee(uint16 _withdrawFee) external;

    function getBalance(address token) external view returns (uint);

    function getBalanceOfWithFutureEmissions(address token) external view returns (uint);

    function getFullProfitUnlockTimestamp(address token) external view returns (uint);

    function unlockRatePerSecond(address token) external view returns (uint);

    function getLockedEmissions(address token) external view returns (uint);

    function getPerformanceFee() external view returns (uint16);


    function rewardedTokens() external view returns (address[] memory);

    function lstVault() external view returns (address);

    function mainRewardToken() external view returns (address);

    function mainRewardTokenVault() external view returns (address);
}