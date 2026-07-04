// SPDX-License-Identifier: BUSL-1.1
pragma solidity >=0.8.29 <0.9.0;

import { Initializable } from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import { EnumerableSet } from "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import { ICooldownVault } from "@superearn/interface/ICooldownVault.sol";
import { BaseCooldownStrategy } from "@superearn/core/strategy/BaseCooldownStrategy.sol";
import { IYearnVaultManager } from "@superearn/v2/interfaces/IYearnVaultManager.sol";

/**
 * @title LightKeeper
 * @notice Keeper contract for batch operations on vaults and strategies
 * @dev Handles batch claims, debt retrievals, and strategy maintenance
 *
 * ## Access Control Model
 *
 * - Governance address (two-step transferable) manages the admin set
 * - Admins can be EOAs or multisigs
 * - Admins can call all keeper functions
 * - At least one admin must exist at all times
 */
contract LightKeeper is Initializable {
    using EnumerableSet for EnumerableSet.AddressSet;

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

    // === State Variables ===
    EnumerableSet.AddressSet private adminSet;
    address public governance;
    address public pendingGovernance;
    address public vaultManager;

    // === Events ===
    event AdminAdded(address indexed admin);
    event AdminRemoved(address indexed admin);
    event GovernanceTransferStarted(address indexed currentGovernance, address indexed newGovernance);
    event GovernanceTransferCancelled(address indexed currentGovernance);
    event GovernanceTransferred(address indexed previousGovernance, address indexed newGovernance);
    event DebtRetrievalFailed(address indexed cooldownVault, uint256 predepositId);
    event ClaimFailed(address indexed cooldownVault, uint256 requestId);
    event RetrieveDebtsCompleted(uint256 total, uint256 successful, uint256 failed);
    event ClaimsCompleted(uint256 total, uint256 successful, uint256 failed);
    event HarvestTriggered(address indexed strategy, bool triggered, bool success);
    event TendTriggered(address indexed strategy, bool triggered, bool success);
    event VaultManagerSet(address indexed vaultManager);
    event RatioActionExecuted(
        address indexed vaultManager, IYearnVaultManager.RatioAction action, bool adjustExecuted, bool restoreExecuted
    );
    event HarvestWithRatioManagement(
        address indexed vaultManager, IYearnVaultManager.RatioAction actionTaken, uint256 strategiesHarvested
    );

    // === Modifiers ===
    modifier onlyAdmin() {
        if (!adminSet.contains(msg.sender)) revert NotAdmin();
        _;
    }

    modifier onlyGovernance() {
        if (msg.sender != governance) revert NotGovernance();
        _;
    }

    // === Constructor ===
    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    /**
     * @notice Initialize the LightKeeper
     * @param initialAdmin Address that will be granted admin rights
     * @dev This is the original initializer, governance is not set
     */
    function initialize(address initialAdmin, address _governance) public initializer {
        if (initialAdmin == address(0)) revert InvalidAddress();
        adminSet.add(initialAdmin);
        emit AdminAdded(initialAdmin);

        if (_governance == address(0)) revert InvalidAddress();
        governance = _governance;
        emit GovernanceTransferred(address(0), _governance);
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

    // === Main Functions ===

    /**
     * @notice Retrieve multiple debts from a cooldown vault
     * @param cooldownVault Address of the cooldown vault
     * @param predepositIds Array of predeposit IDs to retrieve
     */
    function retrieveDebts(
        address cooldownVault,
        uint256[] memory predepositIds
    )
        public
        onlyAdmin
        returns (uint256 success, uint256 failed)
    {
        failed = 0;
        uint256 length = predepositIds.length;

        for (uint256 i = 0; i < length; i++) {
            try ICooldownVault(cooldownVault).retrieveDebt(predepositIds[i]) {
                // Success - no individual event
            } catch {
                failed++;
                emit DebtRetrievalFailed(cooldownVault, predepositIds[i]);
            }
        }

        emit RetrieveDebtsCompleted(length, length - failed, failed);

        return (length - failed, failed);
    }

    /**
     * @notice Claim multiple redemption requests from a cooldown vault
     * @param cooldownVault Address of the cooldown vault
     * @param redeemRequestIds Array of redeem request IDs to claim
     * @param maxLoss Max loss value to apply to all claims
     */
    function claims(
        address cooldownVault,
        uint256[] memory redeemRequestIds,
        uint256 maxLoss
    )
        public
        onlyAdmin
        returns (uint256 success, uint256 failed)
    {
        failed = 0;
        uint256 length = redeemRequestIds.length;

        for (uint256 i = 0; i < length; i++) {
            try ICooldownVault(cooldownVault).claim(redeemRequestIds[i], maxLoss) {
                // Success - no individual event
            } catch {
                failed++;
                emit ClaimFailed(cooldownVault, redeemRequestIds[i]);
            }
        }

        emit ClaimsCompleted(length, length - failed, failed);

        return (length - failed, failed);
    }

    /**
     * @notice Harvest multiple strategies
     * @param strategies Array of strategy addresses to harvest
     */
    function harvests(address[] calldata strategies) external onlyAdmin {
        harvests(strategies, true);
    }

    /**
     * @notice Harvest multiple strategies
     * @param strategies Array of strategy addresses to harvest
     * @param checkTrigger Whether to check if harvest should be triggered
     */
    function harvests(address[] calldata strategies, bool checkTrigger) public onlyAdmin {
        for (uint256 i = 0; i < strategies.length; i++) {
            BaseCooldownStrategy strategy = BaseCooldownStrategy(strategies[i]);

            // Check if harvest should be triggered
            bool shouldHarvest = checkTrigger ? strategy.harvestTrigger(type(uint256).max) : true;

            if (shouldHarvest) {
                bool success = true;
                try strategy.harvest() {
                    // Success
                } catch {
                    success = false;
                }
                emit HarvestTriggered(strategies[i], true, success);
            } else {
                emit HarvestTriggered(strategies[i], false, false);
            }
        }
    }

    /**
     * @notice Tend multiple strategies
     * @param strategies Array of strategy addresses to tend
     */
    function tends(address[] calldata strategies) external onlyAdmin {
        for (uint256 i = 0; i < strategies.length; i++) {
            BaseCooldownStrategy strategy = BaseCooldownStrategy(strategies[i]);

            // Check if tend should be triggered
            bool shouldTend = strategy.tendTrigger(type(uint256).max);

            if (shouldTend) {
                bool success = true;
                try strategy.tend() {
                    // Success
                } catch {
                    success = false;
                }
                emit TendTriggered(strategies[i], true, success);
            } else {
                emit TendTriggered(strategies[i], false, false);
            }
        }
    }

    /**
     * @notice Get retrievable predeposit debt IDs
     * @dev Finds all predeposit requests that have passed cooldown and are retrievable by strategy
     * @param cooldownVault Address of the cooldown vault
     * @param limit Maximum number of debts to check
     * @param skip Number of unclaimed requests to skip
     * @return retrievableIds Array of retrievable predeposit IDs
     */
    function getRetrievableDebtIds(
        address cooldownVault,
        uint256 limit,
        uint256 skip
    )
        public
        view
        returns (uint256[] memory retrievableIds)
    {
        // Gas optimization: Get all unclaimed predeposit IDs at once
        uint256[] memory unclaimedIds = ICooldownVault(cooldownVault).getUnclaimedPredepositRequestIds(limit, skip);

        // Gas optimization: Cache array length
        uint256 unclaimedLength = unclaimedIds.length;

        // Early return if no unclaimed requests
        if (unclaimedLength == 0) return new uint256[](0);

        // Gas optimization: Pre-allocate memory for retrievable IDs
        retrievableIds = new uint256[](unclaimedLength < limit ? unclaimedLength : limit);
        uint256 retrievableCount = 0;

        // Process unclaimed IDs
        for (uint256 i = 0; i < unclaimedLength;) {
            // Gas optimization: Single storage read
            (address strategy,,, uint256 cooldownRequestedTime, uint256 cooldownPeriod,) =
                ICooldownVault(cooldownVault).predepositRequests(unclaimedIds[i]);

            // Skip if still in cooldown period
            if (block.timestamp < cooldownRequestedTime + cooldownPeriod) {
                unchecked {
                    ++i;
                }
                continue;
            }

            // Check if strategy can retrieve the debt
            if (!BaseCooldownStrategy(strategy).predepositDebtRetrievable(unclaimedIds[i])) {
                unchecked {
                    ++i;
                }
                continue;
            }

            // Add to retrievable list
            retrievableIds[retrievableCount] = unclaimedIds[i];

            unchecked {
                ++retrievableCount;
                ++i;
            }
        }

        // Gas optimization: Create right-sized array
        assembly {
            mstore(retrievableIds, retrievableCount)
        }
    }

    /**
     * @notice Automatically find and retrieve ready predeposit debts
     * @dev Gas optimized function to batch retrieve matured predeposit requests
     * @param cooldownVault Address of the cooldown vault
     * @param limit Maximum number of debts to retrieve
     * @param skip Number of retrievable requests to skip
     */
    function quickRetrieveDebts(
        address cooldownVault,
        uint256 limit,
        uint256 skip
    )
        external
        onlyAdmin
        returns (uint256 success, uint256 failed)
    {
        // Get retrievable debt IDs using the public function
        uint256[] memory retrievableIds = getRetrievableDebtIds(cooldownVault, limit, skip);

        // Early return if no retrievable requests found
        if (retrievableIds.length == 0) return (0, 0);

        // Execute batch debt retrievals
        return retrieveDebts(cooldownVault, retrievableIds);
    }

    /**
     * @notice Get claimable redeem request IDs
     * @dev Finds all redeem requests that have passed cooldown period
     * @param cooldownVault Address of the cooldown vault
     * @param limit Maximum number of claims to check
     * @param skip Number of unclaimed requests to skip
     * @return claimableIds Array of claimable redeem request IDs
     */
    function getClaimableIds(
        address cooldownVault,
        uint256 limit,
        uint256 skip
    )
        public
        view
        returns (uint256[] memory claimableIds)
    {
        ICooldownVault vault = ICooldownVault(cooldownVault);

        // Gas optimization: Get all unclaimed IDs at once
        uint256[] memory unclaimedIds = vault.getUnclaimedRedeemRequestIds(limit, skip);

        // Gas optimization: Cache array length
        uint256 unclaimedLength = unclaimedIds.length;

        // Early return if no unclaimed requests
        if (unclaimedLength == 0) return new uint256[](0);

        // Gas optimization: Cache shared values outside loop
        uint256 managedAssets = vault.assetBalance();
        uint256 accClaimed = vault.accClaimedAmount();

        // Gas optimization: Pre-allocate memory for claimable IDs
        claimableIds = new uint256[](unclaimedLength < limit ? unclaimedLength : limit);
        uint256 claimableCount = 0;

        // Process unclaimed IDs
        for (uint256 i = 0; i < unclaimedLength;) {
            uint256 requestId = unclaimedIds[i];

            // Get request data (unclaimed IDs are guaranteed not claimed)
            (, uint256 assets, uint256 cooldownRequestedTime, uint256 cooldownPeriod,) = vault.redeemRequests(requestId);

            // Check 1: Skip if still in cooldown period
            if (block.timestamp < cooldownRequestedTime + cooldownPeriod) {
                unchecked {
                    ++i;
                }
                continue;
            }

            // Check 2: Sufficient assets check (mirrors CooldownVault._claim logic)
            uint256 accRedeemRequested = vault.accRedeemRequestedAmount(requestId - 1);
            uint256 reservedForPriorRequests = accRedeemRequested > accClaimed ? accRedeemRequested - accClaimed : 0;

            if (assets + reservedForPriorRequests > managedAssets) {
                unchecked {
                    ++i;
                }
                continue;
            }

            // Add to claimable list
            claimableIds[claimableCount] = requestId;

            unchecked {
                ++claimableCount;
                ++i;
            }
        }

        // Gas optimization: Create right-sized array
        assembly {
            mstore(claimableIds, claimableCount)
        }
    }

    /**
     * @notice Automatically find and claim ready redemption requests
     * @dev Gas optimized function to batch claim matured redemption requests
     * @param cooldownVault Address of the cooldown vault
     * @param maxLoss Max loss value to apply to all claims
     * @param limit Maximum number of claims to process
     * @param skip Number of claimable requests to skip
     */
    function quickClaims(
        address cooldownVault,
        uint256 maxLoss,
        uint256 limit,
        uint256 skip
    )
        external
        onlyAdmin
        returns (uint256 success, uint256 failed)
    {
        // Get claimable IDs using the public function
        uint256[] memory claimableIds = getClaimableIds(cooldownVault, limit, skip);

        // Early return if no claimable requests found
        if (claimableIds.length == 0) return (0, 0);

        // Execute batch claims
        return claims(cooldownVault, claimableIds, maxLoss);
    }

    // ============================================
    // YearnVaultManager Integration Functions
    // ============================================

    /**
     * @notice Set vault manager address
     * @param _vaultManager Address of the YearnVaultManager
     */
    function setVaultManager(address _vaultManager) external onlyGovernance {
        if (_vaultManager == address(0)) revert InvalidAddress();
        vaultManager = _vaultManager;
        emit VaultManagerSet(_vaultManager);
    }

    /**
     * @notice Check what ratio action is needed for a YearnVaultManager
     * @param _vaultManager Address of the YearnVaultManager (uses state variable if address(0))
     * @return action The recommended action (NONE, ADJUST, RESTORE)
     * @return totalIdle Amount of idle assets in the vault
     * @return needsAdjust True if adjustDebtRatio would change ratios
     * @return needsRestore True if restoreDebtRatio would change ratios
     */
    function getRatioActionNeeded(address _vaultManager)
        external
        view
        returns (IYearnVaultManager.RatioAction action, uint256 totalIdle, bool needsAdjust, bool needsRestore)
    {
        address managerAddr = _vaultManager == address(0) ? vaultManager : _vaultManager;
        if (managerAddr == address(0)) revert InvalidAddress();
        return IYearnVaultManager(managerAddr).getRatioActionNeeded();
    }

    /**
     * @notice Execute the appropriate ratio action based on current state
     * @dev Checks getRatioActionNeeded and executes the recommended action.
     *      RESTORE takes priority since restoreDebtRatio calculates minRatios from actual debts,
     *      protecting existing funds while deploying idle toward targets.
     * @param _vaultManager Address of the YearnVaultManager (uses state variable if address(0))
     * @return action The action that was executed
     * @return adjustExecuted True if adjustDebtRatio was called
     * @return restoreExecuted True if restoreDebtRatio was called
     */
    function executeRatioAction(address _vaultManager)
        public
        onlyAdmin
        returns (IYearnVaultManager.RatioAction action, bool adjustExecuted, bool restoreExecuted)
    {
        address managerAddr = _vaultManager == address(0) ? vaultManager : _vaultManager;
        if (managerAddr == address(0)) revert InvalidAddress();

        (action,,,) = IYearnVaultManager(managerAddr).getRatioActionNeeded();

        if (action == IYearnVaultManager.RatioAction.ADJUST) {
            IYearnVaultManager(managerAddr).adjustDebtRatio();
            adjustExecuted = true;
        } else if (action == IYearnVaultManager.RatioAction.RESTORE) {
            IYearnVaultManager(managerAddr).restoreDebtRatio();
            restoreExecuted = true;
        }
        // NONE: do nothing

        emit RatioActionExecuted(managerAddr, action, adjustExecuted, restoreExecuted);
    }

    /**
     * @notice Execute ratio action if needed, then harvest all strategies
     * @dev Combines ratio management with batch harvest for atomic execution
     *
     * Flow:
     * 1. Check getRatioActionNeeded()
     * 2. Execute adjust/restore if needed
     * 3. Get strategies from vault manager
     * 4. Harvest all strategies
     *
     * @param _vaultManager Address of the YearnVaultManager (uses state variable if address(0))
     * @param checkTrigger Whether to check harvestTrigger before each harvest
     */
    function harvestWithRatioManagement(address _vaultManager, bool checkTrigger) external onlyAdmin {
        address managerAddr = _vaultManager == address(0) ? vaultManager : _vaultManager;
        if (managerAddr == address(0)) revert InvalidAddress();

        // Step 1: Execute ratio action if needed
        (IYearnVaultManager.RatioAction action,,) = executeRatioAction(managerAddr);

        // Step 2: Get strategies from vault manager
        address[] memory strategies = IYearnVaultManager(managerAddr).getVaultStrategies();

        // Step 3: Harvest all strategies
        for (uint256 i = 0; i < strategies.length; i++) {
            BaseCooldownStrategy strategy = BaseCooldownStrategy(strategies[i]);

            bool shouldHarvest = checkTrigger ? strategy.harvestTrigger(type(uint256).max) : true;

            if (shouldHarvest) {
                bool success = true;
                try strategy.harvest() {
                    // Success
                } catch {
                    success = false;
                }
                emit HarvestTriggered(strategies[i], true, success);
            } else {
                emit HarvestTriggered(strategies[i], false, false);
            }
        }

        emit HarvestWithRatioManagement(managerAddr, action, strategies.length);
    }

    /**
     * @notice Adjust debt ratios on a YearnVaultManager
     * @param _vaultManager Address of the YearnVaultManager (uses state variable if address(0))
     */
    function adjustDebtRatio(address _vaultManager) external onlyAdmin {
        address managerAddr = _vaultManager == address(0) ? vaultManager : _vaultManager;
        if (managerAddr == address(0)) revert InvalidAddress();
        IYearnVaultManager(managerAddr).adjustDebtRatio();
    }

    /**
     * @notice Restore debt ratios on a YearnVaultManager
     * @param _vaultManager Address of the YearnVaultManager (uses state variable if address(0))
     */
    function restoreDebtRatio(address _vaultManager) external onlyAdmin {
        address managerAddr = _vaultManager == address(0) ? vaultManager : _vaultManager;
        if (managerAddr == address(0)) revert InvalidAddress();
        IYearnVaultManager(managerAddr).restoreDebtRatio();
    }

    /**
     * Storage usage: 5 slots
     *   - adminSet._values: 1 slot
     *   - adminSet._indexes: 1 slot
     *   - governance: 1 slot
     *   - pendingGovernance: 1 slot
     *   - vaultManager: 1 slot
     *
     * Gap = 50 - 5 = 45
     */
    uint256[45] private __gap;
}
