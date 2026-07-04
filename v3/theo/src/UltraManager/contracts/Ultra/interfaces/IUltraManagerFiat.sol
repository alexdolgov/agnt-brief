// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IUltraManagerFiat {
    function requestRedemption(uint256 amountUltraToRedeem, bool fullWithdrawal) external;

    function completeRedemptions(
        address redeemer,
        uint256 epochToClaim
    ) external;

    function refundRedemptions(
        address refundee,
        uint256 epochToRefund
    ) external;

    event RedemptionRemoved(uint256 index, uint256 queueLength);

    event RedemptionRequested(
        address indexed user,
        uint256 cashAmountIn,
        uint256 indexed epoch
    );
    event RedemptionFailedDueToKYC(
        address indexed redeemer,
        uint256 epoch,
        uint256 amountUltra
    );
    event RedemptionRefunded(
        address indexed refundee,
        uint256 amountUltra,
        uint256 epoch
    );
    event RedemptionCompleted(
        address indexed user,
        uint256 ultraAmount,
        uint256 indexed epoch
    );
    event BPSDenominatorSet(uint256 oldDenominator, uint256 newDenominator);
    error UltraZeroAddress();
    error KycZeroAddress();
    error ultraManagerZeroAddress();
    error WithdrawRequestAmountTooSmall();
    error KYCNotApproved();
}
