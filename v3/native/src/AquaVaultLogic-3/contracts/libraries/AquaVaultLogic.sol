// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.17;

import {IAquaVault} from "../interfaces/IAquaVault.sol";
import {AquaLpToken} from "../Aqua/AquaLpToken.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {ComptrollerV2Storage} from "../Compound/ComptrollerStorage.sol";

/// @title Implement operational logic for AquaVault
/// @author Native
/// @notice Extract operational logic from AquaVault to reduce contract size. The operation would be delegateCall from AquaVault
library AquaVaultLogic {
    using SafeERC20 for IERC20;

    int256 private constant EPOCH_UPDATE_LIMIT_PERCENTAGE_BIPS = 100; // 1%

    error UpdateAmountTooMuch();
    error ExchangeRateCannnotDecrease();
    error InvalidPositionUpdateAmount();
    error NotLpToken();

    /// @notice Set allowance for native pool
    /// @dev The funciton can be used to provide allowance and also revoke allowance (put amount is 0)
    /// @param tokens token addresses and amounts to set allowance
    /// @param nativePool address of native pool
    function setAllowance(IAquaVault.TokenAmountUint[] calldata tokens, address nativePool) external {
        for (uint256 i; i < tokens.length; ) {
            IERC20(tokens[i].tokenAddress).safeApprove(nativePool, tokens[i].amount);
            unchecked {
                ++i;
            }
        }
    }

    /// @notice Update position and lp token value
    /// @dev The function is called by AquaVault to update positions and borrow values in AquaLpToken
    /// @dev A max 1% change is allowed for each update
    /// @dev Update amount of netSwapBorrow should be the sum of all traders on that token, excluing reserve:
    ///      for each LP token, netSwapBorrow = sum(positionUpdate) - reserve. Didn't implement this check here to save gas
    /// @param traderPositionUpdate position updates for traders
    /// @param lpTokenValueUpdate borrow value updates for lp tokens
    /// @param positions mapping in storage passed by AquaVault for trader address to token address to position amount
    /// @param lpTokens mapping in storage passed by AquaVault for token address to AquaLpToken
    function positionEpochUpdate(
        IAquaVault.TraderPositionUpdate[] calldata traderPositionUpdate,
        IAquaVault.LpTokenValueUpdate[] calldata lpTokenValueUpdate,
        mapping(address => mapping(address => int)) storage positions,
        mapping(address => AquaLpToken) storage lpTokens
    ) external {
        for (uint i = 0; i < traderPositionUpdate.length; ) {
            address trader = traderPositionUpdate[i].trader;
            for (uint j = 0; j < traderPositionUpdate[i].tokenAmountUpdates.length; ) {
                address token = traderPositionUpdate[i].tokenAmountUpdates[j].tokenAddress;
                positions[trader][token] += traderPositionUpdate[i].tokenAmountUpdates[j].amount;
                if (
                    (traderPositionUpdate[i].tokenAmountUpdates[j].amount * 10_000) / positions[trader][token] >
                    EPOCH_UPDATE_LIMIT_PERCENTAGE_BIPS
                ) {
                    revert UpdateAmountTooMuch();
                }
                unchecked {
                    j++;
                }
            }
            unchecked {
                i++;
            }
        }
        for (uint i = 0; i < lpTokenValueUpdate.length; ) {
            address token = lpTokenValueUpdate[i].tokenAddress;
            uint lpExchangeRateBeforeUpdate = lpTokens[token].exchangeRateStored();

            if (
                int(lpTokenValueUpdate[i].netBorrowChange * 10_000) / lpTokens[token].netSwapBorrow() >
                EPOCH_UPDATE_LIMIT_PERCENTAGE_BIPS
            ) {
                revert UpdateAmountTooMuch();
            }

            lpTokens[token].updateNetBorrow(int(lpTokenValueUpdate[i].netBorrowChange));
            lpTokens[token].updateReserve(lpTokenValueUpdate[i].reserveChange);

            if (lpExchangeRateBeforeUpdate > lpTokens[token].exchangeRateStored()) {
                revert ExchangeRateCannnotDecrease();
            }
            unchecked {
                i++;
            }
        }
    }

    /// @notice logic of repaying the short positions
    /// @param repayments token addresses and amounts to repay
    /// @param positions mapping in storage passed by AquaVault for trader address to token address to position amount
    /// @param positionHolder address of the position holder (i.e. trader, RFQ provider)
    function repay(
        IAquaVault.TokenAmountUint[] calldata repayments,
        mapping(address => mapping(address => int)) storage positions,
        address positionHolder
    ) external {
        for (uint i; i < repayments.length; ) {
            int newPositionValue = positions[positionHolder][repayments[i].tokenAddress] + int(repayments[i].amount);
            if (newPositionValue > 0) {
                revert InvalidPositionUpdateAmount();
            }
            IERC20(repayments[i].tokenAddress).transferFrom(msg.sender, address(this), repayments[i].amount);
            positions[positionHolder][repayments[i].tokenAddress] = newPositionValue;
            unchecked {
                i++;
            }
        }
    }

    /// @notice logic of settling for long and short positions
    /// @param positionUpdates token addresses and amounts to settle
    /// @param recipient address to receive the long positions claimed
    /// @param positions mapping in storage passed by AquaVault for trader address to token address to position amount
    /// @param lpTokens mapping in storage passed by AquaVault for token address to AquaLpToken
    function settle(
        IAquaVault.TokenAmountInt[] memory positionUpdates,
        address recipient,
        mapping(address => mapping(address => int)) storage positions,
        mapping(address => AquaLpToken) storage lpTokens
    ) external {
        for (uint256 i; i < positionUpdates.length; ) {
            address token = positionUpdates[i].tokenAddress;
            int256 amount = positionUpdates[i].amount;

            int newPositionValue = positions[msg.sender][token] + amount;

            // position and update amount cannot be same sign (cannot increase the position)
            // cannot over settle the positions (change the position sign after settlement)
            if (positions[msg.sender][token] * amount >= 0 || positions[msg.sender][token] * newPositionValue < 0) {
                revert InvalidPositionUpdateAmount();
            }

            if (amount > 0) {
                IERC20(token).safeTransferFrom(msg.sender, address(this), uint(amount));
            } else {
                IERC20(token).safeTransfer(recipient, uint(-amount));
            }

            lpTokens[token].updateNetBorrow(-int(amount));
            positions[msg.sender][token] = newPositionValue;
            unchecked {
                ++i;
            }
        }
    }

    /// @notice logic of adding collateral
    /// @param tokens token addresses and amounts to add
    /// @param aquaCollateral mapping in storage passed by AquaVault for trader address to token address to collateral amount
    /// @param markets mapping in storage passed by AquaVault for token address to Compound markets (LP token status)
    /// @param trader address of the trader to add collateral for
    function addCollateral(
        IAquaVault.TokenAmountUint[] calldata tokens,
        mapping(address => mapping(address => uint)) storage aquaCollateral,
        mapping(address => ComptrollerV2Storage.Market) storage markets,
        address trader
    ) external {
        for (uint i; i < tokens.length; ) {
            address token = tokens[i].tokenAddress;
            if (!markets[token].isListed) {
                revert NotLpToken();
            }
            uint amount = tokens[i].amount;
            IERC20(token).transferFrom(msg.sender, address(this), amount);
            aquaCollateral[trader][token] += amount;
            unchecked {
                i++;
            }
        }
    }

    /// @notice logic of removing collateral
    /// @param tokens token addresses and amounts to remove
    /// @param recipient address to receive the collateral
    /// @param trader address of the trader to remove collateral for
    /// @param aquaCollateral mapping in storage passed by AquaVault for trader address to token address to collateral amount
    function removeCollateral(
        IAquaVault.TokenAmountUint[] calldata tokens,
        address recipient,
        address trader,
        mapping(address => mapping(address => uint)) storage aquaCollateral
    ) external {
        for (uint i; i < tokens.length; ) {
            address token = tokens[i].tokenAddress;
            uint amount = tokens[i].amount;
            IERC20(token).transfer(recipient, amount);
            aquaCollateral[trader][token] -= amount;
            unchecked {
                i++;
            }
        }
    }

    /// @notice logic of liquidating positions
    /// @param positionUpdates token addresses and amounts to liquidate
    /// @param claimCollaterals token addresses and amounts to claim
    /// @param trader address of the trader to liquidate
    /// @param recipient address to receive the collateral
    /// @param positions mapping in storage passed by AquaVault for trader address to token address to position amount
    /// @param lpTokens mapping in storage passed by AquaVault for token address to AquaLpToken
    /// @param aquaCollateral mapping in storage passed by AquaVault for trader address to token address to collateral amount
    function liquidate(
        IAquaVault.TokenAmountInt[] memory positionUpdates,
        IAquaVault.TokenAmountUint[] calldata claimCollaterals,
        address trader,
        address recipient,
        mapping(address => mapping(address => int)) storage positions,
        mapping(address => AquaLpToken) storage lpTokens,
        mapping(address => mapping(address => uint)) storage aquaCollateral
    ) external {
        for (uint256 i; i < positionUpdates.length; ) {
            address token = positionUpdates[i].tokenAddress;
            int256 amount = positionUpdates[i].amount;

            int newPositionValue = positions[trader][token] + amount;

            // position and update amount cannot be same sign (cannot increase the position)
            // cannot over settle the positions (change the position sign after settlement)
            if (positions[trader][token] * amount >= 0 || positions[trader][token] * newPositionValue < 0) {
                revert InvalidPositionUpdateAmount();
            }

            if (amount > 0) {
                IERC20(token).safeTransferFrom(msg.sender, address(this), uint(amount));
            } else {
                IERC20(token).safeTransfer(recipient, uint(-amount));
            }

            lpTokens[token].updateNetBorrow(-int(amount));
            positions[trader][token] = newPositionValue;
            unchecked {
                ++i;
            }
        }

        for (uint i; i < claimCollaterals.length; ) {
            address token = claimCollaterals[i].tokenAddress;
            uint amount = claimCollaterals[i].amount;
            IERC20(token).transfer(recipient, amount);
            aquaCollateral[trader][token] -= amount;
            unchecked {
                i++;
            }
        }
    }
}
