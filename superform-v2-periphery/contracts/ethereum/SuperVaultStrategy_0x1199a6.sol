// SPDX-License-Identifier: EXTRACTED
// Contract: SuperVaultStrategy
// Address: 0x1199a6b2587ed96446e76dee3fb660bb8fcfd0b2
// Compiler: v0.8.30+commit.73712a01
// Source: Etherscan verified source (project files only, libraries excluded)
// Extracted: 2026-04-12

// ======================================================================
// FILE: src/interfaces/ISuperGovernor.sol
// ======================================================================

// SPDX-License-Identifier: Apache-2.0
pragma solidity 0.8.30;

import { IAccessControl } from "@openzeppelin/contracts/access/IAccessControl.sol";

/*//////////////////////////////////////////////////////////////
                                  ENUMS
    //////////////////////////////////////////////////////////////*/
/// @notice Enum representing different types of fees that can be managed
enum FeeType {
    REVENUE_SHARE,
    PERFORMANCE_FEE_SHARE
}
/// @title ISuperGovernor
/// @author Superform Labs
/// @notice Interface for the SuperGovernor contract
/// @dev Central registry for all deployed contracts in the Superform periphery

interface ISuperGovernor is IAccessControl {
    /*//////////////////////////////////////////////////////////////
                                  STRUCTS
    //////////////////////////////////////////////////////////////*/

    /// @notice Structure containing Merkle root data for a hook
    struct HookMerkleRootData {
        bytes32 currentRoot; // Current active Merkle root for the hook
        bytes32 proposedRoot; // Proposed new Merkle root (zero if no proposal exists)
        uint256 effectiveTime; // Timestamp when the proposed root becomes effective
    }

    /*//////////////////////////////////////////////////////////////
                                  ERRORS
    //////////////////////////////////////////////////////////////*/
    /// @notice Thrown when trying to access a contract that is not registered
    error CONTRACT_NOT_FOUND();
    /// @notice Thrown when providing an invalid address (typically zero address)
    error INVALID_ADDRESS();
    /// @notice Thrown when a hook is not approved but expected to be
    error HOOK_NOT_APPROVED();
    /// @notice Thrown when an invalid fee value is proposed (must be <= BPS_MAX)
    error INVALID_FEE_VALUE();
    /// @notice Thrown when no proposed fee exists but one is expected
    error NO_PROPOSED_FEE(FeeType feeType);
    /// @notice Thrown when timelock period has not expired
    error TIMELOCK_NOT_EXPIRED();
    /// @notice Thrown when a validator is already registered
    error VALIDATOR_ALREADY_REGISTERED();
    /// @notice Thrown when trying to change active PPS oracle directly
    error MUST_USE_TIMELOCK_FOR_CHANGE();
    /// @notice Thrown when a SuperBank hook Merkle root is not registered but expected to be
    /// @dev This error is defined here for use by other contracts in the system (SuperVaultStrategy,
    /// SuperVaultAggregator, ECDSAPPSOracle)
    error INVALID_TIMESTAMP();
    /// @notice Thrown when attempting to set an invalid quorum value (typically zero)
    error INVALID_QUORUM();
    /// @notice Thrown when validator and public key array lengths don't match
    error ARRAY_LENGTH_MISMATCH();
    /// @notice Thrown when trying to set validator config with an empty validator array
    error EMPTY_VALIDATOR_ARRAY();
    /// @notice Thrown when no active PPS oracle is set but one is required
    error NO_ACTIVE_PPS_ORACLE();
    /// @notice Thrown when no proposed PPS oracle exists but one is expected
    error NO_PROPOSED_PPS_ORACLE();
    /// @notice Error thrown when manager takeovers are frozen
    error MANAGER_TAKEOVERS_FROZEN();
    /// @notice Thrown when no proposed Merkle root exists but one is expected
    error NO_PROPOSED_MERKLE_ROOT();
    /// @notice Thrown when no proposed Merkle root exists but one is expected
    error ZERO_PROPOSED_MERKLE_ROOT();
    /// @notice Thrown when no proposed minimum staleness exists but one is expected
    error NO_PROPOSED_MIN_STALENESS();
    /// @notice Thrown when the provided maxStaleness is less than the minimum required staleness
    error MAX_STALENESS_TOO_LOW();
    /// @notice Thrown when there's no pending change but one is expected
    error NO_PENDING_CHANGE();
    /// @notice Thrown when the super oracle is not found
    error SUPER_ORACLE_NOT_FOUND();
    /// @notice Thrown when the up token is not found
    error UP_NOT_FOUND();
    /// @notice Thrown when the upkeep token is not found
    error UPKEEP_TOKEN_NOT_FOUND();
    /// @notice Thrown when the gas info is invalid
    error INVALID_GAS_INFO();

    /*//////////////////////////////////////////////////////////////
                                  EVENTS
    //////////////////////////////////////////////////////////////*/
    /// @notice Emitted when an address is set in the registry
    /// @param key The key used to reference the address
    /// @param oldValue The old address value
    /// @param value The address value
    event AddressSet(bytes32 indexed key, address indexed oldValue, address indexed value);

    /// @notice Emitted when a hook is approved
    /// @param hook The address of the approved hook
    event HookApproved(address indexed hook);

    /// @notice Emitted when validator configuration is set
    /// @param version The version of the configuration
    /// @param validators Array of validator addresses
    /// @param validatorPublicKeys Array of validator public keys (for signature verification)
    /// @param quorum The quorum required for validator consensus
    /// @param offchainConfig Offchain configuration data
    event ValidatorConfigSet(
        uint256 version, address[] validators, bytes[] validatorPublicKeys, uint256 quorum, bytes offchainConfig
    );

    /// @notice Emitted when a hook is removed
    /// @param hook The address of the removed hook
    event HookRemoved(address indexed hook);

    /// @notice Emitted when a new fee is proposed
    /// @param feeType The type of fee being proposed
    /// @param value The proposed fee value (in basis points)
    /// @param effectiveTime The timestamp when the fee will be effective
    event FeeProposed(FeeType indexed feeType, uint256 value, uint256 effectiveTime);

    /// @notice Emitted when a fee is updated
    /// @param feeType The type of fee being updated
    /// @param value The new fee value (in basis points)
    event FeeUpdated(FeeType indexed feeType, uint256 value);

    /// @notice Emitted when a new SuperBank hook Merkle root is proposed
    /// @param hook The hook address for which the Merkle root is being proposed
    /// @param newRoot The new Merkle root
    /// @param effectiveTime The timestamp when the new root will be effective
    event SuperBankHookMerkleRootProposed(address indexed hook, bytes32 newRoot, uint256 effectiveTime);

    /// @notice Emitted when the SuperBank hook Merkle root is updated.
    /// @param hook The address of the hook for which the Merkle root was updated.
    /// @param newRoot The new Merkle root.
    event SuperBankHookMerkleRootUpdated(address indexed hook, bytes32 newRoot);

    /// @notice Emitted when an active PPS oracle is initially set
    /// @param oracle The address of the set oracle
    event ActivePPSOracleSet(address indexed oracle);

    /// @notice Emitted when a new PPS oracle is proposed
    /// @param oracle The address of the proposed oracle
    /// @param effectiveTime The timestamp when the proposal will be effective
    event ActivePPSOracleProposed(address indexed oracle, uint256 effectiveTime);

    /// @notice Emitted when the active PPS oracle is changed
    /// @param oldOracle The address of the previous oracle
    /// @param newOracle The address of the new oracle
    event ActivePPSOracleChanged(address indexed oldOracle, address indexed newOracle);

    /// @notice Event emitted when manager takeovers are permanently frozen
    event ManagerTakeoversFrozen();

    /// @notice Emitted when a change to upkeep payments status is proposed
    /// @param enabled The proposed status (enabled/disabled)
    /// @param effectiveTime The timestamp when the status change will be effective
    event UpkeepPaymentsChangeProposed(bool enabled, uint256 effectiveTime);

    /// @notice Emitted when upkeep payments status is changed
    /// @param enabled The new status (enabled/disabled)
    event UpkeepPaymentsChanged(bool enabled);

    /// @notice Emitted when a new minimum staleness is proposed
    /// @param newMinStaleness The proposed minimum staleness value
    /// @param effectiveTime The timestamp when the new value will be effective
    event MinStalenessProposed(uint256 newMinStaleness, uint256 effectiveTime);

    /// @notice Emitted when the minimum staleness is changed
    /// @param newMinStaleness The new minimum staleness value
    event MinStalenessChanged(uint256 newMinStaleness);

    /// @notice Emitted when gas info is set
    /// @param oracle The address of the oracle
    /// @param gasIncreasePerEntryBatch The gas increase per entry for the oracle
    event GasInfoSet(address indexed oracle, uint256 gasIncreasePerEntryBatch);

    /*//////////////////////////////////////////////////////////////
                       CONTRACT REGISTRY FUNCTIONS
    //////////////////////////////////////////////////////////////*/
    /// @notice Sets an address in the registry
    /// @param key The key to associate with the address
    /// @param value The address value
    function setAddress(bytes32 key, address value) external;

    /*//////////////////////////////////////////////////////////////
                        PERIPHERY CONFIGURATIONS
    //////////////////////////////////////////////////////////////*/

    /// @notice Change the primary manager for a strategy
    /// @dev Only SuperGovernor can call this function directly
    /// @param strategy The strategy address
    /// @param newManager The new primary manager address
    /// @param feeRecipient The new fee recipient address
    function changePrimaryManager(address strategy, address newManager, address feeRecipient) external;

    /// @notice Resets the high-water mark PPS to the current PPS
    /// @dev Only SuperGovernor can call this function
    /// @dev If a manager is replaced while the strategy is below its
    /// previous HWM, the new manager would otherwise inherit a "loss" state and be unable to earn performance fees
    /// until the fee config are updated after the week timelock.
    /// @dev This function will reset the High Water Mark (vaultHwmPps) to the current PPS value for the given strategy
    /// @param strategy Address of the strategy to reset the high-water mark for
    function resetHighWaterMark(address strategy) external;

    /// @notice Permanently freezes all manager takeovers globally
    function freezeManagerTakeover() external;

    /// @notice Changes the hooks root update timelock duration
    /// @param newTimelock New timelock duration in seconds
    function changeHooksRootUpdateTimelock(uint256 newTimelock) external;

    /// @notice Proposes a new global hooks Merkle root
    /// @dev Only GOVERNOR_ROLE can call this function
    /// @param newRoot New Merkle root for global hooks validation
    function proposeGlobalHooksRoot(bytes32 newRoot) external;

    /// @notice Sets veto status for global hooks Merkle root
    /// @dev Only GUARDIAN_ROLE can call this function
    /// @param vetoed Whether to veto (true) or unveto (false) the global hooks root
    function setGlobalHooksRootVetoStatus(bool vetoed) external;

    /// @notice Sets veto status for a strategy-specific hooks Merkle root
    /// @dev Only GUARDIAN_ROLE can call this function
    /// @param strategy Address of the strategy to affect
    /// @param vetoed Whether to veto (true) or unveto (false) the strategy hooks root
    function setStrategyHooksRootVetoStatus(address strategy, bool vetoed) external;

    /// @notice Sets the maximum staleness period for all oracle feeds
    /// @param newMaxStaleness The new maximum staleness period in seconds
    function setOracleMaxStaleness(uint256 newMaxStaleness) external;

    /// @notice Sets the maximum staleness period for a specific oracle feed
    /// @param feed The address of the feed to set staleness for
    /// @param newMaxStaleness The new maximum staleness period in seconds
    function setOracleFeedMaxStaleness(address feed, uint256 newMaxStaleness) external;

    /// @notice Sets the maximum staleness periods for multiple oracle feeds in batch
    /// @param feeds The addresses of the feeds to set staleness for
    /// @param newMaxStalenessList The new maximum staleness periods in seconds
    function setOracleFeedMaxStalenessBatch(address[] calldata feeds, uint256[] calldata newMaxStalenessList) external;

    /// @notice Queues an oracle update for execution after timelock period
    /// @param bases Base asset addresses
    /// @param quotes Quote asset addresses
    /// @param providers Provider identifiers
    /// @param feeds Feed addresses
    function queueOracleUpdate(
        address[] calldata bases,
        address[] calldata quotes,
        bytes32[] calldata providers,
        address[] calldata feeds
    )
        external;

    /// @notice Executes a previously queued oracle update after timelock has expired
    function executeOracleUpdate() external;

    /// @notice Queues a provider removal for execution after timelock period
    /// @param providers The providers to remove
    function queueOracleProviderRemoval(bytes32[] calldata providers) external;

    /// @notice Sets uptime feeds for multiple data oracles in batch (Layer 2 only)
    /// @param dataOracles Array of data oracle addresses to set uptime feeds for
    /// @param uptimeOracles Array of uptime feed addresses to set
    /// @param gracePeriods Array of grace periods in seconds after sequencer restart
    function batchSetOracleUptimeFeed(
        address[] calldata dataOracles,
        address[] calldata uptimeOracles,
        uint256[] calldata gracePeriods
    )
        external;

    /*//////////////////////////////////////////////////////////////
                          HOOK MANAGEMENT
    //////////////////////////////////////////////////////////////*/
    /// @notice Registers a hook for use in SuperVaults
    /// @param hook The address of the hook to register
    function registerHook(address hook) external;

    /// @notice Unregisters a hook from the approved list
    /// @param hook The address of the hook to unregister
    function unregisterHook(address hook) external;

    /*//////////////////////////////////////////////////////////////
                        VALIDATOR MANAGEMENT
    //////////////////////////////////////////////////////////////*/
    /// @notice Sets the validator configuration for the protocol
    /// @dev This function atomically updates all validator configuration including quorum.
    ///      The entire validator set is replaced (not incrementally updated).
    ///      Version must be managed externally for cross-chain synchronization.
    ///      Quorum updates require providing the full validator list.
    /// @param version The version number for the configuration (for cross-chain sync)
    /// @param validators Array of validator addresses
    /// @param validatorPublicKeys Array of validator public keys for signature verification
    /// @param quorum The number of validators required for consensus
    /// @param offchainConfig Offchain configuration data (emitted but not stored)
    function setValidatorConfig(
        uint256 version,
        address[] calldata validators,
        bytes[] calldata validatorPublicKeys,
        uint256 quorum,
        bytes calldata offchainConfig
    )
        external;

    /*//////////////////////////////////////////////////////////////
                       PPS ORACLE MANAGEMENT
    //////////////////////////////////////////////////////////////*/
    /// @notice Sets the active PPS oracle (only if there is no active oracle yet)
    /// @param oracle Address of the PPS oracle to set as active
    function setActivePPSOracle(address oracle) external;

    /// @notice Proposes a new active PPS oracle (when there is already an active one)
    /// @param oracle Address of the PPS oracle to propose as active
    function proposeActivePPSOracle(address oracle) external;

    /// @notice Executes a previously proposed PPS oracle change after timelock has expired
    function executeActivePPSOracleChange() external;

    /*//////////////////////////////////////////////////////////////
                      REVENUE SHARE MANAGEMENT
    //////////////////////////////////////////////////////////////*/
    /// @notice Proposes a new fee value
    /// @param feeType The type of fee to propose
    /// @param value The proposed fee value (in basis points)
    function proposeFee(FeeType feeType, uint256 value) external;

    /// @notice Executes a previously proposed fee update after timelock has expired
    /// @param feeType The type of ffee to execute the update for
    function executeFeeUpdate(FeeType feeType) external;

    /// @notice Executes an upkeep claim on `SuperVaultAggregator`
    /// @param amount The amount to claim
    function executeUpkeepClaim(uint256 amount) external;

    /*//////////////////////////////////////////////////////////////
                      UPKEEP COST MANAGEMENT
    //////////////////////////////////////////////////////////////*/
    /// @notice Sets gas info for an oracle
    /// @param oracle The address of the oracle
    /// @param gasIncreasePerEntryBatch The gas increase per entry for the oracle
    function setGasInfo(address oracle, uint256 gasIncreasePerEntryBatch) external;

    /// @notice Proposes a change to upkeep payments enabled status
    /// @param enabled The proposed enabled status
    function proposeUpkeepPaymentsChange(bool enabled) external;

    /// @notice Executes a previously proposed upkeep payments status change
    function executeUpkeepPaymentsChange() external;

    /*//////////////////////////////////////////////////////////////
                        MIN STALENESS MANAGEMENT
    //////////////////////////////////////////////////////////////*/
    /// @notice Proposes a new minimum staleness value to prevent maxStaleness from being set too low
    /// @param newMinStaleness The proposed new minimum staleness value in seconds
    function proposeMinStaleness(uint256 newMinStaleness) external;

    /// @notice Executes a previously proposed minimum staleness change after timelock has expired
    function executeMinStalenessChange() external;

    /*//////////////////////////////////////////////////////////////
                           SUPERBANK HOOKS MGMT
    //////////////////////////////////////////////////////////////*/
    /// @notice Proposes a new Merkle root for a specific hook's allowed targets.
    /// @param hook The address of the hook to update the Merkle root for.
    /// @param proposedRoot The proposed new Merkle root.
    function proposeSuperBankHookMerkleRoot(address hook, bytes32 proposedRoot) external;

    /// @notice Executes a previously proposed Merkle root update for a specific hook if the effective time has passed.
    /// @param hook The address of the hook to execute the update for.
    function executeSuperBankHookMerkleRootUpdate(address hook) external;

    /*//////////////////////////////////////////////////////////////
                        EXTERNAL VIEW FUNCTIONS
    //////////////////////////////////////////////////////////////*/
    /// @notice The identifier of the role that grants access to critical governance functions
    function SUPER_GOVERNOR_ROLE() external view returns (bytes32);

    /// @notice The identifier of the role that grants access to daily operations like hooks and validators
    function GOVERNOR_ROLE() external view returns (bytes32);

    /// @notice The identifier of the role that grants access to bank management functions
    function BANK_MANAGER_ROLE() external view returns (bytes32);

    /// @notice The identifier of the role that grants access to gas management functions
    function GAS_MANAGER_ROLE() external view returns (bytes32);

    /// @notice The identifier of the role that grants access to oracle management functions
    function ORACLE_MANAGER_ROLE() external view returns (bytes32);

    /// @notice The identifier of the role that grants access to guardian functions
    function GUARDIAN_ROLE() external view returns (bytes32);

    /// @notice Gets an address from the registry
    /// @param key The key of the address to get
    /// @return The address value
    function getAddress(bytes32 key) external view returns (address);

