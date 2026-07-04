// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

/**
 * @dev Error thrown when an operation is attempted by a user without KYC approval
 */
error OnlyApprovedKYCUser();

/**
 * @dev Error thrown when an operation is attempted by an address other than the collateral manager
 */
error OnlyCollateralManager();

/**
 * @dev Error thrown when attempting to deposit while deposits are disabled
 */
error DepositNotEnabled();

/**
 * @dev Error thrown when attempting to deposit a token that is not enabled
 * @param token The token address that is not enabled for deposit
 */
error TokenNotEnabledForDeposit(address token);

/**
 * @dev Error thrown when attempting to deposit native token with zero value
 */
error NoNativeTokenSent();

/**
 * @dev Error thrown when an invalid token address is provided
 * @param token The invalid token address
 */
error InvalidToken(address token);

/**
 * @dev Error thrown when an invalid amount is provided
 * @param amount The invalid amount
 */
error InvalidAmount(uint256 amount);

/**
 * @dev Error thrown when an invalid custodian is provided for a token
 * @param custodian The invalid custodian address
 * @param token The token address
 */
error InvalidCustodian(address custodian, address token);

/**
 * @dev Error thrown when trying to add a custodian that is already set for a token
 * @param custodian The custodian address
 * @param token The token address
 */
error CustodianAlreadySet(address custodian, address token);

/**
 * @dev Error thrown when an insufficient allowance is provided
 * @param sender The sender address
 * @param allowance The current allowance
 * @param needed The required allowance
 */
error InsufficientAllowance(address sender, uint256 allowance, uint256 needed);

/**
 * @dev Error thrown when an invalid admin address is provided
 */
error InvalidAdminAddress();

/**
 * @dev Error thrown when an invalid KYC registry address is provided
 */
error InvalidKYCRegistryAddress();

/**
 * @dev Error thrown when an invalid operator address is provided
 */
error InvalidOperatorAddress();

/**
 * @dev Error thrown when an invalid registry address is provided
 */
error InvalidRegistryAddress();

/**
 * @dev Error thrown when an invalid calculator address is provided
 */
error InvalidCalculatorAddress();

/**
 * @dev Error thrown when an invalid collateral manager address is provided
 */
error InvalidCollateralManagerAddress();

/**
 * @dev Error thrown when an invalid redemption manager address is provided
 */
error InvalidRedemptionManagerAddress();

/**
 * @dev Error thrown when shares received is less than minimum expected
 * @param received The amount of shares received
 * @param minimum The minimum amount of shares expected
 */
error InsufficientShares(uint256 received, uint256 minimum);

/**
 * @dev Error thrown when trying to set deposit state to its current value
 * @param depositEnabled The deposit enabled value
 */
error DepositStateAlreadySet(bool depositEnabled);

/**
 * @dev Error thrown when an invalid recipient address is provided
 * @param recipient The invalid recipient address
 */
error InvalidRecipient(address recipient);

/**
 * @dev Error thrown when attempting to claim fees when there are none
 */
error NoFeesToClaim();

/**
 * @dev Error thrown when an operation is attempted by an address other than the redemption manager
 */
error OnlyRedemptionManager();

/**
 * @dev Error thrown when trying to lock more tokens than are available
 * @param available The current available balance
 * @param required The required balance
 */
error InsufficientAvailableBalance(uint256 available, uint256 required);

/**
 * @dev Error thrown when trying to unlock more collateral tokens than are locked
 * @param token The token address
 * @param locked The amount of tokens currently locked
 * @param requested The amount requested to unlock
 */
error InsufficientLockedCollateral(
  address token,
  uint256 locked,
  uint256 requested
);

/**
 * @dev Error thrown when trying to transfer more redemption tokens than are locked
 * @param token The token address
 * @param locked The amount of tokens currently locked
 * @param requested The amount requested to transfer
 */
error InsufficientLockedRedeemableBalance(
  address token,
  uint256 locked,
  uint256 requested
);

/**
 * @dev Error thrown when an invalid sender address is provided
 * @param sender The invalid sender address
 */
error InvalidSender(address sender);

/**
 * @dev Error thrown when an insufficient balance is provided
 * @param balance The current balance
 * @param amount The required amount
 */
error InsufficientBalance(uint256 balance, uint256 amount);
