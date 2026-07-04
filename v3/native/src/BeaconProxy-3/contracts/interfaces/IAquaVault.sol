// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.17;

interface IAquaVault {
    struct TokenAmountUint {
        address tokenAddress;
        uint amount;
    }

    struct TokenAmountInt {
        address tokenAddress;
        int amount;
    }

    struct TraderPositionUpdate {
        address trader;
        TokenAmountInt[] tokenAmountUpdates;
    }

    struct LpTokenValueUpdate {
        address tokenAddress;
        uint netBorrowChange;
        uint reserveChange;
    }

    struct SettlementRequest {
        uint nonce;
        uint deadline;
        address trader;
        TokenAmountInt[] positionUpdates;
    }

    struct RemoveCollateralRequest {
        uint nonce;
        uint deadline;
        address trader;
        TokenAmountUint[] tokens;
    }

    struct LiquidationRequest {
        uint nonce;
        uint deadline;
        address trader;
        TokenAmountInt[] positionUpdates;
        TokenAmountUint[] claimCollaterals;
    }

    event Repaid(address trader, TokenAmountUint[] repayments);
    event Settled(address trader, TokenAmountInt[] positionUpdates);
    event CollateralAdded(address trader, TokenAmountUint[] collateralUpdates);
    event CollateralRemoved(address trader, TokenAmountUint[] collateralUpdates);
    event Liquidated(
        address trader,
        address liquidator,
        TokenAmountInt[] positionUpdates,
        TokenAmountUint[] claimCollaterals
    );
    event EpochUpdate(TraderPositionUpdate[] traderPositionUpdate, LpTokenValueUpdate[] lpTokenValueUpdate);

    error RequestExpired();
    error InvalidSignature();
    error NonceAlreadyUsed();
    error CallerNotAdmin();
    error CallerNotTraderSettler();
    error CallerNotLiquidator();
    error CallerNotNativePool();
    error CallerNotLpToken();
    error CallerNotEpochUpdater();
    error BorrowNotEnabled();
}
