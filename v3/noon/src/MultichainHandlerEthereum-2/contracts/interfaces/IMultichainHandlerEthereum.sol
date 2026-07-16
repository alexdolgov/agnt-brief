// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

/**
 * @title IMultichainHandlerEthereum
 * @notice Interface for the Ethereum Multichain Handler contract
 * @dev Receives and processes cross-chain messages from L2 chains via Hyperlane
 */
interface IMultichainHandlerEthereum {
    // ============ Enums ============
    
    /**
     * @notice Operation types for cross-chain messages
     */
    enum OperationType {
        MINT,
        STAKE,
        MINT_AND_STAKE,
        REDEEM,
        UNSTAKE,
        UNSTAKE_AND_REDEEM,
        DIRECT_MINT,
        DIRECT_MINT_AND_STAKE
    }
    
    // ============ Structs ============
    
    /**
     * @notice Stored message waiting for relayer processing
     */
    struct StoredMessage {
        uint32 origin;
        bytes32 sender;
        bytes messageBody;
        bool processed;
        uint256 storedAt;
    }

    /**
     * @notice Queued cross-chain redeem waiting for admin approval
     */
    struct QueuedCrossChainRedeem {
        uint256 redeemQueueId;
        address collateralRecipient;
        bytes32 originalMessageId;
        uint256 minCollateralAmount;
        uint256 destinationDomain;  // 0 = Ethereum, >0 = bridge collateral to L2 (CCTP for USDC)
    }
    
    // ============ Events ============
    
    /**
     * @notice Emitted when a message is stored for processing
     * @param messageId The unique ID of the message
     * @param origin The domain ID of the origin chain
     * @param sender The sender address on the origin chain
     */
    event MessageStored(
        bytes32 indexed messageId,
        uint32 indexed origin,
        bytes32 indexed sender
    );
    
    /**
     * @notice Emitted when a message is processed by a relayer
     * @param messageId The unique ID of the message
     * @param relayer The address of the relayer who processed the message
     * @param operationType The type of operation executed
     */
    event MessageProcessed(
        bytes32 indexed messageId,
        address indexed relayer,
        OperationType operationType
    );
    
    /**
     * @notice Emitted when an operation is executed
     * @param origin The domain ID of the origin chain
     * @param sender The sender address on the origin chain
     * @param operationType The type of operation executed
     * @param user The user address involved in the operation
     * @param messageId The unique ID of the message
     */
    event OperationExecuted(
        uint32 indexed origin,
        bytes32 indexed sender,
        OperationType operationType,
        address indexed user,
        bytes32 messageId
    );
    
    /**
     * @notice Emitted when a mint operation is executed
     * @param user The user who received the minted tokens
     * @param usnAmount The amount of USN minted
     * @param collateralAddress The collateral token address
     */
    event MintExecuted(address indexed user, uint256 usnAmount, address collateralAddress);
    
    /**
     * @notice Emitted when a redeem operation is executed
     * @param user The user who redeemed
     * @param usnAmount The amount of USN redeemed
     * @param collateralAddress The collateral token address
     */
    event RedeemExecuted(address indexed user, uint256 usnAmount, address collateralAddress);
    
    /**
     * @notice Emitted when a stake operation is executed
     * @param user The user who staked
     * @param usnAmount The amount of USN staked
     * @param sharesReceived The sUSN shares received
     */
    event StakeExecuted(address indexed user, uint256 usnAmount, uint256 sharesReceived);
    
    /**
     * @notice Emitted when a mint and stake operation is executed
     * @param user The user who minted and staked
     * @param usnAmount The amount of USN minted
     * @param sharesReceived The sUSN shares received
     * @param collateralAddress The collateral token address
     */
    event MintAndStakeExecuted(address indexed user, uint256 usnAmount, uint256 sharesReceived, address collateralAddress);
    
    /**
     * @notice Emitted when an unstake operation is executed
     * @param user The user who unstaked
     * @param sUsnAmount The amount of sUSN burned
     * @param usnReceived The amount of USN received
     */
    event UnstakeExecuted(address indexed user, uint256 sUsnAmount, uint256 usnReceived);
    
    /**
     * @notice Emitted when an L2 sender is whitelisted
     * @param origin The domain ID of the origin chain
     * @param sender The sender address that was whitelisted
     */
    event L2SenderWhitelisted(uint32 indexed origin, bytes32 indexed sender);
    
    /**
     * @notice Emitted when an L2 sender is removed from whitelist
     * @param origin The domain ID of the origin chain
     * @param sender The sender address that was removed
     */
    event L2SenderRemoved(uint32 indexed origin, bytes32 indexed sender);
    
    /**
     * @notice Emitted when tokens are sent back to L2 via Hyperlane
     * @param destinationDomain The destination chain domain ID
     * @param recipient The recipient address on L2
     * @param token The token address being sent (USN or sUSN)
     * @param amount The amount of tokens sent
     */
    event TokensSentToL2(uint32 indexed destinationDomain, address indexed recipient, address token, uint256 amount);
    
    /**
     * @notice Emitted when sUSN vault is set
     * @param sUsnVault The sUSN vault address
     */
    event SUsnVaultSet(address indexed sUsnVault);

    /**
     * @notice Emitted when redeem handler is set
     * @param redeemHandler The redeem handler address
     */
    event RedeemHandlerSet(address indexed redeemHandler);

    event MinterHandlerSet(address indexed minterHandler);
    event CollateralManagerSet(address indexed collateralManager);
    event CctpConfigSet(address indexed tokenMessenger, address indexed domainMapper, address indexed usdc);
    event CctpTransferParamsSet(uint256 maxFee, uint32 minFinalityThreshold);
    event CollateralBridgedViaCctp(address indexed recipient, uint256 amount, uint32 cctpDomain);

