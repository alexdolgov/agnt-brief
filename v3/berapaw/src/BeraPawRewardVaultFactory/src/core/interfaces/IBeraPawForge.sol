// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

import { IErrors } from "./IErrors.sol";

interface IBeraPawForge is IErrors {
    /* ´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /* STRUCTS */
    /* .•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    struct RedeemPosition {
        uint128 queued;
        uint128 available;
    }

    struct RedeemQueue {
        address account;
        uint96 blockNumber;
    }

    struct BribeBack {
        address recipient;
        uint96 percentual;
    }

    /* ´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /* EVENTS */
    /* .•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /// @notice Emitted when LBGT is minted.
    /// @param account The user for whom rewards were claimed.
    /// @param rewardVault The rewards vault from which rewards were claimed.
    /// @param recipient The address receiving the minted LBGT.
    /// @param amount The amount of LBGT minted.
    event LBGTMinted(address indexed account, address indexed rewardVault, address indexed recipient, uint256 amount);

    event Referred(address indexed account, bytes32 indexed referrer, uint256 amount);

    /// @notice Emitted when an address is set to get voting rights on behalf of this contract.
    /// @dev Triggered by {delegate}.
    /// @param delegate The address that will receive the voting power.
    event Delegated(address indexed delegate);

    /// @notice Emitted when treasury address is updated
    /// @dev Triggered when treasury address is set
    /// @param treasury The new treasury address
    event TreasurySet(address indexed treasury);

    /// @notice Emitted when a user queues LBGT for redemption
    /// @dev Triggered in `queueRedeem` function
    /// @param account The address requesting redemption
    /// @param amount The amount of LBGT being queued
    event RedeemQueued(address indexed account, uint256 amount);

    /// @notice Emitted when LBGT is redeemed for BGT
    /// @dev Triggered in `redeem` function
    /// @param account The address redeeming LBGT
    /// @param recipient The address receiving BGT
    /// @param amount The amount being redeemed
    event Redeemed(address indexed account, address indexed recipient, uint256 amount);

    /// @notice Emitted when a redemption request is processed by a solver
    /// @dev Triggered in `processRedemptions` function
    /// @param account The address whose redemption is being processed
    /// @param recipient The solver's address receiving LBGT
    /// @param amount The amount processed that the user will be able to claim
    event RedeemProcessed(address indexed account, address indexed recipient, uint256 amount);

    /// @notice Emitted when a manager is set for an account's rewards vault
    /// @dev Triggered in `setManager` function
    /// @param account The address setting the manager
    /// @param rewardVault The rewards vault address
    /// @param manager The new manager address
    event ManagerSet(address indexed account, address indexed rewardVault, address indexed manager);

    /// @notice Emitted when queue delay is updated
    /// @dev Triggered in `setQueueDelay` function
    /// @param queueDelay The new queue delay value
    event QueueDelaySet(uint256 queueDelay);

    /// @notice Emitted when minimum redeem amount is updated
    /// @dev Triggered in `setMinimumRedeemAmount` function
    /// @param minimumRedeemAmount The new minimum redeem amount
    event MinimumRedeemAmountSet(uint256 minimumRedeemAmount);

    /// @notice Emitted when processing fee is updated
    /// @dev Triggered in `setProcessingFee` function
    /// @param processingFee The new processing fee value
    event ProcessingFeeSet(uint256 processingFee);

    /// @notice Emitted when staker rewards are collected
    /// @dev Triggered in `collectStakerReward` function
    /// @param caller The address collecting the reward
    /// @param to The address receiving the reward
    /// @param amount The amount of rewards collected
    event StakerRewardCollected(address indexed caller, address indexed to, uint256 amount);

    event IncentivesCollected(address indexed token, address indexed to, uint256 amount);

    /// @notice Emitted when process redemptions toggle is updated
    /// @dev Triggered in `setOpenProcessRedemptions` function
    /// @param openProcessRedemptions The new state of process redemptions
    event OpenProcessRedemptionsSet(bool openProcessRedemptions);

    /**
     * @notice Emitted when the bribe back fee recipient is updated
     * @dev This event is triggered when the address that receives bribe back fees is changed
     * @param bribeBackFeeRecipient The new address that will receive bribe back fees
     */
    event BribeBackFeeRecipientSet(address indexed bribeBackFeeRecipient);

