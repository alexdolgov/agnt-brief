// SPDX-License-Identifier: BUSL-1.1
pragma solidity >=0.8.29 <0.9.0;

import { EnumerableSet } from "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import { Initializable } from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import { ICrosschainVault } from "../../interfaces/ICrosschainVault.sol";
import { IOriginVault } from "../../interfaces/IOriginVault.sol";
import { IRemoteVault } from "../../interfaces/IRemoteVault.sol";
import { ICrosschainAdapter } from "../../interfaces/ICrosschainAdapter.sol";
import { IBridgeAccountant } from "../../interfaces/IBridgeAccountant.sol";
import { IRunespearReceiver } from "../../interfaces/IRunespearReceiver.sol";
import { RunespearProtocol } from "../../messaging/runespear/RunespearProtocol.sol";
import { IYearnVaultManager } from "../../interfaces/IYearnVaultManager.sol";

/**
 * @title CrosschainKeeper
 * @notice Keeper contract for managing cross-chain vault operations
 * @dev Deploy on each chain (Kaia and Ethereum) to manage local operations.
 *      Off-chain keeper orchestrates cross-chain flows by calling each on-chain keeper.
 *
 * ## Architecture
 * - Kaia Keeper: Manages origin vault and Kaia adapter
 * - Ethereum Keeper: Manages remote vault and Ethereum adapter
 * - Off-chain keeper: Orchestrates cross-chain coordination
 *
 * ## Access Control Model
 *
 * This contract uses a custom admin set (not SuperEarnAccessControl) for flexibility.
 * However, the keeper contract ADDRESS itself must be granted roles on other contracts:
 *
 * **Required Role Grants (per chain):**
 *
 * ### Kaia (Origin Chain):
 * ```
 * OriginVault:
 *   - KEEPER_ROLE granted to CrosschainKeeper contract
 *     → Allows: processRedemptionQueue(), batchFulfillRedemptions()
 *   - MANAGEMENT_ROLE granted to CrosschainKeeper contract (optional)
 *     → Allows: depositToRemote(), withdrawFromRemote(), emergencyWithdrawFromRemote()
 *
 * CrosschainAdapter:
 *   - MANAGEMENT_ROLE granted to CrosschainKeeper contract
 *     → Allows: processPendingBridgeAssets(), retryFailedMessage(), sendMessage()
 * ```
 *
 * ### Ethereum (Remote Chain):
 * ```
 * RemoteVault:
 *   - MANAGEMENT_ROLE granted to CrosschainKeeper contract
 *     → Allows: withdrawFromYearn(), swap(), depositToYearn(), fulfillPendingWithdrawals()
 *
 * CrosschainAdapter:
 *   - MANAGEMENT_ROLE granted to CrosschainKeeper contract
 *     → Allows: processPendingBridgeAssets(), retryFailedMessage(), sendMessage()
 * ```
 *
 * ## Admin Set Management
 *
 * - Admins can be EOAs or multisigs
 * - Admins can call all keeper functions
 * - At least one admin must exist at all times
 * - Governance address (two-step transferable) manages the admin set, configuration references,
 *   and whitelists for vaults/adapters
 *
 * ## Role Consistency Verification
 *
 * IMPORTANT: Before using keeper operations, verify the keeper contract has required roles:
 *
 * ```solidity
 * // On Kaia
 * assert(originVault.hasRole(KEEPER_ROLE, address(keeper)));
 * assert(originVault.hasRole(MANAGEMENT_ROLE, address(keeper))); // if needed
 * assert(adapter.hasRole(MANAGEMENT_ROLE, address(keeper)));
 *
 * // On Ethereum
 * assert(remoteVault.hasRole(MANAGEMENT_ROLE, address(keeper)));
 * assert(adapter.hasRole(MANAGEMENT_ROLE, address(keeper)));
 * ```
 *
 * ## Security Considerations
 *
 * - Keeper contract holds no funds (only routing contract)
 * - If keeper loses roles, operations fail but no funds at risk
 * - Admin set should be secured with multisig for production
 * - Keeper operations are non-custodial (no approval theft vector)
 */