    /// @notice Checks if manager takeovers are frozen
    /// @return True if manager takeovers are frozen, false otherwise
    function isManagerTakeoverFrozen() external view returns (bool);

    /// @notice Checks if a hook is registered
    /// @param hook The address of the hook to check
    /// @return True if the hook is registered, false otherwise
    function isHookRegistered(address hook) external view returns (bool);

    /// @notice Gets all registered hooks
    /// @return An array of registered hook addresses
    function getRegisteredHooks() external view returns (address[] memory);

    /// @notice Checks if an address is an approved validator
    /// @param validator The address to check
    /// @return True if the address is an approved validator, false otherwise
    function isValidator(address validator) external view returns (bool);

    /// @notice Checks if an address has the guardian role
    /// @param guardian Address to check
    /// @return true if the address has the GUARDIAN_ROLE
    function isGuardian(address guardian) external view returns (bool);

    /// @notice Returns the complete validator configuration
    /// @return version The current configuration version number
    /// @return validators Array of all registered validator addresses
    /// @return validatorPublicKeys Array of validator public keys
    /// @return quorum The number of validators required for consensus
    function getValidatorConfig()
        external
        view
        returns (uint256 version, address[] memory validators, bytes[] memory validatorPublicKeys, uint256 quorum);

    /// @notice Returns all registered validators
    /// @return List of validator addresses
    function getValidators() external view returns (address[] memory);

    /// @notice Returns the number of registered validators (O(1))
    function getValidatorsCount() external view returns (uint256);

    /// @notice Returns a validator address by index (0 … count-1)
    /// @param index The index into the validators set
    /// @return validator The validator address at the given index
    function getValidatorAt(uint256 index) external view returns (address validator);

    /// @notice Gets the proposed active PPS oracle and its effective time
    /// @return proposedOracle The proposed oracle address
    /// @return effectiveTime The timestamp when the proposed oracle will become effective
    function getProposedActivePPSOracle() external view returns (address proposedOracle, uint256 effectiveTime);

    /// @notice Gets the current quorum requirement for the active PPS Oracle
    /// @return The current quorum requirement
    function getPPSOracleQuorum() external view returns (uint256);

    /// @notice Gets the active PPS oracle
    /// @return The active PPS oracle address
    function getActivePPSOracle() external view returns (address);

    /// @notice Checks if an address is the current active PPS oracle
    /// @param oracle The address to check
    /// @return True if the address is the active PPS oracle, false otherwise
    function isActivePPSOracle(address oracle) external view returns (bool);

    /// @notice Gets the current fee value for a specific fee type
    /// @param feeType The type of fee to get
    /// @return The current fee value (in basis points)
    function getFee(FeeType feeType) external view returns (uint256);

    /// @notice Gets the current upkeep cost for an entry
    function getUpkeepCostPerSingleUpdate(address oracle_) external view returns (uint256);

    /// @notice Gets the proposed upkeep cost per update and its effective time
    /// @notice Gets the current minimum staleness value
    /// @return The current minimum staleness value in seconds
    function getMinStaleness() external view returns (uint256);

    /// @notice Gets the proposed minimum staleness value and its effective time
    /// @return proposedMinStaleness The proposed new minimum staleness value
    /// @return effectiveTime The timestamp when the new value will become effective
    function getProposedMinStaleness() external view returns (uint256 proposedMinStaleness, uint256 effectiveTime);

    /// @notice Returns the current Merkle root for a specific hook's allowed targets.
    /// @param hook The address of the hook to get the Merkle root for.
    /// @return The Merkle root for the hook's allowed targets.
    function getSuperBankHookMerkleRoot(address hook) external view returns (bytes32);

    /// @notice Gets the proposed Merkle root and its effective time for a specific hook.
    /// @param hook The address of the hook to get the proposed Merkle root for.
    /// @return proposedRoot The proposed Merkle root.
    /// @return effectiveTime The timestamp when the proposed root will become effective.
    function getProposedSuperBankHookMerkleRoot(address hook)
        external
        view
        returns (bytes32 proposedRoot, uint256 effectiveTime);

    /// @notice Checks if upkeep payments are currently enabled
    /// @return enabled True if upkeep payments are enabled
    function isUpkeepPaymentsEnabled() external view returns (bool);

    /// @notice Gets the proposed upkeep payments status and effective time
    /// @return enabled The proposed status
    /// @return effectiveTime The timestamp when the change becomes effective
    function getProposedUpkeepPaymentsStatus() external view returns (bool enabled, uint256 effectiveTime);

    /// @notice Gets the SUP strategy ID
    /// @return The ID of the SUP strategy vault
    function SUP_STRATEGY() external view returns (bytes32);

    /// @notice Gets the UP ID
    /// @return The ID of the UP token
    function UP() external view returns (bytes32);

    /// @notice Gets the UPKEEP_TOKEN ID
    /// @return The ID of the UPKEEP_TOKEN (used for upkeep payments, can be UP on mainnet or WETH/USDC on L2s)
    function UPKEEP_TOKEN() external view returns (bytes32);

    /// @notice Gets the Treasury ID
    /// @return The ID for the Treasury in the registry
    function TREASURY() external view returns (bytes32);

    /// @notice Gets the SuperOracle ID
    /// @return The ID for the SuperOracle in the registry
    function SUPER_ORACLE() external view returns (bytes32);

    /// @notice Gets the ECDSA PPS Oracle ID
    /// @return The ID for the ECDSA PPS Oracle in the registry
    function ECDSAPPSORACLE() external view returns (bytes32);

    /// @notice Gets the SuperVaultAggregator ID
    /// @return The ID for the SuperVaultAggregator in the registry
    function SUPER_VAULT_AGGREGATOR() external view returns (bytes32);

    /// @notice Gets the SuperBank ID
    /// @return The ID for the SuperBank in the registry
    function SUPER_BANK() external view returns (bytes32);

    /// @notice Gets the gas info for a specific SuperVault PPS Oracle
    /// @param oracle_ The address of the oracle to get gas info for
    /// @return The gas info for the specified oracle
    function getGasInfo(address oracle_) external view returns (uint256);

    /// @notice Cancels a previously proposed oracle provider removal
    function cancelOracleProviderRemoval() external;

    /// @notice Executes a previously proposed oracle provider removal after timelock has expired
    function executeOracleProviderRemoval() external;
}

// ======================================================================
// FILE: src/interfaces/SuperVault/ISuperVault.sol
// ======================================================================

// SPDX-License-Identifier: Apache-2.0
pragma solidity 0.8.30;

import { IERC4626 } from "@openzeppelin/contracts/interfaces/IERC4626.sol";
import { IERC7540Redeem, IERC7540CancelRedeem } from "../../vendor/standards/ERC7540/IERC7540Vault.sol";
import { IERC7741 } from "../../vendor/standards/ERC7741/IERC7741.sol";

/// @title ISuperVault
/// @notice Interface for SuperVault core contract that manages share minting
/// @author Superform Labs
interface ISuperVault is IERC4626, IERC7540Redeem, IERC7741, IERC7540CancelRedeem {
    /*//////////////////////////////////////////////////////////////
                                ERRORS
    //////////////////////////////////////////////////////////////*/
    error INVALID_ASSET();
    error ZERO_ADDRESS();
    error ZERO_AMOUNT();
    error INVALID_AMOUNT();
    error UNAUTHORIZED();
    error DEADLINE_PASSED();
    error INVALID_SIGNATURE();
    error NOT_IMPLEMENTED();
    error INVALID_NONCE();
    error INVALID_WITHDRAW_PRICE();
    error INVALID_CONTROLLER();
    error CONTROLLER_MUST_EQUAL_OWNER();
    error RECEIVER_MUST_EQUAL_CONTROLLER();
    error NOT_ENOUGH_ASSETS();
    error CANCELLATION_REDEEM_REQUEST_PENDING();

    /*//////////////////////////////////////////////////////////////
                                EVENTS
    //////////////////////////////////////////////////////////////*/

    event NonceInvalidated(address indexed sender, bytes32 indexed nonce);

    event SuperGovernorSet(address indexed superGovernor);

    event Initialized(address indexed asset, address indexed strategy, address indexed escrow);

    /*//////////////////////////////////////////////////////////////
                            EXTERNAL METHODS
    //////////////////////////////////////////////////////////////*/
    /// @notice Burn shares, only callable by strategy
    /// @param amount The amount of shares to burn
    function burnShares(uint256 amount) external;

    /// @notice Get the amount of assets escrowed
    function getEscrowedAssets() external view returns (uint256);

    /*//////////////////////////////////////////////////////////////
                            VIEW METHODS
    //////////////////////////////////////////////////////////////*/
    /// @notice Get the escrow address
    function escrow() external view returns (address);
}

// ======================================================================
// FILE: src/interfaces/SuperVault/ISuperVaultAggregator.sol
// ======================================================================

// SPDX-License-Identifier: Apache-2.0
pragma solidity 0.8.30;

import { EnumerableSet } from "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import { ISuperVaultStrategy } from "../SuperVault/ISuperVaultStrategy.sol";

/// @title ISuperVaultAggregator
/// @author Superform Labs
/// @notice Interface for the SuperVaultAggregator contract
/// @dev Registry and PPS oracle for all SuperVaults
interface ISuperVaultAggregator {
    /*//////////////////////////////////////////////////////////////
                                 STRUCTS
    //////////////////////////////////////////////////////////////*/
    /// @notice Arguments for forwarding PPS updates to avoid stack too deep errors
    /// @param strategy Address of the strategy being updated
    /// @param isExempt Whether the update is exempt from paying upkeep
    /// @param pps New price-per-share value
    /// @param timestamp Timestamp when the value was generated
    /// @param upkeepCost Amount of upkeep tokens to charge if not exempt
    struct PPSUpdateData {
        address strategy;
        bool isExempt;
        uint256 pps;
        uint256 timestamp;
        uint256 upkeepCost;
    }

    /// @notice Local variables for vault creation to avoid stack too deep
    /// @param currentNonce Current vault creation nonce
    /// @param salt Salt for deterministic proxy creation
    /// @param initialPPS Initial price-per-share value
    struct VaultCreationLocalVars {
        uint256 currentNonce;
        bytes32 salt;
        uint256 initialPPS;
    }

    /// @notice Strategy configuration and state data
    /// @param pps Current price-per-share value
    /// @param lastUpdateTimestamp Last time PPS was updated
    /// @param minUpdateInterval Minimum time interval between PPS updates
    /// @param maxStaleness Maximum time allowed between PPS updates before staleness
    /// @param isPaused Whether the strategy is paused
    /// @param mainManager Address of the primary manager controlling the strategy
    /// @param secondaryManagers Set of secondary managers that can manage the strategy
    struct StrategyData {
        uint256 pps; // Slot 0: 32 bytes
        uint256 lastUpdateTimestamp; // Slot 1: 32 bytes
        uint256 minUpdateInterval; // Slot 2: 32 bytes
        uint256 maxStaleness; // Slot 3: 32 bytes
        // Packed slot 4: saves 2 storage slots (~4000 gas per read)
        address mainManager; // 20 bytes
        bool ppsStale; // 1 byte
        bool isPaused; // 1 byte
        bool hooksRootVetoed; // 1 byte
        uint72 __gap1; // 9 bytes padding
        EnumerableSet.AddressSet secondaryManagers;
        // Manager change proposal data
        address proposedManager;
        address proposedFeeRecipient;
        uint256 managerChangeEffectiveTime;
        // Hook validation data
        bytes32 managerHooksRoot;
        // Hook root update proposal data
        bytes32 proposedHooksRoot;
        uint256 hooksRootEffectiveTime;
        // PPS Verification thresholds
        uint256 deviationThreshold; // Threshold for abs(new - current) / current
        // Banned global leaves mapping
        mapping(bytes32 => bool) bannedLeaves; // Mapping of leaf hash to banned status
        // Min update interval proposal data
        uint256 proposedMinUpdateInterval;
        uint256 minUpdateIntervalEffectiveTime;
        uint256 lastUnpauseTimestamp; // Timestamp of last unpause (for skim timelock)
    }

    /// @notice Parameters for creating a new SuperVault trio
    /// @param asset Address of the underlying asset
    /// @param name Name of the vault token
    /// @param symbol Symbol of the vault token
    /// @param mainManager Address of the vault mainManager
    /// @param minUpdateInterval Minimum time interval between PPS updates
    /// @param maxStaleness Maximum time allowed between PPS updates before staleness
    /// @param feeConfig Fee configuration for the vault
    struct VaultCreationParams {
        address asset;
        string name;
        string symbol;
        address mainManager;
        address[] secondaryManagers;
        uint256 minUpdateInterval;
        uint256 maxStaleness;
        ISuperVaultStrategy.FeeConfig feeConfig;
    }

    /// @notice Struct to hold cached hook validation state variables to avoid stack too deep
    /// @param globalHooksRootVetoed Cached global hooks root veto status
    /// @param globalHooksRoot Cached global hooks root
    /// @param strategyHooksRootVetoed Cached strategy hooks root veto status
    /// @param strategyRoot Cached strategy hooks root
    struct HookValidationCache {
        bool globalHooksRootVetoed;
        bytes32 globalHooksRoot;
        bool strategyHooksRootVetoed;
        bytes32 strategyRoot;
    }

    /// @notice Arguments for validating a hook to avoid stack too deep
    /// @param hookAddress Address of the hook contract
    /// @param hookArgs Encoded arguments for the hook operation
    /// @param globalProof Merkle proof for the global root
    /// @param strategyProof Merkle proof for the strategy-specific root
    struct ValidateHookArgs {
        address hookAddress;
        bytes hookArgs;
        bytes32[] globalProof;
        bytes32[] strategyProof;
    }

    /// @notice Two-step upkeep withdrawal request
    /// @param amount Amount to withdraw (full balance at time of request)
    /// @param effectiveTime When withdrawal can be executed (timestamp + 24h)
    struct UpkeepWithdrawalRequest {
        uint256 amount;
        uint256 effectiveTime;
    }

    /*//////////////////////////////////////////////////////////////
                                 EVENTS
    //////////////////////////////////////////////////////////////*/
    /// @notice Emitted when a new vault trio is created
    /// @param vault Address of the created SuperVault
    /// @param strategy Address of the created SuperVaultStrategy
    /// @param escrow Address of the created SuperVaultEscrow
    /// @param asset Address of the underlying asset
    /// @param name Name of the vault token
    /// @param symbol Symbol of the vault token
    /// @param nonce The nonce used for vault creation
    event VaultDeployed(
        address indexed vault,
        address indexed strategy,
        address escrow,
        address asset,
        string name,
        string symbol,
        uint256 indexed nonce
    );

    /// @notice Emitted when a PPS value is updated
    /// @param strategy Address of the strategy
    /// @param pps New price-per-share value
    /// @param timestamp Timestamp of the update
    event PPSUpdated(address indexed strategy, uint256 pps, uint256 timestamp);

    /// @notice Emitted when a strategy is paused due to missed updates
    /// @param strategy Address of the paused strategy
    event StrategyPaused(address indexed strategy);

    /// @notice Emitted when a strategy is unpaused
    /// @param strategy Address of the unpaused strategy
    event StrategyUnpaused(address indexed strategy);

    /// @notice Emitted when a strategy validation check fails but execution continues
    /// @param strategy Address of the strategy that failed the check
    /// @param reason String description of which check failed
    event StrategyCheckFailed(address indexed strategy, string reason);

    /// @notice Emitted when upkeep tokens are deposited
    /// @param strategy Address of the strategy
    /// @param depositor Address of the depositor
    /// @param amount Amount of upkeep tokens deposited
    event UpkeepDeposited(address indexed strategy, address indexed depositor, uint256 amount);

    /// @notice Emitted when upkeep tokens are withdrawn
    /// @param strategy Address of the strategy
    /// @param withdrawer Address of the withdrawer (main manager of the strategy)
    /// @param amount Amount of upkeep tokens withdrawn
    event UpkeepWithdrawn(address indexed strategy, address indexed withdrawer, uint256 amount);

    /// @notice Emitted when an upkeep withdrawal is proposed (start of 24h timelock)
    /// @param strategy Address of the strategy
    /// @param mainManager Address of the main manager who proposed the withdrawal
    /// @param amount Amount of upkeep tokens to withdraw
    /// @param effectiveTime Timestamp when withdrawal can be executed
    event UpkeepWithdrawalProposed(
        address indexed strategy, address indexed mainManager, uint256 amount, uint256 effectiveTime
    );

    /// @notice Emitted when a pending upkeep withdrawal is cancelled (e.g., during governance takeover)
    /// @param strategy Address of the strategy
    event UpkeepWithdrawalCancelled(address indexed strategy);

    /// @notice Emitted when upkeep tokens are spent for validation
    /// @param strategy Address of the strategy
    /// @param amount Amount of upkeep tokens spent
    /// @param balance Current balance of the strategy
    /// @param claimableUpkeep Amount of upkeep tokens claimable
    event UpkeepSpent(address indexed strategy, uint256 amount, uint256 balance, uint256 claimableUpkeep);

    /// @notice Emitted when a secondary manager is added to a strategy
    /// @param strategy Address of the strategy
    /// @param manager Address of the manager added
    event SecondaryManagerAdded(address indexed strategy, address indexed manager);

    /// @notice Emitted when a secondary manager is removed from a strategy
    /// @param strategy Address of the strategy
    /// @param manager Address of the manager removed
    event SecondaryManagerRemoved(address indexed strategy, address indexed manager);

    /// @notice Emitted when a primary manager is changed
    /// @param strategy Address of the strategy
    /// @param oldManager Address of the old primary manager
    /// @param newManager Address of the new primary manager
    /// @param feeRecipient Address of the new fee recipient
    event PrimaryManagerChanged(
        address indexed strategy, address indexed oldManager, address indexed newManager, address feeRecipient
    );

    /// @notice Emitted when a change to primary manager is proposed by a secondary manager
    /// @param strategy Address of the strategy
    /// @param proposer Address of the secondary manager who made the proposal
    /// @param newManager Address of the proposed new primary manager
    /// @param effectiveTime Timestamp when the proposal can be executed
    event PrimaryManagerChangeProposed(
        address indexed strategy,
        address indexed proposer,
        address indexed newManager,
        address feeRecipient,
        uint256 effectiveTime
    );