    /**
     * @notice Emitted when the bribe back fee percentage is updated
     * @dev This event is triggered when the fee percentage taken from bribe backs is modified
     * @param bribeBackFee The new fee percentage, represented with 18 decimals (1e18 = 100%)
     */
    event BribeBackFeeSet(uint256 bribeBackFee);

    /**
     * @notice Emitted when a reward vault's bribe back configuration is updated
     * @dev This event is triggered when a reward vault's bribe back recipient and percentage are set
     * @param rewardVault The address of the reward vault being configured
     * @param recipient The address that will receive the bribe back for this vault
     * @param percentual The percentage of rewards that will be taken as bribe back, with 18 decimals
     */
    event BribeBackSet(address indexed rewardVault, address indexed recipient, uint96 percentual);

    /* ´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /* ADMIN FUNCTIONS */
    /* .•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /// @notice Pause all user functions.
    /// @dev Only the curator can pause the forge.
    function pause() external;

    /// @notice Unpause the forge.
    /// @dev Only the admin can unpause the forge.
    function unpause() external;

    /// @notice Delegates the underlying BGT token to another address for voting purposes.
    /// this address can vote on behalf of this contract. Should be set to the governance
    /// timelock contract.
    /// @dev Only the admin can delegate the LBGT token.
    /// @param _delegate The address to delegate the underlying BGT token to.
    function delegate(address _delegate) external;

    /// @notice Sets the queue delay for redemptions.
    /// @dev Only the admin can set the queue delay.
    /// @param _queueDelay The new queue delay in blocks.
    function setQueueDelay(uint96 _queueDelay) external;

    /// @notice Sets the minimum redeem amount.
    /// @dev Only the admin can set the minimum redeem amount.
    /// @param _minimumRedeemAmount The new minimum redeem amount.
    function setMinimumRedeemAmount(uint128 _minimumRedeemAmount) external;

    /// @notice Sets the processing fee for redemptions.
    /// @dev Only the admin can set the processing fee.
    /// @param _processingFee The new processing fee as a percentage (1e18 = 100%).
    function setProcessingFee(uint256 _processingFee) external;

    /// @notice Sets whether redemption processing is open to non-processors
    /// @dev Only callable by GOD role
    /// @param _open True to allow anyone to process redemptions, false to restrict to processors only
    function setOpenProcessRedemptions(bool _open) external;

    /// @notice Updates the bribeback fee recipient address
    /// @dev Only callable by contract god
    /// @param _bribeBackFeeRecipient The new address that will receive bribeback fees
    function setBribeBackFeeRecipient(address _bribeBackFeeRecipient) external;

    /// @notice Updates the bribe back fee
    /// @dev Only callable by authorized roles
    /// @param _bribeBackFee The new bribe back fee percentage (in basis points)
    function setBribeBackFee(uint256 _bribeBackFee) external;

    /// @notice Sets the bribe back configuration for a given reward vault
    /// @dev This function allows setting the bribe back parameters for distributing rewards
    /// @param _rewardVault Address of the reward vault to configure bribe back for
    /// @param _bribeBack Struct containing bribe back configuration parameters
    function setBribeBack(address _rewardVault, BribeBack calldata _bribeBack) external;

    /* ´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /* PUBLIC FUNCTIONS */
    /* .•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /// @notice Sets the manager for a rewards vault.
    /// @param rewardVault The rewards vault to set the manager for.
    /// @param manager The address of the manager.
    function setManager(address rewardVault, address manager) external;

    /// @notice Sets the managers for a set of reward vaults.
    /// @dev rewardVaults and managers must have the same length.
    /// @param rewardVaults The reward vaults to set the manager for.
    /// @param managers Addresses of the managers.
    function setManagerMulti(address[] calldata rewardVaults, address[] calldata managers) external;

    /// @notice Mints LBGT for a user.
    /// @param user The user for whom rewards are claimed.
    /// @param rewardVault The rewards vault from which rewards are claimed.
    /// @param recipient The address receiving the minted LBGT.
    /// @return The amount of LBGT minted.
    function mint(address user, address rewardVault, address recipient) external returns (uint256);

    /// @notice Mints LBGT for multiple users.
    /// @param users Array of user addresses.
    /// @param rewardVaults Array of rewards vault addresses corresponding to users.
    /// @param recipients Array of recipient addresses.
    /// @return The total amount of LBGT minted.
    function mintMulti(
        address[] calldata users,
        address[] calldata rewardVaults,
        address[] calldata recipients
    )
        external
        returns (uint256);

    function mintPartial(
        address user,
        address rewardVault,
        address recipient,
        uint256 bgtAmount
    )
        external
        returns (uint256);

    /// @notice Mints LBGT for a user with a referrer.
    /// @param user The user for whom rewards are claimed.
    /// @param rewardVault The rewards vault from which rewards are claimed.
    /// @param recipient The address receiving the minted LBGT.
    /// @param referrer The referrer data.
    /// @return The amount of LBGT minted.
    function mintReferred(
        address user,
        address rewardVault,
        address recipient,
        bytes32 referrer
    )
        external
        returns (uint256);

    /// @notice Queues a redeem request for a user.
    /// @param amount The amount of LBGT to redeem.
    function queueRedeem(uint128 amount) external;

    /// @notice Redeems LBGT for a user.
    /// @param recipient The address receiving the redeemed amount.
    /// @param amount The amount of LBGT to redeem.
    function redeem(uint128 amount, address recipient) external;

    /// @notice Processes redemption requests.
    /// @param maxBatchSize The maximum number of redemption requests to process.
    /// @param recipient The address receiving the redeemed amount.
    function processRedemptions(uint128 maxBatchSize, address recipient) external payable;

    function arbRedeem(uint128 amount) external;

    /* ´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /* REWARDS FUNCTIONS */
    /* .•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    function collectStakerReward(address to) external returns (uint256);

    function collectIncentives(address token, address to, uint256 amount) external;

    /* ´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /* BOOSTER FUNCTIONS */
    /* .•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /**
     * @notice Queues a new boost of the validator with an amount of BGT from `msg.sender`.
     * @dev Reverts if `msg.sender` does not have enough unboosted balance to cover amount.
     * @param pubkey The pubkey of the validator to be boosted.
     * @param amount The amount of BGT to use for the queued boost.
     */
    function queueBoost(bytes calldata pubkey, uint128 amount) external;

