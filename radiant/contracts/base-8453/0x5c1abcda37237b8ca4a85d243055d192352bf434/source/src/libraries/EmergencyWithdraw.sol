// SPDX-License-Identifier: MIT
pragma solidity 0.8.12;

import { DataTypes } from "@radiant-v2-core/lending/libraries/types/DataTypes.sol";
import { SafeERC20, IERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { Errors } from "../libraries/Errors.sol";
import { BadDebtManager } from "../BadDebtManager.sol";
import { RizAToken } from "../tokenization/RizAToken.sol";

/// @title EmergencyWithdraw library
/// @author Radiant
/// @custom:security-contact security@radiant.capital
library EmergencyWithdraw {
    using SafeERC20 for IERC20;

    struct Params {
        uint256 totalUserDepositsUSD;
        uint256 totalUserDebtsUSD;
        address[] reservesList;
        address badDebtManagerAddress;
    }

    uint256 public constant DEFAULT_DENOMINATOR = 1e18;
    uint256 public constant BIPS_HIGH_PRECISION_DIVISOR = 1_000_000_000;

    event EmergencyWithdrawal(address indexed user, uint256 usdAmountWithdrawn);

    /// @dev Emergency withdrawal
    function emergencyWithdraw(
        address user,
        address to,
        Params memory params,
        mapping(address => DataTypes.ReserveData) storage reserves
    ) external {
        BadDebtManager badDebtManager = BadDebtManager(params.badDebtManagerAddress);
        // Check if user has already withdrawn
        if (badDebtManager.hasUserWithdrawn(user)) {
            revert Errors.UserAlreadyWithdrawn();
        }

        // Set emergency withdrawal status for user here at the top to prevent reentrancy
        badDebtManager.setEmergencyWithdrawal(user);

        uint256 reservesListLength = params.reservesList.length;
        uint256[] memory _cacheReserveRatios = new uint256[](reservesListLength);
        uint256[] memory _cacheReservePrices = new uint256[](reservesListLength);

        (params.totalUserDepositsUSD, params.totalUserDebtsUSD) = _calculateUserDepositsAndDebts(
            user, params, reserves, _cacheReservePrices, _cacheReserveRatios, badDebtManager
        );

        // If user allowance is 0 or they are responsible for bad debt, we can't proceed with the emergency withdrawal
        if (params.totalUserDepositsUSD < params.totalUserDebtsUSD || params.totalUserDepositsUSD == 0) {
            revert Errors.UserAllowanceZero();
        }

        uint256 userAllowanceUSD = params.totalUserDepositsUSD - params.totalUserDebtsUSD;
        uint256 slashingRatio = badDebtManager.slashingRatio();
        uint256[] memory _userAllowances =
            _calculateUserAllowances(userAllowanceUSD, slashingRatio, _cacheReserveRatios);

        _performEmergencyWithdrawals(user, to, params, reserves, _cacheReservePrices, _userAllowances);

        emit EmergencyWithdrawal(to, userAllowanceUSD);
    }

    function _calculateUserDepositsAndDebts(
        address user,
        Params memory params,
        mapping(address => DataTypes.ReserveData) storage reserves,
        uint256[] memory _cacheReservePrices,
        uint256[] memory _cacheReserveRatios,
        BadDebtManager badDebtManager
    ) internal view returns (uint256 totalUserDepositsUSD, uint256 totalUserDebtsUSD) {
        totalUserDepositsUSD = params.totalUserDepositsUSD;
        totalUserDebtsUSD = params.totalUserDebtsUSD;

        // First, we need to calculate user's total USD allowance to withdraw which is:
        // Σ(userDepositTokenX, userDepositTokenY) ... - Σ(userDebtTokenX, userDebtTokenY) ...
        // To do this, we should iterate over all reserve tokens and calculate the total amount of
        // user's deposits and debts in USD
        for (uint256 i = 0; i < params.reservesList.length; ++i) {
            address reserveAddress = params.reservesList[i];
            DataTypes.ReserveData memory reserve = reserves[reserveAddress];
            uint256 userDeposit = IERC20(reserve.aTokenAddress).balanceOf(user);
            // NOTE: For Riz markets stable debt tokens are not used, so we can safely ignore them
            uint256 userDebt = IERC20(reserve.variableDebtTokenAddress).balanceOf(user);
            // Note that, to calculate USD values we take snapshotted prices from BadDebtManager
            uint256 reserveUSDPrice = badDebtManager.getAssetPrice(reserveAddress);
            _cacheReservePrices[i] = reserveUSDPrice;
            totalUserDepositsUSD += (userDeposit * reserveUSDPrice) / DEFAULT_DENOMINATOR;
            totalUserDebtsUSD += (userDebt * reserveUSDPrice) / DEFAULT_DENOMINATOR;
            _cacheReserveRatios[i] = badDebtManager.getAssetRatio(reserveAddress);
        }
    }

    function _calculateUserAllowances(
        uint256 userAllowanceUSD,
        uint256 slashingRatio,
        uint256[] memory _cacheReserveRatios
    ) internal pure returns (uint256[] memory _userAllowances) {
        _userAllowances = new uint256[](_cacheReserveRatios.length);

        // Now, we got to find out the ratios between tokens user will receive. This can be obtained from
        // BadDebtManager,
        // as the ratios were calculated during the snapshot(bricking) the lending pool. Note, that ratios are
        // represented
        // in BPS, so we need to divide them by PRECISION_DIVISOR to get the actual USD amount user will receive by each
        // token
        for (uint256 i = 0; i < _cacheReserveRatios.length; ++i) {
            // User allowance should also be slashed by BDM.slashingRatio
            uint256 _userAllowanceSlashed = (userAllowanceUSD * slashingRatio) / BIPS_HIGH_PRECISION_DIVISOR;
            _userAllowances[i] = (_userAllowanceSlashed * _cacheReserveRatios[i]) / BIPS_HIGH_PRECISION_DIVISOR;
        }
    }

    function _performEmergencyWithdrawals(
        address user,
        address to,
        Params memory params,
        mapping(address => DataTypes.ReserveData) storage reserves,
        uint256[] memory _cacheReservePrices,
        uint256[] memory _userAllowances
    ) internal {
        // User allowances are denominated in USD, so we need to convert them to the actual amount of tokens.
        // Note that we will take prices from bad debt manager as well, as they were calculated during the snapshot
        for (uint256 i = 0; i < params.reservesList.length; ++i) {
            address reserveAddress = params.reservesList[i];
            DataTypes.ReserveData memory reserve = reserves[reserveAddress];
            uint256 reserveUSDPrice = _cacheReservePrices[i];
            uint256 userAllowanceInReserve = (_userAllowances[i] * DEFAULT_DENOMINATOR) / reserveUSDPrice;
            RizAToken(reserve.aTokenAddress).emergencyWithdrawal(
                user, to, userAllowanceInReserve, reserve.liquidityIndex
            );
        }
    }
}
