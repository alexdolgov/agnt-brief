// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IUltraManager {
    function requestMint(uint256 collateralIn) external;

    function requestRedemption(uint256 amountSharesTokenToRedeem, bool fullWithdrawal) external;
    function setMinimumDepositAmount(uint256 _minimumDepositAmount) external;

    function setMintFee(uint256 _mintFee) external;

    function transferCollateral(
        address tokenAddress,
        address to,
        uint256 amount
    ) external;

    function completeRedemptions(
        address redeemer,
        uint256 epochToClaim,
        uint256 amountAfterFee
    ) external;

    function resolveDeposit(
        address user,
        uint256 epochToClaim,
        uint256 afterFeeAmount
    ) external;

    function setNavForMultipleEpochs(
        uint256 navScaled,
        uint256[] memory epochsToSet
    ) external;

    function overrideExchangeRate(
        uint256 correctExchangeRate,
        uint256 epochToSet,
        uint256 _lastSetMintExchangeRate
    ) external;

    function transitionEpochExternal() external;

    function getContractStartTimestamp() external view returns (uint256);

    function getTotalAndProcessingCount() external view returns (
        uint256 erc20Balance, 
        uint256 totalDue, 
        uint256 processingCount
    ) ;    
    
    event TransferPromiseFulfilled(
        address indexed from,
        address indexed to,
        uint256 amount
    );

    event TransferPromiseCreated(
        address indexed from,
        address indexed to,
        uint256 amount
    );

    event CollateralTransfered(
        address tokenAddress,
        address to,
        uint256 amount,
        address resolver
    );

    event BPSDenominatorSet(uint256 oldDenominator, uint256 newDenominator);

    event RedemptionRemoved(uint256 index, uint256 queueLength);

    event MinimumDepositAmountSet(uint256 oldMinimum, uint256 newMinimum);
    event MintRequested(
        address indexed user,
        uint256 indexed epoch,
        uint256 collateralAmountDeposited,
        uint256 depositAmountAfterFee,
        uint256 feeAmount
    );
    event RedemptionRequested(
        address indexed user,
        uint256 cashAmountIn,
        uint256 indexed epoch
    );
    event MintLimitSet(uint256 oldLimit, uint256 newLimit);
    event RedeemLimitSet(uint256 oldLimit, uint256 newLimit);
    event RedemptionFailedDueToKYC(
        address indexed redeemer,
        uint256 epoch,
        uint256 amountUltra
    );
    event DepositRefundWithoutCollateral(
        address indexed refundee,
        uint256 epoch,
        uint256 amountRequested
    );

    event RedemptionRefunded(
        address indexed refundee,
        uint256 amountUltra,
        uint256 epoch
    );

    event TransferPromiseRefunded(
        address indexed from,
        address indexed to,
        uint256 amount
    );

    event RefundIssued(
        address indexed user,
        uint256 cashAmountOut,
        uint256 indexed epoch,
        address indexed resolver
    );
    event EpochTransition(uint256 prevEpoch, uint256 currentEpoch);
    event DepositRefundIssued(
        address indexed user,
        uint256 cashAmountOut,
        uint256 indexed epoch,
        address indexed resolver
    );
    event RedemptionCompleted(
        address indexed user,
        uint256 cashAmountRequested,
        uint256 collateralAmountReturned,
        uint256 indexed epoch
    );
    event RedemptionProcessing(
        address indexed user,
        uint256 indexed epoch,
        address indexed resolver
    );
    event RedemptionFeesCollected(
        address indexed beneficiary,
        uint256 collateralAmountOut,
        uint256 indexed epoch
    );
    event AssetSenderSet(address oldAssetSender, address newAssetSender);
    event AssetRecipientSet(
        address oldAssetRecipient,
        address newAssetRecipient
    );
    event FeeRecipientSet(address oldFeeRecipient, address newFeeRecipient);
    event PendingRedemptionBalanceSet(
        address indexed user,
        uint256 indexed epoch,
        uint256 balance,
        uint256 totalBurned
    );
    event MintCompleted(
        address indexed user,
        uint256 cashAmountOut,
        uint256 collateralAmountDeposited,
        uint256 exchangeRate,
        uint256 indexed epochClaimedFrom,
        address indexed resolver
    );
    event EpochDurationSet(uint256 oldDuration, uint256 newDuration);
    event MintFeeSet(uint256 oldFee, uint256 newFee);
    event MintExchangeRateCheckFailed(
        uint256 indexed epoch,
        uint256 lastEpochRate,
        uint256 newRate
    );
    event MintExchangeRateSet(
        uint256 indexed epoch,
        uint256 oldRate,
        uint256 newRate
    );
    event MintExchangeRateOverridden(
        uint256 indexed epoch,
        uint256 oldRate,
        uint256 newRate,
        uint256 lastSetMintExchangeRate
    );

    event PendingRedemptions(uint256 remainingRedemptions);

    event MinimumRedeemAmountFiatSet(uint256 oldMinimum, uint256 newMinimum);

    error CollateralZeroAddress();
    error UltraZeroAddress();
    error KycZeroAddress();
    error MinimumDepositAmountTooSmall();
    error MintRequestAmountTooSmall();
    error MintExceedsRateLimit();
    error NoUltraToClaim();
    error ExchangeRateNotSet();
    error AssetRecipientZeroAddress();
    error AssetSenderZeroAddress();
    error RedeemAmountCannotBeZero();
    error RedeemExceedsRateLimit();
    error WithdrawRequestAmountTooSmall();
    error MustServicePastEpoch();
    error CollateralRedemptionTooSmall();
    error CannotServiceFutureEpoch();
    error KYCNotApproved();
    error MintFeeTooLarge();
    error ZeroExchangeRate();
    error EpochNotElapsed();
    error EpochExchangeRateAlreadySet();
}
