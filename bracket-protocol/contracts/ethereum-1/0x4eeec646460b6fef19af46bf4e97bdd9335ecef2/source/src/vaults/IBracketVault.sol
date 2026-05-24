// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.25;

import {IERC20} from "openzeppelin-contracts/token/ERC20/IERC20.sol";
import {IRebasingToken} from "./IRebasingToken.sol";

/**
 * @title IBracketVault
 * @notice Interface for the BracketVault contract which manages deposits, withdrawals, and NAV updates
 */
interface IBracketVault is IRebasingToken {
    error FeeClaimInterval();
    error InsufficientBalance();
    error InsufficientManagerFunds();
    error InvalidWithdrawalDelay();
    error InvalidLength();
    error NoDeposits();
    error NoFeesToClaim();
    error VaultAlreadyStarted();
    error VaultNotStarted();
    error VaultLocked();
    error VaultNotLocked();
    error WithdrawalAlreadyQueued();
    error WithdrawalNotReady();
    error ZeroAddress();
    error ZeroAmount();

    /**
     * @notice Represents the status of a withdrawal request
     * @param Unset Initial state, withdrawal has not been requested
     * @param Queued Withdrawal has been requested but not yet ready for claiming
     * @param Ready Withdrawal is ready to be claimed
     * @param Partial Withdrawal was partially processed due to insufficient funds
     * @param Completed Withdrawal has been fully processed and claimed
     */
    enum WithdrawalStatus {
        Unset,
        Queued,
        Ready,
        Partial,
        Completed
    }

    /**
     * @notice Structure representing a user's deposit
     * @param epoch The epoch when the deposit was made
     * @param assets The amount of assets deposited
     */
    struct Deposit {
        uint16 epoch;
        uint256 assets;
    }

    /**
     * @notice Emitted when a deposit happens
     * @param user Address of the user making the deposit
     * @param assets Amount of assets to deposit
     * @param epoch Epoch when the deposit can be claimed
     */
    event PendingDeposit(address indexed user, uint256 assets, uint16 epoch);

    /**
     * @notice Emitted when a withdrawal is scheduled
     * @param user Address of the user scheduling the withdrawal
     * @param shares Amount of shares to withdraw
     * @param claimEpoch Epoch when the withdrawal can be claimed
     * @param timestamp Time when the withdrawal was scheduled
     * @param salt Random value to prevent withdrawal hash collisions
     */
    event ScheduledWithdrawal(address indexed user, uint256 shares, uint16 claimEpoch, uint256 timestamp, bytes32 salt);

    /**
     * @notice Emitted when a withdrawal is claimed
     * @param user Address of the user claiming the withdrawal
     * @param withdrawalId Unique identifier of the withdrawal
     * @param shares Amount of shares withdrawn
     * @param assets Amount of assets received
     * @param remainingAssets Amount of assets still owed if partial withdrawal
     */
    event ClaimedWithdrawal(
        address indexed user, bytes32 withdrawalId, uint256 shares, uint256 assets, uint256 remainingAssets
    );

    /**
     * @notice Emitted when NAV is updated
     * @param epoch Current epoch number
     * @param nav New NAV value
     * @param clearedDeposits Total deposits processed
     * @param clearedWithdrawals Total withdrawals processed
     * @param managerPerformanceFee Performance fee for the manager
     * @param managerTvlFee TVL-based fee for the manager
     * @param brktTvlFee TVL-based fee for BRKT
     */
    event NavUpdated(
        uint256 indexed epoch,
        uint256 nav,
        uint256 clearedDeposits,
        uint256 clearedWithdrawals,
        int256 managerPerformanceFee,
        uint256 managerTvlFee,
        uint256 brktTvlFee
    );

    /**
     * @notice Emitted when vanity NAV is updated
     * @param epoch Current epoch number
     * @param newNav New vanity NAV value
     */
    event VanityNavUpdated(uint256 indexed epoch, uint256 newNav);

