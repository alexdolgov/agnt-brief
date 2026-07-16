// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import "@openzeppelin/contracts/access/AccessControl.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/interfaces/IERC4626.sol";
import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import "@openzeppelin/contracts/utils/Pausable.sol";
import "./interfaces/IHyperlaneMailbox.sol";
import "./interfaces/IHyperlaneReceiver.sol";
import "./interfaces/IMinterHandlerV2.sol";
import "./interfaces/IRedeemHandlerV2.sol";
import "./interfaces/IMultichainHandlerEthereum.sol";
import "./interfaces/IUSNHyperlane.sol";
import "./interfaces/ITokenMessengerV2.sol";
import "./interfaces/IDomainMapper.sol";

/**
 * @title MultichainHandlerEthereum
 * @notice Ethereum contract that receives and processes cross-chain messages from L2 chains
 * @dev Executes mint/stake/redeem/unstake operations and bridges tokens back to L2
 */
contract MultichainHandlerEthereum is IMultichainHandlerEthereum, IHyperlaneReceiver, AccessControl, ReentrancyGuard, Pausable {
    using SafeERC20 for IERC20;

    bytes32 public constant OPERATOR_ROLE = keccak256("OPERATOR_ROLE");
    bytes32 public constant RELAYER_ROLE = keccak256("RELAYER_ROLE");
    
    // Hyperlane mailbox
    IHyperlaneMailbox public mailbox;
    
    // Core contracts
    IMinterHandlerV2 public minterHandler;
    IRedeemHandlerV2 public redeemHandler;
    IUSNHyperlane public usnToken;
    IERC4626 public sUsnVault;  // Staked USN vault (ERC4626) - also has Hyperlane support via IUSNHyperlane
    address public collateralManager;  // EOA that holds and approves collateral for directMint operations

    // CCTP bridge for USDC redeems back to L2
    ITokenMessengerV2 public cctpTokenMessenger;  // Circle CCTP Token Messenger V2
    IDomainMapper public domainMapper;             // Hyperlane domain → CCTP domain mapping
    address public usdc;                           // USDC token address on Ethereum

    // Whitelisted L2 sender addresses (origin chain => sender address => whitelisted)
    mapping(uint32 => mapping(bytes32 => bool)) public override whitelistedL2Senders;
    
    // Internal struct for storage (matches interface)
    mapping(bytes32 => StoredMessage) internal _storedMessages;
    bytes32[] public pendingMessageIds;
    
    // Processed messages tracking
    mapping(bytes32 => bool) public override processedMessages;

    // Queued cross-chain redeems (redeemQueueId => details)
    mapping(uint256 => QueuedCrossChainRedeem) public queuedCrossChainRedeems;

    // Operation toggles: disabled operations revert on processMessage
    mapping(OperationType => bool) public operationDisabled;
    
    /**
     * @param _mailbox Hyperlane mailbox address
     * @param _minterHandler MinterHandler contract address
     * @param _usnToken USN token address (with Hyperlane support)
     * @param _sUsnVault sUSN vault address (ERC4626 + Hyperlane support), can be zero initially
     */
    constructor(
        address _mailbox,
        address _minterHandler,
        address _usnToken,
        address _sUsnVault
    ) {
        if (_mailbox == address(0) || _minterHandler == address(0) || 
            _usnToken == address(0)) {
            revert ZeroAddress();
        }
        
        mailbox = IHyperlaneMailbox(_mailbox);
        minterHandler = IMinterHandlerV2(_minterHandler);
        usnToken = IUSNHyperlane(_usnToken);
        if (_sUsnVault != address(0)) {
            sUsnVault = IERC4626(_sUsnVault);
        }
        
        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
    }
    
    /**
     * @notice Receive ETH for Hyperlane fees
     */
    receive() external payable {}
    
    /**
     * @notice Handles incoming messages from Hyperlane mailbox
     * @dev Stores the message for relayer processing instead of executing immediately
     * @param _origin The domain ID of the origin chain
     * @param _sender The address of the sender on the origin chain
     * @param _messageBody The encoded message body
     */
    function handle(
        uint32 _origin,
        bytes32 _sender,
        bytes calldata _messageBody
    ) external override nonReentrant {
        // Verify message comes from mailbox
        require(msg.sender == address(mailbox), "Unauthorized mailbox");
        
        // Verify sender is whitelisted
        if (!whitelistedL2Senders[_origin][_sender]) {
            revert UnauthorizedSender(_origin, _sender);
        }
        
        // Create message ID to prevent replay attacks
        // Include block.number to allow same sender to send identical messages in different blocks
        bytes32 messageId = keccak256(abi.encodePacked(_origin, _sender, _messageBody, block.number));
        
        // Check if message was already stored or processed
        if (_storedMessages[messageId].storedAt != 0 || processedMessages[messageId]) {
            revert MessageAlreadyProcessed(messageId);
        }
        
        // Store the message for relayer processing
        _storedMessages[messageId] = StoredMessage({
            origin: _origin,
            sender: _sender,
            messageBody: _messageBody,
            processed: false,
            storedAt: block.timestamp
        });
        
        pendingMessageIds.push(messageId);
        
        emit MessageStored(messageId, _origin, _sender);
    }
    
    /**
     * @notice Process a stored message (called by relayers)
     * @dev Relayers sponsor gas and pay Hyperlane fees for cross-chain transfers
     * @param messageId The ID of the stored message to process
     */
    function processMessage(bytes32 messageId) external payable override nonReentrant whenNotPaused onlyRole(RELAYER_ROLE) {
        StoredMessage storage message = _storedMessages[messageId];
        
        // Verify message exists and hasn't been processed
        if (message.storedAt == 0) {
            revert MessageNotFound(messageId);
        }
        if (message.processed || processedMessages[messageId]) {
            revert MessageAlreadyProcessed(messageId);
        }

        // Decode operation type and check if enabled BEFORE marking as processed
        // (so the message stays pending and can be retried when re-enabled)
        OperationType opType = abi.decode(message.messageBody, (OperationType));
        if (operationDisabled[opType]) {
            revert OperationDisabled(opType);
        }

        // Mark as processed
        message.processed = true;
        processedMessages[messageId] = true;

        // Execute operation based on type
        if (opType == OperationType.MINT) {
            _handleMint(message.origin, message.sender, message.messageBody, messageId);
        } else if (opType == OperationType.STAKE) {
            _handleStake(message.origin, message.sender, message.messageBody, messageId);
        } else if (opType == OperationType.MINT_AND_STAKE) {
            _handleMintAndStake(message.origin, message.sender, message.messageBody, messageId);
        } else if (opType == OperationType.UNSTAKE) {
            _handleUnstake(message.origin, message.sender, message.messageBody, messageId);
        } else if (opType == OperationType.REDEEM) {
            _handleRedeem(message.origin, message.sender, message.messageBody, messageId);
        } else if (opType == OperationType.UNSTAKE_AND_REDEEM) {
            _handleUnstakeAndRedeem(message.origin, message.sender, message.messageBody, messageId);
        } else if (opType == OperationType.DIRECT_MINT) {
            _handleDirectMint(message.origin, message.sender, message.messageBody, messageId);
        } else if (opType == OperationType.DIRECT_MINT_AND_STAKE) {
            _handleDirectMintAndStake(message.origin, message.sender, message.messageBody, messageId);
        } else {
            revert InvalidOperation();
        }
        
        emit MessageProcessed(messageId, msg.sender, opType);
    }
    
    /**
     * @notice Get pending message IDs
     * @param offset Starting index
     * @param limit Maximum number of messages to return
     * @return messageIds Array of pending message IDs
     * @return count Actual count of pending messages returned
     */
    function getPendingMessages(uint256 offset, uint256 limit) external view override returns (bytes32[] memory messageIds, uint256 count) {
        uint256 length = pendingMessageIds.length;
        if (offset >= length) {
            return (new bytes32[](0), 0);
        }
        
        // First pass: count pending messages
        uint256 pendingCount = 0;
        for (uint256 i = offset; i < length && pendingCount < limit; i++) {
            bytes32 messageId = pendingMessageIds[i];
            if (!_storedMessages[messageId].processed && !processedMessages[messageId]) {
                pendingCount++;
            }
        }
        
        // Second pass: collect pending message IDs
        messageIds = new bytes32[](pendingCount);
        count = 0;
        for (uint256 i = offset; i < length && count < limit; i++) {
            bytes32 messageId = pendingMessageIds[i];
            if (!_storedMessages[messageId].processed && !processedMessages[messageId]) {
                messageIds[count] = messageId;
                count++;
            }
        }
    }
    
    /**
     * @notice Get stored message details
     * @param messageId The message ID
     * @return message The stored message struct
     */
    function getStoredMessage(bytes32 messageId) external view override returns (StoredMessage memory message) {
        message = _storedMessages[messageId];
        if (message.storedAt == 0) {
            revert MessageNotFound(messageId);
        }
    }
    
    /**
     * @notice Quote the Hyperlane fee required to bridge tokens back to L2
     * @dev Returns the ETH amount needed as msg.value when calling processMessage
     *      Message body is always 64 bytes (bytes32 recipient + uint256 amount)
     * @return fee The required Hyperlane fee in wei
     */
    function quoteBridgeFee() external view returns (uint256 fee) {
        // Standard message body: recipient (32 bytes) + amount (32 bytes) = 64 bytes
        bytes memory messageBody = new bytes(64);
        
        IHyperlaneMailbox tokenMailbox = IHyperlaneMailbox(usnToken.mailbox());
        fee = tokenMailbox.quoteDispatch(0, bytes32(0), messageBody);
    }
    
    /**
     * @notice Handle mint operation
     * @dev USN is minted to order.user, then transferred to handler.
     *      If destinationDomain > 0, bridges USN to that chain. If 0, sends to recipient on Ethereum.
     */
    function _handleMint(
        uint32 _origin,
        bytes32 _sender,
        bytes memory _messageBody,
        bytes32 messageId
    ) internal {
        (, IMinterHandler.Order memory order, bytes memory signature, address recipient, uint256 destinationDomain) =
            abi.decode(_messageBody, (OperationType, IMinterHandler.Order, bytes, address, uint256));

        // Execute mint via minterHandler (USN goes to order.user)
        minterHandler.mint(order, signature);

        // Transfer USN from order.user to this contract
        // order.user must have approved this contract to spend their USN
        IERC20(address(usnToken)).safeTransferFrom(order.user, address(this), order.usnAmount);

        // Send USN to recipient: bridge to L2 or keep on Ethereum
        _sendOrBridgeTokens(usnToken, destinationDomain, recipient, order.usnAmount);

        emit OperationExecuted(_origin, _sender, OperationType.MINT, recipient, messageId);
        emit MintExecuted(recipient, order.usnAmount, order.collateralAddress);
    }
    
    
    /**
     * @notice Handle stake operation - stake USN in sUSN vault
     * @dev USN must already be in this contract (bridged from L2).
     *      If destinationDomain > 0, bridges sUSN to that chain. If 0, sends to user on Ethereum.
     */
    function _handleStake(
        uint32 _origin,
        bytes32 _sender,
        bytes memory _messageBody,
        bytes32 messageId
    ) internal {
        (, address user, uint256 usnAmount, uint256 destinationDomain) =
            abi.decode(_messageBody, (OperationType, address, uint256, uint256));

        require(address(sUsnVault) != address(0), "sUSN vault not set");

        // Check USN balance (should have been bridged beforehand)
        if (IERC20(address(usnToken)).balanceOf(address(this)) < usnAmount) {
            revert InsufficientBalance();
        }

        // Approve and deposit USN into sUSN vault
        IERC20(address(usnToken)).approve(address(sUsnVault), usnAmount);
        uint256 shares = sUsnVault.deposit(usnAmount, address(this));

        // Send sUSN shares: bridge to L2 or keep on Ethereum
        _sendOrBridgeTokens(IUSNHyperlane(address(sUsnVault)), destinationDomain, user, shares);

        emit OperationExecuted(_origin, _sender, OperationType.STAKE, user, messageId);
        emit StakeExecuted(user, usnAmount, shares);
    }
    
    /**
     * @notice Handle mint and stake operation - mint USN then stake in sUSN vault
     * @dev USN is minted to order.user, transferred here, staked.
     *      If destinationDomain > 0, bridges sUSN to that chain. If 0, sends to recipient on Ethereum.
     */
    function _handleMintAndStake(
        uint32 _origin,
        bytes32 _sender,
        bytes memory _messageBody,
        bytes32 messageId
    ) internal {
        (, IMinterHandler.Order memory order, bytes memory signature, address recipient, uint256 destinationDomain) =
            abi.decode(_messageBody, (OperationType, IMinterHandler.Order, bytes, address, uint256));

        require(address(sUsnVault) != address(0), "sUSN vault not set");

        // Execute mint via minterHandler (USN goes to order.user)
        minterHandler.mint(order, signature);

        // Transfer USN from order.user to this contract
        IERC20(address(usnToken)).safeTransferFrom(order.user, address(this), order.usnAmount);

        // Approve and deposit USN into sUSN vault
        IERC20(address(usnToken)).approve(address(sUsnVault), order.usnAmount);
        uint256 shares = sUsnVault.deposit(order.usnAmount, address(this));

        // Send sUSN shares: bridge to L2 or keep on Ethereum
        _sendOrBridgeTokens(IUSNHyperlane(address(sUsnVault)), destinationDomain, recipient, shares);

        emit OperationExecuted(_origin, _sender, OperationType.MINT_AND_STAKE, recipient, messageId);
        emit MintAndStakeExecuted(recipient, order.usnAmount, shares, order.collateralAddress);
    }
    
    /**
     * @notice Handle unstake operation - withdraw from sUSN vault
     * @dev sUSN must already be in this contract (bridged from L2).
     *      If destinationDomain > 0, bridges USN to that chain. If 0, sends to user on Ethereum.
     */
    function _handleUnstake(
        uint32 _origin,
        bytes32 _sender,
        bytes memory _messageBody,
        bytes32 messageId
    ) internal {
        (, address user, uint256 sUsnShares, uint256 destinationDomain) =
            abi.decode(_messageBody, (OperationType, address, uint256, uint256));

        require(address(sUsnVault) != address(0), "sUSN vault not set");

        // Check sUSN balance (should have been bridged beforehand)
        if (IERC20(address(sUsnVault)).balanceOf(address(this)) < sUsnShares) {
            revert InsufficientBalance();
        }

        // Convert shares to assets, then withdraw USN from sUSN vault
        uint256 usnAmount = sUsnVault.convertToAssets(sUsnShares);
        uint256 sharesBurned = sUsnVault.withdraw(usnAmount, address(this), address(this));

        // Send USN: bridge to L2 or keep on Ethereum
        _sendOrBridgeTokens(usnToken, destinationDomain, user, usnAmount);

        emit OperationExecuted(_origin, _sender, OperationType.UNSTAKE, user, messageId);
        emit UnstakeExecuted(user, sharesBurned, usnAmount);
    }
    
    /**
     * @notice Handle redeem operation
     * @dev USN must be bridged to this contract beforehand. Burns USN via RedeemHandlerV2.
     *      If collateral is USDC and destinationDomain > 0, bridges USDC back via Circle CCTP.
     *      Otherwise, sends collateral to recipient on Ethereum.
     *      Message format: (OperationType, collateralRecipient, usnAmount, collateralAddress, minCollateralAmount, destinationDomain)
     */
    function _handleRedeem(
        uint32 _origin,
        bytes32 _sender,
        bytes memory _messageBody,
        bytes32 messageId
    ) internal {
        (, address collateralRecipient, uint256 usnAmount, address collateralAddress, uint256 minCollateralAmount, uint256 destinationDomain) =
            abi.decode(_messageBody, (OperationType, address, uint256, address, uint256, uint256));

        require(address(redeemHandler) != address(0), "Redeem handler not set");
        require(collateralRecipient != address(0), "Invalid collateral recipient");

        // Check USN balance (should have been bridged beforehand)
        if (IERC20(address(usnToken)).balanceOf(address(this)) < usnAmount) {
            revert InsufficientBalance();
        }

        // Approve USN to redeem handler for burning or escrow
        IERC20(address(usnToken)).approve(address(redeemHandler), usnAmount);

        // Balance-before/after pattern: safe against fee-on-transfer tokens
        uint256 balBefore = IERC20(collateralAddress).balanceOf(address(this));
        uint256 queueId = redeemHandler.directRedeem(collateralAddress, usnAmount, 0);

        if (queueId == 0) {
            // Immediate execution
            uint256 received = IERC20(collateralAddress).balanceOf(address(this)) - balBefore;

            if (received < minCollateralAmount) {
                revert SlippageExceeded(received, minCollateralAmount);
            }

            _sendCollateral(collateralAddress, collateralRecipient, received, destinationDomain);
            emit RedeemExecuted(collateralRecipient, usnAmount, collateralAddress);
        } else {
            // Queued — store for later claim (including destinationDomain for CCTP bridging)
            queuedCrossChainRedeems[queueId] = QueuedCrossChainRedeem({
                redeemQueueId: queueId,
                collateralRecipient: collateralRecipient,
                originalMessageId: messageId,
                minCollateralAmount: minCollateralAmount,
                destinationDomain: destinationDomain
            });
            emit CrossChainRedeemQueued(queueId, collateralRecipient, usnAmount, collateralAddress);
        }

        emit OperationExecuted(_origin, _sender, OperationType.REDEEM, collateralRecipient, messageId);
    }

    /**
     * @notice Handle unstake and redeem operation
     * @dev sUSN must be bridged to this contract beforehand. Unstakes sUSN to get USN,
     *      then redeems USN for collateral. If USDC and destinationDomain > 0, bridges via CCTP.
     *      Message format: (OperationType, collateralRecipient, sUsnShares, collateralAddress, minCollateralAmount, destinationDomain)
     */
    function _handleUnstakeAndRedeem(
        uint32 _origin,
        bytes32 _sender,
        bytes memory _messageBody,
        bytes32 messageId
    ) internal {
        (, address collateralRecipient, uint256 sUsnShares, address collateralAddress, uint256 minCollateralAmount, uint256 destinationDomain) =
            abi.decode(_messageBody, (OperationType, address, uint256, address, uint256, uint256));

        require(address(sUsnVault) != address(0), "sUSN vault not set");
        require(address(redeemHandler) != address(0), "Redeem handler not set");
        require(collateralRecipient != address(0), "Invalid collateral recipient");

        // Check sUSN balance (should have been bridged beforehand)
        if (IERC20(address(sUsnVault)).balanceOf(address(this)) < sUsnShares) {
            revert InsufficientBalance();
        }

        // Convert shares to assets, then withdraw USN from sUSN vault
        uint256 usnAmount = sUsnVault.convertToAssets(sUsnShares);
        sUsnVault.withdraw(usnAmount, address(this), address(this));

        // Approve USN to redeem handler for burning or escrow
        IERC20(address(usnToken)).approve(address(redeemHandler), usnAmount);

        // Balance-before/after pattern: safe against fee-on-transfer tokens
        uint256 balBefore = IERC20(collateralAddress).balanceOf(address(this));
        uint256 queueId = redeemHandler.directRedeem(collateralAddress, usnAmount, 0);

        if (queueId == 0) {
            // Immediate execution
            uint256 received = IERC20(collateralAddress).balanceOf(address(this)) - balBefore;

            if (received < minCollateralAmount) {
                revert SlippageExceeded(received, minCollateralAmount);
            }

            _sendCollateral(collateralAddress, collateralRecipient, received, destinationDomain);
            emit RedeemExecuted(collateralRecipient, usnAmount, collateralAddress);
        } else {
            // Queued — store for later claim (including destinationDomain for CCTP bridging)
            queuedCrossChainRedeems[queueId] = QueuedCrossChainRedeem({
                redeemQueueId: queueId,
                collateralRecipient: collateralRecipient,
                originalMessageId: messageId,
                minCollateralAmount: minCollateralAmount,
                destinationDomain: destinationDomain
            });
            emit CrossChainRedeemQueued(queueId, collateralRecipient, usnAmount, collateralAddress);
        }

        emit OperationExecuted(_origin, _sender, OperationType.UNSTAKE_AND_REDEEM, collateralRecipient, messageId);
        emit UnstakeExecuted(collateralRecipient, sUsnShares, usnAmount);
    }
    
    /**
     * @notice Send tokens to recipient: bridge to L2 or transfer on Ethereum
     * @dev If destinationDomain == 0, transfers tokens directly to recipient on Ethereum.
     *      If destinationDomain > 0, bridges tokens via Hyperlane to that chain.
     *      This supports chains without USN/sUSN deployed — just keep tokens on Ethereum.
     * @param _token The token to send (must implement IUSNHyperlane for bridging)
     * @param _destinationDomain 0 for Ethereum, >0 for Hyperlane bridge to that domain
     * @param _recipient The recipient address
     * @param _amount The amount to send
     */
    function _sendOrBridgeTokens(
        IUSNHyperlane _token,
        uint256 _destinationDomain,
        address _recipient,
        uint256 _amount
    ) internal {
        if (_destinationDomain == 0) {
            // Keep on Ethereum: direct transfer to recipient
            IERC20(address(_token)).safeTransfer(_recipient, _amount);
            emit TokensSentToL2(0, _recipient, address(_token), _amount);
        } else {
            // Bridge to L2 via Hyperlane
            bytes32 recipientBytes32 = bytes32(uint256(uint160(_recipient)));
            _token.sendTokensViaHyperlane{value: msg.value}(
                uint32(_destinationDomain),
                recipientBytes32,
                _amount
            );
            emit TokensSentToL2(uint32(_destinationDomain), _recipient, address(_token), _amount);
        }
    }

    /**
     * @notice Send collateral to recipient: CCTP bridge for USDC, or transfer on Ethereum
     * @dev If collateral is USDC and destinationDomain > 0 and CCTP is configured,
     *      bridges USDC via Circle CCTP Token Messenger V2.
     *      Otherwise, transfers collateral directly to recipient on Ethereum.
     * @param _collateral The collateral token address
     * @param _recipient The recipient address
     * @param _amount The amount to send
     * @param _destinationDomain 0 = Ethereum, >0 = bridge to L2 via CCTP (if USDC)
     */
    function _sendCollateral(
        address _collateral,
        address _recipient,
        uint256 _amount,
        uint256 _destinationDomain
    ) internal {
        if (
            _destinationDomain > 0 &&
            _collateral == usdc &&
            address(cctpTokenMessenger) != address(0) &&
            address(domainMapper) != address(0) &&
            domainMapper.hasCctpMapping(uint32(_destinationDomain))
        ) {
            // Bridge USDC via Circle CCTP
            uint32 cctpDomain = domainMapper.hyperlaneToCctp(uint32(_destinationDomain));
            bytes32 mintRecipient = bytes32(uint256(uint160(_recipient)));

            IERC20(_collateral).approve(address(cctpTokenMessenger), _amount);
            cctpTokenMessenger.depositForBurn(_amount, cctpDomain, mintRecipient, _collateral);

            emit CollateralBridgedViaCctp(_recipient, _amount, cctpDomain);
        } else {
            // Send on Ethereum
            IERC20(_collateral).safeTransfer(_recipient, _amount);
        }
    }

    /**
     * @notice Handle direct mint operation (no signature needed)
     * @dev Pulls collateral from the collateralManager EOA (must have approved this contract),
     *      then calls directMint on MinterHandlerV2. USN minted to this contract, then bridged to recipient.
     */
    function _handleDirectMint(
        uint32 _origin,
        bytes32 _sender,
        bytes memory _messageBody,
        bytes32 messageId
    ) internal {
        (, address collateralAddress, uint256 collateralAmount, uint256 minUsnAmount, address recipient, uint256 destinationDomain) =
            abi.decode(_messageBody, (OperationType, address, uint256, uint256, address, uint256));

        require(collateralManager != address(0), "CollateralManager not set");

        // Pull collateral from the collateralManager EOA (must have approved this contract)
        IERC20(collateralAddress).safeTransferFrom(collateralManager, address(this), collateralAmount);

        // Approve collateral to minterHandler (directMint pulls via safeTransferFrom)
        IERC20(collateralAddress).approve(address(minterHandler), collateralAmount);

        // Balance-before/after pattern to measure minted USN
        uint256 usnBefore = IERC20(address(usnToken)).balanceOf(address(this));
        minterHandler.directMint(collateralAddress, collateralAmount, minUsnAmount);
        uint256 usnMinted = IERC20(address(usnToken)).balanceOf(address(this)) - usnBefore;

        // Send USN to recipient: bridge to L2 or keep on Ethereum
        _sendOrBridgeTokens(usnToken, destinationDomain, recipient, usnMinted);

        emit OperationExecuted(_origin, _sender, OperationType.DIRECT_MINT, recipient, messageId);
        emit DirectMintExecuted(recipient, usnMinted, collateralAddress, collateralAmount);
    }

    /**
     * @notice Handle direct mint and stake operation (no signature needed)
     * @dev Pulls collateral from collateralManager EOA, mints USN via directMint, then stakes in sUSN vault.
     */
    function _handleDirectMintAndStake(
        uint32 _origin,
        bytes32 _sender,
        bytes memory _messageBody,
        bytes32 messageId
    ) internal {
        (, address collateralAddress, uint256 collateralAmount, uint256 minUsnAmount, address recipient, uint256 destinationDomain) =
            abi.decode(_messageBody, (OperationType, address, uint256, uint256, address, uint256));

        require(address(sUsnVault) != address(0), "sUSN vault not set");
        require(collateralManager != address(0), "CollateralManager not set");

        // Pull collateral from the collateralManager EOA (must have approved this contract)
        IERC20(collateralAddress).safeTransferFrom(collateralManager, address(this), collateralAmount);

        // Approve collateral to minterHandler
        IERC20(collateralAddress).approve(address(minterHandler), collateralAmount);

        // Balance-before/after to measure minted USN
        uint256 usnBefore = IERC20(address(usnToken)).balanceOf(address(this));
        minterHandler.directMint(collateralAddress, collateralAmount, minUsnAmount);
        uint256 usnMinted = IERC20(address(usnToken)).balanceOf(address(this)) - usnBefore;

        // Approve and deposit USN into sUSN vault
        IERC20(address(usnToken)).approve(address(sUsnVault), usnMinted);
        uint256 shares = sUsnVault.deposit(usnMinted, address(this));

        // Send sUSN shares: bridge to L2 or keep on Ethereum
        _sendOrBridgeTokens(IUSNHyperlane(address(sUsnVault)), destinationDomain, recipient, shares);

        emit OperationExecuted(_origin, _sender, OperationType.DIRECT_MINT_AND_STAKE, recipient, messageId);
        emit DirectMintAndStakeExecuted(recipient, usnMinted, shares, collateralAddress, collateralAmount);
    }

    // ============ Queued Cross-Chain Redeem Functions ============

    /**
     * @notice Forward collateral to recipient after admin approved a queued cross-chain redeem
     * @dev Admin calls approveQueuedRedeem on RedeemHandlerV2 first, which burns USN from
     *      this contract and sends collateral here. This function forwards it to the recipient.
     * @param redeemQueueId The queue ID from RedeemHandlerV2
     */
    function claimQueuedCrossChainRedeem(uint256 redeemQueueId) external override nonReentrant whenNotPaused onlyRole(RELAYER_ROLE) {
        QueuedCrossChainRedeem storage q = queuedCrossChainRedeems[redeemQueueId];
        require(q.collateralRecipient != address(0), "No queued cross-chain redeem");

        IRedeemHandlerV2.QueuedRedeem memory qr = redeemHandler.getQueuedRedeem(redeemQueueId);
        // Verify admin already approved (which executed the redeem)
        require(qr.status == IRedeemHandlerV2.QueueStatus.APPROVED, "Not yet approved");

        // Enforce slippage protection — user's minimum collateral must be met
        require(qr.collateralAmount >= q.minCollateralAmount, "Collateral below minimum");

        // Collateral is already in this contract from admin approval — forward to recipient
        // If USDC and destinationDomain > 0, bridge via CCTP; otherwise send on Ethereum
        _sendCollateral(qr.collateralAddress, q.collateralRecipient, qr.collateralAmount, q.destinationDomain);

        emit CrossChainRedeemClaimed(redeemQueueId, q.collateralRecipient, qr.collateralAmount);
        delete queuedCrossChainRedeems[redeemQueueId];
    }

    /**
     * @notice Cancel a queued cross-chain redeem that doesn't meet slippage requirements
     * @dev Sends collateral back to the recipient on Ethereum (no CCTP bridging)
     * @param redeemQueueId The queue ID from RedeemHandlerV2
     */
    function cancelQueuedCrossChainRedeem(uint256 redeemQueueId) external override nonReentrant whenNotPaused onlyRole(RELAYER_ROLE) {
        QueuedCrossChainRedeem storage q = queuedCrossChainRedeems[redeemQueueId];
        require(q.collateralRecipient != address(0), "No queued cross-chain redeem");

        IRedeemHandlerV2.QueuedRedeem memory qr = redeemHandler.getQueuedRedeem(redeemQueueId);
        require(qr.status == IRedeemHandlerV2.QueueStatus.APPROVED, "Not yet approved");
        require(qr.collateralAmount < q.minCollateralAmount, "Slippage met, use claim instead");

        // Send collateral back to recipient on Ethereum (not via CCTP)
        IERC20(qr.collateralAddress).safeTransfer(q.collateralRecipient, qr.collateralAmount);

        emit CrossChainRedeemCancelled(redeemQueueId, q.collateralRecipient, qr.collateralAmount);
        delete queuedCrossChainRedeems[redeemQueueId];
    }

    /**
     * @notice Reclaim USN for an expired queued cross-chain redeem
     * @dev Returns USN to the collateral recipient on Ethereum
     * @param redeemQueueId The queue ID from RedeemHandlerV2
     */
    function reclaimExpiredCrossChainRedeem(uint256 redeemQueueId) external override nonReentrant whenNotPaused onlyRole(RELAYER_ROLE) {
        QueuedCrossChainRedeem storage q = queuedCrossChainRedeems[redeemQueueId];
        require(q.collateralRecipient != address(0), "No queued cross-chain redeem");

        IRedeemHandlerV2.QueuedRedeem memory qr = redeemHandler.getQueuedRedeem(redeemQueueId);

        // Mark as expired on RedeemHandlerV2
        redeemHandler.reclaimExpiredRedeem(redeemQueueId);

        // USN was never escrowed — it's still in this contract. Return it to the recipient.
        IERC20(address(usnToken)).safeTransfer(q.collateralRecipient, qr.usnAmount);

        emit CrossChainRedeemReclaimed(redeemQueueId, q.collateralRecipient, qr.usnAmount);
        delete queuedCrossChainRedeems[redeemQueueId];
    }

    // Admin functions

    /**
     * @notice Pause the contract
     */
    function pause() external onlyRole(DEFAULT_ADMIN_ROLE) {
        _pause();
    }
    
    /**
     * @notice Unpause the contract
     */
    function unpause() external onlyRole(DEFAULT_ADMIN_ROLE) {
        _unpause();
    }
    
    function addWhitelistedL2Sender(uint32 origin, bytes32 sender) external override onlyRole(DEFAULT_ADMIN_ROLE) {
        whitelistedL2Senders[origin][sender] = true;
        emit L2SenderWhitelisted(origin, sender);
    }
    
    function removeWhitelistedL2Sender(uint32 origin, bytes32 sender) external override onlyRole(DEFAULT_ADMIN_ROLE) {
        whitelistedL2Senders[origin][sender] = false;
        emit L2SenderRemoved(origin, sender);
    }
    
    /**
     * @notice Set the sUSN vault address (ERC4626 + Hyperlane)
     * @param _sUsnVault The sUSN vault address
     */
    function setSUsnVault(address _sUsnVault) external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (_sUsnVault == address(0)) revert ZeroAddress();
        sUsnVault = IERC4626(_sUsnVault);
        emit SUsnVaultSet(_sUsnVault);
    }

    /**
     * @notice Set the redeem handler address
     * @param _redeemHandler The RedeemHandlerV2 address
     */
    function setRedeemHandler(address _redeemHandler) external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (_redeemHandler == address(0)) revert ZeroAddress();
        redeemHandler = IRedeemHandlerV2(_redeemHandler);
        emit RedeemHandlerSet(_redeemHandler);
    }

    /**
     * @notice Set the minter handler address
     * @param _minterHandler The MinterHandlerV2 address
     */
    function setMinterHandler(address _minterHandler) external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (_minterHandler == address(0)) revert ZeroAddress();
        minterHandler = IMinterHandlerV2(_minterHandler);
        emit MinterHandlerSet(_minterHandler);
    }

    /**
     * @notice Set the collateral manager EOA address
     * @dev The EOA must approve this contract to spend its collateral tokens
     * @param _collateralManager The EOA address that holds collateral
     */
    function setCollateralManager(address _collateralManager) external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (_collateralManager == address(0)) revert ZeroAddress();
        collateralManager = _collateralManager;
        emit CollateralManagerSet(_collateralManager);
    }

    /**
     * @notice Configure Circle CCTP for bridging USDC collateral back to L2
     * @param _tokenMessenger Circle CCTP Token Messenger V2 address
     * @param _domainMapper Domain mapper contract (Hyperlane → CCTP domain conversion)
     * @param _usdc USDC token address on Ethereum
     */
    function setCctpConfig(
        address _tokenMessenger,
        address _domainMapper,
        address _usdc
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        cctpTokenMessenger = ITokenMessengerV2(_tokenMessenger);
        domainMapper = IDomainMapper(_domainMapper);
        usdc = _usdc;
        emit CctpConfigSet(_tokenMessenger, _domainMapper, _usdc);
    }

    /**
     * @notice Disable an operation type (admin only)
     * @dev Disabled operations revert on processMessage. The message stays pending and can be retried.
     * @param opType The operation type to disable
     */
    function disableOperation(OperationType opType) external onlyRole(DEFAULT_ADMIN_ROLE) {
        operationDisabled[opType] = true;
        emit OperationToggled(opType, false);
    }

    /**
     * @notice Enable an operation type (admin only)
     * @param opType The operation type to enable
     */
    function enableOperation(OperationType opType) external onlyRole(DEFAULT_ADMIN_ROLE) {
        operationDisabled[opType] = false;
        emit OperationToggled(opType, true);
    }
    
    /**
     * @notice Cancel a stuck message (admin only)
     * @dev Marks the message as processed without executing it. Use when a message
     *      keeps reverting and cannot be processed (e.g. insufficient funds, broken flow).
     * @param messageId The ID of the stored message to cancel
     */
    function cancelMessage(bytes32 messageId, bool refund) external payable onlyRole(DEFAULT_ADMIN_ROLE) {
        StoredMessage storage message = _storedMessages[messageId];
        if (message.storedAt == 0) {
            revert MessageNotFound(messageId);
        }
        if (message.processed || processedMessages[messageId]) {
            revert MessageAlreadyProcessed(messageId);
        }

        message.processed = true;
        processedMessages[messageId] = true;

        if (refund) {
            OperationType opType = abi.decode(message.messageBody, (OperationType));
            _refundMessage(opType, message.messageBody, message.origin, messageId);
        }

        emit MessageCancelled(messageId);
    }

    /**
     * @notice Refund user tokens for a cancelled message back to origin chain
     * @dev Only operations where the user pre-bridged tokens to the handler need refunds:
     *      - STAKE: user bridged USN → refund USN
     *      - UNSTAKE: user bridged sUSN → refund sUSN
     *      - REDEEM: user bridged USN → refund USN
     *      - UNSTAKE_AND_REDEEM: user bridged sUSN → refund sUSN
     *      MINT/DIRECT_MINT operations don't hold user tokens, so no refund needed.
     */
    function _refundMessage(
        OperationType opType,
        bytes memory messageBody,
        uint32 origin,
        bytes32 messageId
    ) internal {
        if (opType == OperationType.STAKE) {
            (, address user, uint256 usnAmount,) =
                abi.decode(messageBody, (OperationType, address, uint256, uint256));
            _sendOrBridgeTokens(usnToken, origin, user, usnAmount);
            emit MessageRefunded(messageId, address(usnToken), user, usnAmount, origin);

        } else if (opType == OperationType.UNSTAKE) {
            (, address user, uint256 sUsnShares,) =
                abi.decode(messageBody, (OperationType, address, uint256, uint256));
            _sendOrBridgeTokens(IUSNHyperlane(address(sUsnVault)), origin, user, sUsnShares);
            emit MessageRefunded(messageId, address(sUsnVault), user, sUsnShares, origin);

        } else if (opType == OperationType.REDEEM) {
            (, address collateralRecipient, uint256 usnAmount,,,) =
                abi.decode(messageBody, (OperationType, address, uint256, address, uint256, uint256));
            _sendOrBridgeTokens(usnToken, origin, collateralRecipient, usnAmount);
            emit MessageRefunded(messageId, address(usnToken), collateralRecipient, usnAmount, origin);

        } else if (opType == OperationType.UNSTAKE_AND_REDEEM) {
            (, address collateralRecipient, uint256 sUsnShares,,,) =
                abi.decode(messageBody, (OperationType, address, uint256, address, uint256, uint256));
            _sendOrBridgeTokens(IUSNHyperlane(address(sUsnVault)), origin, collateralRecipient, sUsnShares);
            emit MessageRefunded(messageId, address(sUsnVault), collateralRecipient, sUsnShares, origin);
        }
        // MINT, MINT_AND_STAKE, DIRECT_MINT, DIRECT_MINT_AND_STAKE: no user tokens to refund
    }

    /**
     * @notice Emergency function to withdraw tokens (admin only)
     */
    function emergencyWithdraw(address token, uint256 amount) external override onlyRole(DEFAULT_ADMIN_ROLE) {
        IERC20(token).safeTransfer(msg.sender, amount);
    }
    
    /**
     * @notice Emergency function to withdraw ETH (admin only)
     */
    function emergencyWithdrawETH(uint256 amount) external onlyRole(DEFAULT_ADMIN_ROLE) {
        (bool success, ) = msg.sender.call{value: amount}("");
        require(success, "ETH withdrawal failed");
    }
    
    /**
     * @notice Public getter for stored messages (for backwards compatibility)
     * @param messageId The message ID
     * @return origin The domain ID of the origin chain
     * @return sender The sender address on the origin chain
     * @return messageBody The encoded message body
     * @return processed Whether the message has been processed
     * @return storedAt Timestamp when the message was stored
     */
    function storedMessages(bytes32 messageId) external view returns (
        uint32 origin,
        bytes32 sender,
        bytes memory messageBody,
        bool processed,
        uint256 storedAt
    ) {
        StoredMessage storage message = _storedMessages[messageId];
        return (message.origin, message.sender, message.messageBody, message.processed, message.storedAt);
    }
}

