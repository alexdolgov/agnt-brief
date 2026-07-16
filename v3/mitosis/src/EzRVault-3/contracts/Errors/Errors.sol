// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.27;

/// @dev Error for 0x0 address inputs
error InvalidZeroInput();

/// @dev Error when owner tries to sweep 0 balance token
error InvalidZeroBalance();

/// @dev Error when strategy does not have specified underlying
error InvalidStrategy();

/// @dev Error when vault with same salt already created
error VaultAlreadyCreated();

/// @dev Error when vault is already delegated
error AlreadyDelegated();

/// @dev Error when strategy underlying token does not match vault underlying token
error InvalidUnderlyingToken();

/// @dev Error when invalid token amount is deposited
error InvalidTokenAmount();

/// @dev Error when withdrawer is not the claimer
error UnAuthorizedClaimer();

/// @dev Error when vault is not delegated to any Operator
error VaultNotDelegated();

/// @dev error when try to configure maxCooldownBlocksBasisPoints > 100%
error InvalidMaxCooldownBlocksBasisPoints();

/// @dev Error when vault owner tries to configure cooldown less than EigenLayer cooldown
error InvalidWithdrawalCooldown();

/// @dev Error when admin tried to update cooldown more than 50% of minCooldownBlocks
error ExceedMaxCooldownBlocks();

/// @dev Error when admin tries to update cooldown blocks before cooldownBlocksUpdateDelay
error EarlyCooldownBlocksUpdate();

/// @dev Error when user tries to claim withdrawRequest before cooldownBlocks
error EarlyClaim();

/// @dev Error when vault owner tries to track user initiated withdrawal through emergency tracking
error UserWithdrawalAlreadyTracked();

/// @dev Error when emergency tracking already tracked withdrawal
error WithdrawalAlreadyTracked();

/// @dev Error when emergency tracking already completed withdrawal
error WithdrawalAlreadyCompleted();

/// @dev Error when vault owner tries to complete invalid Withdrawal
error InvalidWithdrawal();

/// @dev Error when vault owner tries to configure more than 100% as fee
error InvalidFee();

/// @dev Error when vault owner tried to claim rewards without specifying rewards destination
error RewardsDestinationNotConfigured();

/// @dev Error when vault is paused
error VaultPaused();

/// @dev Error when non pauser tries to change pause state
error NotPauser();

/// @dev Error when vaultOwner tries to sweep LP token
error InvalidTokenSweep();

/// @dev Error when someone tries to buy auction when not started
error AuctionNotStarted();

/// @dev Error when Initial price is lower than min
error InitPriceBelowMin();

/// @dev Error when Initial price greater than max
error InitPriceExceedsMax();

/// @dev Error when Epoch Period is lower than min
error EpochPeriodBelowMin();

/// @dev Error when Epoch Period is greater than max
error EpochPeriodExceedsMax();

/// @dev Error when Price Multiplier is lower than min
error PriceMultiplierBelowMin();

/// @dev Error when Price Multiplier is greater than max
error PriceMultiplierExceedsMax();

/// @dev Error when minimum Initial Price lower than Min
error MinInitPriceBelowMin();

/// @dev Error when user tries to buy auction while Deadline is passed
error DeadlinePassed();

/// @dev Error when user tries to buy auction with empty asset list
error EmptyAssets();

/// @dev Error when user tries to buy auction with incorrect Epoch Id
error EpochIdMismatch();

/// @dev Error when auction price is greater than max amount provided by user
error MaxPaymentTokenAmountExceeded();

/// @dev Error when owner tries to update already started auction
error AuctionAlreadyStarted();

/// @dev Error when auctionId already present in EzAuctionFactory
error AuctionAlreadyCreated();

/// @dev Error when owner tries to start auction with a lower initial price
error InvalidInitPrice();

/// @dev Error when user tries to buy auction when paused
error AuctionPaused();

/// @dev Error when called is not allowed to call processRewards
error NotRewardsProofSubmitter();

/// @dev Error when unexpected token received
error InvalidToken();

/// @dev Error when function called by account that is not owner or auctionStarter
error NotOwnerOrAuctionStarter();

/// @dev Error when low level call fails
error CallFailed();

/// @dev Error when Withdrawal is not queued
error WithdrawalNotQueued();

/// @dev Error when TVL limit is exceeded
error TvlLimitExceeded();

/// @dev Error when withdraw timestamp is not reached
error WithdrawUnlockNotReached();

/// @dev Error when withdraw timestamp is in the past
error InvalidWithdrawUnlockTimestamp();
