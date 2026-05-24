// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.23;

import '@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol';
import { ReentrancyGuardUpgradeable } from '@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol';
import { SafeERC20 } from '@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol';
import { IERC20 } from '@openzeppelin/contracts/token/ERC20/IERC20.sol';
import { ISubVault } from './interfaces/ISubVault.sol';
import { IAccessController } from './interfaces/access/IAccessController.sol';
import { IRegistry } from './interfaces/access/IRegistry.sol';
import { AccessChecker } from './utils/AccessChecker.sol';
import { SystemRoles } from './libraries/SystemRoles.sol';
import { DataTypes } from './libraries/DataTypes.sol';
import './interfaces/IWithdrawalSystem.sol';
import './libraries/WithdrawalSystemTypes.sol';

/**
 * @title Withdrawal System
 * @author ZeUSD Protocol Team
 * @notice Manages withdrawal requests and processing for the protocol
 * @dev Implements UUPS upgradeable pattern with reentrancy protection
 * @custom:security-contact paras@zoth.io
 *
 * Security Considerations:
 * - Reentrancy protection on all state-modifying functions
 * - Batch processing with cooldown periods
 * - Request expiration handling
 * - Access control for admin functions
 * - Safe token transfers
 *
 * State Management:
 * - Request tracking
 * - Queue management
 * - Asset configurations
 * - Processing cooldowns
 *
 * Upgrade Safety:
 * - UUPS pattern
 * - Storage gaps for future extensions
 * - Careful state handling during upgrades
 */