    /// @notice Emitted when a primary manager change proposal is cancelled
    /// @param strategy Address of the strategy
    /// @param cancelledManager Address of the manager that was proposed
    event PrimaryManagerChangeCancelled(address indexed strategy, address indexed cancelledManager);

    /// @notice Emitted when the High Water Mark for a strategy is reset to PPS
    /// @param strategy Address of the strategy
    /// @param newHWM The new High Water Mark (PPS)
    event HighWaterMarkReset(address indexed strategy, uint256 indexed newHWM);

    /// @notice Emitted when a PPS update is stale (Validators could get slashed for innactivity)
    /// @param strategy Address of the strategy
    /// @param updateAuthority Address of the update authority
    /// @param timestamp Timestamp of the stale update
    event StaleUpdate(address indexed strategy, address indexed updateAuthority, uint256 timestamp);

    /// @notice Emitted when the global hooks Merkle root is being updated
    /// @param root New root value
    /// @param effectiveTime Timestamp when the root becomes effective
    event GlobalHooksRootUpdateProposed(bytes32 indexed root, uint256 effectiveTime);

    /// @notice Emitted when the global hooks Merkle root is updated
    /// @param oldRoot Previous root value
    /// @param newRoot New root value
    event GlobalHooksRootUpdated(bytes32 indexed oldRoot, bytes32 newRoot);

    /// @notice Emitted when a strategy-specific hooks Merkle root is updated
    /// @param strategy Address of the strategy
    /// @param oldRoot Previous root value (may be zero)
    /// @param newRoot New root value
    event StrategyHooksRootUpdated(address indexed strategy, bytes32 oldRoot, bytes32 newRoot);

    /// @notice Emitted when a strategy-specific hooks Merkle root is proposed
    /// @param strategy Address of the strategy
    /// @param proposer Address of the account proposing the new root
    /// @param root New root value
    /// @param effectiveTime Timestamp when the root becomes effective
    event StrategyHooksRootUpdateProposed(
        address indexed strategy, address indexed proposer, bytes32 root, uint256 effectiveTime
    );

    /// @notice Emitted when a proposed global hooks root update is vetoed by SuperGovernor
    /// @param vetoed Whether the root is being vetoed (true) or unvetoed (false)
    /// @param root The root value affected
    event GlobalHooksRootVetoStatusChanged(bool vetoed, bytes32 indexed root);

    /// @notice Emitted when a strategy's hooks Merkle root veto status changes
    /// @param strategy Address of the strategy
    /// @param vetoed Whether the root is being vetoed (true) or unvetoed (false)
    /// @param root The root value affected
    event StrategyHooksRootVetoStatusChanged(address indexed strategy, bool vetoed, bytes32 indexed root);

    /// @notice Emitted when a strategy's deviation threshold is updated
    /// @param strategy Address of the strategy
    /// @param deviationThreshold New deviation threshold (abs diff/current)
    event DeviationThresholdUpdated(address indexed strategy, uint256 deviationThreshold);

    /// @notice Emitted when the hooks root update timelock is changed
    /// @param newTimelock New timelock duration in seconds
    event HooksRootUpdateTimelockChanged(uint256 newTimelock);

    /// @notice Emitted when global leaves status is changed for a strategy
    /// @param strategy Address of the strategy
    /// @param leaves Array of leaf hashes that had their status changed
    /// @param statuses Array of new banned statuses (true = banned, false = allowed)
    event GlobalLeavesStatusChanged(address indexed strategy, bytes32[] leaves, bool[] statuses);

    /// @notice Emitted when upkeep is claimed
    /// @param superBank Address of the superBank
    /// @param amount Amount of upkeep claimed
    event UpkeepClaimed(address indexed superBank, uint256 amount);

    /// @notice Emitted when PPS update is too frequent (before minUpdateInterval)
    event UpdateTooFrequent();

    /// @notice Emitted when PPS update timestamp is not monotonically increasing
    event TimestampNotMonotonic();

    /// @notice Emitted when PPS update is rejected due to stale signature after unpause
    event StaleSignatureAfterUnpause(
        address indexed strategy, uint256 signatureTimestamp, uint256 lastUnpauseTimestamp
    );

    /// @notice Emitted when a strategy does not have enough upkeep balance
    event InsufficientUpkeep(address indexed strategy, address indexed strategyAddr, uint256 balance, uint256 cost);

    /// @notice Emitted when the provided timestamp is too large
    event ProvidedTimestampExceedsBlockTimestamp(
        address indexed strategy, uint256 argsTimestamp, uint256 blockTimestamp
    );

    /// @notice Emitted when a strategy is unknown
    event UnknownStrategy(address indexed strategy);

    /// @notice Emitted when the old primary manager is removed from the strategy
    /// @dev This can happen because of reaching the max number of secondary managers
    event OldPrimaryManagerRemoved(address indexed strategy, address indexed oldManager);

    /// @notice Emitted when a strategy's PPS is stale
    event StrategyPPSStale(address indexed strategy);

    /// @notice Emitted when a strategy's PPS is reset
    event StrategyPPSStaleReset(address indexed strategy);

    /// @notice Emitted when PPS is updated after performance fee skimming
    /// @param strategy Address of the strategy
    /// @param oldPPS Previous price-per-share value
    /// @param newPPS New price-per-share value after fee deduction
    /// @param feeAmount Amount of fee skimmed that caused the PPS update
    /// @param timestamp Timestamp of the update
    event PPSUpdatedAfterSkim(
        address indexed strategy, uint256 oldPPS, uint256 newPPS, uint256 feeAmount, uint256 timestamp
    );

    /// @notice Emitted when a change to minUpdateInterval is proposed
    /// @param strategy Address of the strategy
    /// @param proposer Address of the manager who made the proposal
    /// @param newMinUpdateInterval The proposed new minimum update interval
    /// @param effectiveTime Timestamp when the proposal can be executed
    event MinUpdateIntervalChangeProposed(
        address indexed strategy, address indexed proposer, uint256 newMinUpdateInterval, uint256 effectiveTime
    );

    /// @notice Emitted when a minUpdateInterval change is executed
    /// @param strategy Address of the strategy
    /// @param oldMinUpdateInterval Previous minimum update interval
    /// @param newMinUpdateInterval New minimum update interval
    event MinUpdateIntervalChanged(
        address indexed strategy, uint256 oldMinUpdateInterval, uint256 newMinUpdateInterval
    );

    /// @notice Emitted when a minUpdateInterval change proposal is rejected due to validation failure
    /// @param strategy Address of the strategy
    /// @param proposedInterval The proposed interval that was rejected
    /// @param currentMaxStaleness The current maxStaleness value that caused rejection
    event MinUpdateIntervalChangeRejected(
        address indexed strategy, uint256 proposedInterval, uint256 currentMaxStaleness
    );

    /// @notice Emitted when a minUpdateInterval change proposal is cancelled
    /// @param strategy Address of the strategy
    /// @param cancelledInterval The proposed interval that was cancelled
    event MinUpdateIntervalChangeCancelled(address indexed strategy, uint256 cancelledInterval);

    /// @notice Emitted when a PPS update is rejected because strategy is paused
    /// @param strategy Address of the paused strategy
    event PPSUpdateRejectedStrategyPaused(address indexed strategy);

    /*///////////////////////////////////////////////////////////////
                                 ERRORS
    //////////////////////////////////////////////////////////////*/
    /// @notice Thrown when address provided is zero
    error ZERO_ADDRESS();
    /// @notice Thrown when amount provided is zero
    error ZERO_AMOUNT();
    /// @notice Thrown when vault creation parameters are invalid (empty name or symbol)
    error INVALID_VAULT_PARAMS();
    /// @notice Thrown when array length is zero
    error ZERO_ARRAY_LENGTH();
    /// @notice Thrown when array length is zero
    error ARRAY_LENGTH_MISMATCH();
    /// @notice Thrown when asset is invalid
    error INVALID_ASSET();
    /// @notice Thrown when insufficient upkeep balance for operation
    error INSUFFICIENT_UPKEEP();
    /// @notice Thrown when caller is not authorized
    error CALLER_NOT_AUTHORIZED();
    /// @notice Thrown when caller is not an approved PPS oracle
    error UNAUTHORIZED_PPS_ORACLE();
    /// @notice Thrown when caller is not authorized for update
    error UNAUTHORIZED_UPDATE_AUTHORITY();
    /// @notice Thrown when strategy address is not a known SuperVault strategy
    error UNKNOWN_STRATEGY();
    /// @notice Thrown when trying to unpause a strategy that is not paused
    error STRATEGY_NOT_PAUSED();
    /// @notice Thrown when trying to pause a strategy that is already paused
    error STRATEGY_ALREADY_PAUSED();
    /// @notice Thrown when array index is out of bounds
    error INDEX_OUT_OF_BOUNDS();
    /// @notice Thrown when attempting to add a manager that already exists
    error MANAGER_ALREADY_EXISTS();
    /// @notice Thrown when attempting to add a manager that is the primary manager
    error SECONDARY_MANAGER_CANNOT_BE_PRIMARY();
    /// @notice Thrown when there is no pending global hooks root change
    error NO_PENDING_GLOBAL_ROOT_CHANGE();
    /// @notice Thrown when attempting to execute a hooks root change before timelock has elapsed
    error ROOT_UPDATE_NOT_READY();
    /// @notice Thrown when a provided hook fails Merkle proof validation
    error HOOK_VALIDATION_FAILED();
    /// @notice Thrown when manager is not found
    error MANAGER_NOT_FOUND();
    /// @notice Thrown when there is no pending manager change proposal
    error NO_PENDING_MANAGER_CHANGE();
    /// @notice Thrown when caller is not authorized to update settings
    error UNAUTHORIZED_CALLER();
    /// @notice Thrown when the timelock for a proposed change has not expired
    error TIMELOCK_NOT_EXPIRED();
    /// @notice Thrown when an array length is invalid
    error INVALID_ARRAY_LENGTH();
    /// @notice Thrown when the provided maxStaleness is less than the minimum required staleness
    error MAX_STALENESS_TOO_LOW();
    /// @notice Thrown when arrays have mismatched lengths
    error MISMATCHED_ARRAY_LENGTHS();
    /// @notice Thrown when timestamp is invalid
    error INVALID_TIMESTAMP(uint256 index);
    /// @notice Thrown when too many secondary managers are added
    error TOO_MANY_SECONDARY_MANAGERS();
    /// @notice Thrown when upkeep withdrawal timelock has not passed yet
    error UPKEEP_WITHDRAWAL_NOT_READY();
    /// @notice Thrown when no pending upkeep withdrawal request exists
    error UPKEEP_WITHDRAWAL_NOT_FOUND();
    /// @notice PPS must decrease after skimming fees
    error PPS_MUST_DECREASE_AFTER_SKIM();
    /// @notice PPS deduction is larger than the maximum allowed fee rate
    error PPS_DEDUCTION_TOO_LARGE();
    /// @notice Thrown when no minUpdateInterval change proposal is pending
    error NO_PENDING_MIN_UPDATE_INTERVAL_CHANGE();
    /// @notice Thrown when minUpdateInterval >= maxStaleness
    error MIN_UPDATE_INTERVAL_TOO_HIGH();
    /// @notice Thrown when trying to update PPS while strategy is paused
    error STRATEGY_PAUSED();
    /// @notice Thrown when trying to update PPS while PPS is stale
    error PPS_STALE();

    /*//////////////////////////////////////////////////////////////
                            VAULT CREATION
    //////////////////////////////////////////////////////////////*/
    /// @notice Creates a new SuperVault trio (SuperVault, SuperVaultStrategy, SuperVaultEscrow)
    /// @param params Parameters for the new vault creation
    /// @return superVault Address of the created SuperVault
    /// @return strategy Address of the created SuperVaultStrategy
    /// @return escrow Address of the created SuperVaultEscrow
    function createVault(VaultCreationParams calldata params)
        external
        returns (address superVault, address strategy, address escrow);

    /*//////////////////////////////////////////////////////////////
                          PPS UPDATE FUNCTIONS
    //////////////////////////////////////////////////////////////*/
    /// @notice Arguments for batch forwarding PPS updates
    /// @param strategies Array of strategy addresses
    /// @param ppss Array of price-per-share values
    /// @param timestamps Array of timestamps when values were generated
    /// @param updateAuthority Address of the update authority
    struct ForwardPPSArgs {
        address[] strategies;
        uint256[] ppss;
        uint256[] timestamps;
        address updateAuthority;
    }

    /// @notice Batch forwards validated PPS updates to multiple strategies
    /// @param args Struct containing all batch PPS update parameters
    function forwardPPS(ForwardPPSArgs calldata args) external;

    /// @notice Updates PPS directly after performance fee skimming
    /// @dev Only callable by the strategy contract itself (msg.sender must be a registered strategy)
    /// @param newPPS New price-per-share value after fee deduction
    /// @param feeAmount Amount of fee that was skimmed (for event logging)
    function updatePPSAfterSkim(uint256 newPPS, uint256 feeAmount) external;

    /*//////////////////////////////////////////////////////////////
                        UPKEEP MANAGEMENT
    //////////////////////////////////////////////////////////////*/

    /// @notice Deposits upkeep tokens for strategy upkeep
    /// @dev The upkeep token is configurable per chain (UP on mainnet, WETH on L2s, etc.)
    /// @param strategy Address of the strategy to deposit for
    /// @param amount Amount of upkeep tokens to deposit
    function depositUpkeep(address strategy, uint256 amount) external;

    /// @notice Proposes withdrawal of upkeep tokens from strategy upkeep balance (starts 24h timelock)
    /// @dev Only the main manager can propose. Withdraws full balance at time of proposal.
    /// @param strategy Address of the strategy to withdraw from
    function proposeWithdrawUpkeep(address strategy) external;

    /// @notice Executes a pending upkeep withdrawal after 24h timelock
    /// @dev Anyone can execute, but funds go to the main manager of the strategy
    /// @param strategy Address of the strategy to withdraw from
    function executeWithdrawUpkeep(address strategy) external;

    /// @notice Claims upkeep tokens from the contract
    /// @param amount Amount of upkeep tokens to claim
    function claimUpkeep(uint256 amount) external;

    /*//////////////////////////////////////////////////////////////
                        PAUSE MANAGEMENT
    //////////////////////////////////////////////////////////////*/

    /// @notice Manually pauses a strategy
    /// @param strategy Address of the strategy to pause
    function pauseStrategy(address strategy) external;

    /// @notice Manually unpauses a strategy
    /// @param strategy Address of the strategy to unpause
    function unpauseStrategy(address strategy) external;

    /*//////////////////////////////////////////////////////////////
                       MANAGER MANAGEMENT FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /// @notice Adds a secondary manager to a strategy
    /// @notice A manager can either be secondary or primary
    /// @param strategy Address of the strategy
    /// @param manager Address of the manager to add
    function addSecondaryManager(address strategy, address manager) external;

    /// @notice Removes a secondary manager from a strategy
    /// @param strategy Address of the strategy
    /// @param manager Address of the manager to remove
    function removeSecondaryManager(address strategy, address manager) external;

    /// @notice Changes the primary manager of a strategy immediately (only callable by SuperGovernor)
    /// @notice A manager can either be secondary or primary
    /// @param strategy Address of the strategy
    /// @param newManager Address of the new primary manager
    /// @param feeRecipient Address of the new fee recipient
    function changePrimaryManager(address strategy, address newManager, address feeRecipient) external;

    /// @notice Proposes a change to the primary manager (callable by secondary managers)
    /// @notice A manager can either be secondary or primary
    /// @param strategy Address of the strategy
    /// @param newManager Address of the proposed new primary manager
    /// @param feeRecipient Address of the new fee recipient
    function proposeChangePrimaryManager(address strategy, address newManager, address feeRecipient) external;

    /// @notice Cancels a pending primary manager change proposal
    /// @dev Only the current primary manager can cancel the proposal
    /// @param strategy Address of the strategy
    function cancelChangePrimaryManager(address strategy) external;

    /// @notice Executes a previously proposed change to the primary manager after timelock
    /// @param strategy Address of the strategy
    function executeChangePrimaryManager(address strategy) external;

    /// @notice Resets the strategy's performance-fee high-water mark to PPS
    /// @dev Only callable by SuperGovernor
    /// @param strategy Address of the strategy
    function resetHighWaterMark(address strategy) external;

    /*//////////////////////////////////////////////////////////////
                        HOOK VALIDATION FUNCTIONS
    //////////////////////////////////////////////////////////////*/
    /// @notice Sets a new hooks root update timelock duration
    /// @param newTimelock The new timelock duration in seconds
    function setHooksRootUpdateTimelock(uint256 newTimelock) external;

    /// @notice Proposes an update to the global hooks Merkle root
    /// @dev Only callable by SUPER_GOVERNOR
    /// @param newRoot New Merkle root for global hooks validation
    function proposeGlobalHooksRoot(bytes32 newRoot) external;

    /// @notice Executes a previously proposed global hooks root update after timelock period
    /// @dev Can be called by anyone after the timelock period has elapsed
    function executeGlobalHooksRootUpdate() external;

    /// @notice Proposes an update to a strategy-specific hooks Merkle root
    /// @dev Only callable by the main manager for the strategy
    /// @param strategy Address of the strategy
    /// @param newRoot New Merkle root for strategy-specific hooks
    function proposeStrategyHooksRoot(address strategy, bytes32 newRoot) external;

    /// @notice Executes a previously proposed strategy hooks root update after timelock period
    /// @dev Can be called by anyone after the timelock period has elapsed
    /// @param strategy Address of the strategy whose root update to execute
    function executeStrategyHooksRootUpdate(address strategy) external;

    /// @notice Set veto status for the global hooks root
    /// @dev Only callable by SuperGovernor
    /// @param vetoed Whether to veto (true) or unveto (false) the global hooks root
    function setGlobalHooksRootVetoStatus(bool vetoed) external;

    /// @notice Set veto status for a strategy-specific hooks root
    /// @notice Sets the veto status of a strategy's hooks Merkle root
    /// @param strategy Address of the strategy
    /// @param vetoed Whether to veto (true) or unveto (false)
    function setStrategyHooksRootVetoStatus(address strategy, bool vetoed) external;

    /// @notice Updates the deviation threshold for a strategy
    /// @param strategy Address of the strategy
    /// @param deviationThreshold_ New deviation threshold (abs diff/current ratio, scaled by 1e18)
    function updateDeviationThreshold(address strategy, uint256 deviationThreshold_) external;

