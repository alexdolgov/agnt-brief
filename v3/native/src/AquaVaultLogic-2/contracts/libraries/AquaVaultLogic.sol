// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.17;

import {IAquaVault} from "../interfaces/IAquaVault.sol";
import {AquaLpToken} from "../Aqua/AquaLpToken.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {ComptrollerV2Storage} from "../Compound/ComptrollerStorage.sol";
import {PriceOracle} from "../Compound/PriceOracle.sol";
import {CToken} from "../Compound/CToken.sol";
import {SafeCast} from "@openzeppelin/contracts/utils/math/SafeCast.sol";

/// @title Implement operational logic for AquaVault
/// @author Native
/// @notice Extract operational logic from AquaVault to reduce contract size. The operation would be delegateCall from AquaVault
library AquaVaultLogic {
    using SafeERC20 for IERC20;
    using SafeCast for uint256;
    using SafeCast for int256;

    int256 public constant EPOCH_UPDATE_LIMIT_PERCENTAGE_BIPS = 100; // 1%
    uint256 public constant EPOCH_UPDATE_COOL_DOWN_SECONDS = 8 hours;
    uint256 private constant ETHER_SCALE = 1e18;

    error UpdateAmountTooMuch();
    error ExchangeRateCannnotDecrease();
    error InvalidPositionUpdateAmount();
    error NotLpToken();
    error PriceOracleError();
    error InvalidCreditAfterOperation();
    error PositionHealthyCannotLiquidate();
    error EpochUpdateInCoolDown();

    struct TraderCreditCheckParams {
        address trader;
        address recipient;
        bool isWhitelisedTrader;
        PriceOracle oracle;
        CToken[] allMarkets;
    }

    function swapCallback(
        address trader,
        address sellerToken,
        int256 amountIn,
        address buyerToken,
        int256 amountOut,
        mapping(address => AquaLpToken) storage lpTokens,
        mapping(address => mapping(address => int256)) storage positions
    ) external {
        lpTokens[sellerToken].updateNetBorrow(-amountIn);
        lpTokens[buyerToken].updateNetBorrow(amountOut);
        positions[trader][sellerToken] += amountIn;
        positions[trader][buyerToken] -= amountOut;
    }

    function pay(address to, uint256 amount) external {
        IERC20(AquaLpToken(msg.sender).underlying()).safeTransfer(to, amount);
    }

    /// @notice Set allowance for native pool
    /// @dev The funciton can be used to provide allowance and also revoke allowance (put amount is 0)
    /// @param tokens token addresses and amounts to set allowance
    /// @param nativePool address of native pool
    function setAllowance(IAquaVault.TokenAmountUint[] calldata tokens, address nativePool) external {
        for (uint256 i; i < tokens.length;) {
            if(tokens[i].tokenAddress == address(0)) revert IAquaVault.ZeroError();
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
        mapping(address => mapping(address => int256)) storage positions,
        mapping(address => AquaLpToken) storage lpTokens,
        uint256 lastEpochUpdateTimestamp
    ) external {
        if (block.timestamp - lastEpochUpdateTimestamp < EPOCH_UPDATE_COOL_DOWN_SECONDS) {
            revert EpochUpdateInCoolDown();
        }

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
                (lpTokenValueUpdate[i].netBorrowChange * 10_000).toInt256() / lpTokens[token].netSwapBorrow() >
                EPOCH_UPDATE_LIMIT_PERCENTAGE_BIPS
            ) {
                revert UpdateAmountTooMuch();
            }

            lpTokens[token].updateNetBorrow(lpTokenValueUpdate[i].netBorrowChange.toInt256());
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
            int newPositionValue = positions[positionHolder][repayments[i].tokenAddress] +
                repayments[i].amount.toInt256();
            if (newPositionValue > 0) {
                revert InvalidPositionUpdateAmount();
            }
            positions[positionHolder][repayments[i].tokenAddress] = newPositionValue;
            IERC20(repayments[i].tokenAddress).safeTransferFrom(msg.sender, address(this), repayments[i].amount);
            unchecked {
                i++;
            }
        }
    }

    /// @notice logic of settling for long and short positions
    /// @param positionUpdates token addresses and amounts to settle
    /// @param params parameters for credit check
    /// @param positions mapping in storage passed by AquaVault for trader address to token address to position amount
    /// @param lpTokens mapping in storage passed by AquaVault for token address to AquaLpToken
    function settle(
        IAquaVault.TokenAmountInt[] memory positionUpdates,
        TraderCreditCheckParams memory params,
        mapping(address => mapping(address => int256)) storage positions,
        mapping(address => AquaLpToken) storage lpTokens,
        mapping(address => ComptrollerV2Storage.Market) storage markets,
        mapping(address => mapping(address => uint256)) storage aquaCollateral
    ) external {
        updatePositions(positionUpdates, positions, lpTokens, params.trader);

        if (!params.isWhitelisedTrader) {
            validateCredit(params, positions, aquaCollateral, markets);
        }

        // execute token transfers
        for (uint256 i; i < positionUpdates.length; ) {
            address token = positionUpdates[i].tokenAddress;
            int256 amount = positionUpdates[i].amount;

            if (amount > 0) {
                IERC20(token).safeTransferFrom(msg.sender, address(this), amount.toUint256());
            } else {
                IERC20(token).safeTransfer(params.recipient, (-amount).toUint256());
            }

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
            aquaCollateral[trader][token] += amount;
            IERC20(token).safeTransferFrom(msg.sender, address(this), amount);
            unchecked {
                i++;
            }
        }
    }

    /// @notice logic of removing collateral
    /// @param tokens token addresses and amounts to remove
    /// @param params parameters for credit check
    /// @param aquaCollateral mapping in storage passed by AquaVault for trader address to token address to collateral amount
    function removeCollateral(
        IAquaVault.TokenAmountUint[] calldata tokens,
        TraderCreditCheckParams memory params,
        mapping(address => mapping(address => uint256)) storage aquaCollateral,
        mapping(address => ComptrollerV2Storage.Market) storage markets,
        mapping(address => mapping(address => int256)) storage positions
    ) external {
        for (uint256 i; i < tokens.length; ) {
            aquaCollateral[params.trader][tokens[i].tokenAddress] -= tokens[i].amount;
            unchecked {
                ++i;
            }
        }

        if (!params.isWhitelisedTrader) {
            validateCredit(params, positions, aquaCollateral, markets);
        }

        for (uint256 i; i < tokens.length; ) {
            address token = tokens[i].tokenAddress;
            uint amount = tokens[i].amount;

            IERC20(token).safeTransfer(params.recipient, amount);
            unchecked {
                i++;
            }
        }
    }

    /// @notice logic of liquidating positions
    /// @param positionUpdates token addresses and amounts to liquidate
    /// @param claimCollaterals token addresses and amounts to claim
    /// @param params parameters for credit check
    /// @param positions mapping in storage passed by AquaVault for trader address to token address to position amount
    /// @param lpTokens mapping in storage passed by AquaVault for token address to AquaLpToken
    /// @param aquaCollateral mapping in storage passed by AquaVault for trader address to token address to collateral amount
    function liquidate(
        IAquaVault.TokenAmountInt[] memory positionUpdates,
        IAquaVault.TokenAmountUint[] calldata claimCollaterals,
        TraderCreditCheckParams memory params,
        mapping(address => mapping(address => int256)) storage positions,
        mapping(address => AquaLpToken) storage lpTokens,
        mapping(address => ComptrollerV2Storage.Market) storage markets,
        mapping(address => mapping(address => uint256)) storage aquaCollateral
    ) external {
        if (!params.isWhitelisedTrader) {
            int256 credit = getCredit(params, positions, aquaCollateral, markets);
            if (credit > 0) {
                revert PositionHealthyCannotLiquidate();
            }
        }
        updatePositions(positionUpdates, positions, lpTokens, params.trader);

        for (uint256 i; i < claimCollaterals.length; ) {
            aquaCollateral[params.trader][claimCollaterals[i].tokenAddress] -= claimCollaterals[i].amount;
            unchecked {
                ++i;
            }
        }

        if (!params.isWhitelisedTrader) {
            validateCredit(params, positions, aquaCollateral, markets);
        }

        for (uint256 i; i < positionUpdates.length; ) {
            address token = positionUpdates[i].tokenAddress;
            int256 amount = positionUpdates[i].amount;
            if (amount > 0) {
                IERC20(token).safeTransferFrom(msg.sender, address(this), amount.toUint256());
            } else {
                IERC20(token).safeTransfer(params.recipient, (-amount).toUint256());
            }
            unchecked {
                ++i;
            }
        }

        for (uint256 i; i < claimCollaterals.length; ) {
            address token = claimCollaterals[i].tokenAddress;
            uint256 amount = claimCollaterals[i].amount;
            IERC20(token).transfer(params.recipient, amount);
            unchecked {
                i++;
            }
        }
    }

    function updatePositions(
        IAquaVault.TokenAmountInt[] memory positionUpdates,
        mapping(address => mapping(address => int256)) storage positions,
        mapping(address => AquaLpToken) storage lpTokens,
        address trader
    ) internal {
        for (uint256 i; i < positionUpdates.length; ) {
            address token = positionUpdates[i].tokenAddress;
            int256 amount = positionUpdates[i].amount;
            int256 newPositionValue = positions[trader][token] + amount;

            // position and update amount cannot be same sign (cannot increase the position)
            // cannot over settle the positions (change the position sign after settlement)
            if (positions[trader][token] * amount >= 0 || positions[trader][token] * newPositionValue < 0) {
                revert InvalidPositionUpdateAmount();
            }

            lpTokens[token].updateNetBorrow(-amount);
            positions[trader][token] = newPositionValue;

            unchecked {
                ++i;
            }
        }
    }

    function validateCredit(
        TraderCreditCheckParams memory params,
        mapping(address => mapping(address => int256)) storage positions,
        mapping(address => mapping(address => uint256)) storage aquaCollateral,
        mapping(address => ComptrollerV2Storage.Market) storage markets
    ) internal view {
        int256 credit = getCredit(params, positions, aquaCollateral, markets);

        if (credit < 0) {
            revert InvalidCreditAfterOperation();
        }
    }

    function getCredit(
        TraderCreditCheckParams memory params,
        mapping(address => mapping(address => int256)) storage positions,
        mapping(address => mapping(address => uint256)) storage aquaCollateral,
        mapping(address => ComptrollerV2Storage.Market) storage markets
    ) internal view returns (int256 credit) {
        for (uint256 j; j < params.allMarkets.length; ) {
            address lpToken = address(params.allMarkets[j]);
            address token = address(AquaLpToken(lpToken).underlying());

            if (positions[params.trader][token] == 0 && aquaCollateral[params.trader][lpToken] == 0) {
                unchecked {
                    ++j;
                }
                continue;
            }

            uint256 price = params.oracle.getUnderlyingPrice(params.allMarkets[j]);
            if (price == 0) {
                revert PriceOracleError();
            }

            if (positions[params.trader][token] != 0) {
                credit +=
                    ((
                        positions[params.trader][token] > 0
                            ? (positions[params.trader][token] *
                                (markets[lpToken].collateralFactorMantissa).toInt256()) / ETHER_SCALE.toInt256()
                            : positions[params.trader][token]
                    ) * price.toInt256()) /
                    ETHER_SCALE.toInt256();
            }

            if (aquaCollateral[params.trader][lpToken] > 0) {
                credit += ((((aquaCollateral[params.trader][lpToken] * markets[lpToken].collateralFactorMantissa) /
                    ETHER_SCALE) * price) / ETHER_SCALE).toInt256();
            }
            unchecked {
                ++j;
            }
        }
    }
}
