// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.25;

import {IBracketVault} from "./IBracketVault.sol";
import {RebasingToken, IRebasingToken} from "./RebasingToken.sol";

import {console} from "forge-std/console.sol";

import {AccessControlUpgradeable} from "openzeppelin-contracts-upgradeable/access/AccessControlUpgradeable.sol";
import {IERC20} from "openzeppelin-contracts/token/ERC20/IERC20.sol";
import {Math} from "openzeppelin-contracts/utils/math/Math.sol";

contract BracketVault is RebasingToken, AccessControlUpgradeable, IBracketVault {
    bytes32 public constant MANAGER_FEE_CLAIMER_ROLE = keccak256("MANAGER_FEE_CLAIMER_ROLE");
    bytes32 public constant BRACKET_FEE_CLAIMER_ROLE = keccak256("BRACKET_FEE_CLAIMER_ROLE");
    bytes32 public constant NAV_UPDATER_ROLE = keccak256("NAV_UPDATER_ROLE");

    uint48 internal constant LOCK_FREQUENCY = 7 days;

    IERC20 public immutable brktETH;

    mapping(address => Deposit) public lastDeposit;
    // After audit this variable will be made private
    mapping(bytes32 => WithdrawalStatus) public withdrawals;
    mapping(uint16 => uint256) public totalWithdrawals;
    mapping(uint16 => uint256) public navs;

    uint256 public vanityNav;
    uint256 public totalDeposits;

    int256 public totalPendingShares;

    int256 public accruedManagerPerformanceFees;
    uint256 public accruedManagerTvlFees;
    uint256 public accruedBrktTvlFees;

    address public manager;

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

    constructor(address _brktETH) {
        if (_brktETH == address(0)) revert ZeroAddress();
        brktETH = IERC20(_brktETH);

        _disableInitializers();
    }

    function initialize(
        string memory name,
        string memory symbol,
        address _manager,
        address multisig,
        uint16 _withdrawDelay,
        address[] memory accounts,
        bytes32[] memory roles
    ) external initializer {
        if (_manager == address(0) || multisig == address(0)) revert ZeroAddress();

        __AccessControl_init();
        __RebasingToken_init(name, symbol);

        _grantRole(DEFAULT_ADMIN_ROLE, multisig);

        uint256 length = accounts.length;
        if (length != roles.length) revert InvalidLength();
        for (uint256 i = 0; i < length; i++) {
            if (accounts[i] == address(0)) revert ZeroAddress();
            _grantRole(roles[i], accounts[i]);
        }

        navs[0] = 1e18;
        vanityNav = 1e18;
        withdrawDelay = _withdrawDelay;
        manager = _manager;
    }
    // ╔═══════════════════════════╗
    // ║  EXTERNAL ADMIN FUNCTIONS ║
    // ╚═══════════════════════════╝

    function startVault() external onlyRole(NAV_UPDATER_ROLE) {
        // Get the total deposits to save on gas
        uint256 _totalDeposits = totalDeposits;

        if (epoch != 0) revert VaultAlreadyStarted();
        if (_totalDeposits == 0) revert NoDeposits();

        // Transfer all the assets to the manager
        brktETH.transfer(manager, _totalDeposits);

        // Account for the pending shares, with a 1:1 NAV
        totalPendingShares = int256(_totalDeposits);

        // Reset the total deposits
        totalDeposits = 0;
        epoch = 1;

        nextLock = uint48(block.timestamp) + LOCK_FREQUENCY;

        // Emit the event
        emit VaultStarted(_totalDeposits);
    }

    function updateNav(uint256 newNav, int256 managerPerformanceFee, uint256 managerTvlFee, uint256 brktTvlFee) external onlyRole(NAV_UPDATER_ROLE) onlyLocked {
        if (epoch == 0) revert VaultNotStarted();

        nextLock += LOCK_FREQUENCY;

        // Add to the accrued fees
        accruedManagerPerformanceFees += managerPerformanceFee;
        accruedManagerTvlFees += managerTvlFee;
        accruedBrktTvlFees += brktTvlFee;

        // Process deposits and withdrawals
        (uint256 clearedDepositAssets, uint256 clearedWithdrawalAssets) = _processDepositsWithdrawals(newNav);

        // Set the new NAV and move to the next epoch
        navs[epoch] = newNav;
        vanityNav = newNav;

        // Update the epoch
        epoch++;

        // Emit the event
        emit NavUpdated(epoch, newNav, clearedDepositAssets, clearedWithdrawalAssets, managerPerformanceFee, managerTvlFee, brktTvlFee);
    }

    function updateVanityNav(uint256 newNav) external onlyRole(NAV_UPDATER_ROLE) {
        if (epoch == 0) revert VaultNotStarted();

        vanityNav = newNav;

        emit VanityNavUpdated(epoch, newNav);
    }

    function claimManagerPerformanceFees() external onlyRole(MANAGER_FEE_CLAIMER_ROLE) {
        int256 fees = accruedManagerPerformanceFees;
        if (fees <= 0) revert NoFeesToClaim();

        // If there are any positive accrued fees, transfer the fees from the manager to the claimer
        brktETH.transferFrom(manager, msg.sender, uint256(fees));

        // Reset the accrued fees
        accruedManagerPerformanceFees = 0;
    }

    function claimManagerTvlFees() external onlyRole(MANAGER_FEE_CLAIMER_ROLE) {
        // Transfer the fees from the manager to the claimer
        brktETH.transferFrom(manager, msg.sender, accruedManagerTvlFees);

        // Reset the accrued fees
        accruedManagerTvlFees = 0;
    }

    function claimBrktTvlFees() external onlyRole(BRACKET_FEE_CLAIMER_ROLE) {
        // Transfer the fees from the manager to the claimer
        brktETH.transferFrom(manager, msg.sender, accruedBrktTvlFees);

        // Reset the accrued fees
        accruedBrktTvlFees = 0;
    }

    function setManager(address _manager) external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (_manager == address(0)) revert ZeroAddress();

        manager = _manager;
    }

    function setNextLock(uint48 _nextLock) external onlyRole(DEFAULT_ADMIN_ROLE) {
        nextLock = _nextLock;
    }

    // ╔═══════════════════════════╗
    // ║  EXTERNAL USER FUNCTIONS  ║
    // ╚═══════════════════════════╝

    function deposit(uint256 assets) external onlyUnlocked {
        if (assets == 0) revert ZeroAmount();

        // Transfer the assets to the vault
        brktETH.transferFrom(msg.sender, address(this), assets);

        // Get last deposit
        Deposit memory _deposit = lastDeposit[msg.sender];
        if (_deposit.epoch == epoch) {
            // If the deposit is the current epoch, add the assets to the deposit
            lastDeposit[msg.sender].assets += assets;
        } else {
            // If the deposit is not the current epoch, clear the deposit
            _mintDeposit(_deposit, msg.sender);

            // Create a new deposit for the user to be credited on the next epoch and store it
            _deposit = Deposit({
                epoch: epoch,
                assets: assets
            });

            // Store the new deposit
            lastDeposit[msg.sender] = _deposit;
        }

        // Update the total deposits
        totalDeposits += assets;

        emit PendingDeposit(msg.sender, assets, epoch);
    }

    function withdraw(uint256 assets, bytes32 salt) external onlyUnlocked {
        if (assets == 0) revert ZeroAmount();

        // Get the current epoch to memory to save on gas and calculate the claim epoch
        uint16 currentEpoch = epoch;

        // If the vault is not started, allow users to withdraw instantly
        if (currentEpoch == 0) {
            _withdrawEpoch0(msg.sender, assets);
            return;
        }

        uint16 claimEpoch = currentEpoch + withdrawDelay;

        // Try to clear any pending deposit from past epochs
        _mintDeposit(lastDeposit[msg.sender], msg.sender);

        // Burn the amount of receipt shares the user wants to withdraw, and add the shares to the total pending shares
        uint256 shares = convertToShares(assets, navs[currentEpoch - 1]);
        totalPendingShares += int256(shares);
        _burn(msg.sender, shares);

        // Add the withdrawal to the total withdrawals
        totalWithdrawals[claimEpoch - 1] += shares;

        // Schedule the withdrawal
        _scheduleWithdrawal(shares, claimEpoch, salt);
    }

    function claimWithdrawal(uint256 shares, uint16 claimEpoch, uint256 timestamp, bytes32 salt) external {
        // Hash the withdrawal and check that it is ready
        (WithdrawalStatus status, bytes32 digest) = getWithdrawalStatusAndHash(msg.sender, shares, claimEpoch, timestamp, salt);
        if (status != WithdrawalStatus.Ready) revert WithdrawalNotReady();

        // Calculate the amount of assets to send to the user
        uint256 assets = convertToAssets(shares, navs[claimEpoch - 1]);

        // Check if we can fully process the withdrawal
        uint256 available = brktETH.balanceOf(address(this));
        if (available < assets) {
            // Partial withdrawal, calculate the remaining, owed assets
            uint256 remainingAssets = assets - available;

            // Set the withdrawal status to partial
            withdrawals[digest] = WithdrawalStatus.Partial;

            // Transfer the available amount of assets to the user
            brktETH.transfer(msg.sender, available);

            // Emit the event
            emit ClaimedWithdrawal(msg.sender, digest, shares, available, remainingAssets);

            // Schedule a new withdrawal for the remaining assets
            uint256 remainingShares = convertToShares(remainingAssets, navs[claimEpoch - 1]);
            _scheduleWithdrawal(remainingShares, claimEpoch, digest);
        } else {
            // Full withdrawal, set the withdrawal status to completed
            withdrawals[digest] = WithdrawalStatus.Completed;

            // Transfer the full amount of assets to the user
            brktETH.transfer(msg.sender, assets);

            // Emit the event
            emit ClaimedWithdrawal(msg.sender, digest, shares, assets, 0);
        }
    }

    // ╔════════════════════════════════════╗
    // ║   PUBLIC VIEW AND PURE FUNCTIONS   ║
    // ╚════════════════════════════════════╝

    function totalActiveShares() public view returns (uint256 totalShares) {
        // Get the total shares of the vault + pending shares
        return uint256(int256(super.totalSupply()) + totalPendingShares);
    }

    function isVaultLocked() public view returns (bool) {
        return block.timestamp > nextLock && epoch != 0;
    }

    function withdrawableAssets(address account) external view returns (uint256) {
        uint256 lastNav = epoch == 0 ? 1e18 : navs[epoch - 1];
        Deposit memory _deposit = lastDeposit[account];

        if (_deposit.epoch == epoch) {
            return convertToAssets(sharesOf(account) - convertToShares(_deposit.assets, vanityNav), lastNav);
        } else {
            return convertToAssets(sharesOf(account), lastNav);
        }
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

    function assetsPerShare() public view override(IRebasingToken, RebasingToken) returns (uint256) {
        return vanityNav;
    }

    function pendingDepositShares(address user) public view override(IRebasingToken, RebasingToken) returns (uint256) {
        Deposit memory _deposit = lastDeposit[user];
        if (_deposit.epoch == epoch) {
            return convertToShares(_deposit.assets, vanityNav);
        } else {
            return convertToShares(_deposit.assets, navs[_deposit.epoch]);
        }
    }
    
    function hashWithdrawal(address user, uint16 claimEpoch, uint256 shares, uint256 timestamp, bytes32 salt) public pure returns (bytes32) {
        return keccak256(abi.encodePacked(user, claimEpoch, shares, timestamp, salt));
    }
    

    function PRECISION() public pure override(IRebasingToken, RebasingToken) returns (uint256) {
        return 1e18;
    }

    // ╔═══════════════════════╗
    // ║   INTERNAL FUNCTIONS  ║
    // ╚═══════════════════════╝

    function _mintDeposit(Deposit memory _deposit, address user) internal returns (bool) {
        // If the last deposit is the current epoch, we can't clear it yet as we don't have the NAV
        if (_deposit.epoch == epoch || _deposit.assets == 0) return false;

        uint256 nav = navs[_deposit.epoch];
        uint256 shares = convertToShares(_deposit.assets, nav);

        // Remove the shares from the total pending shares as they are now part of the total supply
        totalPendingShares -= int256(shares);

        // Mint the shares to the user
        _mint(user, shares);

        // Delete the deposit
        delete lastDeposit[user];

        return true;
    }

    function _withdrawEpoch0(address user, uint256 assets) internal {
        Deposit memory _deposit = lastDeposit[user];
        if (assets > _deposit.assets) revert InsufficientBalance();

        // Deduct the assets from the user's deposit and total deposits
        lastDeposit[user].assets = _deposit.assets - assets;
        totalDeposits -= assets;

        brktETH.transfer(user, assets);

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

    function _processDepositsWithdrawals(uint256 nav) internal returns(uint256, uint256) {
        // Calculate total deposits and withdrawals in assets
        uint256 depositAssets = totalDeposits;  
        uint256 withdrawalShares = totalWithdrawals[epoch];
        uint256 withdrawalAssets = convertToAssets(withdrawalShares, nav);
        
        // Account for the pending shares, add the shares deposited on this epoch and substract the shares that can be now claimed
        totalPendingShares += int256(convertToShares(depositAssets, nav)) - int256(withdrawalShares);
                
        // Clear the totals for next epoch
        delete totalDeposits;
        delete totalWithdrawals[epoch];

        // Case 1: More deposits than withdrawals
        if (depositAssets > withdrawalAssets) {
            uint256 credit = depositAssets - withdrawalAssets;
            // Send excess deposits to manager
            brktETH.transfer(manager, credit);
            return (depositAssets, withdrawalAssets);
        } 
        // Case 2: More withdrawals than deposits
        else if (depositAssets < withdrawalAssets) {
            uint256 debit = withdrawalAssets - depositAssets;
            uint256 available = _getManagerAvailableBalance();

            if (available < debit) revert InsufficientManagerFunds();

            // Transfer the available balance to the vault
            brktETH.transferFrom(manager, address(this), debit);

            return (depositAssets, withdrawalAssets);
        }
        // Case 3: Deposits equal withdrawals - no transfer needed
        return (depositAssets, withdrawalAssets);
    }

    function _getManagerAvailableBalance() internal view returns (uint256) {
        uint256 balance = brktETH.balanceOf(manager);
        uint256 allowance = brktETH.allowance(manager, address(this));
        uint256 totalFees = accruedManagerTvlFees + accruedBrktTvlFees;
        if (accruedManagerPerformanceFees > 0) {
            totalFees += uint256(accruedManagerPerformanceFees);
        }
        
        // Get the minimum of the balance or the allowance
        uint256 available = Math.min(balance, allowance);

        // If the available balance is greater than the total fees, return the available balance minus the total fees
        if (available > totalFees) {
            return available - totalFees;
        }
        // Otherwise, return 0
        return 0;
    }
}