    /// @notice Changes the banned status of global leaves for a specific strategy
    /// @dev Only callable by the primary manager of the strategy
    /// @param leaves Array of leaf hashes to change status for
    /// @param statuses Array of banned statuses (true = banned, false = allowed)
    /// @param strategy Address of the strategy to change banned leaves for
    function changeGlobalLeavesStatus(bytes32[] memory leaves, bool[] memory statuses, address strategy) external;

    /*//////////////////////////////////////////////////////////////
                 MIN UPDATE INTERVAL MANAGEMENT
    //////////////////////////////////////////////////////////////*/

    /// @notice Proposes a change to the minimum update interval for a strategy
    /// @param strategy Address of the strategy
    /// @param newMinUpdateInterval The proposed new minimum update interval (in seconds)
    /// @dev Only the main manager can propose. Must be less than maxStaleness
    function proposeMinUpdateIntervalChange(address strategy, uint256 newMinUpdateInterval) external;

    /// @notice Executes a previously proposed minUpdateInterval change after timelock
    /// @param strategy Address of the strategy whose minUpdateInterval to update
    /// @dev Can be called by anyone after the timelock period has elapsed
    function executeMinUpdateIntervalChange(address strategy) external;

    /// @notice Cancels a pending minUpdateInterval change proposal
    /// @param strategy Address of the strategy
    /// @dev Only the main manager can cancel
    function cancelMinUpdateIntervalChange(address strategy) external;

    /// @notice Gets the proposed minUpdateInterval and effective time
    /// @param strategy Address of the strategy
    /// @return proposedInterval The proposed minimum update interval
    /// @return effectiveTime The timestamp when the proposed interval becomes effective
    function getProposedMinUpdateInterval(address strategy)
        external
        view
        returns (uint256 proposedInterval, uint256 effectiveTime);

    /*//////////////////////////////////////////////////////////////
                              VIEW FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /// @notice Returns the current vault creation nonce
    /// @dev This nonce is incremented every time a new vault is created
    /// @return Current vault creation nonce
    function getCurrentNonce() external view returns (uint256);

    /// @notice Check if the global hooks root is currently vetoed
    /// @return vetoed True if the global hooks root is vetoed
    function isGlobalHooksRootVetoed() external view returns (bool vetoed);

    /// @notice Check if a strategy hooks root is currently vetoed
    /// @param strategy Address of the strategy to check
    /// @return vetoed True if the strategy hooks root is vetoed
    function isStrategyHooksRootVetoed(address strategy) external view returns (bool vetoed);

    /// @notice Gets the current hooks root update timelock duration
    /// @return The current timelock duration in seconds
    function getHooksRootUpdateTimelock() external view returns (uint256);

    /// @notice Gets the current PPS (price-per-share) for a strategy
    /// @param strategy Address of the strategy
    /// @return pps Current price-per-share value
    function getPPS(address strategy) external view returns (uint256 pps);

    /// @notice Gets the last update timestamp for a strategy's PPS
    /// @param strategy Address of the strategy
    /// @return timestamp Last update timestamp
    function getLastUpdateTimestamp(address strategy) external view returns (uint256 timestamp);

    /// @notice Gets the minimum update interval for a strategy
    /// @param strategy Address of the strategy
    /// @return interval Minimum time between updates
    function getMinUpdateInterval(address strategy) external view returns (uint256 interval);

    /// @notice Gets the maximum staleness period for a strategy
    /// @param strategy Address of the strategy
    /// @return staleness Maximum time allowed between updates
    function getMaxStaleness(address strategy) external view returns (uint256 staleness);

    /// @notice Gets the deviation threshold for a strategy
    /// @param strategy Address of the strategy
    /// @return deviationThreshold The current deviation threshold (abs diff/current ratio, scaled by 1e18)
    function getDeviationThreshold(address strategy) external view returns (uint256 deviationThreshold);

    /// @notice Checks if a strategy is currently paused
    /// @param strategy Address of the strategy
    /// @return isPaused True if paused, false otherwise
    function isStrategyPaused(address strategy) external view returns (bool isPaused);

    /// @notice Checks if a strategy's PPS is stale
    /// @dev PPS is automatically set to stale when the strategy is paused due to
    ///      lack of upkeep payment in `SuperVaultAggregator`
    /// @param strategy Address of the strategy
    /// @return isStale True if stale, false otherwise
    function isPPSStale(address strategy) external view returns (bool isStale);

    /// @notice Gets the last unpause timestamp for a strategy
    /// @param strategy Address of the strategy
    /// @return timestamp Last unpause timestamp (0 if never unpaused)
    function getLastUnpauseTimestamp(address strategy) external view returns (uint256 timestamp);

    /// @notice Gets the current upkeep balance for a strategy
    /// @param strategy Address of the strategy
    /// @return balance Current upkeep balance in upkeep tokens
    function getUpkeepBalance(address strategy) external view returns (uint256 balance);

    /// @notice Gets the main manager for a strategy
    /// @param strategy Address of the strategy
    /// @return manager Address of the main manager
    function getMainManager(address strategy) external view returns (address manager);

    /// @notice Gets pending primary manager change details
    /// @param strategy Address of the strategy
    /// @return proposedManager Address of the proposed new manager (address(0) if no pending change)
    /// @return effectiveTime Timestamp when the change can be executed (0 if no pending change)
    function getPendingManagerChange(address strategy)
        external
        view
        returns (address proposedManager, uint256 effectiveTime);

    /// @notice Checks if an address is the main manager for a strategy
    /// @param manager Address of the manager
    /// @param strategy Address of the strategy
    /// @return isMainManager True if the address is the main manager, false otherwise
    function isMainManager(address manager, address strategy) external view returns (bool isMainManager);

    /// @notice Gets all secondary managers for a strategy
    /// @param strategy Address of the strategy
    /// @return secondaryManagers Array of secondary manager addresses
    function getSecondaryManagers(address strategy) external view returns (address[] memory secondaryManagers);

    /// @notice Checks if an address is a secondary manager for a strategy
    /// @param manager Address of the manager
    /// @param strategy Address of the strategy
    /// @return isSecondaryManager True if the address is a secondary manager, false otherwise
    function isSecondaryManager(address manager, address strategy) external view returns (bool isSecondaryManager);

    /// @dev Internal helper function to check if an address is any kind of manager (primary or secondary)
    /// @param manager Address to check
    /// @param strategy The strategy to check against
    /// @return True if the address is either the primary manager or a secondary manager
    function isAnyManager(address manager, address strategy) external view returns (bool);

    /// @notice Gets all created SuperVaults
    /// @return Array of SuperVault addresses
    function getAllSuperVaults() external view returns (address[] memory);

    /// @notice Gets a SuperVault by index
    /// @param index The index of the SuperVault
    /// @return The SuperVault address at the given index
    function superVaults(uint256 index) external view returns (address);

    /// @notice Gets all created SuperVaultStrategies
    /// @return Array of SuperVaultStrategy addresses
    function getAllSuperVaultStrategies() external view returns (address[] memory);

    /// @notice Gets a SuperVaultStrategy by index
    /// @param index The index of the SuperVaultStrategy
    /// @return The SuperVaultStrategy address at the given index
    function superVaultStrategies(uint256 index) external view returns (address);

    /// @notice Gets all created SuperVaultEscrows
    /// @return Array of SuperVaultEscrow addresses
    function getAllSuperVaultEscrows() external view returns (address[] memory);

    /// @notice Gets a SuperVaultEscrow by index
    /// @param index The index of the SuperVaultEscrow
    /// @return The SuperVaultEscrow address at the given index
    function superVaultEscrows(uint256 index) external view returns (address);

    /// @notice Validates a hook against both global and strategy-specific Merkle roots
    /// @param strategy Address of the strategy
    /// @param args Arguments for hook validation
    /// @return isValid True if the hook is valid against either root
    function validateHook(address strategy, ValidateHookArgs calldata args) external view returns (bool isValid);

    /// @notice Batch validates multiple hooks against Merkle roots
    /// @param strategy Address of the strategy
    /// @param argsArray Array of hook validation arguments
    /// @return validHooks Array of booleans indicating which hooks are valid
    function validateHooks(
        address strategy,
        ValidateHookArgs[] calldata argsArray
    )
        external
        view
        returns (bool[] memory validHooks);

    /// @notice Gets the current global hooks Merkle root
    /// @return root The current global hooks Merkle root
    function getGlobalHooksRoot() external view returns (bytes32 root);

    /// @notice Gets the proposed global hooks root and effective time
    /// @return root The proposed global hooks Merkle root
    /// @return effectiveTime The timestamp when the proposed root becomes effective
    function getProposedGlobalHooksRoot() external view returns (bytes32 root, uint256 effectiveTime);

    /// @notice Checks if the global hooks root is active (timelock period has passed)
    /// @return isActive True if the global hooks root is active
    function isGlobalHooksRootActive() external view returns (bool);

    /// @notice Gets the hooks Merkle root for a specific strategy
    /// @param strategy Address of the strategy
    /// @return root The strategy-specific hooks Merkle root
    function getStrategyHooksRoot(address strategy) external view returns (bytes32 root);

    /// @notice Gets the proposed strategy hooks root and effective time
    /// @param strategy Address of the strategy
    /// @return root The proposed strategy hooks Merkle root
    /// @return effectiveTime The timestamp when the proposed root becomes effective
    function getProposedStrategyHooksRoot(address strategy) external view returns (bytes32 root, uint256 effectiveTime);

    /// @notice Gets the total number of SuperVaults
    /// @return count The total number of SuperVaults
    function getSuperVaultsCount() external view returns (uint256);

    /// @notice Gets the total number of SuperVaultStrategies
    /// @return count The total number of SuperVaultStrategies
    function getSuperVaultStrategiesCount() external view returns (uint256);

    /// @notice Gets the total number of SuperVaultEscrows
    /// @return count The total number of SuperVaultEscrows
    function getSuperVaultEscrowsCount() external view returns (uint256);
}

// ======================================================================
// FILE: src/interfaces/SuperVault/ISuperVaultStrategy.sol
// ======================================================================

// SPDX-License-Identifier: Apache-2.0
pragma solidity 0.8.30;

import { ISuperHook, Execution } from "@superform-v2-core/src/interfaces/ISuperHook.sol";

/// @title ISuperVaultStrategy
/// @author Superform Labs
/// @notice Interface for SuperVault strategy implementation that manages yield sources and executes strategies
interface ISuperVaultStrategy {
    /*//////////////////////////////////////////////////////////////
                                ERRORS
    //////////////////////////////////////////////////////////////*/

    error ZERO_LENGTH();
    error INVALID_HOOK();
    error ZERO_ADDRESS();
    error ACCESS_DENIED();
    error INVALID_AMOUNT();
    error OPERATION_FAILED();
    error INVALID_TIMESTAMP();
    error REQUEST_NOT_FOUND();
    error INVALID_ARRAY_LENGTH();
    error ACTION_TYPE_DISALLOWED();
    error YIELD_SOURCE_NOT_FOUND();
    error YIELD_SOURCE_ALREADY_EXISTS();
    error INVALID_PERFORMANCE_FEE_BPS();
    error MINIMUM_OUTPUT_AMOUNT_ASSETS_NOT_MET();
    error MANAGER_NOT_AUTHORIZED();
    error INVALID_PPS();
    error INVALID_VAULT();
    error INVALID_ASSET();
    error OPERATIONS_BLOCKED_BY_VETO();
    error HOOK_VALIDATION_FAILED();
    error STRATEGY_PAUSED();
    error NO_PROPOSAL();
    error INVALID_REDEEM_SLIPPAGE_BPS();
    error CANCELLATION_REDEEM_REQUEST_PENDING();
    error STALE_PPS();
    error PPS_EXPIRED();
    error INVALID_PPS_EXPIRY_THRESHOLD();
    error BOUNDS_EXCEEDED(uint256 minAllowed, uint256 maxAllowed, uint256 actual);
    error INSUFFICIENT_LIQUIDITY();
    error CONTROLLERS_NOT_SORTED_UNIQUE();
    error ZERO_SHARE_FULFILLMENT_DISALLOWED();
    error NOT_ENOUGH_FREE_ASSETS_FEE_SKIM();
    error SKIM_TIMELOCK_ACTIVE();

    /*//////////////////////////////////////////////////////////////
                                EVENTS
    //////////////////////////////////////////////////////////////*/

    event SuperGovernorSet(address indexed superGovernor);
    event Initialized(address indexed vault);
    event YieldSourceAdded(address indexed source, address indexed oracle);
    event YieldSourceOracleUpdated(address indexed source, address indexed oldOracle, address indexed newOracle);
    event YieldSourceRemoved(address indexed source);

    event VaultFeeConfigUpdated(uint256 performanceFeeBps, uint256 managementFeeBps, address indexed recipient);
    event VaultFeeConfigProposed(
        uint256 performanceFeeBps, uint256 managementFeeBps, address indexed recipient, uint256 effectiveTime
    );
    event HooksExecuted(address[] hooks);
    event RedeemRequestPlaced(address indexed controller, address indexed owner, uint256 shares);
    event RedeemRequestClaimed(address indexed controller, address indexed receiver, uint256 assets, uint256 shares);
    event RedeemRequestsFulfilled(address[] controllers, uint256 processedShares, uint256 currentPPS);
    event RedeemRequestCanceled(address indexed controller, uint256 shares);
    event RedeemCancelRequestPlaced(address indexed controller);
    event RedeemCancelRequestFulfilled(address indexed controller, uint256 shares);
    event HookExecuted(
        address indexed hook,
        address indexed prevHook,
        address indexed targetedYieldSource,
        bool usePrevHookAmount,
        bytes hookCalldata
    );

    event PPSUpdated(uint256 newPPS, uint256 calculationBlock);
    event FeeRecipientChanged(address indexed newRecipient);
    event ManagementFeePaid(address indexed controller, address indexed recipient, uint256 feeAssets, uint256 feeBps);
    event DepositHandled(address indexed controller, uint256 assets, uint256 shares);
    event RedeemClaimable(
        address indexed controller, uint256 assetsFulfilled, uint256 sharesFulfilled, uint256 averageWithdrawPrice
    );
    event RedeemSlippageSet(address indexed controller, uint16 slippageBps);

    event PPSExpirationProposed(uint256 currentProposedThreshold, uint256 ppsExpiration, uint256 effectiveTime);
    event PPSExpiryThresholdUpdated(uint256 ppsExpiration);
    event PPSExpiryThresholdProposalCanceled();

    /// @notice Emitted when the high-water mark PPS is updated after fee collection
    /// @param newHwmPps The new high-water mark PPS (post-fee)
    /// @param previousPps The PPS before fee collection
    /// @param profit The total profit above HWM (in assets)
    /// @param feeCollected The total fee collected (in assets)
    event HWMPPSUpdated(uint256 newHwmPps, uint256 previousPps, uint256 profit, uint256 feeCollected);

    /// @notice Emitted when the high-water mark PPS is reset
    /// @param newHwmPps The new high-water mark PPS (post-fee)
    event HighWaterMarkReset(uint256 newHwmPps);

    /// @notice Emitted when performance fees are skimmed
    /// @param totalFee The total fee collected (in assets)
    /// @param superformFee The fee collected for Superform (in assets)
    event PerformanceFeeSkimmed(uint256 totalFee, uint256 superformFee);

    /*//////////////////////////////////////////////////////////////
                                STRUCTS
    //////////////////////////////////////////////////////////////*/

    struct FeeConfig {
        uint256 performanceFeeBps; // On profit at fulfill time
        uint256 managementFeeBps; // Entry fee on deposit/mint (asset-side)
        address recipient; // Fee sink (entry + performance)
    }

    /// @notice Structure for hook execution arguments
    struct ExecuteArgs {
        /// @notice Array of hooks to execute
        address[] hooks;
        /// @notice Calldata for each hook (must match hooks array length)
        bytes[] hookCalldata;
        /// @notice Expected output amounts or output shares
        uint256[] expectedAssetsOrSharesOut;
        /// @notice Global Merkle proofs for hook validation (must match hooks array length)
        bytes32[][] globalProofs;
        /// @notice Strategy-specific Merkle proofs for hook validation (must match hooks array length)
        bytes32[][] strategyProofs;
    }

    struct YieldSource {
        address oracle; // Associated yield source oracle address
    }

    /// @notice Comprehensive information about a yield source including its address and configuration
    struct YieldSourceInfo {
        address sourceAddress; // Address of the yield source
        address oracle; // Associated yield source oracle address
    }

    /// @notice State specific to asynchronous redeem requests
    struct SuperVaultState {
        // Cancellation
        bool pendingCancelRedeemRequest;
        uint256 claimableCancelRedeemRequest;
        // Redeems
        uint256 pendingRedeemRequest; // Shares requested
        uint256 maxWithdraw; // Assets claimable after fulfillment
        uint256 averageRequestPPS; // Average PPS at the time of redeem request
        uint256 averageWithdrawPrice; // Average price for claimable assets
        uint16 redeemSlippageBps; // User-defined slippage tolerance in BPS for redeem fulfillment
    }

    struct ExecutionVars {
        bool success;
        address targetedYieldSource;
        uint256 outAmount;
        ISuperHook hookContract;
        Execution[] executions;
    }

    struct FulfillRedeemVars {
        uint256 totalRequestedShares;
        uint256 totalNetAssetsOut;
        uint256 currentPPS;
        uint256 strategyBalance;
    }

    /*//////////////////////////////////////////////////////////////
                                ENUMS
    //////////////////////////////////////////////////////////////*/
    enum Operation {
        RedeemRequest,
        CancelRedeemRequest,
        ClaimCancelRedeem,
        ClaimRedeem
    }

    /// @notice Action types for yield source management
    enum YieldSourceAction {
        Add, // 0: Add a new yield source
        UpdateOracle, // 1: Update an existing yield source's oracle
        Remove // 2: Remove a yield source
    }

    /// @notice Action types for PPS expiration threshold management
    enum PPSExpirationAction {
        Propose, // 0: Propose a new PPS expiration threshold
        Execute, // 1: Execute the proposed threshold update
        Cancel // 2: Cancel the pending threshold proposal
    }

    /*//////////////////////////////////////////////////////////////
                        CORE STRATEGY OPERATIONS
    //////////////////////////////////////////////////////////////*/

    /// @notice Initializes the strategy with required parameters
    /// @param vaultAddress Address of the associated SuperVault
    /// @param feeConfigData Fee configuration
    function initialize(address vaultAddress, FeeConfig memory feeConfigData) external;

