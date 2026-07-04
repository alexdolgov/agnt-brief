// SPDX-License-Identifier: MIT
//
//        ██████╗ ██╗   ██╗███╗   ██╗██████╗ ██╗███████╗
//        ██╔══██╗██║   ██║████╗  ██║██╔══██╗██║██╔════╝
//        ██████╔╝██║   ██║██╔██╗ ██║██║  ██║██║█████╗  
//        ██╔══██╗██║   ██║██║╚██╗██║██║  ██║██║██╔══╝  
//        ██████╔╝╚██████╔╝██║ ╚████║██████╔╝██║███████╗
//        ╚═════╝  ╚═════╝ ╚═╝  ╚═══╝╚═════╝ ╚═╝╚══════╝
//
//        Cross-Chain Yield Aggregation Protocol
//
pragma solidity 0.8.34;

import {Ownable} from "lib/openzeppelin-contracts/contracts/access/Ownable.sol";
import {Ownable2Step} from "lib/openzeppelin-contracts/contracts/access/Ownable2Step.sol";
import {BeaconProxy} from "lib/openzeppelin-contracts/contracts/proxy/beacon/BeaconProxy.sol";
import {UpgradeableBeacon} from "lib/openzeppelin-contracts/contracts/proxy/beacon/UpgradeableBeacon.sol";
import {EnumerableSet} from "lib/openzeppelin-contracts/contracts/utils/structs/EnumerableSet.sol";
import {Account} from "./Account.sol";
import {Events} from "../lib/Events.sol";
import {Errors} from "../lib/Errors.sol";
import {TimelockUpgrade} from "../lib/TimelockUpgrade.sol";
import {IFeeManager} from "../interface/IFeeManager.sol";

