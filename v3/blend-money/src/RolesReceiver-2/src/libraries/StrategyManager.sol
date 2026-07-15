// SPDX-License-Identifier: BSL-1.1
pragma solidity ^0.8.24;

import {VaultConfig} from "../types/StrategyTypes.sol";
import {RebalanceData} from "../types/RebalanceTypes.sol";
import {IVaultActionController} from "../interfaces/controllers/IVaultActionController.sol";
import {IVaultController} from "../interfaces/controllers/IVaultController.sol";
import {IModuleManager} from "safe-contracts/interfaces/IModuleManager.sol";
import {Enum} from "safe-contracts/libraries/Enum.sol";

/**
 * @title StrategyManager
 * @author Variable Logic Labs, Corp (hello@blend.money)
 * @notice Abstract contract responsible for managing strategy configurations
 * @dev This contract provides storage and management functions for strategy configurations,
 *      separating the concern of strategy management from other contract responsibilities.
 *      Security: Reentrancy protection is provided by the onlyExecutor modifier and per-vault rate limiting.
 */
abstract contract StrategyManager {
    /*//////////////////////////////////////////////////////////////
                            STATE VARIABLES
    //////////////////////////////////////////////////////////////*/

    /// @notice Mapping to store market configurations for each vault
    /// @dev Maps VaultId to their corresponding array of MarketConfigs
    mapping(address => VaultConfig) public strategyConfig;

    /// @notice A mapping of (safe, vault) pairs to the timestamp of their last completed operation
    /// @dev Key is keccak256(abi.encodePacked(safe, vault)). Used to enforce per-vault rate limiting and prevent rapid-fire operations
    mapping(bytes32 => uint256) public lastOperationTimestamp;

    /// @notice Boolean flag that the `executeRebalance` function has been entered
    /// @dev In practice, this will only be set to true if inside the `executeRebalance` function
    bool public isRebalanceInitiated;

    /// @notice Boolean flag that the `executeVaultAction` function has been entered
    /// @dev In practice, this will only be set to true if inside the `executeVaultAction` function
    bool public isVaultActionInitiated;

    /// @notice This is the address that is able to execute transactions on the strategy manager
    address public executor;

    /// @notice The minimum time between operations in seconds
    uint256 public immutable MIN_SECONDS_BETWEEN_OPERATIONS;

    /// @notice Storage slot to avoid collisions for temporary seen items mapping
    bytes32 private constant TEMP_SEEN_SLOT = keccak256("blend.temp.seen.items");

    /*//////////////////////////////////////////////////////////////
                                EVENTS
    //////////////////////////////////////////////////////////////*/

    /// @notice Emitted when the executor is set
    /// @param executor The address of the executor
    event ExecutorSet(address indexed executor);

    /// @notice Emitted when a rebalance is executed
    /// @param safe The address of the safe that executed the rebalance
    /// @param vault The address of the vault that was rebalanced
    event RebalanceExecuted(address indexed safe, address indexed vault);

    /// @notice Emitted when a vault action is executed
    /// @param safe The address of the safe that executed the vault action
    /// @param vault The address of the vault that was acted on
    event VaultActionExecuted(address indexed safe, address indexed vault);

    /*//////////////////////////////////////////////////////////////
                            ERRORS
    //////////////////////////////////////////////////////////////*/

    /// @notice Thrown when the caller is not the executor
    error NotExecutor();

    /// @notice Thrown when the vault is not valid
    error InvalidVault();

    /// @notice Thrown when the VaultConfig is invalid
    error InvalidVaultConfig();

    /// @notice Thrown when the safe throws an error
    /// @dev This is a generic error that occurs when a safe `execTransactionFromModule` fails
    error SafeExecutionError();

    /// @notice Thrown when the specified action controller is not approved for the given vault.
    error InvalidActionController();

    /// @notice Thrown when the `execBalance` function has already been entered
    error AlreadyInitiated();

    /// @notice Thrown when an operation is performed too frequently
    error RateLimited();

    /// @notice Thrown when the minimum seconds between operations specified in constructor is zero
    error InvalidMinSecondsBetweenOperations();

    /*//////////////////////////////////////////////////////////////
                            MODIFIERS
    //////////////////////////////////////////////////////////////*/

    /// @notice Modifier to ensure the caller is the executor
    modifier onlyExecutor() {
        require(msg.sender == executor, NotExecutor());
        _;
    }

    /// @notice Modifier to ensure the vault is valid
    modifier validVault(address vault) {
        require(address(strategyConfig[vault].control) != address(0), InvalidVault());
        _;
    }

    /**
     * @notice Ensures that the action controller is valid and approved for the specified vault.
     * @dev It checks that the vault is valid and then verifies that the `actionController`
     * is present in the list of approved action controllers for that vault.
     * @param vault The address of the vault.
     * @param actionController The action controller to validate.
     */
    modifier validActionController(address vault, IVaultActionController actionController) {
        require(vault != address(0), InvalidVault());

        VaultConfig memory vaultConfig = strategyConfig[vault];
        require(address(vaultConfig.control) != address(0), InvalidVault());

        // Check if the action controller is one of the allowed action controllers
        bool found = false;
        for (uint256 i = 0; i < vaultConfig.actions.length; ++i) {
            if (vaultConfig.actions[i].controller == actionController) {
                found = true;
                break;
            }
        }
        require(found, InvalidActionController());
        _;
    }

    /// @notice Modifier to ensure the `executeRebalance` function has not been entered
    modifier initiateRebalance() {
        require(!isRebalanceInitiated, AlreadyInitiated());
        isRebalanceInitiated = true;
        _;
        isRebalanceInitiated = false;
    }

    /// @notice Modifier to ensure the `executeVaultAction` function has not been entered
    modifier initiateVaultAction() {
        require(!isVaultActionInitiated, AlreadyInitiated());
        isVaultActionInitiated = true;
        _;
        isVaultActionInitiated = false;
    }

    /*//////////////////////////////////////////////////////////////
                            CONSTRUCTOR
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Constructor for the StrategyManager
     * @param _minSecondsBetweenOperations The minimum time in seconds that must elapse between operations on the same safe
     * @dev Reverts if _minSecondsBetweenOperations is zero or greater than 300 seconds
     */
    constructor(uint256 _minSecondsBetweenOperations) {
        require(
            _minSecondsBetweenOperations > 0 && _minSecondsBetweenOperations <= 300,
            InvalidMinSecondsBetweenOperations()
        );
        MIN_SECONDS_BETWEEN_OPERATIONS = _minSecondsBetweenOperations;
    }

    /*//////////////////////////////////////////////////////////////
                         INTERNAL FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Gets the temporary seen items mapping from a specific storage slot
     * @return m The mapping at the designated storage slot
     * @dev Uses assembly to access a specific storage slot to avoid collisions
     */
    function _tempSeen() internal pure returns (mapping(bytes32 => bool) storage m) {
        bytes32 slot = TEMP_SEEN_SLOT;
        assembly {
            m.slot := slot
        }
    }

    /**
     * @notice Clears the temporary seen items mapping
     * @param config The vault configuration containing the items to clear
     * @dev Deletes entries from the temporary mapping to avoid storage bloat
     */
    function _clearTempSeen(VaultConfig memory config) internal {
        mapping(bytes32 => bool) storage seen = _tempSeen();
        for (uint256 i = 0; i < config.markets.length; i++) {
            delete seen[config.markets[i].marketId];
        }
        for (uint256 i = 0; i < config.actions.length; i++) {
            delete seen[bytes32(uint256(uint160(address(config.actions[i].controller))))];
        }
    }

    /**
     * @notice Internal function to set the executor
     * @param _executor The address of the executor
     * @dev *BE CAREFUL* this function gives the executor the ability to execute txns on behalf of user safes
     */
    function _setExecutor(address _executor) internal {
        executor = _executor;
        emit ExecutorSet(_executor);
    }

    /**
     * @notice Internal function to update a vault configuration
     * @param vaultId The vault identifier to update the vault config for
     * @param newConfig The vault configuration to set
     * @dev This function replaces the entire vault config for a vault.
     *      It checks for duplicate market IDs, lower bound leverage, non-zero market controller,
     *      duplicate action controllers, and non-zero action controller.
     *      It then updates the vault config.
     */
    function _updateVaultConfig(address vaultId, VaultConfig memory newConfig) internal {
        require(address(newConfig.control) != address(0), InvalidVaultConfig());

        mapping(bytes32 => bool) storage seen = _tempSeen();

        // Check for duplicate market IDs using O(n) approach
        for (uint256 i = 0; i < newConfig.markets.length; i++) {
            bytes32 marketId = newConfig.markets[i].marketId;
            require(!seen[marketId], InvalidVaultConfig());
            seen[marketId] = true;

            // Check for lower bound leverage
            require(newConfig.markets[i].leverage >= 1e18, InvalidVaultConfig());
            // Check to ensure that the market address is not zero
            require(address(newConfig.markets[i].adapter) != address(0), InvalidVaultConfig());
        }

        // Check for duplicate action controllers using O(n) approach
        for (uint256 i = 0; i < newConfig.actions.length; i++) {
            bytes32 actionKey = bytes32(uint256(uint160(address(newConfig.actions[i].controller))));
            require(!seen[actionKey], InvalidVaultConfig());
            seen[actionKey] = true;

            // Check to ensure that the action controller is not zero
            require(address(newConfig.actions[i].controller) != address(0), InvalidVaultConfig());
        }
        // Clean up temporary storage to avoid storage bloat
        _clearTempSeen(newConfig);

        // Update the vault config
        strategyConfig[vaultId] = newConfig;
    }

    /**
     * @notice Internal function to verify the rate limit for a safe-vault pair
     * @param safe The address of the safe
     * @param vault The address of the vault
     * @dev This function checks if the minimum seconds between operations has elapsed since the last operation on this safe-vault pair
     * @custom:reverts RateLimited if insufficient time has passed since the last operation on this safe-vault pair
     */
    function _verifyRateLimit(address safe, address vault) internal {
        bytes32 safeVaultKey = keccak256(abi.encodePacked(safe, vault));
        require(block.timestamp - lastOperationTimestamp[safeVaultKey] > MIN_SECONDS_BETWEEN_OPERATIONS, RateLimited());
        lastOperationTimestamp[safeVaultKey] = block.timestamp;
    }

    /*//////////////////////////////////////////////////////////////
                            EXTERNAL FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Executes a rebalance on a vault
     * @param safe The address of the safe that will execute the rebalance
     * @param vault The address of the vault that will be rebalanced
     * @param rebalanceData The data for the rebalance
     * @dev Enforces rate limiting per (safe, vault) pair by checking that MIN_SECONDS_BETWEEN_OPERATIONS has elapsed since the last operation
     * @custom:reverts RateLimited if insufficient time has passed since the last operation on this safe-vault pair
     * @custom:reverts SafeExecutionError if the safe's execTransactionFromModule call fails
     */
    function executeRebalance(address safe, address vault, RebalanceData[] calldata rebalanceData)
        public
        onlyExecutor
        validVault(vault)
        initiateRebalance
    {
        _verifyRateLimit(safe, vault);

        bool success = IModuleManager(safe).execTransactionFromModule(
            address(strategyConfig[vault].control),
            0,
            abi.encodeWithSelector(IVaultController.executeRebalance.selector, vault, rebalanceData),
            Enum.Operation.DelegateCall
        );
        require(success, SafeExecutionError());
        emit RebalanceExecuted(safe, vault);
    }

    /**
     * @notice Executes a generic vault action through a designated controller.
     * @dev This function enables the executor to trigger a vault action on behalf of a user's Gnosis Safe.
     *      It constructs a call to the safe's `execTransactionFromModule`, targeting the specified
     *      `actionController`. This ensures actions are executed within the safe's context.
     *      The function is protected by modifiers to ensure the caller is the executor, the vault is valid,
     *      and the action controller is approved for the given vault.
     *      Enforces rate limiting per (safe, vault) pair by checking that MIN_SECONDS_BETWEEN_OPERATIONS has elapsed since the last operation.
     * @param safe The address of the user's Gnosis Safe that will execute the transaction.
     * @param vault The address of the vault being acted upon. Used for validation purposes.
     * @param actionController The controller contract responsible for executing the specific action.
     * @param data The ABI-encoded calldata for the action to be executed by the `actionController`.
     * @custom:reverts RateLimited if insufficient time has passed since the last operation on this safe-vault pair
     * @custom:reverts SafeExecutionError if the safe's execTransactionFromModule call fails
     */
    function executeVaultAction(
        address safe,
        address vault,
        IVaultActionController actionController,
        bytes calldata data
    ) external onlyExecutor validVault(vault) validActionController(vault, actionController) initiateVaultAction {
        _verifyRateLimit(safe, vault);

        VaultConfig memory vaultConfig = strategyConfig[vault];
        bytes memory strategyData;
        for (uint256 i = 0; i < vaultConfig.actions.length; i++) {
            if (vaultConfig.actions[i].controller == actionController) {
                strategyData = vaultConfig.actions[i].data;
                break;
            }
        }
        bool success = IModuleManager(safe).execTransactionFromModule(
            address(actionController),
            0,
            abi.encodeWithSelector(IVaultActionController.executeAction.selector, vault, strategyData, data),
            Enum.Operation.DelegateCall
        );
        require(success, SafeExecutionError());
        emit VaultActionExecuted(safe, vault);
    }

    /**
     * @notice Returns the vault configuration for a given vault
     * @param vault The address of the vault to get the vault configuration for
     * @return The vault configuration for the given vault
     */
    function getVaultConfig(address vault) public view returns (VaultConfig memory) {
        return strategyConfig[vault];
    }
}
