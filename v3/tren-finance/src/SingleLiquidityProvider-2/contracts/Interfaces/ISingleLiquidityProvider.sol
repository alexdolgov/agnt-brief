// SPDX-License-Identifier: MIT
pragma solidity =0.8.23;

/// @title ISingleLiquidityProvider interface
/// @notice Defines the basic interface for SingleLiquidityProvider with structs, errors, events and
/// functions
interface ISingleLiquidityProvider {
    /**
     * @notice Struct for storing details of user's deposit
     * @param depositedAmount The amount of deposited stable
     * @param rewardDebt The amount of debt rewards
     * @param pendingRewards The amount of pending rewards
     * @param shares The amount of shares
     * @param amountToWithdraw The total amount to withdraw with requests
     */
    struct Deposit {
        uint256 depositedAmount;
        uint256 rewardDebt;
        uint256 pendingRewards;
        uint256 shares;
        uint256 amountToWithdraw;
    }

    /**
     * @notice Struct for storing details of withdraw request
     * @param amountToWithdraw The amount to withdraw
     * @param unlockTimestamp The timestamp of request unlocking
     */
    struct Request {
        uint256 amountToWithdraw;
        uint256 unlockTimestamp;
    }

    /**
     * @dev Event emitted when init function is initialized
     * @param startDate The start date of rewards calculation
     * @param endDate The end date of rewards calculation
     * @param totalAllocation The amount of total allocation
     * @param allocationPerSecond The amount of allocation per second
     */
    event Initialized(
        uint256 startDate, uint256 endDate, uint256 totalAllocation, uint256 allocationPerSecond
    );

    /**
     * @dev Event emitted when deposit status is changed
     * @param status The new status
     */
    event DepositStatusChanged(bool status);

    /**
     * @dev Event emitted when claim status is changed
     * @param status The new status
     */
    event ClaimStatusChanged(bool status);

    /**
     * @dev Event emitted when contracts addresses are set in constructor
     * @param treasury The address of treasury
     * @param stable The address of stable
     * @param vault The address of Arrakis V2 vault
     * @param debtToken The address of debt token
     */
    event AddressesSet(address treasury, address stable, address vault, address debtToken);

    /**
     * @dev Event emitted when TREN token is set
     * @param trenToken The address of TREN token
     */
    event TrenTokenSet(address trenToken);

    /**
     * @dev Event emitted when amount of stable coins was deposited
     * @param user The address of user
     * @param amount The amount of deposited stable coins
     */
    event Deposited(address indexed user, uint256 amount);

    /**
     * @dev Event emitted when withdraw request was made
     * @param user The address of user
     * @param requestId The id of new request
     * @param amount The requested amount to withdraw
     */
    event Requested(address indexed user, uint256 indexed requestId, uint256 amount);

    /**
     * @dev Event emitted when stable was withdrawn
     * @param user The address of user
     * @param id The id of investment
     * @param amount The amount of withdrawn
     */
    event Withdrawn(address indexed user, uint256 indexed id, uint256 amount);

    /**
     * @dev Event emitted when rewards were claimed
     * @param user The address of user
     * @param rewardAmount The amount of rewards
     */
    event ClaimRewards(address indexed user, uint256 rewardAmount);

    /**
     * @notice Emitted when the reward per share is updated
     * @param timestamp The time at which the reward per share was updated
     * @param totalDepositedAmount The total number of deposited tokens at the time of the update
     * @param rewardPerShare The updated reward per share value
     */
    event UpdatedRewardsPerShare(
        uint256 indexed timestamp, uint256 totalDepositedAmount, uint256 rewardPerShare
    );

    /**
     * @dev Event emitted when deposit was removed
     * @param user The address of user
     */
    event DepositRemoved(address indexed user);

    /// @dev Error emitted when init function is already initialized
    error AlreadyInitialized();

    /// @dev Error emitted when locked time is not passed
    error LockedTimeNotPassed();

    /// @dev Error emitted when contructor is called with zero address
    error NoZeroAddress();

    /// @dev Error emitted when amount in function's argument is zero
    error NoZeroAmount();

    /// @dev Error emitted when user's LP token balance is not enough
    error InsufficientBalance();

    /// @dev Error emitted when specific id does not belong to user
    error IdNotBelongsToUser();

    /// @dev Error emitted when amount is outside of deposit
    error AmountOutsideOfDeposit();

    /// @dev Error emitted when deposit is suspended
    error DepositSuspended();

    /// @dev Error emitted when claim is suspended
    error ClaimSuspended();

    /// @dev Error emitted when owner tries renounce ownership which is disabled
    error RenounceOwnershipDisabled();

    /**
     * @notice Function to deposit liquidity in Gamma Vault
     * @param amount The amount of deposited stable coins
     */
    function deposit(uint256 amount) external;

    /**
     * @notice Function to request a withdrawal
     * @param amount The requested amount to withdraw
     */
    function withdrawRequest(uint256 amount) external;

    /**
     * @notice Function to withdraw liquidity from Gamma Vault (after creating a withdrawal request)
     * @param requestId The id of request
     */
    function withdraw(uint256 requestId) external;

    /// @notice Function to claim rewards
    function claimRewards() external;
}
