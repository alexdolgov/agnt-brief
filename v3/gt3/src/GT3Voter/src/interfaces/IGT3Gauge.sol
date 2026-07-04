// SPDX-License-Identifier: Unlicense
pragma solidity 0.8.24;

/// @title IGT3Gauge
/// @author gt3.finance
/// @notice Interface for the GT3 Gauge contract, which manages deposits, rewards, and fees for users.
interface IGT3Gauge {
    /// @notice Error thrown when attempting to deposit a zero amount.
    error GT3GaugeDepositZero();

    /// @notice Error thrown when a non-voter address attempts to call a restricted function.
    error GT3GaugeOnlyVoter(address sender);

    /// @notice Error thrown when a non-owner or non-voter address attempts to claim rewards.
    error GT3GaugeOnlyAccountOrVoter(address sender);

    /// @notice Error thrown when a user attempts to withdraw more than their balance.
    error GT3GaugeInsufficientBalance(uint256 balance, uint256 needed);

    /// @notice Error thrown when attempting to notify a zero reward amount.
    error GT3GaugeAmountZero();

    /// @notice Error thrown when a zero address is provided for the pair.
    error GT3GaugeZeroPair();

    /// @notice Error thrown when a zero address is provided for the voter.
    error GT3GaugeZeroVoter();

    /// @notice Error thrown when a zero address is provided for the bribe.
    error GT3GaugeZeroBribe();

    /// @notice Error thrown when a zero address is provided for the GT3 token.
    error GT3GaugeZeroGT3();

    /// @notice Error thrown when attempting to claim rewards on a disallowed pair.
    error GT3GaugeRewardCanNotPair();

    /// @notice Error thrown when the reward is too low.
    error GT3GaugeRewardTooLow();

    /// @notice Error thrown when the reward is too high.
    error GT3GaugeRewardTooHigh();

    /// @notice Error thrown when the reward rate is zero.
    error GT3GaugeRewardRateZero();

    /// @notice Error thrown when a reentrant call is detected.
    error GT3GaugeReentrancyGuardReentrantCall();

    /// @notice Event emitted when a deposit is made.
    /// @param sender The address making the deposit.
    /// @param account The address of the account receiving the deposit.
    /// @param amount The amount deposited.
    event Deposit(address indexed sender, address indexed account, uint256 amount);

    /// @notice Event emitted when rewards are claimed.
    /// @param from The address claiming the rewards.
    /// @param amount The amount of rewards claimed.
    event ClaimRewards(address indexed from, uint256 amount);

    /// @notice Event emitted when a new reward amount is notified.
    /// @param from The address notifying the reward.
    /// @param amount The amount of reward notified.
    event NotifyReward(address indexed from, uint256 amount);

    /// @notice Event emitted when an amount is withdrawn.
    /// @param from The address making the withdrawal.
    /// @param amount The amount withdrawn.
    event Withdraw(address indexed from, uint256 amount);

    /// @notice Event emitted when fees are claimed.
    /// @param from The address claiming the fees.
    /// @param claimed0 The amount of token 0 fees claimed.
    /// @param claimed1 The amount of token 1 fees claimed.
    event ClaimFees(address indexed from, uint256 claimed0, uint256 claimed1);

    /// @notice Returns the address of the GT3 token.
    /// @return The address of the GT3 token.
    function gt3() external view returns (address);

    /// @notice Returns the address of the voter contract.
    /// @return The address of the voter contract.
    function voter() external view returns (address);

    /// @notice Returns the address of the liquidity pair.
    /// @return The address of the liquidity pair.
    function pair() external view returns (address);

    /// @notice Returns the address of the bribe contract.
    /// @return The address of the bribe contract.
    function bribe() external view returns (address);

    /// @notice Returns the current reward rate.
    /// @return The current reward rate.
    function rewardRate() external view returns (uint256);

    /// @notice Returns the time when the reward period finishes.
    /// @return The time when the reward period finishes.
    function periodFinish() external view returns (uint256);

    /// @notice Returns the last update time for rewards.
    /// @return The last update time for rewards.
    function lastUpdateTime() external view returns (uint256);