    /// @notice Execute a 4626 deposit by processing assets.
    /// @param controller The controller address
    /// @param assetsGross The amount of gross assets user has to deposit
    /// @return sharesNet The amount of net shares to mint
    function handleOperations4626Deposit(address controller, uint256 assetsGross) external returns (uint256 sharesNet);

    /// @notice Execute a 4626 mint by processing shares.
    /// @param controller The controller address
    /// @param sharesNet The amount of shares to mint
    /// @param assetsGross The amount of gross assets user has to deposit
    /// @param assetsNet The amount of net assets that strategy will receive
    function handleOperations4626Mint(
        address controller,
        uint256 sharesNet,
        uint256 assetsGross,
        uint256 assetsNet
    )
        external;

    /// @notice Quotes the amount of assets that will be received for a given amount of shares.
    /// @param shares The amount of shares to mint
    /// @return assetsGross The amount of gross assets that will be received
    /// @return assetsNet The amount of net assets that will be received
    function quoteMintAssetsGross(uint256 shares) external view returns (uint256 assetsGross, uint256 assetsNet);

    /// @notice Execute async redeem requests (redeem, cancel, claim).
    /// @param op The operation type (RedeemRequest, CancelRedeem, ClaimRedeem)
    /// @param controller The controller address
    /// @param receiver The receiver address
    /// @param amount The amount of assets or shares
    function handleOperations7540(Operation op, address controller, address receiver, uint256 amount) external;

    /*//////////////////////////////////////////////////////////////
                MANAGER EXTERNAL ACCESS FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /// @notice Execute hooks for general strategy management (rebalancing, etc.).
    /// @param args Execution arguments containing hooks, calldata, proofs, expectations.
    function executeHooks(ExecuteArgs calldata args) external payable;

    /// @notice Fulfills pending cancel redeem requests by making shares claimable
    /// @dev Processes all controllers with pending cancellation flags
    /// @dev Can only be called by authorized managers
    /// @param controllers Array of controller addresses with pending cancel requests
    function fulfillCancelRedeemRequests(address[] memory controllers) external;

    /// @notice Fulfills pending redeem requests with exact total assets per controller (pre-fee).
    /// @dev PRE: Off-chain sort/unique controllers. Call executeHooks(sum(totalAssetsOut)) first.
    /// @dev Social: totalAssetsOut[i] = theoreticalGross[i] (full). Selective: totalAssetsOut[i] < theoreticalGross[i].
    /// @dev NOTE: totalAssetsOut includes fees - actual net amount received is calculated internally after fee
    /// deduction. @param controllers Ordered/unique controllers with pending requests.
    /// @param totalAssetsOut Total PRE-FEE assets available for each controller[i] (from executeHooks).
    function fulfillRedeemRequests(address[] calldata controllers, uint256[] calldata totalAssetsOut) external;

    /// @notice Skim performance fees based on per-share High Water Mark (PPS-based)
    /// @dev Can be called by any manager when vault PPS has grown above HWM PPS
    /// @dev Uses PPS growth to calculate profit: (currentPPS - hwmPPS) * totalSupply / PRECISION
    /// @dev HWM is only updated during this function, not during deposits/redemptions
    function skimPerformanceFee() external;

    /*//////////////////////////////////////////////////////////////
                        YIELD SOURCE MANAGEMENT
    //////////////////////////////////////////////////////////////*/
    /// @notice Manage a single yield source: add, update oracle, or remove
    /// @param source Address of the yield source
    /// @param oracle Address of the oracle (used for adding/updating, ignored for removal)
    /// @param actionType Type of action (see YieldSourceAction enum)
    function manageYieldSource(address source, address oracle, YieldSourceAction actionType) external;

    /// @notice Batch manage multiple yield sources in a single transaction
    /// @param sources Array of yield source addresses
    /// @param oracles Array of oracle addresses (used for adding/updating, ignored for removal)
    /// @param actionTypes Array of action types (see YieldSourceAction enum)
    function manageYieldSources(
        address[] calldata sources,
        address[] calldata oracles,
        YieldSourceAction[] calldata actionTypes
    )
        external;

    /// @notice Change the fee recipient when the primary manager is changed
    /// @param newRecipient New fee recipient
    function changeFeeRecipient(address newRecipient) external;

    /// @notice Propose or execute a hook root update
    /// @notice Propose changes to vault-specific fee configuration
    /// @param performanceFeeBps New performance fee in basis points
    /// @param managementFeeBps New management fee in basis points
    /// @param recipient New fee recipient
    /// @dev IMPORTANT: Before executing the proposed update (via executeVaultFeeConfigUpdate),
    ///      manager should call skimPerformanceFee() to collect performance fees on existing profits
    ///      under the current fee structure to avoid losing profit or incorrect fee calculations.
    function proposeVaultFeeConfigUpdate(
        uint256 performanceFeeBps,
        uint256 managementFeeBps,
        address recipient
    )
        external;

    /// @notice Execute the proposed vault fee configuration update after timelock
    /// @dev IMPORTANT: Manager should call skimPerformanceFee() before executing this update
    ///      to collect performance fees on existing profits under the current fee structure.
    ///      Otherwise, profit earned under the old fee percentage will be lost or incorrectly calculated.
    /// @dev This function will reset the High Water Mark (vaultHwmPps) to the current PPS value
    ///      to avoid incorrect fee calculations with the new fee structure.
    function executeVaultFeeConfigUpdate() external;

    /// @notice Reset the high-water mark PPS to the current PPS
    /// @dev This function is only callable by Aggregator
    /// @dev This function will reset the High Water Mark (vaultHwmPps) to the current PPS value
    /// @param newHwmPps The new high-water mark PPS value
    function resetHighWaterMark(uint256 newHwmPps) external;

    /// @notice Manage PPS expiry threshold
    /// @param action Type of action (see PPSExpirationAction enum)
    /// @param ppsExpiration The new PPS expiry threshold
    function managePPSExpiration(PPSExpirationAction action, uint256 ppsExpiration) external;

    /*//////////////////////////////////////////////////////////////
                        ACCOUNTING MANAGEMENT
    //////////////////////////////////////////////////////////////*/

    /*//////////////////////////////////////////////////////////////
                        USER OPERATIONS
    //////////////////////////////////////////////////////////////*/
    /// @notice Set the slippage tolerance for all future redeem request fulfillments, until reset using this function
    /// @param slippageBps Slippage tolerance in basis points (e.g., 50 = 0.5%)
    function setRedeemSlippage(uint16 slippageBps) external;

    /*//////////////////////////////////////////////////////////////
                            VIEW FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /// @notice Get the vault info
    function getVaultInfo() external view returns (address vault, address asset, uint8 vaultDecimals);

    /// @notice Get the fee configurations
    function getConfigInfo() external view returns (FeeConfig memory feeConfig);

    /// @notice Returns the currently stored PPS value.
    function getStoredPPS() external view returns (uint256);

    /// @notice Get a yield source's configuration
    function getYieldSource(address source) external view returns (YieldSource memory);

    /// @notice Get all yield sources with their information
    /// @return Array of YieldSourceInfo structs
    function getYieldSourcesList() external view returns (YieldSourceInfo[] memory);

    /// @notice Get all yield source addresses
    /// @return Array of yield source addresses
    function getYieldSources() external view returns (address[] memory);

    /// @notice Get the count of yield sources
    /// @return Number of yield sources
    function getYieldSourcesCount() external view returns (uint256);

    /// @notice Check if a yield source exists
    /// @param source Address of the yield source
    /// @return True if the yield source exists
    function containsYieldSource(address source) external view returns (bool);

    /// @notice Get the average withdraw price for a controller
    /// @param controller The controller address
    /// @return averageWithdrawPrice The average withdraw price
    function getAverageWithdrawPrice(address controller) external view returns (uint256 averageWithdrawPrice);

    /// @notice Get the super vault state for a controller
    /// @param controller The controller address
    /// @return state The super vault state
    function getSuperVaultState(address controller) external view returns (SuperVaultState memory state);

    /// @notice Get the pending redeem request amount (shares) for a controller
    /// @param controller The controller address
    /// @return pendingShares The amount of shares pending redemption
    function pendingRedeemRequest(address controller) external view returns (uint256 pendingShares);

    /// @notice Get the pending cancellation for a redeem request for a controller
    /// @param controller The controller address
    /// @return isPending True if the redeem request is pending cancellation
    function pendingCancelRedeemRequest(address controller) external view returns (bool isPending);

    /// @notice Get the claimable cancel redeem request amount (shares) for a controller
    /// @param controller The controller address
    /// @return claimableShares The amount of shares claimable
    function claimableCancelRedeemRequest(address controller) external view returns (uint256 claimableShares);

    /// @notice Get the claimable withdraw amount (assets) for a controller
    /// @param controller The controller address
    /// @return claimableAssets The amount of assets claimable
    function claimableWithdraw(address controller) external view returns (uint256 claimableAssets);

    /// @notice Preview exact redeem fulfillment for off-chain calculation
    /// @param controller The controller address to preview
    /// @return shares Pending redeem shares
    /// @return theoreticalAssets Theoretical assets at current PPS
    /// @return minAssets Minimum acceptable assets (slippage floor)
    function previewExactRedeem(address controller)
        external
        view
        returns (uint256 shares, uint256 theoreticalAssets, uint256 minAssets);

    /// @notice Batch preview exact redeem fulfillment for multiple controllers
    /// @dev Efficiently batches multiple previewExactRedeem calls to reduce RPC overhead
    /// @param controllers Array of controller addresses to preview
    /// @return totalTheoAssets Total theoretical assets across all controllers
    /// @return individualAssets Array of theoretical assets per controller
    function previewExactRedeemBatch(address[] calldata controllers)
        external
        view
        returns (uint256 totalTheoAssets, uint256[] memory individualAssets);

    /// @notice Get the current unrealized profit above the High Water Mark
    /// @return profit Current profit above High Water Mark (in assets), 0 if no profit
    /// @dev Calculates based on PPS growth: (currentPPS - hwmPPS) * totalSupply / PRECISION
    /// @dev Returns 0 if totalSupply is 0 or currentPPS <= hwmPPS
    function vaultUnrealizedProfit() external view returns (uint256);
}

// ======================================================================
// FILE: src/libraries/AssetMetadataLib.sol
// ======================================================================

// SPDX-License-Identifier: Apache-2.0
pragma solidity 0.8.30;

import { IERC20Metadata } from "@openzeppelin/contracts/interfaces/IERC20Metadata.sol";

/// @title AssetMetadataLib
/// @author Superform Labs
/// @notice Library for handling ERC20 metadata operations
library AssetMetadataLib {
    error INVALID_ASSET();

    /**
     * @notice Attempts to fetch an asset's decimals
     * @dev A return value of false indicates that the attempt failed in some way
     * @param asset_ The address of the token to query
     * @return ok Boolean indicating if the operation was successful
     * @return assetDecimals The token's decimals if successful, 0 otherwise
     */
    function tryGetAssetDecimals(address asset_) internal view returns (bool ok, uint8 assetDecimals) {
        if (asset_.code.length == 0) revert INVALID_ASSET();

        (bool success, bytes memory encodedDecimals) =
            address(asset_).staticcall(abi.encodeCall(IERC20Metadata.decimals, ()));
        if (success && encodedDecimals.length >= 32) {
            uint256 returnedDecimals = abi.decode(encodedDecimals, (uint256));
            if (returnedDecimals <= type(uint8).max) {
                // casting to 'uint8' is safe because the returned decimals is a valid uint8
                // forge-lint: disable-next-line(unsafe-typecast)
                return (true, uint8(returnedDecimals));
            }
        }
        return (false, 0);
    }
}

// ======================================================================
// FILE: src/libraries/SuperVaultAccountingLib.sol
// ======================================================================

// SPDX-License-Identifier: Apache-2.0
pragma solidity 0.8.30;

import { Math } from "@openzeppelin/contracts/utils/math/Math.sol";