    /**
     * @notice Cancels a queued boost of the validator removing an amount of BGT for `msg.sender`.
     * @dev Reverts if `msg.sender` does not have enough queued balance to cover amount.
     * @param pubkey The pubkey of the validator to cancel boost for.
     * @param amount The amount of BGT to remove from the queued boost.
     */
    function cancelBoost(bytes calldata pubkey, uint128 amount) external;

    /**
     * @notice Boost the validator with an amount of BGT.
     * @param pubkey The pubkey of the validator to be boosted.
     * @return bool False if amount is zero or if enough time has not passed, otherwise true.
     */
    function activateBoost(bytes calldata pubkey) external returns (bool);

    /**
     * @notice Queues a drop boost of the validator removing an amount of BGT for sender.
     * @dev Reverts if does not have enough boosted balance to cover amount.
     * @param pubkey The pubkey of the validator to remove boost from.
     * @param amount The amount of BGT to remove from the boost.
     */
    function queueDropBoost(bytes calldata pubkey, uint128 amount) external;

    /**
     * @notice Cancels a queued drop boost of the validator removing an amount of BGT for sender.
     * @param pubkey The pubkey of the validator to cancel drop boost for.
     * @param amount The amount of BGT to remove from the queued drop boost.
     */
    function cancelDropBoost(bytes calldata pubkey, uint128 amount) external;

    /**
     * @notice Drops an amount of BGT from an existing boost of validator.
     * @param pubkey The pubkey of the validator to remove boost from.
     * @return bool False if amount is zero or if enough time has not passed, otherwise true.
     */
    function dropBoost(bytes calldata pubkey) external returns (bool);

    /* ´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /* VIEW FUNCTIONS */
    /* .•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /**
     * @notice Returns the LBGT token address.
     * @return The address of LBGT.
     */
    function lbgtAddress() external view returns (address);