contract WithdrawalSystem is
    IWithdrawalSystem,
    Initializable,
    UUPSUpgradeable,
    ReentrancyGuardUpgradeable
{
    using SafeERC20 for IERC20;
    using WithdrawalSystemTypes for *;

    /// @notice Router contract address
    /// @dev Only router can initiate withdrawals
    address public router;

    /// @notice Access control contract reference
    IAccessController public accessController;

    /// @notice Registry contract reference
    IRegistry public registry;

    /// @notice Next available request ID
    /// @dev Increments for each new request
    uint256 public nextRequestId;

    /// @notice Mapping of request ID to withdrawal request details
    mapping(uint256 => WithdrawalSystemTypes.WithdrawalRequest) public withdrawalRequests;

    /// @notice Mapping of user address to their request IDs
    mapping(address => uint256[]) public userRequests;

    /// @notice Mapping of asset address to withdrawal configuration
    mapping(address => WithdrawalSystemTypes.AssetConfig) public assetConfigs;

    /// @notice Array of request IDs in processing queue
    uint256[] public requestQueue;

    /// @notice Mapping of request ID to queue index
    mapping(uint256 => uint256) public queueIndex;

    /// @notice Timestamp of last batch processing
    uint256 public lastProcessingTime;

    /// @notice Required cooldown between processing batches
    /// @dev Constant value of 24 hours
    uint256 public constant PROCESSING_COOLDOWN = 24 hours;

    /// @notice Window for claiming processed withdrawals
    /// @dev Constant value of 7 days
    uint256 public constant CLAIM_WINDOW = 60 days;

    /// @notice TBill subvault address
    address public tbillSubVault;

    /// @notice USYC subvault address
    address public usycSubVault;

    /// @notice wM address
    address public USDC;
    /// @notice wM subvault address
    address public wMSubVault;

    /**
     * @notice Ensures caller is the authorized router
     * @dev Used for withdrawal initiation validation
     * @custom:security Critical for withdrawal control
     */
    modifier onlyRouter() {
        if (msg.sender != router) {
            revert UnauthorizedRouter(msg.sender);
        }
        _;
    }

    /**
     * @notice Initializes the withdrawal system
     * @dev Sets up initial contracts and state
     * @param _accessController Address of access controller contract
     * @param _registry Address of registry contract
     * @param _router Address of router contract
     * @param _tbillSubVault Address of TBill subvault
     * @param _usycSubVault Address of USYC subvault
     * @custom:security Only callable once during deployment
     */
    function initialize(
        address _accessController,
        address _registry,
        address _router,
        address _tbillSubVault,
        address _usycSubVault
    ) external initializer {
        __ReentrancyGuard_init();
        __UUPSUpgradeable_init();

        accessController = IAccessController(_accessController);
        registry = IRegistry(_registry);
        router = _router;
        tbillSubVault = _tbillSubVault;
        usycSubVault = _usycSubVault;

        emit RouterSet(router);
    }

    /**
     * @notice Sets the router address
     * @dev Can only be set once by admin
     * @param newRouter Address of the router contract
     * @custom:security Validates router address
     * @custom:emits RouterUpdated
     */
    function setRouter(address newRouter) external {
        AccessChecker.checkRole(accessController, SystemRoles.DEFAULT_ADMIN_ROLE, msg.sender);
        if (newRouter == address(0)) revert InvalidAddress(newRouter);
        router = newRouter;
        emit RouterUpdated(newRouter);
    }

    /**
     * @notice Initiates a withdrawal request
     * @dev Creates and processes withdrawal request based on token type
     * @param nftTokenId ID of the deposit NFT
     * @param user Address of the withdrawing user
     * @param amount Amount to withdraw
     * @param metadata Original deposit metadata
     * @return requestId Unique identifier for the withdrawal request
     * @custom:security Includes reentrancy protection
     * @custom:emits WithdrawalRequested
     */
    function initiateWithdrawal(
        uint256 nftTokenId,
        address user,
        uint256 amount,
        DataTypes.DepositMetadata calldata metadata
    ) external onlyRouter nonReentrant returns (uint256 requestId) {
        if (amount == 0) revert InvalidAmount();

        uint256 tokenAmount = metadata.amount;
        uint256 amountOut = metadata.amount;

        // Calculate output amount for non-primary assets in tbill/usyc subvaults
        if (
            (metadata.subVault == tbillSubVault || metadata.subVault == usycSubVault) &&
            metadata.asset != ISubVault(metadata.subVault).getPrimaryAsset()
        ) {
            tokenAmount = (metadata.amount * 1e6) / metadata.collateralPrice;
            (uint256 price, bool success) = ISubVault(metadata.subVault).getOraclePrice(
                metadata.collateralAddress
            );
            if (!success || price == 0) revert('Invalid oracle price');
            amountOut = (tokenAmount * price) / 1e8;
        }

        // Apply fees for USDC withdrawals
        if (metadata.asset == USDC) {
            amountOut = metadata.subVault == wMSubVault
                ? (amountOut * 99) / 100 // 1% fee for wM
                : metadata.subVault == usycSubVault
                ? (amountOut * 999) / 1000 // 0.1% fee for USYC
                : amountOut;
        }

        // Process withdrawal
        try ISubVault(metadata.subVault).handleWithdraw(user, metadata.asset, tokenAmount) {
            // Handle instant withdrawals for USDC from USYC/wM subvaults
            bool isInstantUSDC = metadata.asset == USDC &&
                (metadata.subVault == usycSubVault || metadata.subVault == wMSubVault);

            if (isInstantUSDC) {
                IERC20(USDC).safeTransferFrom(metadata.subVault, user, amountOut);
            } else if (metadata.tokenType == DataTypes.TokenType.StableCoin) {
                // Create and process request for other stablecoins
                requestId = _createRequest(
                    metadata.issuer,
                    metadata.asset,
                    amountOut,
                    nftTokenId,
                    metadata.subVault,
                    true
                );

                _addToQueue(requestId);
            }

            emit WithdrawalProcessed(requestId, metadata.issuer, amountOut);
            return isInstantUSDC ? 0 : requestId;
        } catch {
            revert WithdrawalFailed();
        }
    }

    /**
     * @notice Creates a new withdrawal request
     * @dev Internal function to initialize request data
     * @param user Address of requesting user
     * @param asset Address of asset to withdraw
     * @param amount Amount to withdraw
     * @param nftTokenId Associated NFT token ID
     * @param subVault Address of source subvault
     * @param isStable Whether asset is a stablecoin
     * @return requestId Unique identifier for the request
     * @custom:emits WithdrawalRequested
     */
    function _createRequest(
        address user,
        address asset,
        uint256 amount,
        uint256 nftTokenId,
        address subVault,
        bool isStable
    ) internal returns (uint256 requestId) {
        requestId = nextRequestId++;

        WithdrawalSystemTypes.WithdrawalRequest storage request = withdrawalRequests[requestId];
        request.requestId = requestId;
        request.user = user;
        request.asset = asset;
        request.amount = amount;
        request.timestamp = block.timestamp;
        request.status = WithdrawalSystemTypes.RequestStatus.PENDING;
        request.nftTokenId = nftTokenId;
        request.subVault = subVault;
        request.expiryTime = block.timestamp + CLAIM_WINDOW;
        request.isStable = isStable;

        userRequests[user].push(requestId);

        emit WithdrawalRequested(requestId, user, asset, amount, nftTokenId, isStable);

        return requestId;
    }

    /**
     * @notice Processes an instant withdrawal
     * @dev Handles immediate withdrawal requests
     * @param requestId ID of the request to process
     * @custom:emits RequestStatusUpdated
     */
    function _processInstantWithdrawal(uint256 requestId) internal {
        WithdrawalSystemTypes.WithdrawalRequest storage request = withdrawalRequests[requestId];
        request.status = WithdrawalSystemTypes.RequestStatus.READY;
        emit RequestStatusUpdated(requestId, WithdrawalSystemTypes.RequestStatus.READY);
    }

    /**
     * @notice Adds request to processing queue
     * @dev Updates request status and queue tracking
     * @param requestId ID of request to queue
     * @custom:emits RequestStatusUpdated, WithdrawalQueued
     */
    function _addToQueue(uint256 requestId) internal {
        requestQueue.push(requestId);
        queueIndex[requestId] = requestQueue.length - 1;

        WithdrawalSystemTypes.WithdrawalRequest storage request = withdrawalRequests[requestId];
        request.status = WithdrawalSystemTypes.RequestStatus.IN_QUEUE;

        emit RequestStatusUpdated(requestId, WithdrawalSystemTypes.RequestStatus.IN_QUEUE);
        emit WithdrawalQueued(requestId);
    }

    struct BatchProcessInfo {
        address subVault;
        address asset;
        uint256 totalAmount;
        uint256[] requestIds;
    }

    /**
     * @notice Processes a batch of withdrawal requests
     * @dev Groups and processes requests by subvault and asset
     * @custom:security Requires admin role and respects cooldown
     * @custom:emits RequestStatusUpdated for each request
     */
    function processBatch() external nonReentrant {
        // Check processor role
        AccessChecker.checkRole(accessController, SystemRoles.WITHDRAWAL_MANAGER_ROLE, msg.sender);

        // Check cooldown
        require(
            block.timestamp >= lastProcessingTime + PROCESSING_COOLDOWN,
            'Processing cooldown not elapsed'
        );

        // Get all pending requests
        BatchProcessInfo[] memory batchGroups = _getAllPendingRequests();

        // Process each group
        for (uint256 i = 0; i < batchGroups.length; i++) {
            BatchProcessInfo memory batch = batchGroups[i];

            // Check subVault balance
            uint256 vaultBalance = IERC20(batch.asset).balanceOf(batch.subVault);

            if (vaultBalance >= batch.totalAmount) {
                // Process all requests in this batch
                _processBatchGroup(batch);
            }
            // Skip if insufficient balance - will be processed in next batch
        }

        // Update last processing time
        lastProcessingTime = block.timestamp;
    }

    /**
     * @notice Gets all pending withdrawal requests grouped by subvault and asset
     * @dev Internal function to organize requests for batch processing
     * @return batchGroups Array of BatchProcessInfo structures
     */
    function _getAllPendingRequests()
        internal
        view
        returns (BatchProcessInfo[] memory batchGroups)
    {
        // Count unique combinations first
        uint256 groupCount = 0;
        bytes32[] memory keys = new bytes32[](requestQueue.length);

        // First pass: count unique combinations
        for (uint256 i = 0; i < requestQueue.length; i++) {
            uint256 requestId = requestQueue[i];
            WithdrawalSystemTypes.WithdrawalRequest storage request = withdrawalRequests[requestId];
            if (request.status != WithdrawalSystemTypes.RequestStatus.IN_QUEUE) continue;

            bytes32 key = keccak256(abi.encodePacked(request.subVault, request.asset));
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

        // Initialize batch groups array
        batchGroups = new BatchProcessInfo[](groupCount);
        for (uint256 i = 0; i < groupCount; i++) {
            batchGroups[i].requestIds = new uint256[](requestQueue.length);
        }

        // Second pass: populate groups
        uint256[] memory groupSizes = new uint256[](groupCount);
        for (uint256 i = 0; i < requestQueue.length; i++) {
            uint256 requestId = requestQueue[i];
            WithdrawalSystemTypes.WithdrawalRequest storage request = withdrawalRequests[requestId];
            if (request.status != WithdrawalSystemTypes.RequestStatus.IN_QUEUE) continue;

            // Find matching group
            for (uint256 j = 0; j < groupCount; j++) {
                if (batchGroups[j].subVault == address(0)) {
                    // Initialize new group
                    batchGroups[j].subVault = request.subVault;
                    batchGroups[j].asset = request.asset;
                    batchGroups[j].requestIds[0] = requestId;
                    batchGroups[j].totalAmount = request.amount;
                    groupSizes[j] = 1;
                    break;
                } else if (
                    batchGroups[j].subVault == request.subVault &&
                    batchGroups[j].asset == request.asset
                ) {
                    // Add to existing group
                    batchGroups[j].requestIds[groupSizes[j]] = requestId;
                    batchGroups[j].totalAmount += request.amount;
                    groupSizes[j]++;
                    break;
                }
            }
        }

        return batchGroups;
    }

    /**
     * @notice Processes a group of withdrawal requests
     * @dev Updates status for all requests in the batch
     * @param batch Batch information structure
     * @custom:emits RequestStatusUpdated for each request
     */
    function _processBatchGroup(BatchProcessInfo memory batch) internal {
        // Mark all requests as ready
        for (uint256 i = 0; i < batch.requestIds.length; i++) {
            if (batch.requestIds[i] == 0) break; // End of valid requestIds

            WithdrawalSystemTypes.WithdrawalRequest storage request = withdrawalRequests[
                batch.requestIds[i]
            ];
            request.status = WithdrawalSystemTypes.RequestStatus.READY;
            emit RequestStatusUpdated(
                batch.requestIds[i],
                WithdrawalSystemTypes.RequestStatus.READY
            );
        }
    }

    /**
     * @notice Marks a batch of requests as failed
     * @dev Updates status when batch processing fails
     * @param batch Batch information structure
     * @custom:emits RequestStatusUpdated for each request
     */
    function _markBatchAsFailed(BatchProcessInfo memory batch) internal {
        for (uint256 i = 0; i < batch.requestIds.length; i++) {
            if (batch.requestIds[i] == 0) break; // End of valid requestIds

            WithdrawalSystemTypes.WithdrawalRequest storage request = withdrawalRequests[
                batch.requestIds[i]
            ];
            request.status = WithdrawalSystemTypes.RequestStatus.FAILED;
            emit RequestStatusUpdated(
                batch.requestIds[i],
                WithdrawalSystemTypes.RequestStatus.FAILED
            );
        }
    }

    /**
     * @notice Returns information about processable withdrawal groups
     * @dev Helps processors check what can be processed
     * @return subVaults Array of subvault addresses
     * @return assets Array of asset addresses
     * @return totalAmounts Array of total amounts per group
     * @return availableBalances Array of available balances per group
     */
    function getProcessableGroups()
        external
        view
        returns (
            address[] memory subVaults,
            address[] memory assets,
            uint256[] memory totalAmounts,
            uint256[] memory availableBalances
        )
    {
        BatchProcessInfo[] memory groups = _getAllPendingRequests();

        subVaults = new address[](groups.length);
        assets = new address[](groups.length);
        totalAmounts = new uint256[](groups.length);
        availableBalances = new uint256[](groups.length);

        for (uint256 i = 0; i < groups.length; i++) {
            subVaults[i] = groups[i].subVault;
            assets[i] = groups[i].asset;
            totalAmounts[i] = groups[i].totalAmount;
            availableBalances[i] = IERC20(groups[i].asset).balanceOf(groups[i].subVault);
        }
    }

    /**
     * @notice Claims a processed withdrawal
     * @dev Transfers assets from subVault to user if request is ready and not expired
     * @param requestId ID of the withdrawal request to claim
     * @custom:security Includes reentrancy protection
     * @custom:emits WithdrawalProcessed, RequestStatusUpdated
     */
    function claimWithdrawal(uint256 requestId) external nonReentrant {
        WithdrawalSystemTypes.WithdrawalRequest storage request = withdrawalRequests[requestId];
        require(request.user == msg.sender, 'Not request owner');
        require(request.status == WithdrawalSystemTypes.RequestStatus.READY, 'Not ready for claim');
        require(block.timestamp <= request.expiryTime, 'Request expired');

        request.status = WithdrawalSystemTypes.RequestStatus.COMPLETED;

        // Transfer assets from subVault to user
        IERC20(request.asset).safeTransferFrom(request.subVault, msg.sender, request.amount);

        emit WithdrawalProcessed(requestId, msg.sender, request.amount);
        emit RequestStatusUpdated(requestId, WithdrawalSystemTypes.RequestStatus.COMPLETED);
    }

    /**
     * @notice Sets configuration for an asset
     * @dev Only admin can configure assets
     * @param asset Address of the asset to configure
     * @param config Configuration parameters for the asset
     * @custom:security Requires DEFAULT_ADMIN_ROLE
     * @custom:emits AssetConfigUpdated
     */
    function setAssetConfig(
        address asset,
        WithdrawalSystemTypes.AssetConfig calldata config
    ) external {
        AccessChecker.checkRole(accessController, SystemRoles.WITHDRAWAL_MANAGER_ROLE, msg.sender);
        assetConfigs[asset] = config;
        emit AssetConfigUpdated(asset, config);
    }

    /**
     * @notice Authorizes contract upgrades
     * @dev Only UPGRADER_ROLE can upgrade the contract
     * @custom:security Critical upgrade operation
     */
    function _authorizeUpgrade(address /*newImplementation*/) internal view override {
        AccessChecker.checkRole(accessController, SystemRoles.UPGRADER_ROLE, msg.sender);
    }

    /**
     * @notice Checks if a withdrawal request is ready for claiming
     * @param requestId ID of the withdrawal request to check
     * @return isClaimable Whether the request can be claimed
     * @return status Current status of the request
     * @return expiryTime Timestamp when request expires
     */
    function isRequestClaimable(
        uint256 requestId
    )
        external
        view
        returns (bool isClaimable, WithdrawalSystemTypes.RequestStatus status, uint256 expiryTime)
    {
        WithdrawalSystemTypes.WithdrawalRequest storage request = withdrawalRequests[requestId];

        isClaimable = (request.status == WithdrawalSystemTypes.RequestStatus.READY &&
            block.timestamp <= request.expiryTime);

        return (isClaimable, request.status, request.expiryTime);
    }

    /**
     * @notice Processes a specific withdrawal request
     * @param requestId ID of the request to process
     * @dev Only callable by admin, checks subvault balance before processing
     * @custom:security Requires admin role and sufficient subvault balance
     */
    function processRequest(uint256 requestId) external nonReentrant {
        // Check processor role
        AccessChecker.checkRole(accessController, SystemRoles.WITHDRAWAL_MANAGER_ROLE, msg.sender);

        WithdrawalSystemTypes.WithdrawalRequest storage request = withdrawalRequests[requestId];
        require(request.status == WithdrawalSystemTypes.RequestStatus.IN_QUEUE, 'Not in queue');

        // Check subVault balance
        uint256 vaultBalance = IERC20(request.asset).balanceOf(request.subVault);
        require(vaultBalance >= request.amount, 'Insufficient vault balance');

        // Mark request as ready
        request.status = WithdrawalSystemTypes.RequestStatus.READY;
        emit RequestStatusUpdated(requestId, WithdrawalSystemTypes.RequestStatus.READY);
    }

    /**
     * @notice Gets all withdrawal requests for a user
     * @param user Address of the user
     * @return requestIds Array of request IDs belonging to the user
     * @return requests Array of corresponding request details
     */
    function getUserRequests(
        address user
    )
        external
        view
        returns (
            uint256[] memory requestIds,
            WithdrawalSystemTypes.WithdrawalRequest[] memory requests
        )
    {
        requestIds = userRequests[user];
        requests = new WithdrawalSystemTypes.WithdrawalRequest[](requestIds.length);

        for (uint256 i = 0; i < requestIds.length; i++) {
            requests[i] = withdrawalRequests[requestIds[i]];
        }

        return (requestIds, requests);
    }

    /**
     * @notice Gets all active withdrawal requests for a user
     * @param user Address of the user
     * @return requestIds Array of active request IDs
     * @return requests Array of corresponding request details
     * @dev Returns only IN_QUEUE and READY requests that haven't expired
     */
    function getUserActiveRequests(
        address user
    )
        external
        view
        returns (
            uint256[] memory requestIds,
            WithdrawalSystemTypes.WithdrawalRequest[] memory requests
        )
    {
        uint256[] memory allRequestIds = userRequests[user];

        // First count active requests
        uint256 activeCount = 0;
        for (uint256 i = 0; i < allRequestIds.length; i++) {
            WithdrawalSystemTypes.WithdrawalRequest memory request = withdrawalRequests[
                allRequestIds[i]
            ];
            if (
                (request.status == WithdrawalSystemTypes.RequestStatus.IN_QUEUE ||
                    request.status == WithdrawalSystemTypes.RequestStatus.READY) &&
                block.timestamp <= request.expiryTime
            ) {
                activeCount++;
            }
        }

        // Initialize return arrays with correct size
        requestIds = new uint256[](activeCount);
        requests = new WithdrawalSystemTypes.WithdrawalRequest[](activeCount);

        // Fill arrays with active requests
        uint256 index = 0;
        for (uint256 i = 0; i < allRequestIds.length; i++) {
            WithdrawalSystemTypes.WithdrawalRequest memory request = withdrawalRequests[
                allRequestIds[i]
            ];
            if (
                (request.status == WithdrawalSystemTypes.RequestStatus.IN_QUEUE ||
                    request.status == WithdrawalSystemTypes.RequestStatus.READY) &&
                block.timestamp <= request.expiryTime
            ) {
                requestIds[index] = allRequestIds[i];
                requests[index] = request;
                index++;
            }
        }
    }

    /**
     * @notice Sets the TBill subvault address
     * @dev Only callable by admin
     * @param _tbillSubVault New TBill subvault address
     */
    function setTBillSubVault(address _tbillSubVault) external {
        AccessChecker.checkRole(accessController, SystemRoles.DEFAULT_ADMIN_ROLE, msg.sender);
        if (_tbillSubVault == address(0)) revert InvalidAddress(_tbillSubVault);
        tbillSubVault = _tbillSubVault;
        emit TBillSubVaultUpdated(_tbillSubVault);
    }

    /**
     * @notice Sets the wM address
     * @dev Only callable by admin
     * @param _USDC New wM address
     */
    function setUSDC(address _USDC) external {
        AccessChecker.checkRole(accessController, SystemRoles.DEFAULT_ADMIN_ROLE, msg.sender);
        if (_USDC == address(0)) revert InvalidAddress(_USDC);
        USDC = _USDC;
    }

    /**
     * @notice Sets the wM subvault address
     * @dev Only callable by admin
     * @param _wMSubVault New wM subvault address
     */
    function setwMSubVault(address _wMSubVault) external {
        AccessChecker.checkRole(accessController, SystemRoles.DEFAULT_ADMIN_ROLE, msg.sender);
        if (_wMSubVault == address(0)) revert InvalidAddress(_wMSubVault);
        wMSubVault = _wMSubVault;
    }

    /**
     * @notice Sets the USYC subvault address
     * @dev Only callable by admin
     * @param _usycSubVault New USYC subvault address
     */
    function setUSYCSubVault(address _usycSubVault) external {
        AccessChecker.checkRole(accessController, SystemRoles.DEFAULT_ADMIN_ROLE, msg.sender);
        if (_usycSubVault == address(0)) revert InvalidAddress(_usycSubVault);
        usycSubVault = _usycSubVault;
        emit USYCSubVaultUpdated(_usycSubVault);
    }

    /**
     * @notice Updates an existing withdrawal request
     * @dev Only admin can update requests
     * @param update Struct containing update parameters
     * @custom:security Requires WITHDRAWAL_MANAGER_ROLE
     * @custom:emits RequestUpdated
     */
    function updateRequest(WithdrawalSystemTypes.WithdrawalRequestUpdate calldata update) external {
        AccessChecker.checkRole(accessController, SystemRoles.WITHDRAWAL_MANAGER_ROLE, msg.sender);

        WithdrawalSystemTypes.WithdrawalRequest storage request = withdrawalRequests[
            update.requestId
        ];
        require(
            request.status == WithdrawalSystemTypes.RequestStatus.IN_QUEUE,
            'Request not in queue'
        );

        if (update.updateAsset) {
            request.asset = update.asset;
        }

        if (update.updateAmount) {
            request.amount = update.amount;
        }

        emit RequestUpdated(
            update.requestId,
            update.updateAsset ? update.asset : request.asset,
            update.updateAmount ? update.amount : request.amount
        );
    }
}