contract CrosschainKeeper is Initializable {
    using EnumerableSet for EnumerableSet.AddressSet;

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    // === Custom Errors ===
    error NotAdmin();
    error InvalidAddress();
    error AlreadyAdmin();
    error NotAnAdmin();
    error CannotRemoveLastAdmin();
    error NotGovernance();
    error NotPendingGovernance();
    error GovernanceUnchanged();
    error NoPendingGovernance();
    error NotWhitelisted(address account);
    error AlreadyWhitelisted(address account);

    // === State Variables ===
    EnumerableSet.AddressSet private adminSet;
    address public governance;
    address public pendingGovernance;
    mapping(address => bool) private whitelist;

    /// @notice Origin vault address (Kaia only)
    address public originVault;

    /// @notice Remote vault address (Ethereum only)
    address public remoteVault;

    /// @notice Adapter address (both chains)
    address public adapter;

    /// @notice YearnVaultManager address (Ethereum only)
    address public vaultManager;

    // === Events ===
    event AdminAdded(address indexed admin);
    event AdminRemoved(address indexed admin);
    event OriginVaultSet(address indexed vault);
    event RemoteVaultSet(address indexed vault);
    event AdapterSet(address indexed adapter);
    event GovernanceTransferStarted(address indexed currentGovernance, address indexed newGovernance);
    event GovernanceTransferCancelled(address indexed currentGovernance);
    event GovernanceTransferred(address indexed previousGovernance, address indexed newGovernance);
    event WhitelistUpdated(address indexed account, bool isAdded);

    // === Operation Events ===
    event BridgeAssetsProcessed(address indexed adapter, bool success);
    event RedemptionQueueProcessed(address indexed origin, bool success);
    event RedemptionsFulfilled(address indexed origin, bool success);
    event DepositExecuted(address indexed remote, uint256 amount, bool success);
    event WithdrawalFulfilled(address indexed remote, bool success);
    event AssetsReported(address indexed remote, bool success);
    event EmergencyWithdrawExecuted(address indexed remote, bool success);
    event FailedMessageRetried(address indexed adapter, bytes32 indexed messageId, bool success);
    event FailedMessageRemoved(address indexed adapter, bytes32 indexed messageId);
    event VaultManagerSet(address indexed vaultManager);
    event DepositToYearnAndRestoreRatio(address indexed remote, address indexed vaultManager, uint256 amount);
    event WithdrawFromYearnAndAdjustRatio(address indexed remote, address indexed vaultManager, uint256 yShares);

    // === Modifiers ===
    modifier onlyAdmin() {
        if (!adminSet.contains(msg.sender)) revert NotAdmin();
        _;
    }

    modifier onlyGovernance() {
        if (msg.sender != governance) revert NotGovernance();
        _;
    }

    // === Initializer ===
    /**
     * @notice Initialize the CrosschainKeeper
     * @param _owner Owner address that will become governance and admin
     */
    function initialize(address _owner) public initializer {
        if (_owner == address(0)) revert InvalidAddress();
        governance = _owner;
        adminSet.add(_owner);
        emit AdminAdded(_owner);
        emit GovernanceTransferred(address(0), _owner);
    }

    // === Governance Management Functions ===

    /**
     * @notice Initiate two-step governance transfer to a new address
     * @param newGovernance Address that will accept governance
     */
    function transferGovernance(address newGovernance) external onlyGovernance {
        if (newGovernance == address(0)) revert InvalidAddress();
        if (newGovernance == governance) revert GovernanceUnchanged();

        pendingGovernance = newGovernance;
        emit GovernanceTransferStarted(governance, newGovernance);
    }

    /**
     * @notice Cancel a pending governance transfer
     */
    function cancelGovernanceTransfer() external onlyGovernance {
        if (pendingGovernance == address(0)) revert NoPendingGovernance();

        pendingGovernance = address(0);
        emit GovernanceTransferCancelled(governance);
    }

    /**
     * @notice Accept governance after transfer is initiated
     */
    function acceptGovernance() external {
        if (msg.sender != pendingGovernance) revert NotPendingGovernance();

        address previousGovernance = governance;
        governance = msg.sender;
        pendingGovernance = address(0);

        emit GovernanceTransferred(previousGovernance, msg.sender);
    }

    // === Whitelist Management Functions ===

    /**
     * @notice Add an address to the whitelist
     * @param addr Address to whitelist
     */
    function addAddressToWhitelist(address addr) external onlyGovernance {
        _addToWhitelist(addr);
    }

    /**
     * @notice Remove an address from the whitelist
     * @param addr Address to remove
     */
    function removeAddressFromWhitelist(address addr) external onlyGovernance {
        _removeFromWhitelist(addr);
    }

    /**
     * @notice Check if an address is whitelisted
     */
    function isWhitelisted(address addr) external view returns (bool) {
        return whitelist[addr];
    }

    // === Admin Management Functions ===

    /**
     * @notice Check if an address is an admin
     * @param account Address to check
     * @return Whether the address is an admin
     */
    function isAdmin(address account) external view returns (bool) {
        return adminSet.contains(account);
    }

    /**
     * @notice Add a new admin
     * @param admin Address to add as admin
     */
    function addAdmin(address admin) external onlyGovernance {
        if (admin == address(0)) revert InvalidAddress();
        if (!adminSet.add(admin)) revert AlreadyAdmin();
        emit AdminAdded(admin);
    }

    /**
     * @notice Remove an admin
     * @param admin Address to remove from admins
     */
    function removeAdmin(address admin) external onlyGovernance {
        if (adminSet.length() <= 1) revert CannotRemoveLastAdmin();
        if (!adminSet.remove(admin)) revert NotAnAdmin();
        emit AdminRemoved(admin);
    }

    /**
     * @notice Get the list of all admins
     * @return Array of admin addresses
     */
    function getAdmins() external view returns (address[] memory) {
        return adminSet.values();
    }

    /**
     * @notice Get the count of admins
     * @return Number of admins
     */
    function getAdminCount() external view returns (uint256) {
        return adminSet.length();
    }

    /**
     * @notice Get admin at specific index
     * @param index Index in the admin set
     * @return Admin address at the index
     */
    function getAdminAt(uint256 index) external view returns (address) {
        return adminSet.at(index);
    }

    // === Reference Management Functions ===

    /**
     * @notice Set origin vault address (Kaia deployment only)
     * @param _originVault Address of the origin vault
     */
    function setOriginVault(address _originVault) external onlyGovernance {
        if (_originVault == address(0)) revert InvalidAddress();
        if (whitelist[_originVault] == false) _addToWhitelist(_originVault);

        originVault = _originVault;
        emit OriginVaultSet(_originVault);
    }

    /**
     * @notice Set remote vault address (Ethereum deployment only)
     * @param _remoteVault Address of the remote vault
     */
    function setRemoteVault(address _remoteVault) external onlyGovernance {
        if (_remoteVault == address(0)) revert InvalidAddress();
        if (whitelist[_remoteVault] == false) _addToWhitelist(_remoteVault);
        remoteVault = _remoteVault;
        emit RemoteVaultSet(_remoteVault);
    }

    /**
     * @notice Set adapter address (both chains)
     * @param _adapter Address of the crosschain adapter
     */
    function setAdapter(address _adapter) external onlyGovernance {
        if (_adapter == address(0)) revert InvalidAddress();
        if (whitelist[_adapter] == false) _addToWhitelist(_adapter);
        adapter = _adapter;
        emit AdapterSet(_adapter);
    }

    /**
     * @notice Set vault manager address (Ethereum deployment only)
     * @param _vaultManager Address of the YearnVaultManager
     */
    function setVaultManager(address _vaultManager) external onlyGovernance {
        if (_vaultManager == address(0)) revert InvalidAddress();
        if (whitelist[_vaultManager] == false) _addToWhitelist(_vaultManager);
        vaultManager = _vaultManager;
        emit VaultManagerSet(_vaultManager);
    }

    // === Adapter Management Functions (BOTH chains) ===

    /**
     * @notice Process pending bridge assets on adapter
     * @dev Available on both Kaia and Ethereum keepers
     * @param _adapter Address of the adapter to process (uses state variable if address(0))
     */
    function processPendingBridgeAssets(address _adapter) external onlyAdmin {
        address adapterAddr = _adapter == address(0) ? adapter : _adapter;
        if (adapterAddr == address(0)) revert InvalidAddress();
        _requireWhitelisted(adapterAddr);

        bool success = true;
        try ICrosschainAdapter(adapterAddr).processPendingBridgeAssets() {
            // Success
        } catch {
            success = false;
        }

        emit BridgeAssetsProcessed(adapterAddr, success);
    }

    // === Origin Management Functions (Kaia ONLY) ===

    /**
     * @notice Deposit assets from origin to remote vault
     * @dev Only used on Kaia keeper
     * @param _origin Address of the origin vault (uses state variable if address(0))
     * @param amount Amount of assets to send to remote
     */
    function depositToRemote(address _origin, uint256 amount) external onlyAdmin {
        address originAddr = _origin == address(0) ? originVault : _origin;
        if (originAddr == address(0)) revert InvalidAddress();
        _requireWhitelisted(originAddr);

        bool success = true;
        try IOriginVault(originAddr).depositToRemote(amount) {
            // Success
        } catch {
            success = false;
        }

        emit DepositExecuted(originAddr, amount, success);
    }

    /**
     * @notice Process redemption queue on origin vault
     * @dev Only used on Kaia keeper
     * @param _origin Address of the origin vault (uses state variable if address(0))
     * @param maxAmount Maximum amount to request from remote
     * @param maxCount Maximum request counts to process
     */
    function processRedemptionQueue(address _origin, uint256 maxAmount, uint256 maxCount) public onlyAdmin {
        address originAddr = _origin == address(0) ? originVault : _origin;
        if (originAddr == address(0)) revert InvalidAddress();
        _requireWhitelisted(originAddr);

        bool success = true;
        try IOriginVault(originAddr).processRedemptionQueue(maxAmount, maxCount) {
            // Success
        } catch {
            success = false;
        }

        emit RedemptionQueueProcessed(originAddr, success);
    }

    function processRedemptionQueue(address _origin, uint256 maxAmount) external onlyAdmin {
        processRedemptionQueue(_origin, maxAmount, type(uint256).max);
    }

    /**
     * @notice Batch fulfill redemptions on origin vault
     * @dev Only used on Kaia keeper
     * @param _origin Address of the origin vault (uses state variable if address(0))
     * @param maxAmount Maximum amount of assets to use for fulfillment
     * @param maxCount Maximum request counts to process
     */
    function batchFulfillRedemptions(address _origin, uint256 maxAmount, uint256 maxCount) public onlyAdmin {
        address originAddr = _origin == address(0) ? originVault : _origin;
        if (originAddr == address(0)) revert InvalidAddress();
        _requireWhitelisted(originAddr);

        bool success = true;
        try IOriginVault(originAddr).batchFulfillRedemptions(maxAmount, maxCount) {
            // Success
        } catch {
            success = false;
        }

        emit RedemptionsFulfilled(originAddr, success);
    }

    function batchFulfillRedemptions(address _origin, uint256 maxAmount) external onlyAdmin {
        batchFulfillRedemptions(_origin, maxAmount, type(uint256).max);
    }

    // === Remote Management Functions (Ethereum ONLY) ===

    /**
     * @notice Swap tokens via Uniswap V3
     * @dev Only used on Ethereum keeper
     * @param _remote Address of the remote vault (uses state variable if address(0))
     * @param isUsdtToAsset True if swapping USDT to asset tokens, false if swapping asset tokens to USDT
     * @param amount Amount of tokens to swap
     * @param minAmountOut Minimum amount to receive (slippage protection)
     * @param fee Uniswap V3 pool fee tier (e.g., 100=0.01%, 500=0.05%, 3000=0.3%)
     */
    function swapUniswap(
        address _remote,
        bool isUsdtToAsset,
        uint256 amount,
        uint256 minAmountOut,
        uint24 fee
    )
        external
        onlyAdmin
    {
        address remoteAddr = _remote == address(0) ? remoteVault : _remote;
        if (remoteAddr == address(0)) revert InvalidAddress();
        _requireWhitelisted(remoteAddr);

        bool success = true;
        try IRemoteVault(remoteAddr).swapUniswap(isUsdtToAsset, amount, minAmountOut, fee) {
            // Success
        } catch {
            success = false;
        }
    }

    /**
     * @notice Swap tokens via Curve
     * @dev Only used on Ethereum keeper
     * @param _remote Address of the remote vault (uses state variable if address(0))
     * @param isUsdtToAsset True if swapping USDT to asset tokens, false if swapping asset tokens to USDT
     * @param amount Amount of tokens to swap
     * @param minAmountOut Minimum amount to receive (slippage protection)
     */
    function swapCurve(address _remote, bool isUsdtToAsset, uint256 amount, uint256 minAmountOut) external onlyAdmin {
        address remoteAddr = _remote == address(0) ? remoteVault : _remote;
        if (remoteAddr == address(0)) revert InvalidAddress();
        _requireWhitelisted(remoteAddr);

        bool success = true;
        try IRemoteVault(remoteAddr).swapCurve(isUsdtToAsset, amount, minAmountOut) {
            // Success
        } catch {
            success = false;
        }
    }

    /**
     * @notice Trigger deposit to Yearn on remote vault
     * @dev Only used on Ethereum keeper
     * @param _remote Address of the remote vault (uses state variable if address(0))
     * @param amount Amount to deposit (0 means deposit all available)
     */
    function depositToYearn(address _remote, uint256 amount) external onlyAdmin {
        address remoteAddr = _remote == address(0) ? remoteVault : _remote;
        if (remoteAddr == address(0)) revert InvalidAddress();
        _requireWhitelisted(remoteAddr);

        bool success = true;
        try IRemoteVault(remoteAddr).depositToYearn(amount) {
            // Success
        } catch {
            success = false;
        }

        emit DepositExecuted(remoteAddr, amount, success);
    }

    /**
     * @notice Deposit to Yearn vault and restore debt ratios
     * @dev Calls RemoteVault.depositToYearn() followed by YearnVaultManager.restoreDebtRatio()
     *      This ensures new deposits are allocated according to target ratios
     * @param _remote Address of the remote vault (uses state variable if address(0))
     * @param _vaultManager Address of the YearnVaultManager (uses state variable if address(0))
     * @param amount Amount to deposit (0 for all available)
     */
    function depositToYearnAndRestoreRatio(address _remote, address _vaultManager, uint256 amount) external onlyAdmin {
        address remoteAddr = _remote == address(0) ? remoteVault : _remote;
        address managerAddr = _vaultManager == address(0) ? vaultManager : _vaultManager;
        if (remoteAddr == address(0)) revert InvalidAddress();
        if (managerAddr == address(0)) revert InvalidAddress();
        _requireWhitelisted(remoteAddr);
        _requireWhitelisted(managerAddr);

        // Step 1: Deposit to Yearn
        IRemoteVault(remoteAddr).depositToYearn(amount);

        // Step 2: Restore debt ratios to target allocation
        IYearnVaultManager(managerAddr).restoreDebtRatio();

        emit DepositToYearnAndRestoreRatio(remoteAddr, managerAddr, amount);
    }

    /**
     * @notice Withdraw yVault shares from Yearn on remote vault
     * @dev Only used on Ethereum keeper
     * @param _remote Address of the remote vault (uses state variable if address(0))
     * @param yShares Amount of yVault shares to redeem from Yearn
     */
    function withdrawFromYearn(address _remote, uint256 yShares) external onlyAdmin {
        address remoteAddr = _remote == address(0) ? remoteVault : _remote;
        if (remoteAddr == address(0)) revert InvalidAddress();
        _requireWhitelisted(remoteAddr);

        bool success = true;
        try IRemoteVault(remoteAddr).withdrawFromYearn(yShares) {
            // Success
        } catch {
            success = false;
        }
    }

    /**
     * @notice Withdraw from Yearn vault and adjust debt ratios
     * @dev Calls RemoteVault.withdrawFromYearn() followed by YearnVaultManager.adjustDebtRatio()
     *      This ensures debt ratios match actual debts after withdrawal
     * @param _remote Address of the remote vault (uses state variable if address(0))
     * @param _vaultManager Address of the YearnVaultManager (uses state variable if address(0))
     * @param yShares Amount of yVault shares to redeem
     * @return assetAmountOut Asset tokens withdrawn immediately
     * @return cooldownRequestId Cooldown request ID for tracking redemption
     * @return ySharesRedeemed Actual yVault shares redeemed
     */
    function withdrawFromYearnAndAdjustRatio(
        address _remote,
        address _vaultManager,
        uint256 yShares
    )
        external
        onlyAdmin
        returns (uint256 assetAmountOut, uint256 cooldownRequestId, uint256 ySharesRedeemed)
    {
        address remoteAddr = _remote == address(0) ? remoteVault : _remote;
        address managerAddr = _vaultManager == address(0) ? vaultManager : _vaultManager;
        if (remoteAddr == address(0)) revert InvalidAddress();
        if (managerAddr == address(0)) revert InvalidAddress();
        _requireWhitelisted(remoteAddr);
        _requireWhitelisted(managerAddr);

        // Step 1: Withdraw from Yearn
        (assetAmountOut, cooldownRequestId, ySharesRedeemed) = IRemoteVault(remoteAddr).withdrawFromYearn(yShares);

        // Step 2: Adjust debt ratios to match current debts
        IYearnVaultManager(managerAddr).adjustDebtRatio();

        emit WithdrawFromYearnAndAdjustRatio(remoteAddr, managerAddr, yShares);
    }

    /**
     * @notice Fulfill pending withdrawals on remote vault
     * @dev Only used on Ethereum keeper
     * @param _remote Address of the remote vault (uses state variable if address(0))
     * @return fulfilledUsdt USDT amount fulfilled (0 if failed)
     */
    function fulfillPendingWithdrawals(address _remote) external onlyAdmin returns (uint256 fulfilledUsdt) {
        address remoteAddr = _remote == address(0) ? remoteVault : _remote;
        if (remoteAddr == address(0)) revert InvalidAddress();
        _requireWhitelisted(remoteAddr);

        bool success = true;
        try IRemoteVault(remoteAddr).fulfillPendingWithdrawals() returns (uint256 amount) {
            fulfilledUsdt = amount;
        } catch {
            success = false;
            fulfilledUsdt = 0;
        }

        emit WithdrawalFulfilled(remoteAddr, success);
    }

    function sendSyncNoop(address _adapter) external onlyAdmin {
        address adapterAddr = _adapter == address(0) ? adapter : _adapter;
        if (adapterAddr == address(0)) revert InvalidAddress();
        _requireWhitelisted(adapterAddr);

        ICrosschainAdapter(adapterAddr).sendSyncNoop();
    }

    // === View Functions - Origin Vault Queries (Kaia ONLY) ===

    /**
     * @notice Get available idle assets in origin vault
     * @dev Used for bridge decision-making
     * @param _origin Address of the origin vault (uses state variable if address(0))
     * @return Amount of idle assets available (excluding reserved for redemptions)
     */
    function getOriginAvailableIdleAssets(address _origin) external view returns (uint256) {
        address originAddr = _origin == address(0) ? originVault : _origin;
        if (originAddr == address(0)) return 0;
        _requireWhitelisted(originAddr);
        return IOriginVault(originAddr).availableIdleAssets();
    }

    /**
     * @notice Get total assets in origin vault
     * @dev Includes local balance, remote assets, and in-transit
     * @param _origin Address of the origin vault (uses state variable if address(0))
     * @return Total assets under management
     */
    function getOriginTotalAssets(address _origin) external view returns (uint256) {
        address originAddr = _origin == address(0) ? originVault : _origin;
        if (originAddr == address(0)) return 0;
        _requireWhitelisted(originAddr);
        return IOriginVault(originAddr).totalAssets();
    }

    /**
     * @notice Get assets currently in transit to remote
     * @dev Used for monitoring bridge operations
     * @param _origin Address of the origin vault (uses state variable if address(0))
     * @return Amount of assets in transit
     */
    function getAssetsInTransitToRemote(address _origin) external view returns (uint256) {
        address originAddr = _origin == address(0) ? originVault : _origin;
        if (originAddr == address(0)) return 0;
        _requireWhitelisted(originAddr);
        return IOriginVault(originAddr).assetsInTransitToRemote();
    }

    /**
     * @notice Get remote vault assets
     * @dev Returns true remote assets with overlap removed
     * @param _origin Address of the origin vault (uses state variable if address(0))
     * @return Amount of assets in remote vault
     */
    function getRemoteAssets(address _origin) external view returns (uint256) {
        address originAddr = _origin == address(0) ? originVault : _origin;
        if (originAddr == address(0)) return 0;
        _requireWhitelisted(originAddr);
        return IOriginVault(originAddr).remoteAssets();
    }

    /**
     * @notice Get pending redemptions in queue
     * @dev Returns shares and estimated assets for unfulfilled redemptions
     * @param _origin Address of the origin vault (uses state variable if address(0))
     * @return totalShares Total shares pending redemption
     * @return estimatedAssets Estimated assets needed for redemption
     */
    function getPendingRedemptions(address _origin)
        external
        view
        returns (uint256 totalShares, uint256 estimatedAssets)
    {
        address originAddr = _origin == address(0) ? originVault : _origin;
        if (originAddr == address(0)) return (0, 0);
        _requireWhitelisted(originAddr);
        return IOriginVault(originAddr).getPendingRedemptionAmount();
    }

    /**
     * @notice Get pending fulfillments in queue
     * @dev Returns shares and estimated assets for requested but unfulfilled redemptions
     * @param _origin Address of the origin vault (uses state variable if address(0))
     * @return totalShares Total shares pending fulfillment
     * @return estimatedAssets Estimated assets needed for fulfillment
     */
    function getPendingFulfillments(address _origin)
        external
        view
        returns (uint256 totalShares, uint256 estimatedAssets)
    {
        address originAddr = _origin == address(0) ? originVault : _origin;
        if (originAddr == address(0)) return (0, 0);
        _requireWhitelisted(originAddr);
        return IOriginVault(originAddr).getPendingFulfillmentAmount();
    }

    /**
     * @notice Get redemption queue length
     * @param _origin Address of the origin vault (uses state variable if address(0))
     * @return Number of items in redemption queue
     */
    function getRedemptionQueueLength(address _origin) external view returns (uint256) {
        address originAddr = _origin == address(0) ? originVault : _origin;
        if (originAddr == address(0)) return 0;
        _requireWhitelisted(originAddr);
        return IOriginVault(originAddr).getRedemptionQueueLength();
    }

    // === View Functions - Remote Vault Queries (Ethereum ONLY) ===

    /**
     * @notice Get idle asset token in remote vault
     * @param _remote Address of the remote vault (uses state variable if address(0))
     * @return Amount of idle asset token
     */
    function getRemoteIdleAsset(address _remote) external view returns (uint256) {
        address remoteAddr = _remote == address(0) ? remoteVault : _remote;
        if (remoteAddr == address(0)) return 0;
        _requireWhitelisted(remoteAddr);
        return IRemoteVault(remoteAddr).idleAsset();
    }

    /**
     * @notice Get idle USDT in remote vault
     * @param _remote Address of the remote vault (uses state variable if address(0))
     * @return Amount of idle USDT
     */
    function getRemoteIdleUsdt(address _remote) external view returns (uint256) {
        address remoteAddr = _remote == address(0) ? remoteVault : _remote;
        if (remoteAddr == address(0)) return 0;
        _requireWhitelisted(remoteAddr);
        return IRemoteVault(remoteAddr).idleUsdt();
    }

    /**
     * @notice Get total idle assets in remote vault
     * @dev Returns USDC + USDT (converted to USDC equivalent)
     * @param _remote Address of the remote vault (uses state variable if address(0))
     * @return Total idle assets in USDC terms
     */
    function getRemoteIdleAssets(address _remote) external view returns (uint256) {
        address remoteAddr = _remote == address(0) ? remoteVault : _remote;
        if (remoteAddr == address(0)) return 0;
        _requireWhitelisted(remoteAddr);
        return IRemoteVault(remoteAddr).idleAssets();
    }

    /**
     * @notice Get unfulfilled withdrawal amount
     * @dev Amount of withdrawals requested but not yet fulfilled (in USDC terms)
     * @param _remote Address of the remote vault (uses state variable if address(0))
     * @return Amount of unfulfilled withdrawals
     */
    function getUnfulfilledWithdrawals(address _remote) external view returns (uint256) {
        address remoteAddr = _remote == address(0) ? remoteVault : _remote;
        if (remoteAddr == address(0)) return 0;
        _requireWhitelisted(remoteAddr);
        return IRemoteVault(remoteAddr).getUnfulfilledWithdrawalInfo();
    }

    /**
     * @notice Get amount that can be fulfilled now with available balance
     * @param _remote Address of the remote vault (uses state variable if address(0))
     * @return Amount that can be fulfilled
     */
    function canFulfillAmount(address _remote) external view returns (uint256) {
        address remoteAddr = _remote == address(0) ? remoteVault : _remote;
        if (remoteAddr == address(0)) return 0;
        _requireWhitelisted(remoteAddr);
        return IRemoteVault(remoteAddr).fulfillableAmount();
    }

    /**
     * @notice Get remote vault total assets
     * @dev Includes idle USDC, USDT, Yearn position, and in-transit to controller
     * @param _remote Address of the remote vault (uses state variable if address(0))
     * @return Total assets in USDC terms
     */
    function getRemoteTotalAssets(address _remote) external view returns (uint256) {
        address remoteAddr = _remote == address(0) ? remoteVault : _remote;
        if (remoteAddr == address(0)) return 0;
        _requireWhitelisted(remoteAddr);
        return IRemoteVault(remoteAddr).totalAssets();
    }

    // === View Functions - Adapter/Bridge Queries (BOTH chains) ===

    /**
     * @notice Get timestamp of last peer sync
     * @dev Used to detect stale sync state
     * @param _adapter Address of the adapter (uses state variable if address(0))
     * @return Timestamp of last received peer snapshot
     */
    function getPeerSyncTimestamp(address _adapter) external view returns (uint256) {
        address adapterAddr = _adapter == address(0) ? adapter : _adapter;
        if (adapterAddr == address(0)) return 0;
        _requireWhitelisted(adapterAddr);
        address accountantAddr = ICrosschainAdapter(adapterAddr).accountant();
        return IBridgeAccountant(accountantAddr).getPeerTimestamp();
    }

    /**
     * @notice Get seconds since last peer sync
     * @dev Convenience function for staleness check
     * @param _adapter Address of the adapter (uses state variable if address(0))
     * @return Seconds elapsed since last sync
     */
    function getSecondsSinceLastSync(address _adapter) external view returns (uint256) {
        address adapterAddr = _adapter == address(0) ? adapter : _adapter;
        if (adapterAddr == address(0)) return type(uint256).max;
        _requireWhitelisted(adapterAddr);

        address accountantAddr = ICrosschainAdapter(adapterAddr).accountant();
        uint256 lastSync = IBridgeAccountant(accountantAddr).getPeerTimestamp();
        if (lastSync == 0) return type(uint256).max;

        return block.timestamp > lastSync ? block.timestamp - lastSync : 0;
    }

    /**
     * @notice Get assets in transit outbound (raw, includes overlap)
     * @param _adapter Address of the adapter (uses state variable if address(0))
     * @return Amount of assets in outbound transit
     */
    function getAssetsInTransitOutbound(address _adapter) external view returns (uint256) {
        address adapterAddr = _adapter == address(0) ? adapter : _adapter;
        if (adapterAddr == address(0)) return 0;
        _requireWhitelisted(adapterAddr);
        address accountantAddr = ICrosschainAdapter(adapterAddr).accountant();
        return IBridgeAccountant(accountantAddr).assetsInTransitOutbound();
    }

    /**
     * @notice Get true outbound in-transit (overlap removed)
     * @dev This is what should be counted in totalAssets
     * @param _adapter Address of the adapter (uses state variable if address(0))
     * @return True amount of assets in transit
     */
    function getTrueOutboundInTransit(address _adapter) external view returns (uint256) {
        address adapterAddr = _adapter == address(0) ? adapter : _adapter;
        if (adapterAddr == address(0)) return 0;
        _requireWhitelisted(adapterAddr);
        address accountantAddr = ICrosschainAdapter(adapterAddr).accountant();
        return IBridgeAccountant(accountantAddr).calculateTrueOutboundInTransit();
    }

    /**
     * @notice Get assets in transit inbound (peer sent, we haven't received)
     * @param _adapter Address of the adapter (uses state variable if address(0))
     * @return Amount of assets in inbound transit
     */
    function getAssetsInTransitInbound(address _adapter) external view returns (uint256) {
        address adapterAddr = _adapter == address(0) ? adapter : _adapter;
        if (adapterAddr == address(0)) return 0;
        _requireWhitelisted(adapterAddr);
        address accountantAddr = ICrosschainAdapter(adapterAddr).accountant();
        return IBridgeAccountant(accountantAddr).assetsInTransitInbound();
    }

    /**
     * @notice Get peer reported assets (from their last snapshot)
     * @param _adapter Address of the adapter (uses state variable if address(0))
     * @return Assets reported by peer vault
     */
    function getPeerReportedAssets(address _adapter) external view returns (uint256) {
        address adapterAddr = _adapter == address(0) ? adapter : _adapter;
        if (adapterAddr == address(0)) return 0;
        _requireWhitelisted(adapterAddr);
        address accountantAddr = ICrosschainAdapter(adapterAddr).accountant();
        return IBridgeAccountant(accountantAddr).getPeerReportedAssets();
    }

    /**
     * @notice Get true peer assets (with overlap removed)
     * @dev This is what should be counted in totalAssets
     * @param _adapter Address of the adapter (uses state variable if address(0))
     * @return True peer assets with overlap removed
     */
    function getTruePeerAssets(address _adapter) external view returns (uint256) {
        address adapterAddr = _adapter == address(0) ? adapter : _adapter;
        if (adapterAddr == address(0)) return 0;
        _requireWhitelisted(adapterAddr);
        address accountantAddr = ICrosschainAdapter(adapterAddr).accountant();
        (uint256 peerAssets,) = IBridgeAccountant(accountantAddr).calculateTruePeerAssets();
        return peerAssets;
    }

    /**
     * @notice Get current bridge state from adapter
     * @dev Returns full BridgeState struct with all tracking info
     * @param _adapter Address of the adapter (uses state variable if address(0))
     * @return Bridge state including nonces and amounts
     */
    function getCurrentBridgeState(address _adapter) external view returns (RunespearProtocol.BridgeState memory) {
        address adapterAddr = _adapter == address(0) ? adapter : _adapter;
        if (adapterAddr == address(0)) {
            return RunespearProtocol.BridgeState({
                totalOutboundAwaitingPeerReceipt: 0,
                totalInboundAwaitingPeerRelease: 0,
                outboundAwaitingPeerReceipt: new uint256[](0),
                inboundAwaitingPeerRelease: new uint256[](0),
                timestamp: 0
            });
        }
        _requireWhitelisted(adapterAddr);
        address accountantAddr = ICrosschainAdapter(adapterAddr).accountant();
        return IBridgeAccountant(accountantAddr).getCurrentBridgeState();
    }

    /**
     * @notice Get the peer chain ID
     * @param _adapter Address of the adapter (uses state variable if address(0))
     * @return Chain ID of the peer
     */
    function getPeerChainId(address _adapter) external view returns (uint256) {
        address adapterAddr = _adapter == address(0) ? adapter : _adapter;
        if (adapterAddr == address(0)) return 0;
        _requireWhitelisted(adapterAddr);
        return ICrosschainAdapter(adapterAddr).getPeerChainId();
    }

    // === Defensive Message Retry Functions (BOTH chains) ===

    /**
     * @notice Retry a specific failed message on adapter
     * @dev Available on both Kaia and Ethereum keepers
     *      Adapter must grant manager role to this keeper
     * @param _adapter Address of the adapter (uses state variable if address(0))
     * @param messageId CCIP message ID to retry
     */
    function retryFailedAdapterMessage(address _adapter, bytes32 messageId) external onlyAdmin {
        address adapterAddr = _adapter == address(0) ? adapter : _adapter;
        if (adapterAddr == address(0)) revert InvalidAddress();
        _requireWhitelisted(adapterAddr);

        bool success = true;
        try ICrosschainAdapter(adapterAddr).retryFailedMessage(messageId) {
            // Success
        } catch {
            success = false;
        }

        emit FailedMessageRetried(adapterAddr, messageId, success);
    }

    // === View Functions - Failed Messages (BOTH chains) ===

    /**
     * @notice Get all failed message IDs on adapter
     * @dev Used for monitoring and manual intervention
     *      Calls inherited RunespearReceiver function on the adapter
     *      Check .length on the returned array to get count
     * @param _adapter Address of the adapter (uses state variable if address(0))
     * @return Array of failed message IDs (empty if none)
     */
    function getFailedMessageIds(address _adapter) external view returns (bytes32[] memory) {
        address adapterAddr = _adapter == address(0) ? adapter : _adapter;
        if (adapterAddr == address(0)) {
            return new bytes32[](0);
        }
        _requireWhitelisted(adapterAddr);
        return IRunespearReceiver(adapterAddr).getFailedMessageIds();
    }

    /**
     * @notice Get failed message details from adapter
     * @dev Used for debugging and analyzing failure reasons
     *      Calls inherited RunespearReceiver function on the adapter
     * @param _adapter Address of the adapter (uses state variable if address(0))
     * @param messageId CCIP message ID
     * @return sourceChainId Source chain ID
     * @return errorReason Error bytes from catch block
     * @return timestamp When the failure occurred
     */
    function getFailedMessageDetails(
        address _adapter,
        bytes32 messageId
    )
        external
        view
        returns (uint256 sourceChainId, bytes memory errorReason, uint256 timestamp)
    {
        address adapterAddr = _adapter == address(0) ? adapter : _adapter;
        if (adapterAddr == address(0)) {
            return (0, "", 0);
        }
        _requireWhitelisted(adapterAddr);
        return IRunespearReceiver(adapterAddr).getFailedMessageDetails(messageId);
    }

    // === Internal Helpers ===

    function _addToWhitelist(address account) internal {
        if (account == address(0)) revert InvalidAddress();

        if (whitelist[account]) revert AlreadyWhitelisted(account);

        whitelist[account] = true;
        emit WhitelistUpdated(account, true);
    }

    function _removeFromWhitelist(address account) internal {
        if (!whitelist[account]) revert NotWhitelisted(account);

        whitelist[account] = false;
        emit WhitelistUpdated(account, false);
    }

    function _requireWhitelisted(address account) internal view {
        if (!whitelist[account]) revert NotWhitelisted(account);
    }

    /**
     * @dev This empty reserved space is put in place to allow future versions to add new
     * variables without shifting down storage in the inheritance chain.
     * See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps
     *
     * Storage usage: 9 slots
     *   - adminSet: 2 slots (values array pointer, index mapping pointer)
     *   - governance: 1 slot (address)
     *   - pendingGovernance: 1 slot (address)
     *   - whitelist (mapping pointer): 1 slot
     *   - originVault: 1 slot (address)
     *   - remoteVault: 1 slot (address)
     *   - adapter: 1 slot (address)
     *   - vaultManager: 1 slot (address)
     * Gap = 50 - 9 = 41
     */
    uint256[41] private __gap;
}
