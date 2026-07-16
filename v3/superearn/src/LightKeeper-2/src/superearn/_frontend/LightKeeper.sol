// SPDX-License-Identifier: BUSL-1.1
pragma solidity >=0.8.29 <0.9.0;

import { Initializable } from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import { EnumerableSet } from "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import { ICooldownVault } from "@superearn/interface/ICooldownVault.sol";
import { BaseCooldownStrategy } from "@superearn/core/strategy/BaseCooldownStrategy.sol";
import { IYearnVaultManager } from "@superearn/v2/interfaces/IYearnVaultManager.sol";
import { ICustomStrategyHelper } from "@superearn/v2/interfaces/ICustomStrategyHelper.sol";
import { IRemoteVault } from "@superearn/v2/interfaces/IRemoteVault.sol";
import { CustomYearnStrategy } from "@superearn/core/strategy/custom/CustomYearnStrategy.sol";

/**
 * @title LightKeeper
 * @notice Keeper contract for batch operations on vaults and strategies
 * @dev Handles batch claims, debt retrievals, strategy maintenance, and CustomStrategy execution
 *
 * ## Access Control Model
 *
 * - Governance address (two-step transferable) manages admin and guardian sets
 * - Admins can be EOAs or multisigs — call all keeper functions (blocked when stopped)
 * - Guardians can call emergencyStop() to halt all admin operations
 * - Only governance can resume() after an emergency stop
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
    error NotGuardian();
    error AlreadyGuardian();
    error NotAGuardian();
    error ContractStopped();
    error ContractNotStopped();
    error StrategyExecutionFailed(address strategy, bytes returnData);
    error HelperNotSet();
    error WithdrawFromCustomStrategyFailed(address remoteVault, bytes returnData);

    // === State Variables ===
    EnumerableSet.AddressSet private adminSet;
    address public governance;
    address public pendingGovernance;
    address public vaultManager;
    // --- V2 additions ---
    EnumerableSet.AddressSet private guardianSet;
    bool public stopped;
    address public manager;
    EnumerableSet.AddressSet private strategistSet;

    // --- V3 additions ---
    /// @notice CustomStrategyHelper registry for automated withdrawals
    address public customStrategyHelper;

    // === Events ===
    event AdminAdded(address indexed admin);
    event AdminRemoved(address indexed admin);
    event GovernanceTransferStarted(address indexed currentGovernance, address indexed newGovernance);
    event GovernanceTransferCancelled(address indexed currentGovernance);
    event GovernanceTransferred(address indexed previousGovernance, address indexed newGovernance);
    event RetrieveDebtsCompleted(uint256 total);
    event ClaimsCompleted(uint256 total);
    event HarvestTriggered(address indexed strategy, bool triggered, bool success);
    event TendTriggered(address indexed strategy, bool triggered, bool success);
    event VaultManagerSet(address indexed vaultManager);
    event RatioActionExecuted(
        address indexed vaultManager, IYearnVaultManager.RatioAction action, bool adjustExecuted, bool restoreExecuted
    );
    event HarvestWithRatioManagement(
        address indexed vaultManager, IYearnVaultManager.RatioAction actionTaken, uint256 strategiesHarvested
    );
    event GuardianAdded(address indexed guardian);
    event GuardianRemoved(address indexed guardian);
    event ManagerUpdated(address indexed oldManager, address indexed newManager);
    event StrategistAdded(address indexed strategist);
    event StrategistRemoved(address indexed strategist);
    event EmergencyStopped(address indexed by);
    event Resumed(address indexed by);
    event StrategyExecuted(address indexed strategy);
    event StrategyExecutedWithExpectedBalance(address indexed strategy, uint256 expectedAssetsAfter);
    event CustomStrategyHelperSet(address indexed helper);
    event WithdrawnFromCustomStrategyWithHelper(
        address indexed remoteVault, address indexed strategy, address token, uint256 actual
    );

    // === Modifiers ===
    /// @dev Allows admins and managers; blocked when stopped
    modifier onlyAdmin() {
        if (stopped) revert ContractStopped();
        if (!adminSet.contains(msg.sender) && msg.sender != manager) revert NotAdmin();
        _;
    }

    modifier onlyStrategist() {
        if (stopped) revert ContractStopped();
        if (!adminSet.contains(msg.sender) && msg.sender != manager && !strategistSet.contains(msg.sender)) {
            revert NotAdmin();
        }
        _;
    }

    modifier onlyGovernance() {
        if (msg.sender != governance) revert NotGovernance();
        _;
    }

    modifier onlyGuardian() {
        if (!guardianSet.contains(msg.sender)) revert NotGuardian();
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
    function retrieveDebts(address cooldownVault, uint256[] memory predepositIds) public onlyAdmin {
        uint256 length = predepositIds.length;

        for (uint256 i = 0; i < length; i++) {
            ICooldownVault(cooldownVault).retrieveDebt(predepositIds[i]);
        }

        emit RetrieveDebtsCompleted(length);
    }

    /**
     * @notice Claim multiple redemption requests from a cooldown vault
     * @param cooldownVault Address of the cooldown vault
     * @param redeemRequestIds Array of redeem request IDs to claim
     * @param maxLoss Max loss value to apply to all claims
     */
    function claims(address cooldownVault, uint256[] memory redeemRequestIds, uint256 maxLoss) public onlyAdmin {
        uint256 length = redeemRequestIds.length;

        for (uint256 i = 0; i < length; i++) {
            ICooldownVault(cooldownVault).claim(redeemRequestIds[i], maxLoss);
        }

        emit ClaimsCompleted(length);
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
                strategy.harvest();
                emit HarvestTriggered(strategies[i], true, true);
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
                strategy.tend();
                emit TendTriggered(strategies[i], true, true);
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
    function quickRetrieveDebts(address cooldownVault, uint256 limit, uint256 skip) external onlyAdmin {
        // Get retrievable debt IDs using the public function
        uint256[] memory retrievableIds = getRetrievableDebtIds(cooldownVault, limit, skip);

        // Early return if no retrievable requests found
        if (retrievableIds.length == 0) return;

        // Execute batch debt retrievals
        retrieveDebts(cooldownVault, retrievableIds);
    }

    /**
     * @notice Withdraw USDT from CustomVault via CustomYearnStrategy to prepare for debt repayment
     * @param strategy Address of the CustomYearnStrategy
     * @param shares Number of CustomVault shares to redeem
     * @return assets Amount of USDT received
     */
    function withdrawFromCustomVault(address strategy, uint256 shares) external onlyAdmin returns (uint256 assets) {
        assets = CustomYearnStrategy(strategy).withdrawFromCustomVault(shares);
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
    function quickClaims(address cooldownVault, uint256 maxLoss, uint256 limit, uint256 skip) external onlyAdmin {
        // Get claimable IDs using the public function
        uint256[] memory claimableIds = getClaimableIds(cooldownVault, limit, skip);

        // Early return if no claimable requests found
        if (claimableIds.length == 0) return;

        // Execute batch claims
        claims(cooldownVault, claimableIds, maxLoss);
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
                strategy.harvest();
                emit HarvestTriggered(strategies[i], true, true);
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

    // ============================================
    // Guardian Management Functions
    // ============================================

    /**
     * @notice Add a new guardian
     * @param guardian Address to add as guardian
     */
    function addGuardian(address guardian) external onlyGovernance {
        if (guardian == address(0)) revert InvalidAddress();
        if (!guardianSet.add(guardian)) revert AlreadyGuardian();
        emit GuardianAdded(guardian);
    }

    /**
     * @notice Remove a guardian
     * @param guardian Address to remove from guardians
     */
    function removeGuardian(address guardian) external onlyGovernance {
        if (!guardianSet.remove(guardian)) revert NotAGuardian();
        emit GuardianRemoved(guardian);
    }

    /**
     * @notice Check if an address is a guardian
     * @param account Address to check
     * @return Whether the address is a guardian
     */
    function isGuardian(address account) external view returns (bool) {
        return guardianSet.contains(account);
    }

    /**
     * @notice Get the list of all guardians
     * @return Array of guardian addresses
     */
    function getGuardians() external view returns (address[] memory) {
        return guardianSet.values();
    }

    /**
     * @notice Get the count of guardians
     * @return Number of guardians
     */
    function getGuardianCount() external view returns (uint256) {
        return guardianSet.length();
    }

    // ============================================
    // Emergency Stop Functions
    // ============================================

    /**
     * @notice Emergency stop — halts all admin operations
     * @dev Callable by any guardian. Only governance can resume.
     *      When stopped, all onlyAdmin functions revert with ContractStopped.
     */
    function emergencyStop() external onlyGuardian {
        if (stopped) revert ContractStopped();
        stopped = true;
        emit EmergencyStopped(msg.sender);
    }

    /**
     * @notice Resume operations after emergency stop
     * @dev Callable by governance or manager
     */
    function resume() external {
        if (msg.sender != governance && msg.sender != manager) revert NotGovernance();
        if (!stopped) revert ContractNotStopped();
        stopped = false;
        emit Resumed(msg.sender);
    }

    // ============================================
    // Manager Management Functions
    // ============================================

    /// @notice Set the manager address (single address, not a set)
    function setManager(address _manager) external onlyGovernance {
        address oldManager = manager;
        manager = _manager;
        emit ManagerUpdated(oldManager, _manager);
    }

    // ============================================
    // Strategist Management Functions
    // ============================================

    /// @notice Add a strategist
    function addStrategist(address strategist) external onlyGovernance {
        if (strategist == address(0)) revert InvalidAddress();
        if (!strategistSet.add(strategist)) revert InvalidAddress();
        emit StrategistAdded(strategist);
    }

    /// @notice Remove a strategist
    function removeStrategist(address strategist) external onlyGovernance {
        if (!strategistSet.remove(strategist)) revert InvalidAddress();
        emit StrategistRemoved(strategist);
    }

    /// @notice Check if an address is a strategist
    function isStrategist(address account) external view returns (bool) {
        return strategistSet.contains(account);
    }

    /// @notice Get the list of all strategists
    function getStrategists() external view returns (address[] memory) {
        return strategistSet.values();
    }

    /// @notice Get the count of strategists
    function getStrategistCount() external view returns (uint256) {
        return strategistSet.length();
    }

    // ============================================
    // CustomStrategy Execution Functions
    // ============================================

    /**
     * @notice Execute operations on a CustomStrategy via submitExecution
     * @dev Proxies the call to the specified CustomStrategy contract.
     *      The LightKeeper must be set as the strategist on the target CustomStrategy.
     * @param strategy Address of the CustomStrategy to execute on
     * @param targets Array of target contract addresses
     * @param calldatas Array of encoded function call data
     */
    function executeStrategy(
        address strategy,
        address[] calldata targets,
        bytes[] calldata calldatas
    )
        external
        onlyStrategist
    {
        if (strategy == address(0)) revert InvalidAddress();

        (bool success, bytes memory returnData) =
            strategy.call(abi.encodeWithSignature("submitExecution(address[],bytes[])", targets, calldatas));
        if (!success) revert StrategyExecutionFailed(strategy, returnData);

        emit StrategyExecuted(strategy);
    }

    /**
     * @notice Execute operations on a CustomStrategy via submitExecutionWithExpectedBalance
     * @dev Proxies the call to the specified CustomStrategy contract.
     *      The LightKeeper must be set as the strategist on the target CustomStrategy.
     * @param strategy Address of the CustomStrategy to execute on
     * @param targets Array of target contract addresses
     * @param calldatas Array of encoded function call data
     * @param expectedAssetsAfter Expected totalAssets after execution
     */
    function executeStrategyWithExpectedBalance(
        address strategy,
        address[] calldata targets,
        bytes[] calldata calldatas,
        uint256 expectedAssetsAfter
    )
        external
        onlyStrategist
    {
        if (strategy == address(0)) revert InvalidAddress();

        (bool success, bytes memory returnData) = strategy.call(
            abi.encodeWithSignature(
                "submitExecutionWithExpectedBalance(address[],bytes[],uint256)", targets, calldatas, expectedAssetsAfter
            )
        );
        if (!success) revert StrategyExecutionFailed(strategy, returnData);

        emit StrategyExecutedWithExpectedBalance(strategy, expectedAssetsAfter);
    }

    // ============================================
    // CustomStrategy Helper Functions
    // ============================================

    /// @notice Set the CustomStrategyHelper registry address
    /// @param _helper Address of the CustomStrategyHelper (address(0) to disable)
    function setCustomStrategyHelper(address _helper) external onlyGovernance {
        customStrategyHelper = _helper;
        emit CustomStrategyHelperSet(_helper);
    }

    /// @notice Withdraw from a custom strategy by first pulling funds from external protocols via helper
    /// @dev Requires LightKeeper to be set as strategist on the CustomStrategy.
    ///      Flow: 1) Get calldata from helper registry → 2) submitExecution on strategy → 3) withdraw via vault.
    ///      `remoteVault` may be an Ethereum RemoteVault or a Kaia CustomVault — both expose the
    ///      same withdrawFromCustomStrategy selector, so the IRemoteVault cast works for either.
    ///      The LightKeeper must be registered as an operator on whichever vault is passed in.
    ///
    ///      Best-effort withdrawal: if `amount` exceeds the total withdrawable balance
    ///      (idle balance + available liquidity across external protocols), this function
    ///      does NOT revert. Instead, it withdraws as much as possible and returns the
    ///      actual amount withdrawn via `actual`. Always check `actual` against `amount`
    ///      to detect partial fills.
    /// @param remoteVault RemoteVault (Ethereum) or CustomVault (Kaia) address
    /// @param strategy Custom strategy address
    /// @param token Token to withdraw
    /// @param amount Amount to withdraw (capped at max withdrawable if larger)
    /// @return actual Amount actually withdrawn — may be less than `amount` on partial fill
    function withdrawFromCustomStrategyWithHelper(
        address remoteVault,
        address strategy,
        address token,
        uint256 amount
    )
        external
        onlyStrategist
        returns (uint256 actual)
    {
        if (customStrategyHelper == address(0)) revert HelperNotSet();
        if (remoteVault == address(0)) revert InvalidAddress();
        if (strategy == address(0)) revert InvalidAddress();

        // Step 1: Get withdrawal calldata from helper registry
        (address[] memory targets, bytes[] memory calldatas) =
            ICustomStrategyHelper(customStrategyHelper).getWithdrawCalldata(strategy, amount);

        // Step 2: If calldata returned, submit execution to withdraw from protocols to idle balance
        if (targets.length > 0) {
            (bool success, bytes memory returnData) =
                strategy.call(abi.encodeWithSignature("submitExecution(address[],bytes[])", targets, calldatas));
            if (!success) revert StrategyExecutionFailed(strategy, returnData);
        }

        // Step 3: Withdraw the now-idle tokens via RemoteVault
        actual = IRemoteVault(remoteVault).withdrawFromCustomStrategy(strategy, token, amount);

        emit WithdrawnFromCustomStrategyWithHelper(remoteVault, strategy, token, actual);
    }

    /**
     * Storage usage: 12 slots
     *   - adminSet._values: 1 slot
     *   - adminSet._indexes: 1 slot
     *   - governance: 1 slot
     *   - pendingGovernance: 1 slot
     *   - vaultManager: 1 slot
     *   - guardianSet._values: 1 slot
     *   - guardianSet._indexes: 1 slot
     *   - stopped: 1 slot
     *   - manager: 1 slot (address)
     *   - strategistSet: 2 slots (values array pointer, index mapping pointer)
     *   - customStrategyHelper: 1 slot (address)
     *
     * Gap = 50 - 12 = 38
     */
    uint256[38] private __gap;
}
