// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.29;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";

import {BaseContract} from "common-contracts/base-contracts/BaseContract.sol";
import "common-contracts/constants/MathConstants.sol";

import {VaultToken} from "@src/common/contracts/VaultToken.sol";

import "@src/common/constants/Contracts.sol";
import {DEPOSIT_SCOPE, WITHDRAWAL_SCOPE} from "@src/common/constants/Scopes.sol";

import {ISPRVault} from "./ISPRVault.sol";
import {IVaultManagerRepository} from "@src/spreads-vault/repositories/IVaultManagerRepository.sol";
import {WithdrawalRequest} from "@src/spreads-vault/structs/WithdrawalRequest.sol";
import {ExchangeRate} from "@src/spreads-vault/structs/ExchangeRate.sol";
import "@src/spreads-vault/events/EventsV2.sol";
import "@src/spreads-vault/errors/ErrorsV2.sol";
import {OPERATOR_ROLE, EMERGENCY_ROLE} from "@src/common/access-management/Roles.sol";

contract SPRVault is BaseContract, ISPRVault {
    using SafeERC20 for ERC20;

    mapping(uint256 => WithdrawalRequest) private withdrawalRequests;
    mapping(address => uint256[]) private userWithdrawalRequestIds;

    uint256 private nextRequestId;
    uint256 private firstUnprocessedRequestId;

    mapping(address => uint256) private allocatedBalances;
    uint256 private currentAllocatedBalance;

    bool private queuePaused;

    modifier nonZero(uint256 _amount) {
        require(_amount > 0, "Amount must be greater than zero");
        _;
    }

    modifier requireSPRTokenInitialized() {
        IVaultManagerRepository repo = IVaultManagerRepository(_getContractAddress(VAULT_MANAGER_REPO_CONTRACT));
        if (repo.getSPRToken() == address(0)) {
            revert SPRTokenNotInitialized();
        }
        _;
    }

    modifier exchangeRateSet() {
        IVaultManagerRepository repo = IVaultManagerRepository(_getContractAddress(VAULT_MANAGER_REPO_CONTRACT));
        (uint256 rate,) = repo.getExchangeRate();
        if (rate == 0) revert ExchangeRateNotSet();
        _;
    }

    modifier custodianSet() {
        IVaultManagerRepository repo = IVaultManagerRepository(_getContractAddress(VAULT_MANAGER_REPO_CONTRACT));
        if (repo.getCustodian() == address(0)) revert CustodianNotSet();
        _;
    }

    modifier whenQueueNotPaused() {
        if (queuePaused) revert QueuePausedError();
        _;
    }

    constructor(address _beaconAddress) BaseContract(_beaconAddress) {}

    function deposit(uint256 _amount)
        external
        nonZero(_amount)
        whenScopeNotPaused(DEPOSIT_SCOPE)
        requireSPRTokenInitialized
        exchangeRateSet
        custodianSet
    {
        IVaultManagerRepository _vaultManagerRepository =
            IVaultManagerRepository(_getContractAddress(VAULT_MANAGER_REPO_CONTRACT));

        _validateDepositAmount(_vaultManagerRepository, _amount);
        address _collateralToken = _vaultManagerRepository.getCollateralToken();
        address custodian = _vaultManagerRepository.getCustodian();

        (, uint256 fee, uint256 netShares) = calculateDeposit(_amount);

        _collectDepositFee(_collateralToken, fee);

        uint256 _depositAmount = _amount - fee;
        ERC20(_collateralToken).safeTransferFrom(msg.sender, custodian, _depositAmount);

        address SPRToken = _vaultManagerRepository.getSPRToken();
        VaultToken(SPRToken).mint(msg.sender, netShares);

        (uint256 currentRate,) = _vaultManagerRepository.getExchangeRate();
        emit Deposit(msg.sender, _amount, netShares, currentRate, fee);
    }

    function withdraw(uint256 _shareAmount)
        external
        nonZero(_shareAmount)
        whenScopeNotPaused(WITHDRAWAL_SCOPE)
        whenQueueNotPaused
        requireSPRTokenInitialized
        exchangeRateSet
        custodianSet
    {
        IVaultManagerRepository _vaultManagerRepository =
            IVaultManagerRepository(_getContractAddress(VAULT_MANAGER_REPO_CONTRACT));

        address SPRToken = _vaultManagerRepository.getSPRToken();
        require(VaultToken(SPRToken).balanceOf(msg.sender) >= _shareAmount, "Insufficient share balance");

        (uint256 collateralAmount, uint256 fee, uint256 netCollateral) = calculateWithdrawal(_shareAmount);

        _validateWithdrawalAmount(_vaultManagerRepository, collateralAmount);

        address _collateralToken = _vaultManagerRepository.getCollateralToken();
        uint256 availableBalance = getAvailableBalance();

        VaultToken(SPRToken).burn(msg.sender, _shareAmount);

        if (availableBalance >= collateralAmount) {
            _collectWithdrawalFee(_collateralToken, fee);
            ERC20(_collateralToken).safeTransfer(msg.sender, netCollateral);

            (uint256 currentRate,) = _vaultManagerRepository.getExchangeRate();
            emit Withdraw(msg.sender, _shareAmount, netCollateral, currentRate, fee);
        } else {
            uint256 currentQueueSize = _getPendingWithdrawalCount();
            uint256 maxQueueSize = _vaultManagerRepository.getMaxQueueSize();
            if (currentQueueSize >= maxQueueSize) {
                revert QueueAtCapacity();
            }

            _queueWithdrawalRequest(msg.sender, _shareAmount);
        }
    }

    function claim() external {
        uint256 claimableAmount = allocatedBalances[msg.sender];

        if (claimableAmount == 0) revert NoAllocationToClaim();

        allocatedBalances[msg.sender] = 0;

        IVaultManagerRepository _vaultManagerRepository =
            IVaultManagerRepository(_getContractAddress(VAULT_MANAGER_REPO_CONTRACT));
        address _collateralToken = _vaultManagerRepository.getCollateralToken();

        currentAllocatedBalance -= claimableAmount;

        ERC20(_collateralToken).safeTransfer(msg.sender, claimableAmount);

        emit WithdrawalClaimed(msg.sender, claimableAmount, block.timestamp);
    }

    function cancelWithdrawalRequest(uint256 _requestId) external {
        WithdrawalRequest storage request = withdrawalRequests[_requestId];

        if (request.requestId != _requestId || _getUserWithdrawalRequests(msg.sender).length == 0) {
            revert WithdrawalRequestNotFound();
        }

        if (request.requester != msg.sender) revert NotRequestOwner();
        if (request.allocated) revert RequestAlreadyAllocated();
        if (request.canceled) revert RequestAlreadyCanceled();

        IVaultManagerRepository _vaultManagerRepository =
            IVaultManagerRepository(_getContractAddress(VAULT_MANAGER_REPO_CONTRACT));
        uint256 cancellationFeeFactor = _vaultManagerRepository.getCancellationFeeFactor();

        uint256 cancellationFee = (request.shareAmount * cancellationFeeFactor) / PRECISION;
        uint256 sharesToReturn = request.shareAmount - cancellationFee;

        request.canceled = true;

        address _sprToken = _vaultManagerRepository.getSPRToken();

        VaultToken(_sprToken).mint(msg.sender, sharesToReturn);

        if (cancellationFee > 0) {
            address treasury = _getContractAddress(TREASURY_CONTRACT);
            VaultToken(_sprToken).mint(treasury, cancellationFee);
        }

        _removeUserRequestId(msg.sender, _requestId);

        emit WithdrawalCancelled(msg.sender, _requestId, sharesToReturn);
        emit CancellationFeeCollected(msg.sender, _requestId, cancellationFee);
    }

    function processWithdrawalQueue(uint256 _maxRequests)
        external
        whenQueueNotPaused // NEW: Check queue is not paused
        requireSPRTokenInitialized
        exchangeRateSet
        custodianSet
        whenScopeNotPaused(WITHDRAWAL_SCOPE)
    {
        require(_maxRequests > 0, ZeroMaxRequests());

        if (firstUnprocessedRequestId >= nextRequestId) {
            revert WithdrawalQueueEmpty();
        }

        IVaultManagerRepository _vaultManagerRepository =
            IVaultManagerRepository(_getContractAddress(VAULT_MANAGER_REPO_CONTRACT));
        address _collateralToken = _vaultManagerRepository.getCollateralToken();

        uint256 requestsAllocated = 0;
        uint256 totalCollateralAllocated = 0;
        uint256 totalFeesCollected = 0;
        uint256 totalCollateralNeeded = 0;
        uint256 availableBalance = getAvailableBalance();
        uint256 requestsProcessed = 0;

        uint256 currentRequestId = firstUnprocessedRequestId;

        while (currentRequestId < nextRequestId && requestsProcessed < _maxRequests) {
            WithdrawalRequest storage request = withdrawalRequests[currentRequestId];

            if (!request.canceled && !request.allocated) {
                (uint256 collateralAmount, uint256 fee, uint256 netCollateral) =
                    calculateWithdrawal(request.shareAmount);

                if (availableBalance < collateralAmount) {
                    break;
                }

                totalCollateralNeeded += collateralAmount;
                totalFeesCollected += fee;
                allocatedBalances[request.requester] += netCollateral;

                request.allocated = true;
                request.allocatedAmount = netCollateral;

                emit WithdrawalAllocated(
                    request.requester, request.requestId, request.shareAmount, netCollateral, block.timestamp
                );

                requestsAllocated++;
                totalCollateralAllocated += netCollateral;
                availableBalance -= collateralAmount;
            }

            currentRequestId++;
            requestsProcessed++;
        }

        firstUnprocessedRequestId = currentRequestId;

        if (totalFeesCollected > 0) {
            _collectWithdrawalFee(_collateralToken, totalFeesCollected);
        }

        currentAllocatedBalance += totalCollateralAllocated;

        emit QueueProcessed(requestsAllocated, totalCollateralAllocated);
    }

    function getPendingWithdrawalCount() external view returns (uint256 count) {
        return _getPendingWithdrawalCount();
    }


    function _getPendingWithdrawalCount() internal view returns (uint256 count) {
        for (uint256 i = firstUnprocessedRequestId; i < nextRequestId; i++) {
            WithdrawalRequest storage request = withdrawalRequests[i];
            if (!request.allocated && !request.canceled) {
                count++;
            }
        }
    }

    function getUserWithdrawalRequests(address _user) external view returns (WithdrawalRequest[] memory) {
        return _getUserWithdrawalRequests(_user);
    }

    function _getUserWithdrawalRequests(address _user) internal view returns (WithdrawalRequest[] memory) {
        uint256[] memory requestIds = userWithdrawalRequestIds[_user];
        WithdrawalRequest[] memory requests = new WithdrawalRequest[](requestIds.length);

        for (uint256 i = 0; i < requestIds.length; i++) {
            requests[i] = withdrawalRequests[requestIds[i]];
        }

        return requests;
    }

    function getAllWithdrawalRequests() external view returns (WithdrawalRequest[] memory) {
        uint256 totalRequests = nextRequestId - firstUnprocessedRequestId;
        WithdrawalRequest[] memory requests = new WithdrawalRequest[](totalRequests);

        uint256 index = 0;
        for (uint256 i = firstUnprocessedRequestId; i < nextRequestId; i++) {
            requests[index] = withdrawalRequests[i];
            index++;
        }

        return requests;
    }

    function getExchangeRate() public view returns (uint256 rate, uint256 lastUpdated) {
        IVaultManagerRepository repo = IVaultManagerRepository(_getContractAddress(VAULT_MANAGER_REPO_CONTRACT));
        return repo.getExchangeRate();
    }

    function calculateDeposit(uint256 depositAmount)
        public
        view
        returns (uint256 shareAmount, uint256 fee, uint256 netShares)
    {
        IVaultManagerRepository repo = IVaultManagerRepository(_getContractAddress(VAULT_MANAGER_REPO_CONTRACT));

        uint256 depositFeeFactor = repo.getDepositFeeFactor();

        fee = (depositAmount * depositFeeFactor) / PRECISION;
        uint256 netDeposit = depositAmount - fee;

        (uint256 currentExchangeRate,) = getExchangeRate();
        shareAmount = ((netDeposit * PRECISION) / currentExchangeRate) * 1e12; // Scale up from 6 to 18 decimals
        netShares = shareAmount;
    }

    function calculateWithdrawal(uint256 _shareAmount)
        public
        view
        returns (uint256 collateralAmount, uint256 fee, uint256 netCollateral)
    {
        IVaultManagerRepository _vaultManagerRepository =
            IVaultManagerRepository(_getContractAddress(VAULT_MANAGER_REPO_CONTRACT));

        (uint256 exchangeRate,) = _vaultManagerRepository.getExchangeRate();
        if (exchangeRate == 0) revert ExchangeRateNotSet();

        uint256 _withdrawalFeeFactor = _vaultManagerRepository.getWithdrawalFeeFactor();

        uint256 totalCollateral = ((_shareAmount * exchangeRate) / PRECISION) / 1e12;

        fee = (totalCollateral * _withdrawalFeeFactor) / PRECISION;
        netCollateral = totalCollateral - fee;
        collateralAmount = totalCollateral;
    }

    function getAvailableBalance() public view returns (uint256 unallocatedBalance) {
        address _collateralToken =
            IVaultManagerRepository(_getContractAddress(VAULT_MANAGER_REPO_CONTRACT)).getCollateralToken();

        uint256 balance = ERC20(_collateralToken).balanceOf(address(this));
        if (balance > currentAllocatedBalance) {
            unallocatedBalance = balance - currentAllocatedBalance;
        } else {
            unallocatedBalance = 0;
        }
    }

    function getClaimableBalance(address _user) external view returns (uint256 amount) {
        return allocatedBalances[_user];
    }

    function _queueWithdrawalRequest(address _requester, uint256 _shareAmount) private {
        uint256 requestId = nextRequestId;

        withdrawalRequests[requestId] = WithdrawalRequest({
            requester: _requester,
            shareAmount: _shareAmount,
            requestTimestamp: block.timestamp,
            requestId: requestId,
            allocated: false,
            allocatedAmount: 0,
            canceled: false
        });

        userWithdrawalRequestIds[_requester].push(requestId);

        emit WithdrawalQueued(_requester, requestId, _shareAmount, block.timestamp);

        nextRequestId++;
    }

    function _removeUserRequestId(address _user, uint256 _requestId) private {
        uint256[] storage requestIds = userWithdrawalRequestIds[_user];

        for (uint256 i = 0; i < requestIds.length; i++) {
            if (requestIds[i] == _requestId) {
                requestIds[i] = requestIds[requestIds.length - 1];
                requestIds.pop();
                break;
            }
        }
    }

    function getMinimumDepositAmount() external view returns (uint256 minimumDeposit) {
        IVaultManagerRepository _vaultManagerRepository =
            IVaultManagerRepository(_getContractAddress(VAULT_MANAGER_REPO_CONTRACT));
        uint256 minimumNetDeposit = _vaultManagerRepository.getMinimumDepositAmount();
        uint256 depositFeeFactor = _vaultManagerRepository.getDepositFeeFactor();
        minimumDeposit = (minimumNetDeposit * PRECISION) / (PRECISION - depositFeeFactor);
    }

    function _validateDepositAmount(IVaultManagerRepository _vaultManagerRepository, uint256 _amount) private view {
        uint256 depositFeeFactor = _vaultManagerRepository.getDepositFeeFactor();
        uint256 fee = (_amount * depositFeeFactor) / PRECISION;
        uint256 netDeposit = _amount - fee;

        uint256 minimumDepositAmount = _vaultManagerRepository.getMinimumDepositAmount();
        require(netDeposit >= minimumDepositAmount, "Net deposit amount is less than minimum");
    }

    function _collectDepositFee(address _collateralToken, uint256 _depositFee) private {
        if (_depositFee == 0) return;
        address _treasury = _getContractAddress(TREASURY_CONTRACT);
        ERC20(_collateralToken).safeTransferFrom(msg.sender, _treasury, _depositFee);
    }

    function _validateWithdrawalAmount(IVaultManagerRepository _vaultManagerRepository, uint256 _amount) private view {
        uint256 minimumWithdrawalAmount = _vaultManagerRepository.getMinimumWithdrawalAmount();
        require(_amount >= minimumWithdrawalAmount, "Withdrawal amount is less than minimum");
    }

    function _collectWithdrawalFee(address _collateralToken, uint256 _withdrawalFee) private {
        if (_withdrawalFee == 0) return;
        address _treasury = _getContractAddress(TREASURY_CONTRACT);
        ERC20(_collateralToken).safeTransfer(_treasury, _withdrawalFee);
    }


    function getCustodian() external view returns (address) {
        IVaultManagerRepository repo = IVaultManagerRepository(_getContractAddress(VAULT_MANAGER_REPO_CONTRACT));
        return repo.getCustodian();
    }

    function getSPRToken() external view returns (address) {
        IVaultManagerRepository repo = IVaultManagerRepository(_getContractAddress(VAULT_MANAGER_REPO_CONTRACT));
        return repo.getSPRToken();
    }

    function setQueuePaused(bool _paused) external onlySystem {
        queuePaused = _paused;
        if (_paused) {
            emit QueuePaused(msg.sender, block.timestamp);
        } else {
            emit QueueUnpaused(msg.sender, block.timestamp);
        }
    }

    function isQueuePaused() external view returns (bool) {
        return queuePaused;
    }


    function emergencyWithdraw(address token, address recipient) external onlyRole(EMERGENCY_ROLE) {
        require(recipient != address(0), "Invalid recipient");
        uint256 balance = ERC20(token).balanceOf(address(this));
        require(balance > 0, "No balance to withdraw");
        ERC20(token).safeTransfer(recipient, balance);
        emit EmergencyWithdraw(token, recipient, balance);
    }
}