/// @title SuperVaultAccountingLib
/// @author Superform Labs
/// @notice Stateless library for SuperVault accounting calculations
/// @dev All functions are pure for easy auditing and testing
library SuperVaultAccountingLib {
    using Math for uint256;

    /*//////////////////////////////////////////////////////////////
                                ERRORS
    //////////////////////////////////////////////////////////////*/
    error INSUFFICIENT_LIQUIDITY();

    /*//////////////////////////////////////////////////////////////
                            CONSTANTS
    //////////////////////////////////////////////////////////////*/
    uint256 private constant BPS_PRECISION = 10_000;

    /*//////////////////////////////////////////////////////////////
                        ACCOUNTING FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /// @notice Compute minimum acceptable assets (slippage floor)
    /// @param requestedShares Number of shares being redeemed
    /// @param averageRequestPPS PPS at time of request (slippage anchor)
    /// @param slippageBps User's slippage tolerance in basis points
    /// @param precision Precision constant for PPS calculations
    /// @return minAssetsOut User's minimum acceptable assets
    function computeMinNetOut(
        uint256 requestedShares,
        uint256 averageRequestPPS,
        uint16 slippageBps,
        uint256 precision
    )
        internal
        pure
        returns (uint256 minAssetsOut)
    {
        uint256 expectedAssets = requestedShares.mulDiv(averageRequestPPS, precision, Math.Rounding.Floor);
        minAssetsOut = expectedAssets.mulDiv(BPS_PRECISION - slippageBps, BPS_PRECISION, Math.Rounding.Floor);
    }

    /// @notice Calculate updated average withdraw price
    /// @param currentMaxWithdraw Current max withdrawable assets
    /// @param currentAverageWithdrawPrice Current average withdraw price
    /// @param requestedShares New shares being fulfilled
    /// @param fulfilledAssets Assets received from fulfilling the redeem request
    /// @param precision Precision constant
    /// @return newAverageWithdrawPrice Updated average withdraw price
    function calculateAverageWithdrawPrice(
        uint256 currentMaxWithdraw,
        uint256 currentAverageWithdrawPrice,
        uint256 requestedShares,
        uint256 fulfilledAssets,
        uint256 precision
    )
        internal
        pure
        returns (uint256 newAverageWithdrawPrice)
    {
        uint256 existingShares;
        uint256 existingAssets;

        if (currentMaxWithdraw > 0 && currentAverageWithdrawPrice > 0) {
            existingShares = currentMaxWithdraw.mulDiv(precision, currentAverageWithdrawPrice, Math.Rounding.Floor);
            existingAssets = currentMaxWithdraw;
        }

        uint256 newTotalShares = existingShares + requestedShares;
        uint256 newTotalAssets = existingAssets + fulfilledAssets;

        if (newTotalShares > 0) {
            newAverageWithdrawPrice = newTotalAssets.mulDiv(precision, newTotalShares, Math.Rounding.Floor);
        }

        return newAverageWithdrawPrice;
    }
}

// ======================================================================
// FILE: src/SuperVault/SuperVaultStrategy.sol
// ======================================================================

// SPDX-License-Identifier: Apache-2.0
pragma solidity 0.8.30;

// External
import { Initializable } from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import { Math } from "@openzeppelin/contracts/utils/math/Math.sol";
import { ReentrancyGuardUpgradeable } from "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { IERC20Metadata } from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import { IERC4626 } from "@openzeppelin/contracts/interfaces/IERC4626.sol";
import { EnumerableSet } from "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import { LibSort } from "solady/utils/LibSort.sol";

// Core Interfaces
import {
    ISuperHook,
    ISuperHookResult,
    ISuperHookContextAware,
    ISuperHookInspector
} from "@superform-v2-core/src/interfaces/ISuperHook.sol";

// Periphery Interfaces
import { ISuperVault } from "../interfaces/SuperVault/ISuperVault.sol";
import { HookDataDecoder } from "@superform-v2-core/src/libraries/HookDataDecoder.sol";
import { ISuperVaultStrategy } from "../interfaces/SuperVault/ISuperVaultStrategy.sol";
import { ISuperGovernor, FeeType } from "../interfaces/ISuperGovernor.sol";
import { ISuperVaultAggregator } from "../interfaces/SuperVault/ISuperVaultAggregator.sol";
import { SuperVaultAccountingLib } from "../libraries/SuperVaultAccountingLib.sol";
import { AssetMetadataLib } from "../libraries/AssetMetadataLib.sol";

/// @title SuperVaultStrategy
/// @author Superform Labs
/// @notice Strategy implementation for SuperVault that executes strategies
contract SuperVaultStrategy is ISuperVaultStrategy, Initializable, ReentrancyGuardUpgradeable {
    using LibSort for address[];

    using EnumerableSet for EnumerableSet.AddressSet;
    using SafeERC20 for IERC20;
    using Math for uint256;
    using AssetMetadataLib for address;

    /*//////////////////////////////////////////////////////////////
                                CONSTANTS
    //////////////////////////////////////////////////////////////*/
    uint256 private constant BPS_PRECISION = 10_000;
    uint256 private constant MAX_PERFORMANCE_FEE = 5100; // 51% max performance fee

    /// @dev Default redeem slippage tolerance when user hasn't set their own (0.5%)
    uint16 public constant DEFAULT_REDEEM_SLIPPAGE_BPS = 50;

    /// @dev Minimum allowed staleness threshold for PPS updates (prevents too-frequent validation)
    uint256 private constant MIN_PPS_EXPIRATION_THRESHOLD = 1 minutes;

    /// @dev Maximum allowed staleness threshold for PPS updates (prevents indefinite stale data usage)
    uint256 private constant MAX_PPS_EXPIRATION_THRESHOLD = 1 weeks;

    /// @dev Timelock period after unpause during which performance fee skimming is disabled (rug prevention)
    uint256 private constant POST_UNPAUSE_SKIM_TIMELOCK = 12 hours;

    /// @dev Timelock duration for fee config and PPS expiration threshold updates
    uint256 private constant PROPOSAL_TIMELOCK = 1 weeks;

    uint256 public PRECISION; // Slot 0: 32 bytes

    /*//////////////////////////////////////////////////////////////
                                STATE
    //////////////////////////////////////////////////////////////*/
    // Packed slot 1: saves 1 storage slot
    address private _vault; // 20 bytes
    uint8 private _vaultDecimals; // 1 byte
    uint88 private __gap1; // 11 bytes padding

    // Packed slot 2
    IERC20 private _asset; // 20 bytes (address)
    uint96 private __gap2; // 12 bytes padding

    // Global configuration

    // Fee configuration
    FeeConfig private feeConfig; // Slots 3-5 (96 bytes: 2 uint256 + 1 address)
    FeeConfig private proposedFeeConfig;
    uint256 private feeConfigEffectiveTime;

    // Core contracts
    ISuperGovernor public immutable SUPER_GOVERNOR;

    // PPS expiry threshold
    uint256 public proposedPPSExpiryThreshold;
    uint256 public ppsExpiryThresholdEffectiveTime;
    uint256 public ppsExpiration;

    // Yield source configuration - simplified mapping from source to oracle
    mapping(address source => address oracle) private yieldSources;
    EnumerableSet.AddressSet private yieldSourcesList;

    // --- Global Vault High-Water Mark (PPS-based) ---
    /// @notice High-water mark price-per-share for performance fee calculation
    /// @dev Represents the PPS at which performance fees were last collected
    ///      Scaled by PRECISION (e.g., 1e6 for USDC vaults, 1e18 for 18-decimal vaults)
    ///      Updated during skimPerformanceFee() when fees are taken, and in executeVaultFeeConfigUpdate()
    uint256 public vaultHwmPps;

    // --- Redeem Request State ---
    mapping(address controller => SuperVaultState state) private superVaultState;

    constructor(address superGovernor_) {
        if (superGovernor_ == address(0)) revert ZERO_ADDRESS();

        SUPER_GOVERNOR = ISuperGovernor(superGovernor_);
        emit SuperGovernorSet(superGovernor_);
        _disableInitializers();
    }

    /// @notice Allows the contract to receive native ETH
    /// @dev Required for hooks that may send ETH back to the strategy
    receive() external payable { }

    /*//////////////////////////////////////////////////////////////
                            INITIALIZATION
    //////////////////////////////////////////////////////////////*/
    function initialize(address vaultAddress, FeeConfig memory feeConfigData) external initializer {
        if (vaultAddress == address(0)) revert INVALID_VAULT();
        // if either fee is configured, check if recipient is address (0), if it is revert with ZERO ADDRESS
        // if both fees are 0, no need check address (it just passes the if). Recipient can be configured later
        if (
            (feeConfigData.performanceFeeBps > 0 || feeConfigData.managementFeeBps > 0)
                && feeConfigData.recipient == address(0)
        ) revert ZERO_ADDRESS();
        if (feeConfigData.performanceFeeBps > MAX_PERFORMANCE_FEE) revert INVALID_PERFORMANCE_FEE_BPS();
        if (feeConfigData.managementFeeBps > BPS_PRECISION) revert INVALID_PERFORMANCE_FEE_BPS();

        __ReentrancyGuard_init();

        _vault = vaultAddress;
        _asset = IERC20(IERC4626(vaultAddress).asset());
        _vaultDecimals = IERC20Metadata(vaultAddress).decimals();
        PRECISION = 10 ** _vaultDecimals;
        feeConfig = feeConfigData;

        ppsExpiration = 1 days;

        // Initialize HWM to 1.0 using asset decimals (same as aggregator)
        // Get asset decimals the same way aggregator does
        (bool success, uint8 assetDecimals) = address(_asset).tryGetAssetDecimals();
        if (!success) revert INVALID_ASSET();
        vaultHwmPps = 10 ** assetDecimals; // 1.0 as initial PPS (matches aggregator)

        emit Initialized(_vault);
    }

    /*//////////////////////////////////////////////////////////////
                        CORE STRATEGY OPERATIONS
    //////////////////////////////////////////////////////////////*/

    /// @inheritdoc ISuperVaultStrategy
    function handleOperations4626Deposit(address controller, uint256 assetsGross) external returns (uint256 sharesNet) {
        _requireVault();

        if (assetsGross == 0) revert INVALID_AMOUNT();
        if (controller == address(0)) revert ZERO_ADDRESS();

        ISuperVaultAggregator aggregator = _getSuperVaultAggregator();

        if (aggregator.isGlobalHooksRootVetoed()) {
            revert OPERATIONS_BLOCKED_BY_VETO();
        }

        _validateStrategyState(aggregator);

        // Fee skim in ASSETS (asset-side entry fee)
        uint256 feeBps = feeConfig.managementFeeBps;
        uint256 feeAssets = feeBps == 0 ? 0 : Math.mulDiv(assetsGross, feeBps, BPS_PRECISION, Math.Rounding.Ceil);

        uint256 assetsNet = assetsGross - feeAssets;
        if (assetsNet == 0) revert INVALID_AMOUNT();

        if (feeAssets != 0) {
            address recipient = feeConfig.recipient;
            if (recipient == address(0)) revert ZERO_ADDRESS();
            _safeTokenTransfer(address(_asset), recipient, feeAssets);
            emit ManagementFeePaid(controller, recipient, feeAssets, feeBps);
        }

        // Compute shares on NET using current PPS
        uint256 pps = getStoredPPS();
        if (pps == 0) revert INVALID_PPS();
        sharesNet = Math.mulDiv(assetsNet, PRECISION, pps, Math.Rounding.Floor);
        if (sharesNet == 0) revert INVALID_AMOUNT();

        // No HWM update needed - deposits are PPS-neutral by design

        emit DepositHandled(controller, assetsNet, sharesNet);
        return sharesNet;
    }

    /// @inheritdoc ISuperVaultStrategy
    function handleOperations4626Mint(
        address controller,
        uint256 sharesNet,
        uint256 assetsGross,
        uint256 assetsNet
    )
        external
    {
        _requireVault();

        if (sharesNet == 0) revert INVALID_AMOUNT();
        if (controller == address(0)) revert ZERO_ADDRESS();

        ISuperVaultAggregator aggregator = _getSuperVaultAggregator();

        if (aggregator.isGlobalHooksRootVetoed()) {
            revert OPERATIONS_BLOCKED_BY_VETO();
        }

        _validateStrategyState(aggregator);

        uint256 feeBps = feeConfig.managementFeeBps;
        // Transfer fee if needed
        if (feeBps != 0) {
            uint256 feeAssets = assetsGross - assetsNet;
            if (feeAssets != 0) {
                address recipient = feeConfig.recipient;
                if (recipient == address(0)) revert ZERO_ADDRESS();
                _safeTokenTransfer(address(_asset), recipient, feeAssets);
                emit ManagementFeePaid(controller, recipient, feeAssets, feeBps);
            }
        }

        // No HWM update needed - mints are PPS-neutral by design

        emit DepositHandled(controller, assetsNet, sharesNet);
    }

    /// @inheritdoc ISuperVaultStrategy
    function quoteMintAssetsGross(uint256 shares) external view returns (uint256 assetsGross, uint256 assetsNet) {
        uint256 pps = getStoredPPS();
        if (pps == 0) revert INVALID_PPS();
        assetsNet = Math.mulDiv(shares, pps, PRECISION, Math.Rounding.Ceil);
        if (assetsNet == 0) revert INVALID_AMOUNT();

        uint256 feeBps = feeConfig.managementFeeBps;
        if (feeBps == 0) return (assetsNet, assetsNet);
        if (feeBps >= BPS_PRECISION) revert INVALID_AMOUNT(); // prevents div-by-zero (100% fee)
        assetsGross = Math.mulDiv(assetsNet, BPS_PRECISION, (BPS_PRECISION - feeBps), Math.Rounding.Ceil);
        return (assetsGross, assetsNet);
    }

    /// @inheritdoc ISuperVaultStrategy
    function handleOperations7540(Operation operation, address controller, address receiver, uint256 amount) external {
        _requireVault();
        ISuperVaultAggregator aggregator = _getSuperVaultAggregator();

        if (operation == Operation.RedeemRequest) {
            _validateStrategyState(aggregator);
            _handleRequestRedeem(controller, amount); // amount = shares
        } else if (operation == Operation.ClaimCancelRedeem) {
            _handleClaimCancelRedeem(controller);
        } else if (operation == Operation.ClaimRedeem) {
            _handleClaimRedeem(controller, receiver, amount); // amount = assets
        } else if (operation == Operation.CancelRedeemRequest) {
            _handleCancelRedeemRequest(controller);
        } else {
            revert ACTION_TYPE_DISALLOWED();
        }
    }

    /*//////////////////////////////////////////////////////////////
                MANAGER EXTERNAL ACCESS FUNCTIONS
    //////////////////////////////////////////////////////////////*/
    /// @inheritdoc ISuperVaultStrategy
    function executeHooks(ExecuteArgs calldata args) external payable nonReentrant {
        _isManager(msg.sender);

        uint256 hooksLength = args.hooks.length;
        if (hooksLength == 0) revert ZERO_LENGTH();
        if (args.hookCalldata.length != hooksLength) revert INVALID_ARRAY_LENGTH();
        if (args.expectedAssetsOrSharesOut.length != hooksLength) revert INVALID_ARRAY_LENGTH();
        if (args.globalProofs.length != hooksLength) revert INVALID_ARRAY_LENGTH();
        if (args.strategyProofs.length != hooksLength) revert INVALID_ARRAY_LENGTH();

        address prevHook;
        for (uint256 i; i < hooksLength; ++i) {
            address hook = args.hooks[i];
            if (!_isRegisteredHook(hook)) revert INVALID_HOOK();

            // Check if the hook was validated
            if (!_validateHook(hook, args.hookCalldata[i], args.globalProofs[i], args.strategyProofs[i])) {
                revert HOOK_VALIDATION_FAILED();
            }

            prevHook =
                _processSingleHookExecution(hook, prevHook, args.hookCalldata[i], args.expectedAssetsOrSharesOut[i]);
        }
        emit HooksExecuted(args.hooks);
    }

    /// @inheritdoc ISuperVaultStrategy
    function fulfillCancelRedeemRequests(address[] memory controllers) external nonReentrant {
        _isManager(msg.sender);

        uint256 controllersLength = controllers.length;
        if (controllersLength == 0) revert ZERO_LENGTH();

        for (uint256 i; i < controllersLength; ++i) {
            SuperVaultState storage state = superVaultState[controllers[i]];
            if (state.pendingCancelRedeemRequest) {
                state.claimableCancelRedeemRequest += state.pendingRedeemRequest;
                state.pendingRedeemRequest = 0;
                state.averageRequestPPS = 0;
                emit RedeemCancelRequestFulfilled(controllers[i], state.claimableCancelRedeemRequest);
            }
        }
    }

    /// @inheritdoc ISuperVaultStrategy
    function fulfillRedeemRequests(
        address[] calldata controllers,
        uint256[] calldata totalAssetsOut
    )
        external
        nonReentrant
    {
        _isManager(msg.sender);

        _validateStrategyState(_getSuperVaultAggregator());

        uint256 len = controllers.length;
        if (len == 0 || totalAssetsOut.length != len) revert INVALID_ARRAY_LENGTH();

        FulfillRedeemVars memory vars;
        vars.currentPPS = getStoredPPS();
        if (vars.currentPPS == 0) revert INVALID_PPS();

        // Process each controller with all validations in one loop
        for (uint256 i; i < len; ++i) {
            // Validate controllers are sorted and unique
            if (i > 0 && controllers[i] <= controllers[i - 1]) revert CONTROLLERS_NOT_SORTED_UNIQUE();

            // Load pending shares into memory and accumulate total
            uint256 pendingShares = superVaultState[controllers[i]].pendingRedeemRequest;
            vars.totalRequestedShares += pendingShares;

            // Disallow fulfillment for controllers with zero pending shares
            if (pendingShares == 0) revert ZERO_SHARE_FULFILLMENT_DISALLOWED();

            // Process fulfillment and accumulate assets
            _processExactFulfillmentBatch(controllers[i], totalAssetsOut[i], vars.currentPPS, pendingShares);
            vars.totalNetAssetsOut += totalAssetsOut[i];
        }

        // Balance check (no fees expected)
        vars.strategyBalance = _getTokenBalance(address(_asset), address(this));
        if (vars.strategyBalance < vars.totalNetAssetsOut) {
            revert INSUFFICIENT_LIQUIDITY();
        }

        // Burn shares
        ISuperVault(_vault).burnShares(vars.totalRequestedShares);

        // Transfer net assets to escrow
        if (vars.totalNetAssetsOut > 0) {
            _asset.safeTransfer(ISuperVault(_vault).escrow(), vars.totalNetAssetsOut);
        }

        emit RedeemRequestsFulfilled(controllers, vars.totalRequestedShares, vars.currentPPS);
    }

    /// @notice Skim performance fees based on per-share High Water Mark
    /// @dev Can be called by any manager when vault PPS has grown above HWM
    /// @dev Uses PPS-based HWM which eliminates redemption-related vulnerabilities
    function skimPerformanceFee() external nonReentrant {
        _isManager(msg.sender);

        ISuperVaultAggregator aggregator = _getSuperVaultAggregator();
        _validateStrategyState(aggregator);

        // Prevent skim for 12 hours after unpause
        // This timelock gives a detection window for potential abuse of fee skimming
        // post unpausing with an abnormal PPS update
        uint256 lastUnpause = aggregator.getLastUnpauseTimestamp(address(this));
        if (block.timestamp < lastUnpause + POST_UNPAUSE_SKIM_TIMELOCK) {
            revert SKIM_TIMELOCK_ACTIVE();
        }

        IERC4626 vault = IERC4626(_vault);
        uint256 totalSupplyLocal = vault.totalSupply();

        // Early return if no supply - cannot calculate PPS or collect fees
        if (totalSupplyLocal == 0) return;

        // Get current PPS from aggregator
        uint256 currentPPS = aggregator.getPPS(address(this));
        if (currentPPS == 0) revert INVALID_PPS();

        // Get the high-water mark PPS (baseline for fee calculation)
        uint256 hwmPps = vaultHwmPps;

        // Check if there's any per-share growth above HWM
        if (currentPPS <= hwmPps) {
            // No growth above HWM, no fee to collect
            return;
        }

        // Calculate PPS growth above HWM
        uint256 ppsGrowth = currentPPS - hwmPps;

        // Calculate total profit: (PPS growth) * (total shares) / PRECISION
        // This represents the total assets gained above the high-water mark
        uint256 profit = Math.mulDiv(ppsGrowth, totalSupplyLocal, PRECISION, Math.Rounding.Floor);

        // Safety check: profit must be non-zero to collect fees
        if (profit == 0) return;

        // Calculate fee as percentage of profit
        uint256 fee = Math.mulDiv(profit, feeConfig.performanceFeeBps, BPS_PRECISION, Math.Rounding.Ceil);

        // Edge case: profit exists but fee rounds to zero
        if (fee == 0) return;

        // Split fee between Superform treasury and strategy recipient
        uint256 sfFee =
            Math.mulDiv(fee, SUPER_GOVERNOR.getFee(FeeType.PERFORMANCE_FEE_SHARE), BPS_PRECISION, Math.Rounding.Floor);
        uint256 recipientFee = fee - sfFee;

        // Check if strategy has sufficient liquid assets for fee transfer
        if (_getTokenBalance(address(_asset), address(this)) < fee) revert NOT_ENOUGH_FREE_ASSETS_FEE_SKIM();

        // Transfer fees to recipients
        _safeTokenTransfer(address(_asset), SUPER_GOVERNOR.getAddress(SUPER_GOVERNOR.TREASURY()), sfFee);
        _safeTokenTransfer(address(_asset), feeConfig.recipient, recipientFee);

        emit PerformanceFeeSkimmed(fee, sfFee);

        // Calculate the new PPS after fee extraction
        // Fee extraction reduces vault assets while shares stay constant, lowering PPS
        uint256 ppsReduction = Math.mulDiv(fee, PRECISION, totalSupplyLocal, Math.Rounding.Floor);

        // Safety check: ensure reduction doesn't crash PPS to zero
        if (ppsReduction >= currentPPS) revert INVALID_PPS();

        uint256 newPPS = currentPPS - ppsReduction;

        // Safety check: new PPS must be positive
        if (newPPS == 0) revert INVALID_PPS();

        // Update HWM to the new post-fee PPS
        // This becomes the new baseline for future fee calculations
        vaultHwmPps = newPPS;

        emit HWMPPSUpdated(newPPS, currentPPS, profit, fee);

        // Update PPS in aggregator to reflect fee extraction
        aggregator.updatePPSAfterSkim(newPPS, fee);
    }

    /*//////////////////////////////////////////////////////////////
                        YIELD SOURCE MANAGEMENT
    //////////////////////////////////////////////////////////////*/
    /// @inheritdoc ISuperVaultStrategy
    function manageYieldSource(address source, address oracle, YieldSourceAction actionType) external {
        _isPrimaryManager(msg.sender);
        _manageYieldSource(source, oracle, actionType);
    }

    /// @inheritdoc ISuperVaultStrategy
    function manageYieldSources(
        address[] calldata sources,
        address[] calldata oracles,
        YieldSourceAction[] calldata actionTypes
    )
        external
    {
        _isPrimaryManager(msg.sender);

        uint256 length = sources.length;
        if (length == 0) revert ZERO_LENGTH();
        if (oracles.length != length) revert INVALID_ARRAY_LENGTH();
        if (actionTypes.length != length) revert INVALID_ARRAY_LENGTH();

        for (uint256 i; i < length; ++i) {
            _manageYieldSource(sources[i], oracles[i], actionTypes[i]);
        }
    }

    /// @inheritdoc ISuperVaultStrategy
    function changeFeeRecipient(address newRecipient) external {
        if (msg.sender != address(_getSuperVaultAggregator())) revert ACCESS_DENIED();

        feeConfig.recipient = newRecipient;
        emit FeeRecipientChanged(newRecipient);
    }

    /// @inheritdoc ISuperVaultStrategy
    function proposeVaultFeeConfigUpdate(
        uint256 performanceFeeBps,
        uint256 managementFeeBps,
        address recipient
    )
        external
    {
        _isPrimaryManager(msg.sender);

        if (performanceFeeBps > MAX_PERFORMANCE_FEE) revert INVALID_PERFORMANCE_FEE_BPS();
        if (managementFeeBps > BPS_PRECISION) revert INVALID_PERFORMANCE_FEE_BPS();
        if (recipient == address(0)) revert ZERO_ADDRESS();
        proposedFeeConfig = FeeConfig({
            performanceFeeBps: performanceFeeBps, managementFeeBps: managementFeeBps, recipient: recipient
        });
        feeConfigEffectiveTime = block.timestamp + PROPOSAL_TIMELOCK;
        emit VaultFeeConfigProposed(performanceFeeBps, managementFeeBps, recipient, feeConfigEffectiveTime);
    }

    /// @inheritdoc ISuperVaultStrategy
    function executeVaultFeeConfigUpdate() external {
        _isPrimaryManager(msg.sender);

        if (block.timestamp < feeConfigEffectiveTime) revert INVALID_TIMESTAMP();
        if (proposedFeeConfig.recipient == address(0)) revert ZERO_ADDRESS();

        // Get current PPS before updating fee config
        uint256 currentPPS = getStoredPPS();
        uint256 oldHwmPps = vaultHwmPps;

        // Update fee config
        feeConfig = proposedFeeConfig;
        delete proposedFeeConfig;
        feeConfigEffectiveTime = 0;

        // Reset HWM PPS to current PPS to avoid incorrect fee calculations with new fee structure
        vaultHwmPps = currentPPS;

        emit VaultFeeConfigUpdated(feeConfig.performanceFeeBps, feeConfig.managementFeeBps, feeConfig.recipient);
        emit HWMPPSUpdated(currentPPS, oldHwmPps, 0, 0);
    }

    /// @inheritdoc ISuperVaultStrategy
    function resetHighWaterMark(uint256 newHwmPps) external {
        if (msg.sender != address(_getSuperVaultAggregator())) revert ACCESS_DENIED();

        if (newHwmPps == 0) revert INVALID_PPS();

        vaultHwmPps = newHwmPps;

        emit HighWaterMarkReset(newHwmPps);
    }

    /// @inheritdoc ISuperVaultStrategy
    function managePPSExpiration(PPSExpirationAction action, uint256 staleness_) external {
        if (action == PPSExpirationAction.Propose) {
            _proposePPSExpiration(staleness_);
        } else if (action == PPSExpirationAction.Execute) {
            _updatePPSExpiration();
        } else if (action == PPSExpirationAction.Cancel) {
            _cancelPPSExpirationProposalUpdate();
        }
    }

    /*//////////////////////////////////////////////////////////////
                        USER OPERATIONS
    //////////////////////////////////////////////////////////////*/
    /// @inheritdoc ISuperVaultStrategy
    function setRedeemSlippage(uint16 slippageBps) external {
        if (slippageBps > BPS_PRECISION) revert INVALID_REDEEM_SLIPPAGE_BPS();

        superVaultState[msg.sender].redeemSlippageBps = slippageBps;

        emit RedeemSlippageSet(msg.sender, slippageBps);
    }

    /*//////////////////////////////////////////////////////////////
                            VIEW FUNCTIONS
    //////////////////////////////////////////////////////////////*/
    /// @inheritdoc ISuperVaultStrategy
    function getVaultInfo() external view returns (address vault, address asset, uint8 vaultDecimals) {
        vault = _vault;
        asset = address(_asset);
        vaultDecimals = _vaultDecimals;
    }

    /// @inheritdoc ISuperVaultStrategy
    function getConfigInfo() external view returns (FeeConfig memory feeConfig_) {
        feeConfig_ = feeConfig;
    }

    /// @inheritdoc ISuperVaultStrategy
    function getStoredPPS() public view returns (uint256) {
        return _getSuperVaultAggregator().getPPS(address(this));
    }

    /// @inheritdoc ISuperVaultStrategy
    function getSuperVaultState(address controller) external view returns (SuperVaultState memory state) {
        return superVaultState[controller];
    }

    /// @inheritdoc ISuperVaultStrategy
    function getYieldSource(address source) external view returns (YieldSource memory) {
        return YieldSource({ oracle: yieldSources[source] });
    }

    /// @inheritdoc ISuperVaultStrategy
    function getYieldSourcesList() external view returns (YieldSourceInfo[] memory) {
        uint256 length = yieldSourcesList.length();
        YieldSourceInfo[] memory sourcesInfo = new YieldSourceInfo[](length);

        for (uint256 i; i < length; ++i) {
            address sourceAddress = yieldSourcesList.at(i);
            address oracle = yieldSources[sourceAddress];

            sourcesInfo[i] = YieldSourceInfo({ sourceAddress: sourceAddress, oracle: oracle });
        }

        return sourcesInfo;
    }

    /// @inheritdoc ISuperVaultStrategy
    function getYieldSources() external view returns (address[] memory) {
        return yieldSourcesList.values();
    }

    /// @inheritdoc ISuperVaultStrategy
    function getYieldSourcesCount() external view returns (uint256) {
        return yieldSourcesList.length();
    }

    /// @notice Get the current unrealized profit above the High Water Mark
    /// @return profit Current profit above High Water Mark (in assets), 0 if no profit
    /// @dev Calculates based on PPS growth: (currentPPS - hwmPPS) * totalSupply / PRECISION
    function vaultUnrealizedProfit() external view returns (uint256) {
        IERC4626 vault = IERC4626(_vault);
        uint256 totalSupplyLocal = vault.totalSupply();

        // No profit if no shares exist
        if (totalSupplyLocal == 0) return 0;

        uint256 currentPPS = _getSuperVaultAggregator().getPPS(address(this));

        // No profit if current PPS is at or below HWM
        if (currentPPS <= vaultHwmPps) return 0;

        // Calculate profit as: (PPS growth) * (shares) / PRECISION
        uint256 ppsGrowth = currentPPS - vaultHwmPps;
        return Math.mulDiv(ppsGrowth, totalSupplyLocal, PRECISION, Math.Rounding.Floor);
    }

    /// @inheritdoc ISuperVaultStrategy
    function containsYieldSource(address source) external view returns (bool) {
        return yieldSourcesList.contains(source);
    }

    /// @inheritdoc ISuperVaultStrategy
    function pendingRedeemRequest(address controller) external view returns (uint256 pendingShares) {
        return superVaultState[controller].pendingRedeemRequest;
    }

    /// @inheritdoc ISuperVaultStrategy
    function claimableWithdraw(address controller) external view returns (uint256 claimableAssets) {
        return superVaultState[controller].maxWithdraw;
    }

    /// @inheritdoc ISuperVaultStrategy
    function pendingCancelRedeemRequest(address controller) external view returns (bool) {
        return superVaultState[controller].pendingCancelRedeemRequest;
    }

    /// @inheritdoc ISuperVaultStrategy
    function claimableCancelRedeemRequest(address controller) external view returns (uint256 claimableShares) {
        if (!superVaultState[controller].pendingCancelRedeemRequest) return 0;
        return superVaultState[controller].claimableCancelRedeemRequest;
    }

    /// @inheritdoc ISuperVaultStrategy
    function getAverageWithdrawPrice(address controller) external view returns (uint256 averageWithdrawPrice) {
        return superVaultState[controller].averageWithdrawPrice;
    }

    /// @inheritdoc ISuperVaultStrategy
    function previewExactRedeem(address controller)
        external
        view
        returns (uint256 shares, uint256 theoreticalAssets, uint256 minAssets)
    {
        SuperVaultState memory state = superVaultState[controller];
        shares = state.pendingRedeemRequest;

        if (shares == 0) return (0, 0, 0);

        uint256 pps = getStoredPPS();
        theoreticalAssets = shares.mulDiv(pps, PRECISION, Math.Rounding.Floor);

        uint16 slippageBps = state.redeemSlippageBps > 0 ? state.redeemSlippageBps : DEFAULT_REDEEM_SLIPPAGE_BPS;

        minAssets = SuperVaultAccountingLib.computeMinNetOut(shares, state.averageRequestPPS, slippageBps, PRECISION);

        return (shares, theoreticalAssets, minAssets);
    }

    /// @inheritdoc ISuperVaultStrategy
    function previewExactRedeemBatch(address[] calldata controllers)
        external
        view
        returns (uint256 totalTheoAssets, uint256[] memory individualAssets)
    {
        if (controllers.length == 0) revert ZERO_LENGTH();

        individualAssets = new uint256[](controllers.length);
        totalTheoAssets = 0;

        for (uint256 i = 0; i < controllers.length; i++) {
            // Get theoretical assets for this controller
            (, uint256 theoreticalAssets,) = this.previewExactRedeem(controllers[i]);
            individualAssets[i] = theoreticalAssets;
            totalTheoAssets += theoreticalAssets;
        }

        return (totalTheoAssets, individualAssets);
    }

    /*//////////////////////////////////////////////////////////////
                        INTERNAL FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /// @notice Process a single hook execution
    /// @param hook Hook address
    /// @param prevHook Previous hook address
    /// @param hookCalldata Hook calldata
    /// @param expectedAssetsOrSharesOut Expected assets or shares output
    /// @return processedHook Processed hook address
    function _processSingleHookExecution(
        address hook,
        address prevHook,
        bytes memory hookCalldata,
        uint256 expectedAssetsOrSharesOut
    )
        internal
        returns (address)
    {
        ExecutionVars memory vars;
        vars.hookContract = ISuperHook(hook);

        vars.targetedYieldSource = HookDataDecoder.extractYieldSource(hookCalldata);

        // Bool flagging if the hook uses the previous hook's outAmount
        // No slippage checks performed here as they have already been performed in the previous hook execution
        bool usePrevHookAmount = _decodeHookUsePrevHookAmount(hook, hookCalldata);

        ISuperHook(address(vars.hookContract)).setExecutionContext(address(this));
        vars.executions = vars.hookContract.build(prevHook, address(this), hookCalldata);
        for (uint256 j; j < vars.executions.length; ++j) {
            // Block hooks from calling the SuperVaultAggregator directly
            address aggregatorAddr = address(_getSuperVaultAggregator());
            if (vars.executions[j].target == aggregatorAddr) revert OPERATION_FAILED();
            (vars.success,) =
                vars.executions[j].target.call{ value: vars.executions[j].value }(vars.executions[j].callData);
            if (!vars.success) revert OPERATION_FAILED();
        }
        ISuperHook(address(vars.hookContract)).resetExecutionState(address(this));

        uint256 actualOutput = ISuperHookResult(hook).getOutAmount(address(this));

        // this is not to protect the user but rather a honest manager from doing a mistake
        if (actualOutput < expectedAssetsOrSharesOut) {
            revert MINIMUM_OUTPUT_AMOUNT_ASSETS_NOT_MET();
        }

        emit HookExecuted(hook, prevHook, vars.targetedYieldSource, usePrevHookAmount, hookCalldata);

        return hook;
    }

    /*//////////////////////////////////////////////////////////////
                    INTERNAL REDEMPTION PROCESSING
    //////////////////////////////////////////////////////////////*/

    /// @notice Process exact fulfillment for batch processing
    /// @dev Handles all accounting updates for fulfilled redemption:
    ///      1. Validates slippage bounds (minAssets <= actual <= theoretical)
    ///      2. Updates weighted average withdraw price across multiple fulfillments
    ///      3. Clears pending state and makes assets claimable
    ///      4. Resets cancellation flags
    /// @dev SECURITY: Bounds validation ensures manager cannot underfill/overfill
    /// @dev ACCOUNTING: Average withdraw price uses weighted formula to track historical execution prices
    /// @param controller Controller address
    /// @param totalAssetsOut Total assets available for this controller (from executeHooks)
    /// @param currentPPS Current price per share
    /// @param pendingShares Pending shares for this controller (passed to avoid re-reading from storage)
    function _processExactFulfillmentBatch(
        address controller,
        uint256 totalAssetsOut,
        uint256 currentPPS,
        uint256 pendingShares
    )
        internal
    {
        SuperVaultState storage state = superVaultState[controller];

        // Slippage validation
        uint16 slippageBps = state.redeemSlippageBps > 0 ? state.redeemSlippageBps : DEFAULT_REDEEM_SLIPPAGE_BPS;

        uint256 theoreticalAssets = pendingShares.mulDiv(currentPPS, PRECISION, Math.Rounding.Floor);

        uint256 minAssetsOut =
            SuperVaultAccountingLib.computeMinNetOut(pendingShares, state.averageRequestPPS, slippageBps, PRECISION);

        // Bounds check: totalAssetsOut must be between minAssetsOut and theoreticalAssets
        if (totalAssetsOut < minAssetsOut || totalAssetsOut > theoreticalAssets) {
            revert BOUNDS_EXCEEDED(minAssetsOut, theoreticalAssets, totalAssetsOut);
        }

        // Update average withdraw price (use actual assets received)
        state.averageWithdrawPrice = SuperVaultAccountingLib.calculateAverageWithdrawPrice(
            state.maxWithdraw, state.averageWithdrawPrice, pendingShares, totalAssetsOut, PRECISION
        );

        // Reset state
        state.pendingRedeemRequest = 0;
        state.maxWithdraw += totalAssetsOut;
        state.averageRequestPPS = 0;
        state.pendingCancelRedeemRequest = false;
        state.claimableCancelRedeemRequest = 0;

        emit RedeemClaimable(controller, totalAssetsOut, pendingShares, state.averageWithdrawPrice);
    }

    /*//////////////////////////////////////////////////////////////
                    INTERNAL HELPER FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /// @notice Internal function to get the SuperVaultAggregator
    /// @return The SuperVaultAggregator
    function _getSuperVaultAggregator() internal view returns (ISuperVaultAggregator) {
        address aggregatorAddress = SUPER_GOVERNOR.getAddress(SUPER_GOVERNOR.SUPER_VAULT_AGGREGATOR());

        return ISuperVaultAggregator(aggregatorAddress);
    }

    /// @notice Internal function to check if a manager is authorized
    /// @param manager_ The manager to check
    function _isManager(address manager_) internal view {
        if (!_getSuperVaultAggregator().isAnyManager(manager_, address(this))) {
            revert MANAGER_NOT_AUTHORIZED();
        }
    }

    /// @notice Internal function to check if a manager is the primary manager
    /// @param manager_ The manager to check
    function _isPrimaryManager(address manager_) internal view {
        if (!_getSuperVaultAggregator().isMainManager(manager_, address(this))) {
            revert MANAGER_NOT_AUTHORIZED();
        }
    }

    /// @notice Internal function to manage a yield source
    /// @param source Address of the yield source
    /// @param oracle Address of the oracle
    /// @param actionType Type of action (see YieldSourceAction enum)
    function _manageYieldSource(address source, address oracle, YieldSourceAction actionType) internal {
        if (actionType == YieldSourceAction.Add) {
            _addYieldSource(source, oracle);
        } else if (actionType == YieldSourceAction.UpdateOracle) {
            _updateYieldSourceOracle(source, oracle);
        } else if (actionType == YieldSourceAction.Remove) {
            _removeYieldSource(source);
        }
    }

    /// @notice Internal function to add a yield source
    /// @param source Address of the yield source
    /// @param oracle Address of the oracle
    function _addYieldSource(address source, address oracle) internal {
        if (source == address(0) || oracle == address(0)) revert ZERO_ADDRESS();
        if (yieldSources[source] != address(0)) revert YIELD_SOURCE_ALREADY_EXISTS();
        yieldSources[source] = oracle;
        if (!yieldSourcesList.add(source)) revert YIELD_SOURCE_ALREADY_EXISTS();

        emit YieldSourceAdded(source, oracle);
    }

    /// @notice Internal function to update a yield source's oracle
    /// @param source Address of the yield source
    /// @param oracle Address of the oracle
    function _updateYieldSourceOracle(address source, address oracle) internal {
        if (oracle == address(0)) revert ZERO_ADDRESS();
        address oldOracle = yieldSources[source];
        if (oldOracle == address(0)) revert YIELD_SOURCE_NOT_FOUND();
        yieldSources[source] = oracle;

        emit YieldSourceOracleUpdated(source, oldOracle, oracle);
    }

    /// @notice Internal function to remove a yield source
    /// @param source Address of the yield source
    function _removeYieldSource(address source) internal {
        if (yieldSources[source] == address(0)) revert YIELD_SOURCE_NOT_FOUND();

        // Remove from mapping
        delete yieldSources[source];

        // Remove from EnumerableSet
        if (!yieldSourcesList.remove(source)) revert YIELD_SOURCE_NOT_FOUND();

        emit YieldSourceRemoved(source);
    }

    /// @notice Internal function to propose a PPS expiry threshold
    /// @param _threshold The new PPS expiry threshold
    function _proposePPSExpiration(uint256 _threshold) internal {
        _isPrimaryManager(msg.sender);

        if (_threshold < MIN_PPS_EXPIRATION_THRESHOLD || _threshold > MAX_PPS_EXPIRATION_THRESHOLD) {
            revert INVALID_PPS_EXPIRY_THRESHOLD();
        }

        uint256 currentProposedThreshold = proposedPPSExpiryThreshold;
        proposedPPSExpiryThreshold = _threshold;
        ppsExpiryThresholdEffectiveTime = block.timestamp + PROPOSAL_TIMELOCK;

        emit PPSExpirationProposed(currentProposedThreshold, _threshold, ppsExpiryThresholdEffectiveTime);
    }

    /// @notice Internal function to perform a PPS expiry threshold
    function _updatePPSExpiration() internal {
        _isPrimaryManager(msg.sender);

        // Must have a valid proposal
        if (block.timestamp < ppsExpiryThresholdEffectiveTime) revert INVALID_TIMESTAMP();

        if (proposedPPSExpiryThreshold == 0) revert INVALID_PPS_EXPIRY_THRESHOLD();

        uint256 _proposed = proposedPPSExpiryThreshold;
        ppsExpiration = _proposed;
        ppsExpiryThresholdEffectiveTime = 0;
        proposedPPSExpiryThreshold = 0;

        emit PPSExpiryThresholdUpdated(_proposed);
    }

    /// @notice Internal function to cancel a PPS expiry threshold proposal
    function _cancelPPSExpirationProposalUpdate() internal {
        _isPrimaryManager(msg.sender);

        if (ppsExpiryThresholdEffectiveTime == 0) revert NO_PROPOSAL();

        proposedPPSExpiryThreshold = 0;
        ppsExpiryThresholdEffectiveTime = 0;

        emit PPSExpiryThresholdProposalCanceled();
    }

    /// @notice Internal function to check if a hook is registered
    /// @param hook Address of the hook
    /// @return True if the hook is registered, false otherwise
    function _isRegisteredHook(address hook) private view returns (bool) {
        return SUPER_GOVERNOR.isHookRegistered(hook);
    }

    /// @notice Internal function to decode a hook's use previous hook amount
    /// @param hook Address of the hook
    /// @param hookCalldata Call data for the hook
    /// @return True if the hook should use the previous hook amount, false otherwise
    function _decodeHookUsePrevHookAmount(address hook, bytes memory hookCalldata) private pure returns (bool) {
        try ISuperHookContextAware(hook).decodeUsePrevHookAmount(hookCalldata) returns (bool usePrevHookAmount) {
            return usePrevHookAmount;
        } catch {
            return false;
        }
    }

    /// @notice Internal function to handle a redeem
    /// @param controller Address of the controller
    /// @param shares Amount of shares
    function _handleRequestRedeem(address controller, uint256 shares) private {
        if (shares == 0) revert INVALID_AMOUNT();
        if (controller == address(0)) revert ZERO_ADDRESS();
        SuperVaultState storage state = superVaultState[controller];

        // Get current PPS from aggregator to use as baseline for slippage protection
        uint256 currentPPS = getStoredPPS();
        if (currentPPS == 0) revert INVALID_PPS();

        // Calculate weighted average of PPS if there's an existing request
        if (state.pendingRedeemRequest > 0) {
            // Incremental request: Calculate weighted average PPS
            // This protects users from PPS manipulation between multiple requests
            // Formula: avgPPS = (oldShares * oldPPS + newShares * newPPS) / totalShares
            uint256 existingSharesInRequest = state.pendingRedeemRequest;
            uint256 newTotalSharesInRequest = existingSharesInRequest + shares;

            // Weighted average ensures fair pricing across multiple request timestamps
            state.averageRequestPPS =
                ((existingSharesInRequest * state.averageRequestPPS) + (shares * currentPPS)) / newTotalSharesInRequest;

            state.pendingRedeemRequest = newTotalSharesInRequest;
        } else {
            // First request: Initialize with current PPS as baseline for slippage protection
            state.pendingRedeemRequest = shares;
            state.averageRequestPPS = currentPPS;
        }

        emit RedeemRequestPlaced(controller, controller, shares);
    }

    /// @notice Internal function to handle a redeem cancellation request
    /// @param controller Address of the controller
    function _handleCancelRedeemRequest(address controller) private {
        if (controller == address(0)) revert ZERO_ADDRESS();
        SuperVaultState storage state = superVaultState[controller];
        if (state.pendingRedeemRequest == 0) revert REQUEST_NOT_FOUND();
        if (state.pendingCancelRedeemRequest) revert CANCELLATION_REDEEM_REQUEST_PENDING();

        state.pendingCancelRedeemRequest = true;
        emit RedeemCancelRequestPlaced(controller);
    }

    /// @notice Internal function to handle a claim redeem cancellation
    /// @param controller Address of the controller
    function _handleClaimCancelRedeem(address controller) private {
        if (controller == address(0)) revert ZERO_ADDRESS();
        SuperVaultState storage state = superVaultState[controller];
        uint256 pendingShares = state.claimableCancelRedeemRequest;
        if (pendingShares == 0) revert REQUEST_NOT_FOUND();

        if (!state.pendingCancelRedeemRequest) revert CANCELLATION_REDEEM_REQUEST_PENDING();

        // Clear pending request metadata
        state.pendingCancelRedeemRequest = false;
        state.claimableCancelRedeemRequest = 0;
        emit RedeemRequestCanceled(controller, pendingShares);
    }

    /// @notice Internal function to handle a redeem claim
    /// @dev Only updates state. Vault is responsible for calling Escrow.returnAssets() after this returns.
    ///      Callers (SuperVault.withdraw/redeem) already validate assetsToClaim <= state.maxWithdraw.
    /// @param controller Address of the controller
    /// @param receiver Address of the receiver (used for event only)
    /// @param assetsToClaim Amount of assets to claim
    function _handleClaimRedeem(address controller, address receiver, uint256 assetsToClaim) private {
        if (assetsToClaim == 0) revert INVALID_AMOUNT();
        if (controller == address(0)) revert ZERO_ADDRESS();
        SuperVaultState storage state = superVaultState[controller];
        state.maxWithdraw -= assetsToClaim;
        emit RedeemRequestClaimed(receiver, controller, assetsToClaim, 0);
    }

    /// @notice Internal function to safely transfer tokens
    /// @param token Address of the token
    /// @param recipient Address to receive the tokens
    /// @param amount Amount of tokens to transfer
    function _safeTokenTransfer(address token, address recipient, uint256 amount) private {
        if (amount > 0) IERC20(token).safeTransfer(recipient, amount);
    }

    /// @notice Internal function to get the token balance of an account
    /// @param token Address of the token
    /// @param account Address of the account
    /// @return Token balance of the account
    function _getTokenBalance(address token, address account) private view returns (uint256) {
        return IERC20(token).balanceOf(account);
    }

    /// @notice Internal function to check if the caller is the vault
    /// @dev This is used to prevent unauthorized access to certain functions
    function _requireVault() internal view {
        if (msg.sender != _vault) revert ACCESS_DENIED();
    }

    /// @notice Checks if the strategy is currently paused
    /// @dev This calls SuperVaultAggregator.isStrategyPaused to determine pause status
    /// @return True if the strategy is paused, false otherwise
    function _isPaused(ISuperVaultAggregator aggregator) internal view returns (bool) {
        return aggregator.isStrategyPaused(address(this));
    }

    /// @notice Checks if the PPS is stale
    /// @dev This calls SuperVaultAggregator.isPPSStale to determine stale status
    /// @return True if the PPS is stale, false otherwise
    function _isPPSStale(ISuperVaultAggregator aggregator) internal view returns (bool) {
        return aggregator.isPPSStale(address(this));
    }

    /// @notice Checks if the PPS is not updated
    /// @dev This checks if the PPS has not been updated since the `ppsExpiration` time
    /// @param aggregator The SuperVaultAggregator contract
    /// @return True if the PPS is not updated, false otherwise
    function _isPPSNotUpdated(ISuperVaultAggregator aggregator) internal view returns (bool) {
        // The `ppsExpiration` serves a different purpose:
        //       if the oracle network stops pushing updates for some reasons (e.g. quite some nodes go down and the
        // quorum is never reached)
        //       then the onchain PPS gets never updated and eventually it should not be used anymore, which is what the
        // `ppsExpiration` logic controls
        uint256 lastPPSUpdateTimestamp = aggregator.getLastUpdateTimestamp(address(this));
        return block.timestamp - lastPPSUpdateTimestamp > ppsExpiration;
    }

    /// @notice Validates full pps state by checking pause, stale, and PPS update status
    /// @dev Used for operations that require current PPS for calculations:
    ///      - handleOperations4626Deposit: Needs PPS to calculate shares from assets
    ///      - handleOperations4626Mint: Needs PPS to validate asset requirements
    ///      - fulfillRedeemRequests: Needs current PPS to calculate assets from shares
    /// @param aggregator The SuperVaultAggregator contract
    function _validateStrategyState(ISuperVaultAggregator aggregator) internal view {
        if (_isPaused(aggregator)) revert STRATEGY_PAUSED();
        if (_isPPSStale(aggregator)) revert STALE_PPS();
        if (_isPPSNotUpdated(aggregator)) revert PPS_EXPIRED();
    }

    /// @notice Validates a hook using the Merkle root system
    /// @param hook Address of the hook to validate
    /// @param hookCalldata Calldata to be passed to the hook
    /// @param globalProof Merkle proof for the global root
    /// @param strategyProof Merkle proof for the strategy-specific root
    /// @return isValid True if the hook is valid, false otherwise
    function _validateHook(
        address hook,
        bytes memory hookCalldata,
        bytes32[] memory globalProof,
        bytes32[] memory strategyProof
    )
        internal
        view
        returns (bool)
    {
        return _getSuperVaultAggregator()
            .validateHook(
                address(this),
                ISuperVaultAggregator.ValidateHookArgs({
                    hookAddress: hook,
                    hookArgs: ISuperHookInspector(hook).inspect(hookCalldata),
                    globalProof: globalProof,
                    strategyProof: strategyProof
                })
            );
    }
}

// ======================================================================
// FILE: src/vendor/standards/ERC7540/IERC7540Vault.sol
// ======================================================================

// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity >=0.8.0;

import { IERC7741 } from "../ERC7741/IERC7741.sol";

interface IERC7540Operator {
    /**
     * @dev The event emitted when an operator is set.
     *
     * @param controller The address of the controller.
     * @param operator The address of the operator.
     * @param approved The approval status.
     */
    event OperatorSet(address indexed controller, address indexed operator, bool approved);

    /**
     * @dev Sets or removes an operator for the caller.
     *
     * @param operator The address of the operator.
     * @param approved The approval status.
     * @return Whether the call was executed successfully or not
     */
    function setOperator(address operator, bool approved) external returns (bool);

    /**
     * @dev Returns `true` if the `operator` is approved as an operator for an `controller`.
     *
     * @param controller The address of the controller.
     * @param operator The address of the operator.
     * @return status The approval status
     */
    function isOperator(address controller, address operator) external view returns (bool status);
}