    /**
     * @notice Returns the BGT operator address for the given rewards vault and user.
     * @param rewardVault The rewards vault to get the BGT operator from.
     * @param account The user account to get the BGT operator from.
     * @return The BGT operator address for the given rewards vault and user.
     * @dev The BGT operator is the address that can claim BGT rewards for the given user and rewards vault.
     */
    function getBGTOperator(address rewardVault, address account) external view returns (address);

    /**
     * @notice Returns the amount of BGT minus the amount queued for redeem.
     * @return The amount of boostable BGT.
     */
    function boostableBGT() external view returns (uint256);

    /// @notice Returns the amount of LBGT tokens that are not part of the redemption queue
    /// @dev This amount represents LBGT tokens held by the contract that can be used as incentives
    /// @return The balance of LBGT tokens not committed to redemptions
    function lbgtIncentiveBalance() external view returns (uint256);

    /// @notice Returns the balance of incentive tokens held by the contract
    /// @dev For LBGT token, returns amount not committed to redemptions. For other tokens, returns total balance
    /// @param token The address of the token to check balance for
    /// @return The balance of incentive tokens available
    function incentiveBalance(address token) external view returns (uint256);

    /// @notice Returns the manager address for a given account and rewards vault
    /// @dev Used to track who can manage LBGT rewards for an account
    /// @param account The address of the account
    /// @param rewardVault The address of the rewards vault
    /// @return manager The address of the authorized manager
    function lbgtManager(address account, address rewardVault) external view returns (address);

    /// @notice Returns the redeem position for a given account
    /// @dev Contains details about user's pending redemption
    /// @param account The address of the account
    /// @return queued Amount of LBGT queued for redemption
    /// @return available Amount of LBGT available for redemption
    function redeemPosition(address account) external view returns (uint128 queued, uint128 available);

    /// @notice Returns redeem queue entry at specified index
    /// @dev Used to track all redemption requests in order
    /// @param index The position in the queue
    /// @return account The account that entered the queue entry details
    /// @return blockNumber The block where the queue entry started
    function redeemQueue(uint256 index) external view returns (address account, uint96 blockNumber);

    /// @notice Returns the current index in the redeem queue
    /// @dev Represents the next position to be processed
    /// @return Current queue index
    function redeemQueueIndex() external view returns (uint128);

    /// @notice Returns total number of entries in redeem queue
    /// @dev Represents total redemption requests
    /// @return Total queue size
    function totalRedeemQueue() external view returns (uint128);

    /// @notice Returns current processing fee
    /// @dev Fee charged for processing redemptions
    /// @return Current processing fee amount
    function processingFee() external view returns (uint256);

    /// @notice Returns delay period for queue processing
    /// @dev Minimum time that must pass before processing redemptions
    /// @return Delay period in seconds
    function queueDelay() external view returns (uint96);

    /// @notice Returns minimum amount required for redemption
    /// @dev Prevents dust amounts from being redeemed
    /// @return Minimum redemption amount
    function minimumRedeemAmount() external view returns (uint128);

    /// @notice Returns whether redemption processing is currently enabled
    /// @dev Controls if redemptions can be processed
    /// @return true if processing is open, false otherwise
    function isProcessRedemptionsOpen() external view returns (bool);

    /// @notice Returns the fee recipient for the bribeBack functionality
    /// @dev The fee is sent to this address
    /// @return BribeBack fee recipient
    function bribeBackFeeRecipient() external view returns (address);

    /// @notice Returns the fee percentage for the bribeBack functionality
    /// @dev The fee is represented in basis points
    /// @return Fee percentage in basis points
    function bribeBackFee() external view returns (uint256);

    /// @notice Returns the bribeBack configuration for a reward vault
    /// @dev Returns a struct containing reward vault's bribeBack configuration
    /// @param rewardVault The address of the reward vault
    /// @return recipient The address that receives the bribeback
    /// @return percentual The percentage of rewards allocated for bribeback
    function bribeBack(address rewardVault) external view returns (address recipient, uint96 percentual);

    function defaultBribeBack() external view returns (address recipient, uint96 percentual);

    function isBeraRedeemOpen() external view returns (bool);

    function previewMint(address _rewardVault, address _user) external view returns (uint256);

    function previewRedeem(uint256 lbgtAmount) external view returns (uint256);

    function previewPartialMint(address _rewardVault, uint256 _bgtAmount) external view returns (uint256);
}
