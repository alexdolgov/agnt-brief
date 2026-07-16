// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.23;

import '@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol';
import { ReentrancyGuardUpgradeable } from '@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol';
import '@openzeppelin/contracts-upgradeable/access/manager/AccessManagedUpgradeable.sol';
import { SafeERC20 } from '@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol';
import { IERC20 } from '@openzeppelin/contracts/token/ERC20/IERC20.sol';
import { IERC721Receiver } from '@openzeppelin/contracts/token/ERC721/IERC721Receiver.sol';
import { EnumerableSet } from '@openzeppelin/contracts/utils/structs/EnumerableSet.sol';
import { IVault } from './interfaces/vaults/IVault.sol';
import { IRegistry } from './interfaces/access/IRegistry.sol';
import './interfaces/IWithdrawalSystem.sol';
import './interfaces/IZeDP.sol';
import './libraries/SystemRoles.sol';

/**
 * @title Withdrawal System
 * @author ZeUSD Protocol Team
 * @notice Manages withdrawal requests and processing for the ZeUSD protocol
 * @dev Implements UUPS upgradeable pattern with ERC7201 storage pattern and reentrancy protection
 *
 * The WithdrawalSystem contract manages the entire lifecycle of user withdrawal requests within the
 * ZeUSD protocol. It implements a batch processing approach to optimize gas costs and manage
 * liquidity demands efficiently.
 *
 * Core Functionality:
 * - Withdrawal request creation and queuing
 * - Batched processing of withdrawal requests by vault and asset type
 * - Request status tracking
 * - Direct request processing for special cases
 *
 * Process Flow:
 * 1. Withdrawal requests are initiated by the Router
 * 2. Requests enter a processing queue with FIFO order
 * 3. Treasury role processes batches of requests at regular intervals
 * 4. Assets are transferred from vaults to users upon successful processing
 *
 * Storage Architecture:
 * - Uses ERC7201 storage pattern for upgrade safety
 * - Storage struct containing all state variables
 * - Constant storage slot to prevent collisions
 *
 * Operational Parameters:
 * - Processing cooldown periods between batches
 * - Maximum daily request processing limits
 *
 * @custom:roles-and-capabilities
 * ROUTER_ROLE:
 * - Initiate withdrawal requests
 *
 * TREASURY_ROLE:
 * - Process batches of withdrawal requests
 * - Process individual requests when needed
 * - Mark requests as completed
 *
 * GUARDIAN_ROLE:
 * - Perform contract upgrades via UUPS pattern
 *
 * Security Considerations:
 * - Reentrancy protection on all state-modifying functions
 * - Batch processing with cooldown periods to manage liquidity impact
 * - Access control for administrative functions
 * - Safe token transfer patterns with proper validation
 *
 * @custom:security-contact tech@zoth.io
 */