interface IERC7540Deposit is IERC7540Operator {
    event DepositRequest(
        address indexed controller, address indexed owner, uint256 indexed requestId, address sender, uint256 assets
    );
    /**
     * @dev Transfers assets from sender into the Vault and submits a Request for asynchronous deposit.
     *
     * - MUST support ERC-20 approve / transferFrom on asset as a deposit Request flow.
     * - MUST revert if all of assets cannot be requested for deposit.
     * - owner MUST be msg.sender unless some unspecified explicit approval is given by the caller,
     *    approval of ERC-20 tokens from owner to sender is NOT enough.
     *
     * @param assets the amount of deposit assets to transfer from owner
     * @param controller the controller of the request who will be able to operate the request
     * @param owner the source of the deposit assets
     *
     * NOTE: most implementations will require pre-approval of the Vault with the Vault's underlying asset token.
     */

    function requestDeposit(uint256 assets, address controller, address owner) external returns (uint256 requestId);

    /**
     * @dev Returns the amount of requested assets in Pending state.
     *
     * - MUST NOT include any assets in Claimable state for deposit or mint.
     * - MUST NOT show any variations depending on the caller.
     * - MUST NOT revert unless due to integer overflow caused by an unreasonably large input.
     */
    function pendingDepositRequest(uint256 requestId, address controller) external view returns (uint256 pendingAssets);

