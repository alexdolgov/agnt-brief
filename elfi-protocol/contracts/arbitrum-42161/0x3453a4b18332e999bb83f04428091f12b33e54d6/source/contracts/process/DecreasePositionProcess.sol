// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "../storage/InsuranceFund.sol";
import "./MarketProcess.sol";
import "./LpPoolProcess.sol";
import "./FeeProcess.sol";
import "./AccountProcess.sol";
import "./PositionMarginProcess.sol";
import "./ComputeDecreaseProcess.sol";
import "./CancelOrderProcess.sol";

/// @title DecreasePositionProcess
/// @dev Library for decreasing position functions
library DecreasePositionProcess {
    using SafeMath for uint256;
    using SafeCast for uint256;
    using SafeCast for int256;
    using SignedSafeMath for int256;
    using Math for uint256;
    using Position for Position.Props;
    using Order for Order.Props;
    using Account for Account.Props;
    using AccountProcess for Account.Props;
    using Market for Market.Props;

    /// @dev DecreasePositionParams struct used in decreasePosition
    ///
    /// @param requestId the unique request id for decreasing position
    /// @param symbol position's market
    /// @param isLiquidation liquidation a position
    /// @param isCrossMargin whether it is a cross-margin position
    /// @param marginToken the address of margin token
    /// @param decreaseQty closed size of position
    /// @param executePrice the index token price of decreasing position
    struct DecreasePositionParams {
        uint256 requestId;
        bytes32 symbol;
        bool isLiquidation;
        address marginToken;
        uint256 decreaseQty;
        uint256 executePrice;
    }

    /// @notice Decreases a position by closing it or partially closing it, including liquidation.
    /// @dev The decreasePosition function performs the following steps:
    /// 1. Calculates the unrealized profit and loss (PnL) of the position in USD.
    /// 2. Updates the borrowing fee and funding fee of the original position.
    /// 3. Settles the position and the pool.
    /// 4. Updates market-related information.
    ///
    /// During settlement, all fees are settled first, followed by the initial margin and PnL.
    /// Settlement fees include borrow fee, close fee, and funding fee, and their actual token assets will be stored in the Market Vault (stakeToken).
    /// The settled margin is the amount of funds settled for the user:
    /// - For isolated positions, the settled margin will be transferred to the user's own wallet.
    /// - For cross margin, the funds will remain in the PortfolioVault.
    /// The transfer of vault funds is executed in _settleCrossAccount and _settleIsolateAccount, while other logic uses virtual accounting.
    ///
    /// After cross margin settlement, the user may incur a debt, which will be recorded in the account liability. When the user's debt exceeds a certain limit, the keeper will trigger the logic for the user to actively repay the liability.
    /// The user will also prioritize repaying the debt after making a deposit or closing a position with a profit.
    ///
    /// @param position Position.Props
    /// @param params DecreasePositionParams
    function decreasePosition(Position.Props storage position, DecreasePositionParams calldata params) external {
        int256 totalPnlInUsd = PositionQueryProcess.getPositionUnPnl(position, params.executePrice.toInt256(), false);
        Symbol.Props memory symbolProps = Symbol.load(params.symbol);
        AppConfig.SymbolConfig memory symbolConfig = AppConfig.getSymbolConfig(params.symbol);
        FeeProcess.updateBorrowingFee(position, symbolProps.stakeToken);
        FeeProcess.updateFundingFee(position);
        ComputeDecreaseProcess.DecreasePositionCache memory cache = ComputeDecreaseProcess
            .getDecreasePositionSettledData(
                position,
                params.decreaseQty,
                totalPnlInUsd,
                params.executePrice.toInt256(),
                symbolConfig.closeFeeRate,
                params.isLiquidation,
                position.isCrossMargin
            );

        Account.Props storage accountProps = Account.load(position.account);
        if (cache.settledMargin <= 0 && !cache.isLiquidation && !position.isCrossMargin) {
            revert Errors.PositionShouldBeLiquidation();
        }
        if (!cache.isLiquidation && position.isCrossMargin && accountProps.isCrossLiquidation()) {
            revert Errors.PositionShouldBeLiquidation();
        }
        cache.stakeToken = symbolProps.stakeToken;

        if (params.decreaseQty == position.qty) {
            accountProps.delPosition(
                Position.getPositionKey(position.account, position.symbol, position.marginToken, position.isCrossMargin)
            );
            position.reset();
            position.lastUpdateTime = ChainUtils.currentTimestamp();
        } else {
            _updateDecreasePosition(position, params.decreaseQty, cache);
            position.lastUpdateTime = ChainUtils.currentTimestamp();
        }

        _settleFee(accountProps, symbolProps.code, cache);

        uint256 addLiability;
        if (cache.position.isCrossMargin) {
            addLiability = _settleCrossAccount(params.requestId, accountProps, position, cache);
            if (addLiability == 0) {
                accountProps.repayLiability(cache.position.marginToken);
            }
        } else {
            _settleIsolateAccount(accountProps, cache);
        }

        LpPoolProcess.updatePnlAndUnHoldPoolAmount(
            symbolProps.stakeToken,
            cache.position.marginToken,
            cache.unHoldPoolAmount,
            cache.poolPnlToken,
            addLiability
        );

        /// update & verify OI
        MarketProcess.updateMarketOI(
            MarketProcess.UpdateOIParams(
                false,
                symbolProps.code,
                cache.position.marginToken,
                params.decreaseQty,
                cache.position.entryPrice,
                cache.position.isLong
            )
        );

        // cancel stop orders
        if (params.decreaseQty == cache.position.qty) {
            CancelOrderProcess.cancelStopOrders(
                cache.position.account,
                symbolProps.code,
                cache.position.marginToken,
                cache.position.isCrossMargin,
                CancelOrderProcess.CANCEL_ORDER_POSITION_CLOSE,
                params.requestId
            );
        }

        /// update insuranceFund
        if (cache.isLiquidation && cache.insuranceFund > 0) {
            if (cache.position.isCrossMargin) {
                InsuranceFund.addUnsettleFunds(
                    cache.stakeToken,
                    cache.position.marginToken,
                    cache.insuranceFund.toUint256()
                );
            } else {
                InsuranceFund.addFunds(cache.stakeToken, cache.position.marginToken, cache.insuranceFund.toUint256());
            }
        }

        position.emitPositionUpdateEvent(
            params.requestId,
            cache.isLiquidation ? Position.PositionUpdateFrom.LIQUIDATION : Position.PositionUpdateFrom.ORDER_DECREASE,
            Position.SettleData(
                params.executePrice,
                0,
                cache.marginTokenPrice,
                cache.settledMargin,
                cache.settledBorrowingFee,
                cache.settledBorrowingFeeInUsd,
                cache.settledFundingFee,
                cache.settledFundingFeeInUsd,
                cache.unHoldPoolAmount,
                cache.closeFee,
                cache.closeFeeInUsd,
                cache.realizedPnl,
                cache.poolPnlToken
            )
        );
    }

    /// @dev Settles the cross margin position.
    /// @param requestId The request ID.
    /// @param accountProps Account.Props.
    /// @param position Position.Props.
    /// @param cache DecreasePositionCache.
    /// @return addLiability The additional liability.
    function _settleCrossAccount(
        uint256 requestId,
        Account.Props storage accountProps,
        Position.Props storage position,
        ComputeDecreaseProcess.DecreasePositionCache memory cache
    ) internal returns (uint256 addLiability) {
        accountProps.unUseToken(
            cache.position.marginToken,
            cache.decreaseMargin,
            Account.UpdateSource.DECREASE_POSITION
        );
        address portfolioVault = IVault(address(this)).getPortfolioVaultAddress();
        if (cache.recordPnlToken + cache.settledFee < 0) {
            addLiability = accountProps.subTokenWithLiability(
                cache.position.marginToken,
                (-(cache.recordPnlToken + cache.settledFee)).toUint256(),
                cache.isLiquidation ? Account.UpdateSource.LIQUIDATION : Account.UpdateSource.DEFAULT
            );
        } else if (cache.recordPnlToken + cache.settledFee > 0) {
            accountProps.addToken(
                cache.position.marginToken,
                (cache.recordPnlToken + cache.settledFee).toUint256(),
                Account.UpdateSource.SETTLE_PNL
            );
        }
        if (cache.poolPnlToken < 0) {
            VaultProcess.transferOut(
                cache.position.isLong ? cache.stakeToken : CommonData.getStakeUsdToken(),
                cache.position.marginToken,
                portfolioVault,
                (-cache.poolPnlToken).toUint256(),
                false
            );
        } else if (cache.poolPnlToken - addLiability.toInt256() > 0) {
            VaultProcess.transferOut(
                portfolioVault,
                cache.position.marginToken,
                cache.position.isLong ? cache.stakeToken : CommonData.getStakeUsdToken(),
                cache.poolPnlToken.toUint256() - addLiability,
                false
            );
        }

        if (!cache.isLiquidation) {
            int256 changeToken = (
                cache.decreaseMarginInUsdFromBalance.mul(cache.position.initialMargin).div(
                    cache.position.initialMarginInUsd
                )
            ).toInt256() +
                cache.settledMargin -
                cache.decreaseMargin.toInt256();
            PositionMarginProcess.updateAllPositionFromBalanceMargin(
                requestId,
                accountProps.owner,
                cache.position.marginToken,
                changeToken,
                position.key
            );
        }
    }

    /// @dev Settles an isolated margin position.
    /// @param accountProps Account.Props.
    /// @param cache ComputeDecreaseProcess.DecreasePositionCache.
    function _settleIsolateAccount(
        Account.Props storage accountProps,
        ComputeDecreaseProcess.DecreasePositionCache memory cache
    ) internal {
        if (cache.isLiquidation) {
            return;
        }
        VaultProcess.transferOut(
            cache.position.isLong ? cache.stakeToken : CommonData.getStakeUsdToken(),
            cache.position.marginToken,
            accountProps.owner,
            cache.settledMargin.toUint256(),
            false
        );
    }

    function _settleFee(
        Account.Props storage accountProps,
        bytes32 symbol,
        ComputeDecreaseProcess.DecreasePositionCache memory cache
    ) internal {
        // update account fee
        if (cache.position.isCrossMargin) {
            if (cache.settledFee >= 0) {
                accountProps.subTokenWithLiability(
                    cache.position.marginToken,
                    cache.settledFee.toUint256(),
                    Account.UpdateSource.SETTLE_FEE
                );
            } else {
                accountProps.addToken(
                    cache.position.marginToken,
                    (-cache.settledFee).toUint256(),
                    Account.UpdateSource.SETTLE_FEE
                );
            }
        }
        // update close fee rewards
        FeeProcess.chargeTradingFee(
            cache.closeFee,
            symbol,
            cache.isLiquidation ? FeeProcess.FEE_LIQUIDATION : FeeProcess.FEE_CLOSE_POSITION,
            cache.position.marginToken,
            cache.position
        );

        // update borrowing fee rewards
        FeeProcess.chargeBorrowingFee(
            cache.position.isCrossMargin,
            cache.settledBorrowingFee,
            cache.position.isLong ? cache.stakeToken : CommonData.getStakeUsdToken(),
            cache.position.marginToken,
            cache.position.account,
            cache.isLiquidation ? FeeProcess.FEE_LIQUIDATION : FeeProcess.FEE_BORROWING
        );

        // update market borrowing fee
        MarketProcess.updateTotalBorrowingFee(
            cache.position.isLong ? cache.stakeToken : CommonData.getStakeUsdToken(),
            cache.position.isLong,
            cache.position.marginToken,
            cache.settledBorrowingFee.toInt256(),
            -cache.settledBorrowingFee.toInt256()
        );

        address portfolioVault = IVault(address(this)).getPortfolioVaultAddress();
        // update funding fee
        MarketProcess.settlePoolFundingFee(
            symbol,
            cache.position.isCrossMargin,
            cache.position.isLong,
            cache.position.marginToken,
            cache.settledFundingFee
        );
        if (cache.position.isCrossMargin && cache.settledFundingFee < 0) {
            VaultProcess.transferOut(
                cache.position.isLong ? cache.stakeToken : CommonData.getStakeUsdToken(),
                cache.position.marginToken,
                portfolioVault,
                (-cache.settledFundingFee).toUint256(),
                false
            );
        }
        if (cache.settledFundingFee < 0 && !cache.position.isLong) {
            LpPoolProcess.updateLpPoolStableTokenLoss(
                cache.stakeToken,
                cache.position.marginToken,
                (-cache.settledFundingFee).toUint256()
            );
        }
    }

    function _updateDecreasePosition(
        Position.Props storage position,
        uint256 decreaseQty,
        ComputeDecreaseProcess.DecreasePositionCache memory cache
    ) internal {
        position.qty -= decreaseQty;
        position.initialMargin -= cache.decreaseMargin;
        position.initialMarginInUsd -= cache.decreaseMarginInUsd;
        position.initialMarginInUsdFromBalance -= cache.decreaseMarginInUsdFromBalance;
        position.holdPoolAmount -= cache.unHoldPoolAmount;
        position.realizedPnl += cache.realizedPnl;
        position.positionFee.realizedBorrowingFee -= cache.settledBorrowingFee;
        position.positionFee.realizedBorrowingFeeInUsd -= cache.settledBorrowingFeeInUsd;
        position.positionFee.realizedFundingFee -= cache.settledFundingFee;
        position.positionFee.realizedFundingFeeInUsd -= cache.settledFundingFeeInUsd;
        position.positionFee.closeFeeInUsd -= cache.closeFeeInUsd;
    }
}
