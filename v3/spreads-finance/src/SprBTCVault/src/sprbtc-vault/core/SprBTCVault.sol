// SPDX-License-Identifier: MIT
pragma solidity ^0.8.29;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import {BaseContract} from "common-contracts/base-contracts/BaseContract.sol";
import {OPERATOR_ROLE, SYSTEM_ROLE} from "common-contracts/access-management/Roles.sol";

import {ISprBTCVault} from "./ISprBTCVault.sol";
import {ISprBTCVaultRepository} from "../repositories/ISprBTCVaultRepository.sol";
import {WithdrawalRequest} from "../structs/SprBTCStructs.sol";
import "../events/SprBTCEvents.sol";
import "../errors/SprBTCErrors.sol";

/// @title SprBTCVault
/// @notice Combined vault that accepts wBTC deposits and issues sprBTC shares
/// @dev Combines SPRVault deposit/withdrawal queue with YieldVault price-per-share mechanism
contract SprBTCVault is ERC20, BaseContract, ReentrancyGuard, ISprBTCVault {
    using SafeERC20 for IERC20;

    // ==================== CONSTANTS ====================

    uint256 public constant PRECISION = 1e18;
    uint256 public constant WBTC_DECIMALS = 8;
    uint256 public constant SPRBTC_DECIMALS = 18;
    uint256 public constant DECIMAL_OFFSET = 10 ** (SPRBTC_DECIMALS - WBTC_DECIMALS); // 1e10

    bytes32 public constant SPRBTC_REPO_CONTRACT = keccak256("SPRBTC_REPO");

    /// @notice Maximum pending withdrawal requests per user
    uint256 public constant MAX_USER_PENDING_REQUESTS = 10;

    // ==================== STATE ====================

    // Withdrawal queue
    mapping(uint256 => WithdrawalRequest) private withdrawalRequests;
    mapping(address => uint256[]) private userWithdrawalRequestIds;
    uint256 private nextRequestId;
    uint256 private firstUnprocessedRequestId;
    uint256 private _pendingRequestCount;

    // Pause states
    bool public emergencyPaused;
    bool public queuePaused;

    // Total wBTC tracked (for price per share calculation)
    uint256 private _totalWBTCAssets;

    // Allocated balances for claim (like SPRVault on waterfall-v2)
    mapping(address => uint256) private allocatedBalances;
    uint256 private currentAllocatedBalance;

    // ==================== MODIFIERS ====================

    modifier whenNotEmergencyPaused() {
        if (emergencyPaused) revert EmergencyPausedError();
        _;
    }

    modifier whenQueueNotPaused() {
        if (queuePaused) revert QueuePausedError();
        _;
    }

    // ==================== CONSTRUCTOR ====================

    constructor(address _beaconAddress)
        ERC20("Spreads BTC", "sprBTC")
        BaseContract(_beaconAddress)
    {}

    // ==================== INTERNAL HELPERS ====================

    function _getRepo() internal view returns (ISprBTCVaultRepository) {
        return ISprBTCVaultRepository(_getContractAddress(SPRBTC_REPO_CONTRACT));
    }

    function _getWBTC() internal view returns (IERC20) {
        return IERC20(_getRepo().getWBTCToken());
    }

    // ==================== DEPOSIT ====================

    /// @inheritdoc ISprBTCVault
    function deposit(uint256 wbtcAmount)
        external
        nonReentrant
        whenNotPaused
        whenNotEmergencyPaused
        returns (uint256 shares)
    {
        if (wbtcAmount == 0) revert ZeroAmount();

        ISprBTCVaultRepository repo = _getRepo();

        address custodian = repo.getCustodian();
        if (custodian == address(0)) revert CustodianNotSet();

        uint256 minDeposit = repo.getMinimumDeposit();
        if (wbtcAmount < minDeposit) revert InsufficientBalance();

        // Calculate shares based on current price per share
        shares = _convertToShares(wbtcAmount);

        // Transfer wBTC from user to custodian
        IERC20 wbtc = _getWBTC();
        wbtc.safeTransferFrom(msg.sender, custodian, wbtcAmount);

        // Update total assets and mint shares
        _totalWBTCAssets += wbtcAmount;
        _mint(msg.sender, shares);

        emit Deposit(msg.sender, wbtcAmount, shares, pricePerShare());
    }

    // ==================== WITHDRAWAL ====================

    /// @inheritdoc ISprBTCVault
    function withdraw(uint256 shareAmount)
        external
        nonReentrant
        whenNotPaused
        whenNotEmergencyPaused
        whenQueueNotPaused
        returns (uint256 requestId)
    {
        if (shareAmount == 0) revert ZeroAmount();
        if (balanceOf(msg.sender) < shareAmount) revert InsufficientShares();

        ISprBTCVaultRepository repo = _getRepo();

        // Validate minimum withdrawal amount
        uint256 wbtcEquivalent = _convertToAssets(shareAmount);
        uint256 minWithdrawal = repo.getMinimumWithdrawal();
        if (wbtcEquivalent < minWithdrawal) revert InsufficientWithdrawalAmount();

        // Check per-user pending request limit
        if (userWithdrawalRequestIds[msg.sender].length >= MAX_USER_PENDING_REQUESTS) {
            revert TooManyPendingRequests();
        }

        // Check queue capacity
        if (_pendingRequestCount >= repo.getMaxQueueSize()) revert QueueAtCapacity();

        // Burn shares immediately
        _burn(msg.sender, shareAmount);

        // Queue the withdrawal request (struct fields ordered for storage optimization)
        requestId = nextRequestId;
        withdrawalRequests[requestId] = WithdrawalRequest({
            requester: msg.sender,
            processed: false,
            cancelled: false,
            shareAmount: shareAmount,
            requestTimestamp: block.timestamp,
            requestId: requestId,
            wbtcAmount: 0
        });

        userWithdrawalRequestIds[msg.sender].push(requestId);
        nextRequestId++;
        _pendingRequestCount++;

        emit WithdrawalQueued(msg.sender, requestId, shareAmount, block.timestamp);
    }

    /// @inheritdoc ISprBTCVault
    function cancelWithdrawalRequest(uint256 requestId) external nonReentrant {
        WithdrawalRequest storage request = withdrawalRequests[requestId];

        if (request.requester != msg.sender) revert NotRequestOwner();
        if (request.processed) revert RequestAlreadyProcessed();
        if (request.cancelled) revert RequestAlreadyCancelled();

        request.cancelled = true;
        _pendingRequestCount--;

        // Return shares to user
        _mint(msg.sender, request.shareAmount);

        _removeUserRequestId(msg.sender, requestId);

        emit WithdrawalCancelled(msg.sender, requestId, request.shareAmount);
    }

    /// @inheritdoc ISprBTCVault
    function processWithdrawalQueue(uint256 maxRequests)
        external
        nonReentrant
        whenQueueNotPaused
        onlyRole(OPERATOR_ROLE)
    {
        if (maxRequests == 0) revert ZeroAmount();
        if (firstUnprocessedRequestId >= nextRequestId) revert WithdrawalQueueEmpty();

        ISprBTCVaultRepository repo = _getRepo();
        IERC20 wbtc = _getWBTC();

        uint256 withdrawalFee = repo.getWithdrawalFee();
        address treasury = repo.getTreasury();

        uint256 requestsProcessed = 0;
        uint256 totalWbtcAllocated = 0;
        uint256 currentRequestId = firstUnprocessedRequestId;

        // Get available wBTC balance in this contract (minus already allocated)
        uint256 availableBalance = wbtc.balanceOf(address(this)) - currentAllocatedBalance;

        while (currentRequestId < nextRequestId && requestsProcessed < maxRequests) {
            WithdrawalRequest storage request = withdrawalRequests[currentRequestId];

            if (!request.cancelled && !request.processed) {
                // Calculate wBTC amount for these shares at current price
                uint256 wbtcAmount = _convertToAssets(request.shareAmount);

                if (availableBalance < wbtcAmount) {
                    // Not enough balance, stop processing
                    break;
                }

                // Calculate fee
                uint256 fee = (wbtcAmount * withdrawalFee) / PRECISION;
                uint256 netWbtc = wbtcAmount - fee;

                // Update request
                request.processed = true;
                request.wbtcAmount = netWbtc;

                // Update total assets
                _totalWBTCAssets -= wbtcAmount;

                // Transfer fee to treasury
                if (fee > 0) {
                    wbtc.safeTransfer(treasury, fee);
                }

                // Allocate net wBTC to user (they must call claim() to receive)
                allocatedBalances[request.requester] += netWbtc;
                currentAllocatedBalance += netWbtc;

                availableBalance -= wbtcAmount;
                totalWbtcAllocated += netWbtc;
                requestsProcessed++;
                _pendingRequestCount--;

                emit WithdrawalProcessed(
                    request.requester,
                    request.requestId,
                    request.shareAmount,
                    netWbtc,
                    fee
                );

                _removeUserRequestId(request.requester, currentRequestId);
            }

            currentRequestId++;
        }

        firstUnprocessedRequestId = currentRequestId;

        emit QueueProcessed(requestsProcessed, totalWbtcAllocated);
    }

    /// @inheritdoc ISprBTCVault
    function claim() external nonReentrant {
        uint256 amount = allocatedBalances[msg.sender];
        if (amount == 0) revert ZeroAmount();

        allocatedBalances[msg.sender] = 0;
        currentAllocatedBalance -= amount;

        IERC20 wbtc = _getWBTC();
        wbtc.safeTransfer(msg.sender, amount);

        emit Claimed(msg.sender, amount);
    }

    // ==================== REWARDS ====================

    /// @inheritdoc ISprBTCVault
    function distributeRewards(uint256 wbtcAmount) external nonReentrant {
        if (wbtcAmount == 0) revert ZeroAmount();

        ISprBTCVaultRepository repo = _getRepo();
        address distributor = repo.getRewardDistributor();

        // Only reward distributor or operator can distribute
        if (msg.sender != distributor && !_hasRole(OPERATOR_ROLE, msg.sender)) {
            revert Unauthorized();
        }

        IERC20 wbtc = _getWBTC();

        // Transfer rewards to this contract (they increase price per share)
        wbtc.safeTransferFrom(msg.sender, address(this), wbtcAmount);

        // Increase total assets (this increases price per share for all holders)
        _totalWBTCAssets += wbtcAmount;

        emit RewardsDistributed(msg.sender, wbtcAmount);
    }

    // ==================== VIEW FUNCTIONS ====================

    /// @inheritdoc ISprBTCVault
    function totalAssets() public view returns (uint256) {
        return _totalWBTCAssets;
    }

    /// @inheritdoc ISprBTCVault
    function pricePerShare() public view returns (uint256) {
        uint256 supply = totalSupply();
        if (supply == 0) {
            // Initial price: 1 sprBTC = 1e-10 wBTC (accounting for decimal difference)
            // This means depositing 1 wBTC (1e8) gives 1e18 sprBTC
            return PRECISION;
        }
        // Price = totalAssets * PRECISION * DECIMAL_OFFSET / totalSupply
        // This gives price in 18 decimal precision
        return (_totalWBTCAssets * PRECISION * DECIMAL_OFFSET) / supply;
    }

    /// @inheritdoc ISprBTCVault
    function convertToShares(uint256 wbtcAmount) public view returns (uint256) {
        return _convertToShares(wbtcAmount);
    }

    /// @inheritdoc ISprBTCVault
    function convertToAssets(uint256 shares) public view returns (uint256) {
        return _convertToAssets(shares);
    }

    function _convertToShares(uint256 wbtcAmount) internal view returns (uint256) {
        uint256 supply = totalSupply();
        if (supply == 0) {
            // Initial: 1 wBTC (8 decimals) = 1e10 sprBTC (18 decimals)
            return wbtcAmount * DECIMAL_OFFSET;
        }
        // shares = wbtcAmount * totalSupply / totalAssets
        return (wbtcAmount * supply) / _totalWBTCAssets;
    }

    function _convertToAssets(uint256 shares) internal view returns (uint256) {
        uint256 supply = totalSupply();
        if (supply == 0) {
            // Initial: 1e10 sprBTC = 1 wBTC
            return shares / DECIMAL_OFFSET;
        }
        // wbtcAmount = shares * totalAssets / totalSupply
        return (shares * _totalWBTCAssets) / supply;
    }

    /// @inheritdoc ISprBTCVault
    function getUserWithdrawalRequests(address user) external view returns (WithdrawalRequest[] memory) {
        uint256[] memory requestIds = userWithdrawalRequestIds[user];
        WithdrawalRequest[] memory requests = new WithdrawalRequest[](requestIds.length);

        for (uint256 i = 0; i < requestIds.length; i++) {
            requests[i] = withdrawalRequests[requestIds[i]];
        }

        return requests;
    }

    /// @inheritdoc ISprBTCVault
    function getAllPendingRequests() external view returns (WithdrawalRequest[] memory) {
        uint256 count = _getPendingWithdrawalCount();
        WithdrawalRequest[] memory requests = new WithdrawalRequest[](count);

        uint256 index = 0;
        for (uint256 i = firstUnprocessedRequestId; i < nextRequestId && index < count; i++) {
            WithdrawalRequest storage request = withdrawalRequests[i];
            if (!request.processed && !request.cancelled) {
                requests[index] = request;
                index++;
            }
        }

        return requests;
    }

    /// @inheritdoc ISprBTCVault
    function getPendingWithdrawalCount() external view returns (uint256) {
        return _getPendingWithdrawalCount();
    }

    function _getPendingWithdrawalCount() internal view returns (uint256) {
        return _pendingRequestCount;
    }

    /// @inheritdoc ISprBTCVault
    function getAvailableBalance() public view returns (uint256) {
        uint256 totalBalance = _getWBTC().balanceOf(address(this));
        return totalBalance > currentAllocatedBalance ? totalBalance - currentAllocatedBalance : 0;
    }

    /// @inheritdoc ISprBTCVault
    function getAllocatedBalance(address user) external view returns (uint256) {
        return allocatedBalances[user];
    }

    /// @inheritdoc ISprBTCVault
    function getTotalAllocatedBalance() external view returns (uint256) {
        return currentAllocatedBalance;
    }

    /// @inheritdoc ISprBTCVault
    function canProcessQueue()
        external
        view
        returns (bool canProcess, uint256 pendingCount, uint256 availableBalance, uint256 nextRequestWbtcAmount)
    {
        availableBalance = getAvailableBalance();
        pendingCount = _pendingRequestCount;

        // If queue is paused or no pending requests, cannot process
        if (pendingCount == 0 || queuePaused) {
            return (false, pendingCount, availableBalance, 0);
        }

        // Find the first processable request (non-cancelled, non-processed)
        for (uint256 i = firstUnprocessedRequestId; i < nextRequestId; i++) {
            WithdrawalRequest storage request = withdrawalRequests[i];
            if (!request.processed && !request.cancelled) {
                // Calculate wBTC amount needed for this request
                nextRequestWbtcAmount = _convertToAssets(request.shareAmount);
                // Can process if we have enough balance
                canProcess = availableBalance >= nextRequestWbtcAmount;
                return (canProcess, pendingCount, availableBalance, nextRequestWbtcAmount);
            }
        }

        // No processable requests found
        return (false, pendingCount, availableBalance, 0);
    }

    /// @inheritdoc ISprBTCVault
    function estimateProcessableRequests()
        external
        view
        returns (uint256 processableCount, uint256 totalWbtcNeeded, uint256 totalWbtcForProcessable)
    {
        uint256 availableBalance = getAvailableBalance();
        uint256 remainingBalance = availableBalance;

        for (uint256 i = firstUnprocessedRequestId; i < nextRequestId; i++) {
            WithdrawalRequest storage request = withdrawalRequests[i];
            if (!request.processed && !request.cancelled) {
                uint256 wbtcAmount = _convertToAssets(request.shareAmount);
                totalWbtcNeeded += wbtcAmount;

                if (remainingBalance >= wbtcAmount) {
                    processableCount++;
                    totalWbtcForProcessable += wbtcAmount;
                    remainingBalance -= wbtcAmount;
                }
            }
        }
    }

    /// @inheritdoc ISprBTCVault
    function isQueuePaused() external view returns (bool) {
        return queuePaused;
    }

    /// @inheritdoc ISprBTCVault
    function isEmergencyPaused() external view returns (bool) {
        return emergencyPaused;
    }

    // ==================== ADMIN FUNCTIONS ====================

    /// @notice Pause the withdrawal queue
    function setQueuePaused(bool paused) external onlyRole(OPERATOR_ROLE) {
        queuePaused = paused;
        if (paused) {
            emit QueuePaused(msg.sender, block.timestamp);
        } else {
            emit QueueUnpaused(msg.sender, block.timestamp);
        }
    }

    /// @notice Emergency pause all operations
    function setEmergencyPaused(bool paused) external onlyRole(OPERATOR_ROLE) {
        emergencyPaused = paused;
        if (paused) {
            emit EmergencyPaused();
        } else {
            emit EmergencyUnpaused();
        }
    }

    /// @notice Emergency withdraw tokens (for recovery)
    function emergencyWithdraw(address token, address recipient) external onlyRole(OPERATOR_ROLE) {
        if (recipient == address(0)) revert ZeroAddress();

        uint256 balance = IERC20(token).balanceOf(address(this));
        if (balance == 0) revert InsufficientBalance();

        IERC20(token).safeTransfer(recipient, balance);

        emit EmergencyWithdraw(token, recipient, balance);
    }

    // ==================== INTERNAL ====================

    function _removeUserRequestId(address user, uint256 requestId) private {
        uint256[] storage requestIds = userWithdrawalRequestIds[user];

        for (uint256 i = 0; i < requestIds.length; i++) {
            if (requestIds[i] == requestId) {
                requestIds[i] = requestIds[requestIds.length - 1];
                requestIds.pop();
                break;
            }
        }
    }

    /// @notice Override decimals to return 18
    function decimals() public pure override returns (uint8) {
        return 18;
    }
}