/// @title AccountManager
/// @author Bundie Team
/// @notice Factory and registry for user portfolio accounts using beacon proxy pattern
/// @dev Each user can have exactly one account. All accounts share a common beacon implementation.
///      Uses TimelockUpgrade mixin for queue → execute → cancel upgrade scheduling.
///
///      ## Architecture
///      - Single UpgradeableBeacon shared by all user account proxies
///      - Each user creates exactly one BeaconProxy account via createAccount()
///      - Upgrading the beacon upgrades ALL user accounts simultaneously
///
///      ## Key Roles
///      - Owner: deploys accounts, manages whitelist, upgrades, sets validator/feeManager
///      - Validator: off-chain service that confirms cross-chain operations on accounts
///      - FeeManager: optional fee infrastructure for performance/management fees
///
///      ## Security Considerations
///      - Account creation is permissionless (any address can create one account)
///      - Token whitelist prevents deposits of unsupported/dangerous tokens
///      - allocationsPaused provides a global emergency brake for new deposits
///      - Implementation upgrades use timelock delay (MIN_UPGRADE_DELAY = 1 day)
contract AccountManager is Ownable2Step, TimelockUpgrade {
    using EnumerableSet for EnumerableSet.AddressSet;

    // ========================== Immutable Configuration ==========================

    /// @notice Beacon that points all account proxies to the current `Account` implementation.
    UpgradeableBeacon public immutable BEACON;

    // ========================== Core Roles ==========================

    /// @notice Off-chain validator used to confirm cross-chain deposits/withdrawals.
    address public validator;

    // ========================== Asset Whitelist ==========================

    /// @notice Deposit whitelist gate (applies to account asset deposits/withdrawals).
    mapping(address => bool) public whitelistedTokens;

    /// @notice Enumerable set of whitelisted tokens for UI / off-chain consumption.
    /// @dev EnumerableSet provides O(1) add/remove/contains.
    EnumerableSet.AddressSet private _whitelistedTokenSet;

    // ========================== Account Registry ==========================

    /// @notice Mapping from user => their single personal account proxy.
    mapping(address => address) public accounts;

    /// @notice List of all deployed accounts (for indexing / analytics).
    address[] public allAccounts;

    /// @dev Internal registry check used by routers to ensure only real accounts can call privileged flows.
    mapping(address => bool) private _isRegisteredAccount;

    // ========================== Fee Infrastructure ==========================

    /// @notice Optional FeeManager registry used by accounts to compute/charge protocol fees.
    address public feeManager;

    // ========================== Native ETH Configuration ==========================

    /// @notice Canonical WETH address for native ETH wrapping
    /// @dev Used by Account._deposit() for auto-wrapping ETH to WETH on native ETH deposits
    address public weth;

    // ========================== Global Safety Switch ==========================

    /// @notice Global pause for *new* deposits/allocations.
    bool public allocationsPaused;
    uint256[44] private __gap;

    /// @notice Deploy the account factory and its beacon implementation
    /// @dev Creates an Account implementation and wraps it in an UpgradeableBeacon.
    ///      The beacon is owned by this contract, enabling future upgrades.
    /// @param _routerManager Address of the RouterManager (passed to Account constructor)
    /// @param _validator Address of the off-chain validator for cross-chain confirmations
    constructor(address _routerManager, address _validator) Ownable(msg.sender) {
        require(_validator != address(0), Errors.InvalidValidator(_validator));
        validator = _validator;

        address initialImpl = address(new Account(_routerManager, address(this)));
        BEACON = new UpgradeableBeacon(initialImpl, address(this));
    }

    // ========================== External View Functions ==========================

    /// @notice Get the account address for a given user (or address(0) if none)
    /// @param user User address to look up
    /// @return vault The user's account address, or address(0) if no account exists
    function getAccount(address user) external view returns (address vault) {
        return accounts[user];
    }

    /// @notice Total number of deployed accounts.
    function getAccountCount() external view returns (uint256 count) {
        return allAccounts.length;
    }

    /// @notice Get the account address at a given index in `allAccounts`
    /// @param index Zero-based index into the allAccounts array
    /// @return vault Account address at the given index
    function getAccountAtIndex(uint256 index) external view returns (address vault) {
        require(index < allAccounts.length, Errors.IndexOutOfBounds(index, allAccounts.length));
        return allAccounts[index];
    }

    /// @notice True if `user` has already created an account
    /// @param user Address to check
    function hasAccount(address user) external view returns (bool) {
        return accounts[user] != address(0);
    }

    /// @notice True if an address is an account deployed by this factory
    /// @dev Used by routers to ensure only legitimate accounts can call privileged flows.
    /// @param vaultAddress Address to verify
    function isRegisteredAccount(address vaultAddress) external view returns (bool) {
        return _isRegisteredAccount[vaultAddress];
    }

    /// @notice Convenience view for whitelist membership.
    function isTokenWhitelisted(address token) external view returns (bool) {
        return whitelistedTokens[token];
    }

    /// @notice Get whitelisted token at a specific index.
    /// @param index Zero-based index into the set
    /// @return token Token address at that index
    function whitelistedTokenList(uint256 index) external view returns (address) {
        return _whitelistedTokenSet.at(index);
    }

    /// @notice Return a paginated subset of whitelisted tokens.
    /// @param offset Starting index (0-based)
    /// @param limit Maximum number of tokens to return
    /// @return tokens Array of whitelisted token addresses
    function getWhitelistedTokens(uint256 offset, uint256 limit) external view returns (address[] memory tokens) {
        uint256 total = _whitelistedTokenSet.length();
        if (offset >= total) return new address[](0);
        uint256 end = offset + limit;
        if (end > total) end = total;
        uint256 count = end - offset;
        tokens = new address[](count);
        for (uint256 i = 0; i < count; i++) {
            tokens[i] = _whitelistedTokenSet.at(offset + i);
        }
    }

    /// @notice Number of whitelisted tokens.
    function getWhitelistedTokenCount() external view returns (uint256) {
        return _whitelistedTokenSet.length();
    }

    // ========================== External State-Changing Functions ==========================

    /// @notice Create a new account for the caller
    /// @dev Permissionless: any address can create exactly one account. Creates a BeaconProxy
    ///      initialized with the caller's address as the account owner.
    /// @return account Address of the newly created account proxy
    function createAccount() external returns (address account) {
        address user = msg.sender;

        require(accounts[user] == address(0), Errors.AccountAlreadyExists(user));

        bytes memory initData = abi.encodeWithSelector(Account.initialize.selector, user);
        account = address(new BeaconProxy(address(BEACON), initData));

        accounts[user] = account;
        allAccounts.push(account);
        _isRegisteredAccount[account] = true;

        emit Events.AccountCreated(user, account, allAccounts.length);
    }

    /// @notice Update validator address
    /// @param newValidator New validator address (must be non-zero)
    function updateValidator(address newValidator) external onlyOwner {
        require(newValidator != address(0), Errors.InvalidValidator(newValidator));

        address oldValidator = validator;
        validator = newValidator;

        emit Events.ValidatorUpdated(oldValidator, newValidator);
    }

    /// @notice Queue an implementation upgrade with enforced delay
    /// @dev Delegates to TimelockUpgrade._queueUpgrade(). Upgrade can be executed
    ///      after MIN_UPGRADE_DELAY elapses.
    /// @param newImplementation Address of the new Account implementation
    function queueUpgradeImplementation(address newImplementation) external onlyOwner {
        _queueUpgrade(BEACON, newImplementation);
        emit Events.AccountUpgradeQueued(BEACON.implementation(), newImplementation, pendingUpgradeEta);
    }

    /// @notice Upgrade implementation for all Accounts
    /// @dev Must be called with the same implementation that was queued. Enforces delay.
    /// @param newImplementation Address of the new implementation (must match queued)
    function upgradeImplementation(address newImplementation) external onlyOwner {
        address oldImpl = _executeUpgrade(BEACON, newImplementation);
        emit Events.AccountUpgraded(oldImpl, newImplementation);
    }

    /// @notice Cancel a queued implementation upgrade
    function cancelQueuedUpgrade() external onlyOwner {
        address cancelled = _cancelUpgrade();
        emit Events.AccountUpgradeCancelled(cancelled);
    }

    /// @notice Set the fee manager registry contract
    /// @dev FeeManager is optional; accounts check for address(0) before charging fees.
    ///      Validates that the address has deployed code to prevent misconfiguration.
    /// @param newFeeManager Address of the FeeManager proxy (must be a deployed contract)
    function setFeeManager(address newFeeManager) external onlyOwner {
        require(newFeeManager != address(0), Errors.InvalidAddress());
        require(newFeeManager.code.length > 0, Errors.InvalidAddress());
        feeManager = newFeeManager;
        emit Events.FeeManagerSet(newFeeManager);
    }

    /// @notice Pause or unpause new deposits and allocations
    /// @dev Emergency brake that prevents all new deposit/allocation operations across all accounts.
    ///      Existing positions and withdrawals are NOT affected.
    /// @param paused True to pause, false to unpause
    function setAllocationsPaused(bool paused) external onlyOwner {
        allocationsPaused = paused;
        emit Events.AllocationsPauseUpdated(paused);
    }

    /// @notice Set the canonical WETH address for native ETH wrapping
    /// @param _weth Address of the WETH contract (must be a deployed contract)
    function setWeth(address _weth) external onlyOwner {
        require(_weth != address(0), Errors.InvalidAddress());
        require(_weth.code.length > 0, Errors.InvalidAddress());
        weth = _weth;
        emit Events.WethSet(_weth);
    }

    /// @notice Add a token to the deposit whitelist
    /// @param token Token address to whitelist (must be non-zero and not already whitelisted)
    function addWhitelistedToken(address token) external onlyOwner {
        require(token != address(0), Errors.InvalidAddress());
        require(!whitelistedTokens[token], Errors.TokenAlreadyWhitelisted(token));

        _addWhitelistedToken(token);
        emit Events.TokenWhitelisted(token, true);
    }

    /// @notice Remove a token from the deposit whitelist
    /// @dev Removes from both the mapping and enumerated list (swap-and-pop).
    /// @param token Token address to remove (must be currently whitelisted)
    function removeWhitelistedToken(address token) external onlyOwner {
        require(whitelistedTokens[token], Errors.TokenNotWhitelisted(token));

        whitelistedTokens[token] = false;
        _whitelistedTokenSet.remove(token);

        emit Events.TokenWhitelisted(token, false);
    }

    /// @dev Internal helper to keep storage updates centralized.
    function _addWhitelistedToken(address token) internal {
        whitelistedTokens[token] = true;
        _whitelistedTokenSet.add(token);
    }
}
