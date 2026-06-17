// SPDX-License-Identifier: MIT
pragma solidity 0.8.12;

import { DataTypes } from "@radiant-v2-core/lending/libraries/types/DataTypes.sol";
import { SafeERC20, IERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { SafeMath } from "@openzeppelin/contracts/utils/math/SafeMath.sol";
import { Errors as RizErrors } from "../libraries/Errors.sol";
import { BadDebtManager } from "../BadDebtManager.sol";
import { RizAToken } from "../tokenization/RizAToken.sol";

/// @title EmergencyWithdraw library
/// @author Radiant
library EmergencyWithdraw {
    using SafeMath for uint256;
    using SafeERC20 for IERC20;

    struct Params {
        uint256 totalUserDepositsUSD;
        uint256 totalUserDebtsUSD;
        address[] reservesList;
        uint256 reservesCount;
        address badDebtManagerAddress;
    }

    uint256 public constant DEFAULT_DENOMINATOR = 1e18;
    uint256 public constant BIPS_HIGH_PRECISION_DIVISOR = 1_000_000_000;

    event EmergencyWithdrawal(address indexed user, uint256 usdAmountWithdrawn);

    /// @dev Emergency withdrawal
    function emergencyWithdraw(
        address owner,
        address to,
        Params memory params,
        mapping(address => DataTypes.ReserveData) storage reserves
    ) external {
        BadDebtManager badDebtManager = BadDebtManager(params.badDebtManagerAddress);
        // Check if user has already withdrawn
        if (badDebtManager.hasUserWithdrawn(owner)) {
            revert RizErrors.UserAlreadyWithdrawn();
        }
        // First, we need to calculate user's total USD allowance to withdraw which is:
        // Σ(userDepositTokenX, userDepositTokenY) ... - Σ(userDebtTokenX, userDebtTokenY) ...
        // To do this, we should iterate over all reserve tokens and calculate the total amount of
        // user's deposits and debts in USD
        uint256[] memory _cacheReserveRatios = new uint256[](params.reservesCount);
        for (uint256 i = 0; i < params.reservesCount; i++) {
            address reserveAddress = params.reservesList[i];
            DataTypes.ReserveData memory reserve = reserves[reserveAddress];
            uint256 userDeposit = IERC20(reserve.aTokenAddress).balanceOf(owner);
            // NOTE: For Riz markets stable debt tokens are not used, so we can safely ignore them
            uint256 userDebt = IERC20(reserve.variableDebtTokenAddress).balanceOf(owner);
            // Note that, to calculate USD values we take snapshotted prices from BadDebtManager
            uint256 reserveUSDPrice = badDebtManager.getAssetPrice(reserveAddress);
            params.totalUserDepositsUSD += userDeposit.mul(reserveUSDPrice).div(DEFAULT_DENOMINATOR);
            params.totalUserDebtsUSD += userDebt.mul(reserveUSDPrice).div(DEFAULT_DENOMINATOR);
            _cacheReserveRatios[i] = badDebtManager.getAssetRatio(reserveAddress);
        }
        // If user allowance is 0 or they are responsible for bad debt, we can't proceed with the emergency withdrawal
        if (params.totalUserDepositsUSD < params.totalUserDebtsUSD || params.totalUserDepositsUSD == 0) {
            revert RizErrors.UserAllowanceZero();
        }
        uint256 userAllowanceUSD = params.totalUserDepositsUSD - params.totalUserDebtsUSD;

        // Now, we got to find out the ratios between tokens user will receive. This can be obtained from
        // BadDebtManager,
        // as the ratios were calculated during the snapshot(bricking) the lending pool. Note, that ratios are
        // represented
        // in BPS, so we need to divide them by PRECISION_DIVISOR to get the actual USD amount user will receive by each
        // token
        uint256[] memory _userAllowances = new uint256[](params.reservesCount);
        for (uint256 i = 0; i < params.reservesCount; i++) {
            // User allowance should also be slashed by BDM.slashingRatio
            uint256 _userAllowanceSlashed =
                userAllowanceUSD.mul(badDebtManager.slashingRatio()).div(BIPS_HIGH_PRECISION_DIVISOR);
            _userAllowances[i] = _userAllowanceSlashed.mul(_cacheReserveRatios[i]).div(BIPS_HIGH_PRECISION_DIVISOR);
        }
        // User allowances are denominated in USD, so we need to convert them to the actual amount of tokens.
        // Note that we will take prices from bad debt manager as well, as they were calculated during the snapshot
        for (uint256 i = 0; i < params.reservesCount; i++) {
            address reserveAddress = params.reservesList[i];
            DataTypes.ReserveData memory reserve = reserves[reserveAddress];
            uint256 reserveUSDPrice = badDebtManager.getAssetPrice(reserveAddress);
            uint256 userAllowanceInReserve = _userAllowances[i].div(reserveUSDPrice).mul(DEFAULT_DENOMINATOR);
            RizAToken(reserve.aTokenAddress).emergencyWithdrawal(
                owner, to, userAllowanceInReserve, reserve.liquidityIndex
            );
        }
        // Set emergency withdrawal status for user
        badDebtManager.setEmergencyWithdrawal(owner);
        emit EmergencyWithdrawal(to, userAllowanceUSD);
    }
}