    /**
     * @notice Emitted when vault is started
     * @param totalDeposits Total initial deposits
     */
    event VaultStarted(uint256 totalDeposits);

    /**
     * @notice Starts the vault, transferring initial deposits to the manager
     * @dev Can only be called by NAV_UPDATER_ROLE
     */
    function startVault() external;

    /**
     * @notice Updates the NAV and processes deposits/withdrawals
     * @param newNav New NAV value
     * @param managerPerformanceFee Performance fee for the manager
     * @param managerTvlFee TVL-based fee for the manager
     * @param brktTvlFee TVL-based fee for BRKT
     */
    function updateNav(uint256 newNav, int256 managerPerformanceFee, uint256 managerTvlFee, uint256 brktTvlFee) external;

    /**
     * @notice Updates the vanity NAV value
     * @param newNav New vanity NAV value
     */
    function updateVanityNav(uint256 newNav) external;

    /**
     * @notice Claims accrued manager performance fees
     */
    function claimManagerPerformanceFees() external;

    /**
     * @notice Claims accrued manager TVL fees
     */
    function claimManagerTvlFees() external;

    /**
     * @notice Claims accrued BRKT TVL fees
     */
    function claimBrktTvlFees() external;

    /**
     * @notice Deposits assets into the vault
     * @param assets Amount of assets to deposit
     */
    function deposit(uint256 assets) external;

    /**
     * @notice Initiates a withdrawal request
     * @param assets Amount of assets to withdraw
     * @param salt Random value to prevent withdrawal hash collisions
     */
    function withdraw(uint256 assets, bytes32 salt) external;

    /**
     * @notice Claims a previously scheduled withdrawal
     * @param shares Amount of shares to withdraw
     * @param claimEpoch Epoch when the withdrawal can be claimed
     * @param timestamp Time when the withdrawal was scheduled
     * @param salt Random value used in the withdrawal request
     */
    function claimWithdrawal(uint256 shares, uint16 claimEpoch, uint256 timestamp, bytes32 salt) external;

    /**
     * @notice Returns the amount of assets that can be withdrawn by an account
     * @param account Address to check
     * @return Amount of withdrawable assets
     */
    function withdrawableAssets(address account) external view returns (uint256);

    /**
     * @notice Returns the status and hash of a withdrawal request
     * @param user Address of the user
     * @param amount Amount of shares to withdraw
     * @param claimEpoch Epoch when the withdrawal can be claimed
     * @param timestamp Time when the withdrawal was scheduled
     * @param salt Random value used in the withdrawal request
     * @return WithdrawalStatus status of the withdrawal
     * @return bytes32 hash of the withdrawal
     */
    function getWithdrawalStatusAndHash(address user, uint256 amount, uint16 claimEpoch, uint256 timestamp, bytes32 salt)
        external
        view
        returns (WithdrawalStatus, bytes32);

    /**
     * @notice Computes the hash of a withdrawal request
     * @param user Address of the user
     * @param claimEpoch Epoch when the withdrawal can be claimed
     * @param shares Amount of shares to withdraw
     * @param timestamp Time when the withdrawal was scheduled
     * @param salt Random value to prevent hash collisions
     * @return Hash of the withdrawal request
     */
    function hashWithdrawal(address user, uint16 claimEpoch, uint256 shares, uint256 timestamp, bytes32 salt)
        external
        pure
        returns (bytes32);

    /**
     * @notice Returns the total number of active shares in the vault
     * @return Total number of active shares
     */
    function totalActiveShares() external view returns (uint256);

    /**
     * @notice epoch accessor
     */
    function epoch() external view returns (uint16);
    /**
     * @notice withdrawDelay accessor
     */
    function withdrawDelay() external view returns (uint16);

    /**
     * @notice vanityNav accessor
     */
    function vanityNav() external view returns (uint256);

}
