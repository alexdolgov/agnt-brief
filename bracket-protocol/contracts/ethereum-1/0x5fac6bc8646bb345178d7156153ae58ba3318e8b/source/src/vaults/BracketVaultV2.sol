// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.25;

import {IBracketVaultV2} from "./IBracketVaultV2.sol";
import {RebasingToken, IRebasingToken} from "./RebasingToken.sol";
import {KYCWhitelist} from "./KYCWhitelist.sol";

import {console} from "forge-std/console.sol";

import {AccessControlUpgradeable} from "openzeppelin-contracts-upgradeable/access/AccessControlUpgradeable.sol";
import {PausableUpgradeable} from "openzeppelin-contracts-upgradeable/utils/PausableUpgradeable.sol";
import {IERC20Metadata} from "openzeppelin-contracts/token/ERC20/extensions/IERC20Metadata.sol";
import {SafeERC20} from "openzeppelin-contracts/token/ERC20/utils/SafeERC20.sol";
import {Math} from "openzeppelin-contracts/utils/math/Math.sol";

contract BracketVaultV2 is RebasingToken, AccessControlUpgradeable, PausableUpgradeable, IBracketVaultV2 {
    using SafeERC20 for IERC20Metadata;
    
    bytes32 public constant MANAGER_FEE_CLAIMER_ROLE = keccak256("MANAGER_FEE_CLAIMER_ROLE");
    bytes32 public constant BRACKET_FEE_CLAIMER_ROLE = keccak256("BRACKET_FEE_CLAIMER_ROLE");
    bytes32 public constant NAV_UPDATER_ROLE = keccak256("NAV_UPDATER_ROLE");
    bytes32 public constant ADMIN_LITE_ROLE = keccak256("ADMIN_LITE_ROLE");

    KYCWhitelist public immutable KYC_WHITELIST;

    mapping(bytes32 => WithdrawalStatus) public withdrawals;

    mapping(address => Deposit) public lastDeposit;
    mapping(uint16 => uint256) public totalWithdrawals;
    mapping(uint16 => uint256) public navs;

    uint256 public vanityNav;
    uint256 public totalDeposits;
    uint256 public totalQueuedDeposits;

    int256 public totalPendingShares;

    uint256 public accruedManagerPerformanceFees;
    uint256 public accruedManagerTvlFees;
    uint256 public accruedBrktTvlFees;

    IERC20Metadata public token;
    address public manager;

    uint48 public lockFrequency;
    uint48 public nextLock;

    uint16 public epoch;
    uint16 public withdrawDelay;

    // ╔═══════════════════════════╗
    // ║ CONSTRUCTOR & INITIALIZER ║
    // ╚═══════════════════════════╝

    modifier onlyUnlocked() {
        if (isVaultLocked()) revert VaultLocked();
        _;
    }

    modifier onlyLocked() {
        if (!isVaultLocked()) revert VaultNotLocked();
        _;
    }

    constructor(address _kycWhitelist) {
        if (_kycWhitelist == address(0)) revert ZeroAddress();
        KYC_WHITELIST = KYCWhitelist(_kycWhitelist);

        _disableInitializers();
    }

    function initialize(
        string memory name,
        string memory symbol,
        address _token,
        address _manager,
        address multisig,
        uint16 _withdrawDelay,
        uint48 _lockFrequency,
        address[] memory _accounts,
        bytes32[] memory _roles
    ) external initializer {
        if (_manager == address(0) || multisig == address(0) || _token == address(0)) revert ZeroAddress();
        if (_withdrawDelay == 0) revert InvalidWithdrawalDelay();
        if (_lockFrequency == 0) revert InvalidLockFrequency();

        uint8 _decimals = IERC20Metadata(_token).decimals();

        __AccessControl_init();
        __Pausable_init();
        __RebasingToken_init(name, symbol, _decimals);

        _grantRole(DEFAULT_ADMIN_ROLE, multisig);

        uint256 length = _accounts.length;
        if (length != _roles.length) revert InvalidRolesLength();
        for (uint256 i = 0; i < length; i++) {
            if (_accounts[i] == address(0)) revert ZeroAddress();
            if (_roles[i] == DEFAULT_ADMIN_ROLE) revert InvalidRole();
            _grantRole(_roles[i], _accounts[i]);
        }

        navs[0] = 10 ** _decimals;
        vanityNav = 10 ** _decimals;
        withdrawDelay = _withdrawDelay;
        lockFrequency = _lockFrequency;
        token = IERC20Metadata(_token);
        manager = _manager;
    }

    // ╔═══════════════════════════╗
    // ║  EXTERNAL ADMIN FUNCTIONS ║
    // ╚═══════════════════════════╝

    function startVault(uint256 minimumDeposits) external onlyRole(ADMIN_LITE_ROLE) whenNotPaused {
        // Get the total deposits to save on gas
        uint256 _totalDeposits = totalDeposits;

        if (epoch != 0) revert VaultAlreadyStarted();
        if (_totalDeposits < minimumDeposits) revert MinimumDepositsNotReached();

        // Transfer all the assets to the manager
        token.safeTransfer(manager, _totalDeposits);

        // Account for the pending shares, with a 1:1 NAV
        totalPendingShares = int256(_totalDeposits);

        // Reset the total deposits
        totalDeposits = 0;
        epoch = 1;

        nextLock = uint48(block.timestamp) + lockFrequency;

        // Emit the event
        emit VaultStarted(_totalDeposits);
    }

    function updateNav(uint256 newNav, uint256 managerPerformanceFee, uint256 managerTvlFee, uint256 brktTvlFee) external onlyRole(NAV_UPDATER_ROLE) onlyLocked whenNotPaused() {
        if (epoch == 0) revert VaultNotStarted();

        nextLock += lockFrequency;

        // Add to the accrued fees
        accruedManagerPerformanceFees += managerPerformanceFee;
        accruedManagerTvlFees += managerTvlFee;
        accruedBrktTvlFees += brktTvlFee;

        uint256 totalFees = managerPerformanceFee + managerTvlFee + brktTvlFee;

        // Process deposits and withdrawals
        (uint256 clearedDepositAssets, uint256 clearedWithdrawalAssets) = _processDepositsWithdrawals(newNav, totalFees);

        // Set the new NAV and move to the next epoch
        navs[epoch] = newNav;
        vanityNav = newNav;

        // Update the epoch
        epoch++;

        // Emit the event
        emit NavUpdated(epoch - 1, newNav, clearedDepositAssets, clearedWithdrawalAssets, managerPerformanceFee, managerTvlFee, brktTvlFee);
    }

    function updateVanityNav(uint256 newNav) external onlyRole(NAV_UPDATER_ROLE) whenNotPaused() {
        if (epoch == 0) revert VaultNotStarted();

        vanityNav = newNav;

        emit VanityNavUpdated(epoch, newNav);
    }

    function claimManagerFees() external onlyRole(MANAGER_FEE_CLAIMER_ROLE) whenNotPaused() {
        // Transfer the fees from the vault to the claimer
        uint256 totalFees = accruedManagerPerformanceFees + accruedManagerTvlFees;
        if (totalFees == 0) revert NoFeesToClaim();
        
        token.safeTransfer(msg.sender, totalFees);

        // Reset the accrued fees
        accruedManagerPerformanceFees = 0;
        accruedManagerTvlFees = 0;
    }

    function claimBrktTvlFees() external onlyRole(BRACKET_FEE_CLAIMER_ROLE) whenNotPaused() {
        // Transfer the fees from the manager to the claimer
        token.safeTransfer(msg.sender, accruedBrktTvlFees);

        // Reset the accrued fees
        accruedBrktTvlFees = 0;
    }

    function setManager(address _manager) external onlyRole(ADMIN_LITE_ROLE) {
        if (_manager == address(0)) revert ZeroAddress();

        manager = _manager;
    }

    function setNextLock(uint48 _nextLock) external onlyRole(ADMIN_LITE_ROLE) {
        if (_nextLock <= block.timestamp) revert InvalidLockTime();
        nextLock = _nextLock;
    }

    function setLockFrequency(uint48 _lockFrequency) external onlyRole(ADMIN_LITE_ROLE) {
        if (_lockFrequency == 0) revert InvalidLockFrequency();
        lockFrequency = _lockFrequency;
    }

    function switchPause() external onlyRole(ADMIN_LITE_ROLE) {
        if (paused()) {
            _unpause();
        } else {
            _pause();
        }
    }

    // ╔═══════════════════════════╗
    // ║  EXTERNAL USER FUNCTIONS  ║
    // ╚═══════════════════════════╝

    function deposit(uint256 assets, address destination) external whenNotPaused {
        if (assets == 0) revert ZeroAmount();
        if (!KYC_WHITELIST.canDeposit(address(this), msg.sender)) revert KYCFailed();

        // Transfer the assets to the vault
        token.safeTransferFrom(msg.sender, address(this), assets);

        // Try to clear any pending deposit from past epochs
        _clearDeposit(destination);

        uint16 _epoch = epoch;
        lastDeposit[destination].epoch = _epoch;
        if (isVaultLocked()) {
            // If the vault is locked, queue the deposit
            lastDeposit[destination].queuedAssets += assets;

            // Update the total queued deposits
            totalQueuedDeposits += assets;

            emit PendingDeposit(destination, assets, _epoch + 2);
        } else { 
            // If the vault is unlocked, add the asset to the last deposit assets
            lastDeposit[destination].assets += assets;

            // Update the total deposits
            totalDeposits += assets;

            emit PendingDeposit(destination, assets, _epoch + 1);
        }
    }

    function withdraw(uint256 assets, bytes32 salt) external onlyUnlocked whenNotPaused() {
        if (assets == 0) revert ZeroAmount();
        if (!KYC_WHITELIST.canWithdraw(address(this), msg.sender)) revert KYCFailed();

        // Get the current epoch to memory to save on gas and calculate the claim epoch
        uint16 currentEpoch = epoch;

        // If the vault is not started, allow users to withdraw instantly
        if (currentEpoch == 0) {
            _withdrawEpoch0(msg.sender, assets);
            return;
        }

        // Calculate the shares to withdraw
        uint256 shares = convertToShares(assets, navs[currentEpoch - 1]);
        if (shares == 0) revert ZeroAmount();

        uint16 claimEpoch = currentEpoch + withdrawDelay;

        // Try to clear any pending deposit from past epochs
        _clearDeposit(msg.sender);

        // Burn the amount of receipt shares the user wants to withdraw, and add the shares to the total pending shares
        totalPendingShares += int256(shares);
        _burn(msg.sender, shares);

        // Add the withdrawal to the total withdrawals
        totalWithdrawals[claimEpoch - 1] += shares;

        // Schedule the withdrawal
        _scheduleWithdrawal(shares, claimEpoch, salt);
    }

    function claimWithdrawal(uint256 shares, uint16 claimEpoch, uint256 timestamp, bytes32 salt) external whenNotPaused() {
        // Hash the withdrawal and check that it is ready
        (WithdrawalStatus status, bytes32 digest) = getWithdrawalStatusAndHash(msg.sender, shares, claimEpoch, timestamp, salt);
        if (status != WithdrawalStatus.Ready) revert WithdrawalNotReady();

        // Calculate the amount of assets to send to the user
        uint256 assets = convertToAssets(shares, navs[claimEpoch - 1]);

        // Check if we can fully process the withdrawal
        uint256 available = token.balanceOf(address(this));
        if (available < assets) {
            // Partial withdrawal, calculate the remaining, owed assets
            uint256 remainingAssets = assets - available;

            // Set the withdrawal status to partial
            withdrawals[digest] = WithdrawalStatus.Partial;

            // Transfer the available amount of assets to the user
            token.safeTransfer(msg.sender, available);

            // Emit the event
            emit ClaimedWithdrawal(msg.sender, digest, shares, available, remainingAssets);

            // Schedule a new withdrawal for the remaining assets
            uint256 remainingShares = convertToShares(remainingAssets, navs[claimEpoch - 1]);
            _scheduleWithdrawal(remainingShares, claimEpoch, digest);
        } else {
            // Full withdrawal, set the withdrawal status to completed
            withdrawals[digest] = WithdrawalStatus.Completed;

            // Transfer the full amount of assets to the user
            token.safeTransfer(msg.sender, assets);

            // Emit the event
            emit ClaimedWithdrawal(msg.sender, digest, shares, assets, 0);
        }
    }

    // ╔════════════════════════════════════╗
    // ║   PUBLIC VIEW AND PURE FUNCTIONS   ║
    // ╚════════════════════════════════════╝

    function isVaultLocked() public view returns (bool) {
        return block.timestamp > nextLock && epoch != 0;
    }

    function getWithdrawalStatusAndHash(address user, uint256 amount, uint16 claimEpoch, uint256 timestamp, bytes32 salt)
    public
    view
    returns (WithdrawalStatus, bytes32) {
        bytes32 digest = hashWithdrawal(user, claimEpoch, amount, timestamp, salt);
        WithdrawalStatus status = withdrawals[digest];

        if (status == WithdrawalStatus.Queued && epoch >= claimEpoch) {
            return (WithdrawalStatus.Ready, digest);
        }

        return (status, digest);
    }

    
    function hashWithdrawal(address user, uint16 claimEpoch, uint256 shares, uint256 timestamp, bytes32 salt) internal pure returns (bytes32) {
        return keccak256(abi.encodePacked(user, claimEpoch, shares, timestamp, salt));
    }

    // ---- RebasingToken functions ----
    function pendingMintShares(address account) public view override(IRebasingToken, RebasingToken) returns (uint256) {
        Deposit memory _lastDeposit = lastDeposit[account];

        // If in the current epoch
        if (_lastDeposit.epoch == epoch) {
            // We don't know any NAV, so shares can't be accounted for
            return 0;
        }

        // If in the previous epoch
        if (_lastDeposit.epoch + 1 == epoch) {
            // We know the NAV for the previous epoch, so we can calculate the shares of the assets in the previous epoch but not the queued assets
            return convertToShares(_lastDeposit.assets, navs[_lastDeposit.epoch]);
        }

        // If at least 2 epochs ago, we can calculate the shares of both the assets in the epoch and the queued assets in the epoch after
        return convertToShares(_lastDeposit.assets, navs[_lastDeposit.epoch]) + convertToShares(_lastDeposit.queuedAssets, navs[_lastDeposit.epoch + 1]);
    }

    function inactiveBalanceOf(address account) public view override(IRebasingToken, RebasingToken) returns (uint256) {
        Deposit memory _lastDeposit = lastDeposit[account];

        // If at least 2 epochs ago, no assets are inactive
        if (_lastDeposit.epoch + 1 < epoch) {
            return 0;
        }

        // If in the previous epoch
        if (_lastDeposit.epoch < epoch) {
            // We know the previous NAV, so only the queued assets are inactive
            return _lastDeposit.queuedAssets;
        }

        // If in the current epoch, both the assets in the epoch and the queued assets in the epoch after are inactive
        return _lastDeposit.assets + _lastDeposit.queuedAssets;
    }

    function totalNonMintedShares() public view override(IRebasingToken, RebasingToken) returns (int256) {
        return totalPendingShares;
    }

    function inactiveSupply() public view override(IRebasingToken, RebasingToken) returns (uint256) {
        return totalDeposits + totalQueuedDeposits;
    }

    function assetsPerShare() public view override(IRebasingToken, RebasingToken) returns (uint256) {
        return vanityNav;
    }

    // ╔═══════════════════════╗
    // ║   INTERNAL FUNCTIONS  ║
    // ╚═══════════════════════╝

    function _clearDeposit(address user) internal override {
        Deposit memory _lastDeposit = lastDeposit[user];
        uint16 _epoch = epoch;

        // If the last deposit is the current epoch, we can't clear it yet as we don't have the NAV
        if (_lastDeposit.epoch == _epoch) return;
        
        // If both the assets and the queued assets are 0, we don't need to mint but can consider it cleared
        if (_lastDeposit.assets == 0 && _lastDeposit.queuedAssets == 0) return;

        uint256 shares;

        // If the epoch is the previous epoch, we can clear the assets and move the queued assets to the queue
        if (_lastDeposit.epoch + 1 == _epoch) {
            shares = convertToShares(_lastDeposit.assets, navs[_lastDeposit.epoch]);

            // Update the last deposit by moving the queued assets to the assets and updating the epoch
            Deposit memory newLastDeposit = Deposit({
                epoch: _epoch,
                assets: _lastDeposit.queuedAssets,
                queuedAssets: 0
            });

            lastDeposit[user] = newLastDeposit;
        } else {
            // If the epoch is at least two epochs ago, we can clear both assets and queued assets
            shares = convertToShares(_lastDeposit.assets, navs[_lastDeposit.epoch]) + convertToShares(_lastDeposit.queuedAssets, navs[_lastDeposit.epoch + 1]);

            // Remove the last deposit for the user
            delete lastDeposit[user];
        }

        _mint(user, shares);

        // Remove the shares from the total pending shares as they are now part of the total supply
        totalPendingShares -= int256(shares);
    }
    
    function _withdrawEpoch0(address user, uint256 assets) internal {
        Deposit memory _lastDeposit = lastDeposit[user];
        if (assets > _lastDeposit.assets) revert InsufficientBalance();

        // Deduct the assets from the user's deposit and total deposits
        lastDeposit[user].assets = _lastDeposit.assets - assets;
        totalDeposits -= assets;

        token.safeTransfer(user, assets);

        emit ClaimedWithdrawal(user, bytes32(uint256(0)), assets, assets, 0);
    }

    function _scheduleWithdrawal(uint256 shares, uint16 claimEpoch, bytes32 salt) internal {
        // Hash the withdrawal
        bytes32 digest = hashWithdrawal(msg.sender, claimEpoch, shares, block.timestamp, salt);

        // Check that there is no collision, eg: another user withdrawal with the same amount in the same tx with the same salt
        if (withdrawals[digest] != WithdrawalStatus.Unset) revert WithdrawalAlreadyQueued();

        // Set the withdrawal status to queued
        withdrawals[digest] = WithdrawalStatus.Queued;

        // Emit the event
        emit ScheduledWithdrawal(msg.sender, shares, claimEpoch, block.timestamp, salt);
    }

    function _processDepositsWithdrawals(uint256 nav, uint256 totalFees) internal returns(uint256, uint256) {
        // Calculate total deposits and withdrawals in assets
        uint256 depositAssets = totalDeposits;  
        uint256 withdrawalShares = totalWithdrawals[epoch];
        uint256 withdrawalAssets = convertToAssets(withdrawalShares, nav);
        uint256 totalDebit = withdrawalAssets + totalFees;
        
        // Account for the pending shares, add the shares deposited on this epoch and substract the shares that can be now claimed
        totalPendingShares += int256(convertToShares(depositAssets, nav)) - int256(withdrawalShares);
                
        // Move the queued deposits to the total deposits
        totalDeposits = totalQueuedDeposits;

        // Clear the remaining totals for next epoch
        delete totalQueuedDeposits;
        delete totalWithdrawals[epoch];

        // Case 1: More deposits than withdrawals and fees
        if (depositAssets > totalDebit) {
            uint256 credit = depositAssets - totalDebit;
            // Send excess deposits to manager
            token.safeTransfer(manager, credit);
            return (depositAssets, withdrawalAssets);
        } 
        // Case 2: More withdrawals and fees than deposits
        else if (depositAssets < totalDebit) {
            uint256 debit = totalDebit - depositAssets;
            uint256 available = _getManagerAvailableBalance();

            if (available < debit) revert InsufficientManagerFunds();

            // Transfer the available balance to the vault
            token.safeTransferFrom(manager, address(this), debit);

            return (depositAssets, withdrawalAssets);
        }
        // Case 3: Deposits equal withdrawals and fees - no transfer needed
        return (depositAssets, withdrawalAssets);
    }

    function _getManagerAvailableBalance() internal view returns (uint256) {
        uint256 balance = token.balanceOf(manager);
        uint256 allowance = token.allowance(manager, address(this));
        
        // Get the minimum of the balance or the allowance
        return Math.min(balance, allowance);
    }
}