    event DirectMintExecuted(address indexed user, uint256 usnAmount, address collateralAddress, uint256 collateralAmount);
    event DirectMintAndStakeExecuted(address indexed user, uint256 usnAmount, uint256 sharesReceived, address collateralAddress, uint256 collateralAmount);

    event CrossChainRedeemQueued(uint256 indexed queueId, address indexed collateralRecipient, uint256 usnAmount, address collateralAddress);
    event CrossChainRedeemClaimed(uint256 indexed queueId, address indexed collateralRecipient, uint256 collateralAmount);
    event CrossChainRedeemReclaimed(uint256 indexed queueId, address indexed recipient, uint256 usnAmount);
    event CrossChainRedeemCancelled(uint256 indexed queueId, address indexed collateralRecipient, uint256 collateralAmount);

    /// @notice Emitted when an operation type is enabled or disabled
    event OperationToggled(OperationType indexed opType, bool enabled);

    /// @notice Emitted when an admin cancels a stuck message
    event MessageCancelled(bytes32 indexed messageId);

    /// @notice Emitted when a cancelled message triggers a refund back to the user's origin chain
    event MessageRefunded(bytes32 indexed messageId, address indexed token, address indexed recipient, uint256 amount, uint32 destinationDomain);

    // ============ Errors ============
    
    /// @notice Thrown when a zero address is provided
    error ZeroAddress();
    
    /// @notice Thrown when the sender is not whitelisted
    /// @param origin The origin chain domain ID
    /// @param sender The sender address
    error UnauthorizedSender(uint32 origin, bytes32 sender);
    
    /// @notice Thrown when a message has already been processed
    /// @param messageId The message ID
    error MessageAlreadyProcessed(bytes32 messageId);
    
    /// @notice Thrown when a message is not found
    /// @param messageId The message ID
    error MessageNotFound(bytes32 messageId);
    
    /// @notice Thrown when an invalid operation type is provided
    error InvalidOperation();
    
    /// @notice Thrown when an operation fails
    /// @param reason The reason for failure
    error OperationFailed(string reason);
    
    /// @notice Thrown when there is insufficient balance
    error InsufficientBalance();

    /// @notice Thrown when an operation type is disabled
    error OperationDisabled(OperationType opType);

    /// @notice Thrown when collateral received is below the user's minimum
    /// @param received The actual collateral received
    /// @param minRequired The minimum collateral the user specified
    error SlippageExceeded(uint256 received, uint256 minRequired);
    
    // ============ External Functions ============
    
    /**
     * @notice Process a stored message (called by authorized relayers)
     * @dev Requires RELAYER_ROLE. Relayers sponsor gas and pay Hyperlane fees for cross-chain transfers
     * @param messageId The ID of the stored message to process
     */
    function processMessage(bytes32 messageId) external payable;
    
    /**
     * @notice Get pending message IDs
     * @param offset Starting index
     * @param limit Maximum number of messages to return
     * @return messageIds Array of pending message IDs
     * @return count Actual count of pending messages returned
     */
    function getPendingMessages(uint256 offset, uint256 limit) external view returns (bytes32[] memory messageIds, uint256 count);
    
    /**
     * @notice Get stored message details
     * @param messageId The message ID
     * @return message The stored message struct
     */
    function getStoredMessage(bytes32 messageId) external view returns (StoredMessage memory message);
    
    /**
     * @notice Pause the contract
     */
    function pause() external;
    
    /**
     * @notice Unpause the contract
     */
    function unpause() external;
    
    /**
     * @notice Add an L2 sender to the whitelist
     * @param origin The domain ID of the origin chain
     * @param sender The sender address to whitelist
     */
    function addWhitelistedL2Sender(uint32 origin, bytes32 sender) external;
    
    /**
     * @notice Remove an L2 sender from the whitelist
     * @param origin The domain ID of the origin chain
     * @param sender The sender address to remove
     */
    function removeWhitelistedL2Sender(uint32 origin, bytes32 sender) external;
    
    /**
     * @notice Emergency function to withdraw tokens (admin only)
     * @param token The token address to withdraw
     * @param amount The amount to withdraw
     */
    function emergencyWithdraw(address token, uint256 amount) external;

    function claimQueuedCrossChainRedeem(uint256 redeemQueueId) external;
    function cancelQueuedCrossChainRedeem(uint256 redeemQueueId) external;
    function reclaimExpiredCrossChainRedeem(uint256 redeemQueueId) external;

    /**
     * @notice Disable an operation type (admin only)
     * @param opType The operation type to disable
     */
    function disableOperation(OperationType opType) external;

    /**
     * @notice Enable an operation type (admin only)
     * @param opType The operation type to enable
     */
    function enableOperation(OperationType opType) external;

    /**
     * @notice Cancel a stuck message without executing it (admin only)
     * @param messageId The ID of the stored message to cancel
     */
    function cancelMessage(bytes32 messageId, bool refund) external payable;

    // ============ View Functions ============
    
    /**
     * @notice Check if an L2 sender is whitelisted
     * @param origin The domain ID of the origin chain
     * @param sender The sender address
     * @return True if whitelisted
     */
    function whitelistedL2Senders(uint32 origin, bytes32 sender) external view returns (bool);
    
    /**
     * @notice Check if a message has been processed
     * @param messageId The message ID
     * @return True if processed
     */
    function processedMessages(bytes32 messageId) external view returns (bool);
    
    /**
     * @notice Quote the Hyperlane fee required to bridge tokens back to L2
     * @dev Returns the ETH amount needed as msg.value when calling processMessage
     * @return fee The required Hyperlane fee in wei
     */
    function quoteBridgeFee() external view returns (uint256 fee);
}