    /**
     * @dev Returns the amount of requested assets in Claimable state for the controller to deposit or mint.
     *
     * - MUST NOT include any assets in Pending state.
     * - MUST NOT show any variations depending on the caller.
     * - MUST NOT revert unless due to integer overflow caused by an unreasonably large input.
     */
    function claimableDepositRequest(
        uint256 requestId,
        address controller
    )
        external
        view
        returns (uint256 claimableAssets);

    /**
     * @dev Mints shares Vault shares to receiver by claiming the Request of the controller.
     *
     * - MUST emit the Deposit event.
     * - controller MUST equal msg.sender unless the controller has approved the msg.sender as an operator.
     */
    function deposit(uint256 assets, address receiver, address controller) external returns (uint256 shares);

    /**
     * @dev Mints exactly shares Vault shares to receiver by claiming the Request of the controller.
     *
     * - MUST emit the Deposit event.
     * - controller MUST equal msg.sender unless the controller has approved the msg.sender as an operator.
     */
    function mint(uint256 shares, address receiver, address controller) external returns (uint256 assets);
}

interface IERC7540Redeem is IERC7540Operator {
    event RedeemRequest(
        address indexed controller, address indexed owner, uint256 indexed requestId, address sender, uint256 assets
    );

    /**
     * @dev Assumes control of shares from sender into the Vault and submits a Request for asynchronous redeem.
     *
     * - MUST support a redeem Request flow where the control of shares is taken from sender directly
     *   where msg.sender has ERC-20 approval over the shares of owner.
     * - MUST revert if all of shares cannot be requested for redeem.
     *
     * @param shares the amount of shares to be redeemed to transfer from owner
     * @param controller the controller of the request who will be able to operate the request
     * @param owner the source of the shares to be redeemed
     *
     * NOTE: most implementations will require pre-approval of the Vault with the Vault's share token.
     */
    function requestRedeem(uint256 shares, address controller, address owner) external returns (uint256 requestId);

    /**
     * @dev Returns the amount of requested shares in Pending state.
     *
     * - MUST NOT include any shares in Claimable state for redeem or withdraw.
     * - MUST NOT show any variations depending on the caller.
     * - MUST NOT revert unless due to integer overflow caused by an unreasonably large input.
     */
    function pendingRedeemRequest(uint256 requestId, address controller) external view returns (uint256 pendingShares);

    /**
     * @dev Returns the amount of requested shares in Claimable state for the controller to redeem or withdraw.
     *
     * - MUST NOT include any shares in Pending state for redeem or withdraw.
     * - MUST NOT show any variations depending on the caller.
     * - MUST NOT revert unless due to integer overflow caused by an unreasonably large input.
     */
    function claimableRedeemRequest(
        uint256 requestId,
        address controller
    )
        external
        view
        returns (uint256 claimableShares);
}

interface IERC7540CancelDeposit {
    event CancelDepositRequest(address indexed controller, uint256 indexed requestId, address sender);
    event CancelDepositClaim(
        address indexed receiver, address indexed controller, uint256 indexed requestId, address sender, uint256 assets
    );

    /**
     * @dev Submits a Request for cancelling the pending deposit Request
     *
     * - controller MUST be msg.sender unless some unspecified explicit approval is given by the caller,
     *    approval of ERC-20 tokens from controller to sender is NOT enough.
     * - MUST set pendingCancelDepositRequest to `true` for the returned requestId after request
     * - MUST increase claimableCancelDepositRequest for the returned requestId after fulfillment
     * - SHOULD be claimable using `claimCancelDepositRequest`
     * Note: while `pendingCancelDepositRequest` is `true`, `requestDeposit` cannot be called
     */
    function cancelDepositRequest(uint256 requestId, address controller) external;

    /**
     * @dev Returns whether the deposit Request is pending cancelation
     *
     * - MUST NOT show any variations depending on the caller.
     */
    function pendingCancelDepositRequest(uint256 requestId, address controller) external view returns (bool isPending);

    /**
     * @dev Returns the amount of assets that were canceled from a deposit Request, and can now be claimed.
     *
     * - MUST NOT show any variations depending on the caller.
     */
    function claimableCancelDepositRequest(
        uint256 requestId,
        address controller
    )
        external
        view
        returns (uint256 claimableAssets);

    /**
     * @dev Claims the canceled deposit assets, and removes the pending cancelation Request
     *
     * - controller MUST be msg.sender unless some unspecified explicit approval is given by the caller,
     *    approval of ERC-20 tokens from controller to sender is NOT enough.
     * - MUST set pendingCancelDepositRequest to `false` for the returned requestId after request
     * - MUST set claimableCancelDepositRequest to 0 for the returned requestId after fulfillment
     */
    function claimCancelDepositRequest(
        uint256 requestId,
        address receiver,
        address controller
    )
        external
        returns (uint256 assets);
}

//IERC7887Redeem
interface IERC7540CancelRedeem {
    event CancelRedeemRequest(address indexed controller, uint256 indexed requestId, address sender);
    event CancelRedeemClaim(
        address indexed receiver, address indexed controller, uint256 indexed requestId, address sender, uint256 shares
    );

    /**
     * @dev Submits a Request for cancelling the pending redeem Request
     *
     * - controller MUST be msg.sender unless some unspecified explicit approval is given by the caller,
     *    approval of ERC-20 tokens from controller to sender is NOT enough.
     * - MUST set pendingCancelRedeemRequest to `true` for the returned requestId after request
     * - MUST increase claimableCancelRedeemRequest for the returned requestId after fulfillment
     * - SHOULD be claimable using `claimCancelRedeemRequest`
     * Note: while `pendingCancelRedeemRequest` is `true`, `requestRedeem` cannot be called
     */
    function cancelRedeemRequest(uint256 requestId, address controller) external;

    /**
     * @dev Returns whether the redeem Request is pending cancelation
     *
     * - MUST NOT show any variations depending on the caller.
     */
    function pendingCancelRedeemRequest(uint256 requestId, address controller) external view returns (bool isPending);

    /**
     * @dev Returns the amount of shares that were canceled from a redeem Request, and can now be claimed.
     *
     * - MUST NOT show any variations depending on the caller.
     */
    function claimableCancelRedeemRequest(
        uint256 requestId,
        address controller
    )
        external
        view
        returns (uint256 claimableShares);

    /**
     * @dev Claims the canceled redeem shares, and removes the pending cancelation Request
     *
     * - controller MUST be msg.sender unless some unspecified explicit approval is given by the caller,
     *    approval of ERC-20 tokens from controller to sender is NOT enough.
     * - MUST set pendingCancelRedeemRequest to `false` for the returned requestId after request
     * - MUST set claimableCancelRedeemRequest to 0 for the returned requestId after fulfillment
     */
    function claimCancelRedeemRequest(
        uint256 requestId,
        address receiver,
        address controller
    )
        external
        returns (uint256 shares);
}

/**
 * @title  IERC7540
 * @dev    Fully async ERC7540 implementation according to the standard
 * @dev    Adapted from Centrifuge's IERC7540 implementation
 */
interface IERC7540 is IERC7540Deposit, IERC7540Redeem { }

/**
 * @title  IERC7540Vault
 * @dev    This is the specific set of interfaces used by the SuperVaults
 */
interface IERC7540Vault is IERC7540, IERC7741 {
    event DepositClaimable(address indexed controller, uint256 indexed requestId, uint256 assets, uint256 shares);
    event RedeemClaimable(address indexed controller, uint256 indexed requestId, uint256 assets, uint256 shares);
}

// ======================================================================
// FILE: src/vendor/standards/ERC7741/IERC7741.sol
// ======================================================================

// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity >=0.8.0;

interface IERC7741 {
    /**
     * @dev Grants or revokes permissions for `operator` to manage Requests on behalf of the
     *      `msg.sender`, using an [EIP-712](./eip-712.md) signature.
     */
    function authorizeOperator(
        address controller,
        address operator,
        bool approved,
        bytes32 nonce,
        uint256 deadline,
        bytes memory signature
    )
        external
        returns (bool);

    /**
     * @dev Revokes the given `nonce` for `msg.sender` as the `owner`.
     */
    function invalidateNonce(bytes32 nonce) external;

    /**
     * @dev Returns whether the given `nonce` has been used for the `controller`.
     */
    function authorizations(address controller, bytes32 nonce) external view returns (bool used);

    /**
     * @dev Returns the `DOMAIN_SEPARATOR` as defined according to EIP-712. The `DOMAIN_SEPARATOR
     *      should be unique to the contract and chain to prevent replay attacks from other domains,
     *      and satisfy the requirements of EIP-712, but is otherwise unconstrained.
     */
    function DOMAIN_SEPARATOR() external view returns (bytes32);
}