    /// @notice Returns the accumulated reward per token.
    /// @return The accumulated reward per token.
    function rewardPerTokenStored() external view returns (uint256);

    /// @notice Returns the total supply of deposited tokens.
    /// @return The total supply of tokens.
    function totalSupply() external view returns (uint256);

    /// @notice Returns the accumulated fees of token 0.
    /// @return The amount of token 0 fees.
    function fees0() external view returns (uint256);

    /// @notice Returns the accumulated fees of token 1.
    /// @return The amount of token 1 fees.
    function fees1() external view returns (uint256);

    /// @notice Returns the balance of a specific account.
    /// @param account The address of the account.
    /// @return The balance of the account.
    function balanceOf(address account) external view returns (uint256);

    /// @notice Returns the user reward per token paid for a specific account.
    /// @param account The address of the account.
    /// @return The user reward per token paid.
    function userRewardPerTokenPaid(address account) external view returns (uint256);

    /// @notice Returns the rewards for a specific account.
    /// @param account The address of the account.
    /// @return The rewards for the account.
    function rewards(address account) external view returns (uint256);

    /// @notice Returns the reward rate by epoch.
    /// @param epoch The epoch number.
    /// @return The reward rate for the epoch.
    function rewardRateByEpoch(uint256 epoch) external view returns (uint256);

    /// @notice Notifies a reward amount to the contract.
    /// @param amount The amount of reward to notify.
    function notifyRewardAmount(uint256 amount) external;

    /// @notice Returns the amount of reward left to distribute.
    /// @return The remaining reward amount.
    function left() external view returns (uint256);

    /// @notice Deposits all tokens from the sender into the contract.
    function depositAll() external;

    /// @notice Deposits a specific amount of tokens into the contract.
    /// @param amount The amount of tokens to deposit.
    function deposit(uint256 amount) external;

    /// @notice Deposits a specific amount of tokens into the contract with permit.
    /// @param amount The amount of tokens to deposit.
    /// @param deadline The deadline for the permit.
    /// @param v The v value of the permit signature.
    /// @param r The r value of the permit signature.
    /// @param s The s value of the permit signature.
    function deposit(uint256 amount, uint256 deadline, uint8 v, bytes32 r, bytes32 s) external;

    /// @notice Deposits a specific amount of tokens into the contract for a specified account.
    /// @param account The address of the account to deposit for.
    /// @param amount The amount of tokens to deposit.
    function depositFor(address account, uint256 amount) external;

    /// @notice Deposits a specific amount of tokens into the contract for a specified account with permit.
    /// @param account The address of the account to deposit for.
    /// @param amount The amount of tokens to deposit.
    /// @param deadline The deadline for the permit.
    /// @param v The v value of the permit signature.
    /// @param r The r value of the permit signature.
    /// @param s The s value of the permit signature.
    function depositFor(address account, uint256 amount, uint256 deadline, uint8 v, bytes32 r, bytes32 s) external;

    /// @notice Returns the amount of rewards earned by an account.
    /// @param account The address of the account for which rewards will be calculated.
    /// @return The amount of rewards earned.
    function earned(address account) external view returns (uint256);

    /// @notice Gets the accumulated rewards for an account.
    /// @param account The address of the account for which rewards will be claimed.
    function getReward(address account) external;

    /// @notice Withdraws a specific amount of tokens from the contract.
    /// @param amount The amount of tokens to withdraw.
    function withdraw(uint256 amount) external;

    /// @notice Initializes the contract with the given parameters.
    /// @param pair_ The address of the liquidity pair.
    /// @param voter_ The address of the voter contract.
    /// @param bribe_ The address of the bribe contract.
    function initialize(address pair_, address voter_, address bribe_) external;

    /// @notice Returns the last time the reward was applicable.
    /// @return The last applicable time for the reward.
    function lastTimeRewardApplicable() external view returns (uint256);

    /// @notice Returns the current reward per token.
    /// @return The current reward per token.
    function rewardPerToken() external view returns (uint256);
}