contract WithdrawalSystem is
    IWithdrawalSystem,
    UUPSUpgradeable,
    ReentrancyGuardUpgradeable,
    AccessManagedUpgradeable,
    IERC721Receiver
{
    using SafeERC20 for IERC20;
    using WithdrawalSystemTypes for *;
    using EnumerableSet for EnumerableSet.UintSet;

    /**
     * @notice Storage location for ERC7201 storage pattern
     * @dev keccak256(abi.encode(uint256(keccak256("zeusd.withdrawal.system.storage")) - 1)) & ~bytes32(uint256(0xff))
     * @custom:security Critical for storage layout - do not modify
     */
    bytes32 private constant STORAGE_LOCATION =
        0xd9a4610b0a86b464bc0cffebc11391de25c4c02611cb6a3e48c5c199b6ff1e00;

    /**
     * @notice Main storage structure for the router
     * @dev All state variables should be added here to maintain upgradeability
     * @custom:security-considerations Ensure proper initialization in upgrades
     */
    struct WithdrawalSystemStorage {
        IRegistry registry;
        EnumerableSet.UintSet requestQueue;
        address vaultMultiSig;
        uint256 lastProcessingTime;
        mapping(uint256 => WithdrawalSystemTypes.WithdrawalRequest) withdrawalRequests;
    }

    /**
     * @notice Retrieves storage pointer for ERC7201 storage
     * @dev Uses assembly for consistent storage slot access
     * @return $ Storage pointer to Storage struct
     * @custom:security Critical for storage access - do not modify
     */
    function _storage() private pure returns (WithdrawalSystemStorage storage $) {
        bytes32 location = STORAGE_LOCATION;
        assembly {
            $.slot := location
        }
    }

    /// @notice Required cooldown between processing batches
    /// @dev Constant value from Constants.sol
    uint256 public constant PROCESSING_COOLDOWN = Constants.TWELVE_HOURS;

    // Add a constant for max daily processing limit
    uint256 public constant MAX_DAILY_REQUESTS = Constants.MAX_DAILY_REQUESTS;

    /**
     * @dev Prevents implementation contract from being initialized
     * @custom:oz-upgrades-unsafe-allow constructor
     */
    constructor() {
        _disableInitializers();
    }

    /**
     * @notice Initializes the withdrawal system
     * @dev Sets up initial contracts and state
     * @param _registry Address of registry contract
     * @param _accessManager Address of the access manager
     * @param _vaultMultiSig Address of the vault multi-sig contract
     * @custom:security Only callable once during deployment
     */
    function initialize(
        address _registry,
        address _accessManager,
        address _vaultMultiSig
    ) external initializer {
        if (_registry == address(0)) revert InvalidAddress(_registry);
        if (_accessManager == address(0)) revert InvalidAddress(_accessManager);
        if (_vaultMultiSig == address(0)) revert InvalidAddress(_vaultMultiSig);

        __ReentrancyGuard_init();
        __UUPSUpgradeable_init();
        __AccessManaged_init(_accessManager);

        WithdrawalSystemStorage storage $ = _storage();
        $.registry = IRegistry(_registry);
        $.vaultMultiSig = _vaultMultiSig;
    }

    /**
     * @notice Get the access manager contract
     * @return IAccessManager interface to the access manager
     */
    function accessManager() external view returns (IAccessManager) {
        return IAccessManager(authority());
    }

    /**
     * @notice Initiates a withdrawal request
     * @dev Creates and processes withdrawal request based on token type
     * @param nftTokenId ID of the deposit NFT
     * @param user Address of the withdrawing user
     * @param metadata Original deposit metadata
     * @custom:security Only callable by ROUTER when system is not paused
     * @custom:emits WithdrawalRequested
     */
    function initiateWithdrawal(
        uint256 nftTokenId,
        address user,
        DataTypes.DepositMetadata calldata metadata
    ) external override nonReentrant restricted {
        if (metadata.rwaAmount == 0 || metadata.assetAmountDeposited == 0) revert InvalidAmount();

        _createRequest(user, nftTokenId, metadata);

        _addToQueue(nftTokenId);
    }

    /**
     * @notice Creates a new withdrawal request
     * @dev Internal function to initialize request data using NFT token ID
     * @param user Address of requesting user
     * @param nftTokenId Associated NFT token ID
     * @param metadata Deposit metadata
     * @custom:emits WithdrawalInitiated
     */
    function _createRequest(
        address user,
        uint256 nftTokenId,
        DataTypes.DepositMetadata calldata metadata
    ) internal {
        WithdrawalSystemStorage storage $ = _storage();
        WithdrawalSystemTypes.WithdrawalRequest storage request = $.withdrawalRequests[nftTokenId];
        request.user = user;
        request.assetAddress = metadata.assetDeposited;
        request.assetAmount = metadata.assetAmountDeposited;
        request.rwaAmount = metadata.rwaAmount;
        request.rwa = metadata.rwa;
        request.subVault = metadata.vaultAddress;
        request.timestamp = block.timestamp;
        request.status = WithdrawalSystemTypes.RequestStatus.PENDING;
        request.nftTokenId = nftTokenId;

        emit WithdrawalInitiated(
            user,
            request.assetAddress,
            request.assetAmount,
            request.rwaAmount,
            request.rwa,
            nftTokenId
        );
    }

    /**
     * @notice Adds request to processing queue
     * @dev Updates request status and adds to queue
     * @param nftTokenId ID of request to queue
     * @custom:emits RequestStatusUpdated, WithdrawalQueued
     */
    function _addToQueue(uint256 nftTokenId) internal {
        WithdrawalSystemStorage storage $ = _storage();
        // Add to queue
        $.requestQueue.add(nftTokenId);

        WithdrawalSystemTypes.WithdrawalRequest storage request = $.withdrawalRequests[nftTokenId];
        request.status = WithdrawalSystemTypes.RequestStatus.IN_QUEUE;

        emit RequestStatusUpdated(nftTokenId, WithdrawalSystemTypes.RequestStatus.IN_QUEUE);
        emit WithdrawalQueued(nftTokenId);
    }

    /**
     * @notice Processes a batch of withdrawal requests
     * @dev Optimized to group requests by vault and asset
     * @param _amountTransferToVault Amount to transfer to vault
     * @custom:security Only callable by TREASURY_ROLE and respects cooldown
     * @custom:emits RequestStatusUpdated for each request
     */
    function processBatch(uint256 _amountTransferToVault) external nonReentrant restricted {
        WithdrawalSystemStorage storage $ = _storage();

        // Check cooldown
        if (block.timestamp < $.lastProcessingTime + PROCESSING_COOLDOWN)
            revert ProcessingCooldownNotElapsed($.lastProcessingTime, PROCESSING_COOLDOWN);

        // Get pending request IDs up to the max limit
        (uint256[] memory requestIds, uint256 validCount) = _getPendingRequestIds(
            MAX_DAILY_REQUESTS
        );

        // Group requests by vault and asset
        BatchGroup[] memory batchGroups = _groupRequestsByVaultAndAsset(requestIds, validCount);

        uint256 processedCount = 0;

        // Process each batch group
        for (uint256 i = 0; i < batchGroups.length; i++) {
            BatchGroup memory group = batchGroups[i];
            if (group.requestCount == 0) continue;

            // Process multiple requests with the same vault and asset together
            processedCount += _processBatchGroup(group, _amountTransferToVault);
        }

        // Update last processing time only if we processed any requests
        if (processedCount > 0) {
            $.lastProcessingTime = block.timestamp;
        }

        emit BatchProcessed(processedCount);
    }

    /**
     * @notice Helper struct for batch processing
     */
    struct BatchGroup {
        address subVault;
        address asset;
        address rwaAddress;
        uint256[] requestIds;
        uint256 requestCount;
    }

    /**
     * @notice Groups requests by vault and asset for efficient batch processing
     * @param requestIds Array of request IDs
     * @param validCount Number of valid request IDs
     * @return batchGroups Array of batch groups
     */
    function _groupRequestsByVaultAndAsset(
        uint256[] memory requestIds,
        uint256 validCount
    ) internal view returns (BatchGroup[] memory batchGroups) {
        WithdrawalSystemStorage storage $ = _storage();

        // First count unique combinations
        uint256 groupCount = 0;
        bytes32[] memory keys = new bytes32[](validCount);

        for (uint256 i = 0; i < validCount; i++) {
            WithdrawalSystemTypes.WithdrawalRequest memory request = $.withdrawalRequests[
                requestIds[i]
            ];
            bytes32 key = keccak256(
                abi.encodePacked(request.subVault, request.assetAddress, request.rwa)
            );

            bool isNewKey = true;
            for (uint256 j = 0; j < groupCount; j++) {
                if (keys[j] == key) {
                    isNewKey = false;
                    break;
                }
            }

            if (isNewKey) {
                keys[groupCount] = key;
                groupCount++;
            }
        }

        // Initialize batch groups
        batchGroups = new BatchGroup[](groupCount);
        for (uint256 i = 0; i < groupCount; i++) {
            batchGroups[i].requestIds = new uint256[](validCount);
        }

        // Second pass: populate groups
        uint256[] memory groupSizes = new uint256[](groupCount);

        for (uint256 i = 0; i < validCount; i++) {
            WithdrawalSystemTypes.WithdrawalRequest memory request = $.withdrawalRequests[
                requestIds[i]
            ];
            bytes32 key = keccak256(
                abi.encodePacked(request.subVault, request.assetAddress, request.rwa)
            );

            for (uint256 j = 0; j < groupCount; j++) {
                if (batchGroups[j].subVault == address(0)) {
                    // Initialize new group
                    batchGroups[j].subVault = request.subVault;
                    batchGroups[j].asset = request.assetAddress;
                    batchGroups[j].rwaAddress = request.rwa;
                    batchGroups[j].requestIds[0] = requestIds[i];
                    batchGroups[j].requestCount = 1;
                    groupSizes[j] = 1;
                    break;
                } else if (keys[j] == key) {
                    // Add to existing group
                    batchGroups[j].requestIds[groupSizes[j]] = requestIds[i];
                    groupSizes[j]++;
                    batchGroups[j].requestCount = groupSizes[j];
                    break;
                }
            }
        }

        return batchGroups;
    }

    /**
     * @notice Processes a group of requests with the same vault and asset
     * @param group The batch group to process
     * @param _amountTransferToVault Amount to transfer to vault
     * @return processedCount Number of processed requests
     */
    function _processBatchGroup(
        BatchGroup memory group,
        uint256 _amountTransferToVault
    ) internal returns (uint256 processedCount) {
        WithdrawalSystemStorage storage $ = _storage();
        processedCount = 0;

        IERC20(group.rwaAddress).safeTransferFrom(
            $.vaultMultiSig,
            group.subVault,
            _amountTransferToVault
        );

        // For now, we'll process each request in the group individually
        for (uint256 i = 0; i < group.requestCount; i++) {
            uint256 nftTokenId = group.requestIds[i];
            WithdrawalSystemTypes.WithdrawalRequest storage request = $.withdrawalRequests[
                nftTokenId
            ];

            // IMPORTANT: Update state BEFORE making external calls
            // Mark request as processing
            request.status = WithdrawalSystemTypes.RequestStatus.PROCESSING;
            emit RequestStatusUpdated(nftTokenId, WithdrawalSystemTypes.RequestStatus.PROCESSING);

            // Call vault to process withdrawal
            (bool isInitiated, bool isCompleted, uint256 processedAmount) = IVault(request.subVault)
                .handleWithdraw(request.user, request.assetAddress, request.rwaAmount);

            if (isInitiated && isCompleted && processedAmount > 0) {
                // Mark request as completed
                request.status = WithdrawalSystemTypes.RequestStatus.COMPLETED;

                // Burn NFT
                IZeDP($.registry.getContract(Constants.CONTRACT_ZEUSD_CDP)).burn(nftTokenId);

                emit RequestStatusUpdated(
                    nftTokenId,
                    WithdrawalSystemTypes.RequestStatus.COMPLETED
                );
                emit WithdrawalCompleted(
                    request.user,
                    request.assetAddress,
                    processedAmount,
                    nftTokenId
                );

                // Remove from queue to prevent unbounded growth
                _removeFromQueue(nftTokenId);

                processedCount++;
            } else {
                // Mark as failed if not completed
                request.status = WithdrawalSystemTypes.RequestStatus.FAILED;
                emit RequestStatusUpdated(nftTokenId, WithdrawalSystemTypes.RequestStatus.FAILED);
                processedCount++;
            }
        }

        return processedCount;
    }

    /**
     * @notice Gets pending withdrawal request IDs up to a maximum limit
     * @dev Returns only IN_QUEUE request IDs
     * @param maxCount Maximum number of request IDs to return
     * @return requestIds Array of pending request IDs
     * @return validCount Number of valid IDs in the array
     */
    function _getPendingRequestIds(
        uint256 maxCount
    ) internal view returns (uint256[] memory requestIds, uint256 validCount) {
        WithdrawalSystemStorage storage $ = _storage();

        // Initialize array to store request IDs
        requestIds = new uint256[](maxCount);
        validCount = 0;

        // Iterate through the requestQueue using EnumerableSet methods
        uint256 queueLength = $.requestQueue.length();
        for (uint256 i = 0; i < queueLength && validCount < maxCount; i++) {
            uint256 nftTokenId = $.requestQueue.at(i);
            WithdrawalSystemTypes.WithdrawalRequest memory request = $.withdrawalRequests[
                nftTokenId
            ];

            if (request.status == WithdrawalSystemTypes.RequestStatus.IN_QUEUE) {
                requestIds[validCount] = nftTokenId;
                validCount++;
            }
        }

        return (requestIds, validCount);
    }

    /**
     * @notice Returns the details of a withdrawal request
     * @param nftTokenId ID of the NFT token representing the withdrawal
     * @return request Details of the withdrawal request
     */
    function withdrawalRequestsDetails(
        uint256 nftTokenId
    ) external view returns (WithdrawalSystemTypes.WithdrawalRequest memory) {
        return _storage().withdrawalRequests[nftTokenId];
    }

    /**
     * @notice Authorizes contract upgrades
     * @custom:security Critical upgrade operation, only callable by GUARDIAN_ROLE
     */
    function _authorizeUpgrade(address newImplementation) internal override restricted {}

    /**
     * @notice Processes a specific withdrawal request
     * @param nftTokenId ID of the request to process
     * @dev Transfers RWA from multisig to vault before processing
     * @custom:security Only callable by TREASURY_ROLE
     */
    function processRequest(uint256 nftTokenId) external nonReentrant restricted {
        WithdrawalSystemStorage storage $ = _storage();

        WithdrawalSystemTypes.WithdrawalRequest storage request = $.withdrawalRequests[nftTokenId];
        if (request.status != WithdrawalSystemTypes.RequestStatus.IN_QUEUE)
            revert InvalidRequestStatus(request.status);

        // Mark request as processing
        request.status = WithdrawalSystemTypes.RequestStatus.PROCESSING;
        emit RequestStatusUpdated(nftTokenId, WithdrawalSystemTypes.RequestStatus.PROCESSING);

        // Transfer RWA from vault multisig to vault (same pattern as processBatch)
        IERC20(request.rwa).safeTransferFrom($.vaultMultiSig, request.subVault, request.rwaAmount);

        // Call vault to process withdrawal
        (bool isInitiated, bool isCompleted, uint256 processedAmount) = IVault(request.subVault)
            .handleWithdraw(request.user, request.assetAddress, request.rwaAmount);
        if (isInitiated && isCompleted && processedAmount > 0) {
            // Mark request as completed
            request.status = WithdrawalSystemTypes.RequestStatus.COMPLETED;

            // Burn NFT
            IZeDP($.registry.getContract(Constants.CONTRACT_ZEUSD_CDP)).burn(nftTokenId);

            emit RequestStatusUpdated(nftTokenId, WithdrawalSystemTypes.RequestStatus.COMPLETED);
            emit WithdrawalCompleted(
                request.user,
                request.assetAddress,
                processedAmount,
                nftTokenId
            );

            // Remove completed request from queue
            _removeFromQueue(nftTokenId);
        } else {
            // Mark as failed if not completed
            request.status = WithdrawalSystemTypes.RequestStatus.FAILED;
            emit RequestStatusUpdated(nftTokenId, WithdrawalSystemTypes.RequestStatus.FAILED);
        }
    }

    /**
     * @notice Removes a request from the queue
     * @dev Uses EnumerableSet's remove method
     * @param nftTokenId ID of the request to remove from queue
     */
    function _removeFromQueue(uint256 nftTokenId) internal {
        WithdrawalSystemStorage storage $ = _storage();

        if ($.requestQueue.remove(nftTokenId)) {
            emit RequestRemovedFromQueue(nftTokenId);
        }
    }

    /**
     * @notice Gets all active withdrawal requests for a user
     * @param user Address of the user
     * @return nftTokenIds Array of active NFT token IDs
     * @return requests Array of corresponding request details
     * @dev Returns only IN_QUEUE and PROCESSING requests
     */
    function getUserActiveRequests(
        address user
    )
        external
        view
        returns (
            uint256[] memory nftTokenIds,
            WithdrawalSystemTypes.WithdrawalRequest[] memory requests
        )
    {
        WithdrawalSystemStorage storage $ = _storage();

        // Get the request queue length
        uint256 queueLength = $.requestQueue.length();

        // First pass: count active requests for this user
        uint256 activeCount = 0;
        for (uint256 i = 0; i < queueLength; i++) {
            uint256 nftTokenId = $.requestQueue.at(i);
            WithdrawalSystemTypes.WithdrawalRequest storage request = $.withdrawalRequests[
                nftTokenId
            ];

            if (
                request.user == user &&
                (request.status == WithdrawalSystemTypes.RequestStatus.IN_QUEUE ||
                    request.status == WithdrawalSystemTypes.RequestStatus.PROCESSING)
            ) {
                activeCount++;
            }
        }

        // Initialize return arrays with correct size
        nftTokenIds = new uint256[](activeCount);
        requests = new WithdrawalSystemTypes.WithdrawalRequest[](activeCount);

        // Second pass: fill arrays with active requests
        uint256 index = 0;
        for (uint256 i = 0; i < queueLength; i++) {
            uint256 nftTokenId = $.requestQueue.at(i);
            WithdrawalSystemTypes.WithdrawalRequest storage request = $.withdrawalRequests[
                nftTokenId
            ];

            if (
                request.user == user &&
                (request.status == WithdrawalSystemTypes.RequestStatus.IN_QUEUE ||
                    request.status == WithdrawalSystemTypes.RequestStatus.PROCESSING)
            ) {
                nftTokenIds[index] = nftTokenId;
                requests[index] = request;
                index++;
            }
        }

        return (nftTokenIds, requests);
    }

    /**
     * @notice Gets the current queue length
     * @return Length of the request queue
     */
    function getQueueLength() external view returns (uint256) {
        return _storage().requestQueue.length();
    }

    /**
     * @notice Gets the next batch of processable withdrawal requests
     * @dev Returns up to MAX_DAILY_REQUESTS requests that are in queue
     * @return requestIds Array of request IDs
     * @return requests Array of request details
     * @return count Number of requests in the batch
     */
    function getNextProcessableBatch()
        external
        view
        returns (
            uint256[] memory requestIds,
            WithdrawalSystemTypes.WithdrawalRequest[] memory requests,
            uint256 count
        )
    {
        WithdrawalSystemStorage storage $ = _storage();

        // Get pending request IDs
        (requestIds, count) = _getPendingRequestIds(MAX_DAILY_REQUESTS);

        // Initialize requests array
        requests = new WithdrawalSystemTypes.WithdrawalRequest[](count);

        // Fill array with request details
        for (uint256 i = 0; i < count; i++) {
            requests[i] = $.withdrawalRequests[requestIds[i]];
        }

        return (requestIds, requests, count);
    }

    /**
     * @notice Updates an existing withdrawal request
     * @dev Only admin can update requests
     * @param update Struct containing update parameters
     * @custom:security Only callable by TREASURY_ROLE
     * @custom:emits RequestUpdated
     */
    function updateRequest(
        WithdrawalSystemTypes.WithdrawalRequestUpdate calldata update
    ) external nonReentrant restricted {
        WithdrawalSystemStorage storage $ = _storage();

        WithdrawalSystemTypes.WithdrawalRequest storage request = $.withdrawalRequests[
            update.nftTokenId
        ];
        if (request.status != WithdrawalSystemTypes.RequestStatus.IN_QUEUE) {
            revert RequestNotInQueue();
        }

        if (update.updateAsset) {
            request.assetAddress = update.asset;
        }

        if (update.updateAmount) {
            request.assetAmount = update.amount;
        }

        emit RequestUpdated(
            update.nftTokenId,
            update.updateAsset ? update.asset : request.assetAddress,
            update.updateAmount ? update.amount : request.assetAmount
        );
    }

    /**
     * @notice Handles the receipt of ERC721 tokens
     * @dev Implements IERC721Receiver to safely receive NFTs
     * @custom:security Only accepts NFTs from the registered ZeDP contract
     */
    function onERC721Received(
        address,
        address,
        uint256,
        bytes calldata
    ) external view override returns (bytes4) {
        WithdrawalSystemStorage storage $ = _storage();

        // Only accept NFTs from the registered ZeDP contract
        address zdpContract = $.registry.getContract(Constants.CONTRACT_ZEUSD_CDP);
        if (msg.sender != zdpContract) {
            revert InvalidAddress(msg.sender);
        }

        return this.onERC721Received.selector;
    }
}
