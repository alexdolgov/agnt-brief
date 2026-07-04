// SPDX-License-Identifier: -- WISE --

pragma solidity =0.8.25;

error GenericDeactivated();
error GenericAccessDenied();
error GenericInvalidParam();
error GenericTooManyShares();
error GenericAmountTooSmall();
error GenericLevergeTooHigh();
error GenericDebtRatioTooLow();
error GenericNotBalancerVaultOrSelf();
error GenericDebtRatioTooHigh();
error GenericSendingOnGoing();

error GenericWrongExtRouter(
    address _unverifiedExtRouter
);
error GenericWrongPendleSwap(
    address _unverifiedPendleSwap
);
error GenericWrongLimitRouter(
    address _unverifiedLimitRouter
);
error GenericWrongMarket(
    address _unverifiedMarket,
    address _expectedMarket
);
error GenericWrongTokenIn(
    address _unverifiedTokenIn,
    address _expectedTokenIn
);
error GenericWrongTokenOut(
    address _unverifiedTokenOut,
    address _expectedTokenOut
);
error GenericWrongReceiver(
    address _unverifiedReceiver,
    address _expectedReceiver
);
error GenericInvalidSelector(
    bytes4 _unverifiedSelector,
    bytes4 _expectedSelector
);
error GenericRoutingOngoing();
error GenericNotV2Pair(
    address,
    address
);
error GenericNotV3Pair(
    address,
    address
);
error GenericNotSender();
error BadDebt(
    uint256 amount
);