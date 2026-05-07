// ============================================================
// FILE: lib/openzeppelin-contracts/contracts/proxy/utils/Initializable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.3.0) (proxy/utils/Initializable.sol)

pragma solidity ^0.8.20;

/**
 * @dev This is a base contract to aid in writing upgradeable contracts, or any kind of contract that will be deployed
 * behind a proxy. Since proxied contracts do not make use of a constructor, it's common to move constructor logic to an
 * external initializer function, usually called `initialize`. It then becomes necessary to protect this initializer
 * function so it can only be called once. The {initializer} modifier provided by this contract will have this effect.
 *
 * The initialization functions use a version number. Once a version number is used, it is consumed and cannot be
 * reused. This mechanism prevents re-execution of each "step" but allows the creation of new initialization steps in
 * case an upgrade adds a module that needs to be initialized.
 *
 * For example:
 *
 * [.hljs-theme-light.nopadding]
 * ```solidity
 * contract MyToken is ERC20Upgradeable {
 *     function initialize() initializer public {
 *         __ERC20_init("MyToken", "MTK");
 *     }
 * }
 *
 * contract MyTokenV2 is MyToken, ERC20PermitUpgradeable {
 *     function initializeV2() reinitializer(2) public {
 *         __ERC20Permit_init("MyToken");
 *     }
 * }
 * ```
 *
 * TIP: To avoid leaving the proxy in an uninitialized state, the initializer function should be called as early as
 * possible by providing the encoded function call as the `_data` argument to {ERC1967Proxy-constructor}.
 *
 * CAUTION: When used with inheritance, manual care must be taken to not invoke a parent initializer twice, or to ensure
 * that all initializers are idempotent. This is not verified automatically as constructors are by Solidity.
 *
 * [CAUTION]
 * ====
 * Avoid leaving a contract uninitialized.
 *
 * An uninitialized contract can be taken over by an attacker. This applies to both a proxy and its implementation
 * contract, which may impact the proxy. To prevent the implementation contract from being used, you should invoke
 * the {_disableInitializers} function in the constructor to automatically lock it when it is deployed:
 *
 * [.hljs-theme-light.nopadding]
 * ```
 * /// @custom:oz-upgrades-unsafe-allow constructor
 * constructor() {
 *     _disableInitializers();
 * }
 * ```
 * ====
 */
abstract contract Initializable {
    /**
     * @dev Storage of the initializable contract.
     *
     * It's implemented on a custom ERC-7201 namespace to reduce the risk of storage collisions
     * when using with upgradeable contracts.
     *
     * @custom:storage-location erc7201:openzeppelin.storage.Initializable
     */
    struct InitializableStorage {
        /**
         * @dev Indicates that the contract has been initialized.
         */
        uint64 _initialized;
        /**
         * @dev Indicates that the contract is in the process of being initialized.
         */
        bool _initializing;
    }

    // keccak256(abi.encode(uint256(keccak256("openzeppelin.storage.Initializable")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant INITIALIZABLE_STORAGE = 0xf0c57e16840df040f15088dc2f81fe391c3923bec73e23a9662efc9c229c6a00;

    /**
     * @dev The contract is already initialized.
     */
    error InvalidInitialization();

    /**
     * @dev The contract is not initializing.
     */
    error NotInitializing();

    /**
     * @dev Triggered when the contract has been initialized or reinitialized.
     */
    event Initialized(uint64 version);

    /**
     * @dev A modifier that defines a protected initializer function that can be invoked at most once. In its scope,
     * `onlyInitializing` functions can be used to initialize parent contracts.
     *
     * Similar to `reinitializer(1)`, except that in the context of a constructor an `initializer` may be invoked any
     * number of times. This behavior in the constructor can be useful during testing and is not expected to be used in
     * production.
     *
     * Emits an {Initialized} event.
     */
    modifier initializer() {
        // solhint-disable-next-line var-name-mixedcase
        InitializableStorage storage $ = _getInitializableStorage();

        // Cache values to avoid duplicated sloads
        bool isTopLevelCall = !$._initializing;
        uint64 initialized = $._initialized;

        // Allowed calls:
        // - initialSetup: the contract is not in the initializing state and no previous version was
        //                 initialized
        // - construction: the contract is initialized at version 1 (no reinitialization) and the
        //                 current contract is just being deployed
        bool initialSetup = initialized == 0 && isTopLevelCall;
        bool construction = initialized == 1 && address(this).code.length == 0;

        if (!initialSetup && !construction) {
            revert InvalidInitialization();
        }
        $._initialized = 1;
        if (isTopLevelCall) {
            $._initializing = true;
        }
        _;
        if (isTopLevelCall) {
            $._initializing = false;
            emit Initialized(1);
        }
    }

    /**
     * @dev A modifier that defines a protected reinitializer function that can be invoked at most once, and only if the
     * contract hasn't been initialized to a greater version before. In its scope, `onlyInitializing` functions can be
     * used to initialize parent contracts.
     *
     * A reinitializer may be used after the original initialization step. This is essential to configure modules that
     * are added through upgrades and that require initialization.
     *
     * When `version` is 1, this modifier is similar to `initializer`, except that functions marked with `reinitializer`
     * cannot be nested. If one is invoked in the context of another, execution will revert.
     *
     * Note that versions can jump in increments greater than 1; this implies that if multiple reinitializers coexist in
     * a contract, executing them in the right order is up to the developer or operator.
     *
     * WARNING: Setting the version to 2**64 - 1 will prevent any future reinitialization.
     *
     * Emits an {Initialized} event.
     */
    modifier reinitializer(uint64 version) {
        // solhint-disable-next-line var-name-mixedcase
        InitializableStorage storage $ = _getInitializableStorage();

        if ($._initializing || $._initialized >= version) {
            revert InvalidInitialization();
        }
        $._initialized = version;
        $._initializing = true;
        _;
        $._initializing = false;
        emit Initialized(version);
    }

    /**
     * @dev Modifier to protect an initialization function so that it can only be invoked by functions with the
     * {initializer} and {reinitializer} modifiers, directly or indirectly.
     */
    modifier onlyInitializing() {
        _checkInitializing();
        _;
    }

    /**
     * @dev Reverts if the contract is not in an initializing state. See {onlyInitializing}.
     */
    function _checkInitializing() internal view virtual {
        if (!_isInitializing()) {
            revert NotInitializing();
        }
    }

    /**
     * @dev Locks the contract, preventing any future reinitialization. This cannot be part of an initializer call.
     * Calling this in the constructor of a contract will prevent that contract from being initialized or reinitialized
     * to any version. It is recommended to use this to lock implementation contracts that are designed to be called
     * through proxies.
     *
     * Emits an {Initialized} event the first time it is successfully executed.
     */
    function _disableInitializers() internal virtual {
        // solhint-disable-next-line var-name-mixedcase
        InitializableStorage storage $ = _getInitializableStorage();

        if ($._initializing) {
            revert InvalidInitialization();
        }
        if ($._initialized != type(uint64).max) {
            $._initialized = type(uint64).max;
            emit Initialized(type(uint64).max);
        }
    }

    /**
     * @dev Returns the highest version that has been initialized. See {reinitializer}.
     */
    function _getInitializedVersion() internal view returns (uint64) {
        return _getInitializableStorage()._initialized;
    }

    /**
     * @dev Returns `true` if the contract is currently initializing. See {onlyInitializing}.
     */
    function _isInitializing() internal view returns (bool) {
        return _getInitializableStorage()._initializing;
    }

    /**
     * @dev Pointer to storage slot. Allows integrators to override it with a custom storage location.
     *
     * NOTE: Consider following the ERC-7201 formula to derive storage locations.
     */
    function _initializableStorageSlot() internal pure virtual returns (bytes32) {
        return INITIALIZABLE_STORAGE;
    }

    /**
     * @dev Returns a pointer to the storage namespace.
     */
    // solhint-disable-next-line var-name-mixedcase
    function _getInitializableStorage() private pure returns (InitializableStorage storage $) {
        bytes32 slot = _initializableStorageSlot();
        assembly {
            $.slot := slot
        }
    }
}

// ============================================================
// FILE: src/interfaces/IMetaOracleDeviationTimelock.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {IOracle} from "./IOracle.sol";

/// @title IMetaOracleDeviationTimelock
/// @notice Interface for the MetaOracleDeviationTimelock contract, extending IOracle.
interface IMetaOracleDeviationTimelock is IOracle {
    // --- Events (Mirroring implementation) ---
    event ChallengeStarted(uint256 expiresAt);
    event ChallengeRevoked();
    event ChallengeAccepted(address indexed newOracle);
    event HealingStarted(uint256 expiresAt);
    event HealingRevoked();
    event HealingAccepted(address indexed newOracle);

    // --- Configuration --- Accessors for state variables set during initialization
    function primaryOracle() external view returns (IOracle);
    function backupOracle() external view returns (IOracle);
    function primaryPrice() external view returns (uint256);
    function backupPrice() external view returns (uint256);
    function deviationThreshold() external view returns (uint256);
    function challengeTimelockDuration() external view returns (uint256);
    function healingTimelockDuration() external view returns (uint256);

    // --- State --- Accessors for dynamic state variables
    function currentOracle() external view returns (IOracle);
    function challengeExpiresAt() external view returns (uint256);
    function healingExpiresAt() external view returns (uint256);

    // --- Views ---
    function isPrimary() external view returns (bool);
    function isBackup() external view returns (bool);
    function isChallenged() external view returns (bool);
    function isHealing() external view returns (bool);
    function getDeviation() external view returns (uint256);
    function isDeviant() external view returns (bool);
    function hasChallengeExpired() external view returns (bool);
    function hasHealingExpired() external view returns (bool);
    function canAcceptChallenge() external view returns (bool);
    function canAcceptHealing() external view returns (bool);

    // --- State Changing Functions ---
    function challenge() external;
    function revokeChallenge() external;
    function acceptChallenge() external;
    function heal() external;
    function revokeHealing() external;
    function acceptHealing() external;
}

// ============================================================
// FILE: src/interfaces/IOracle.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/// @title IOracle
/// @author Morpho Labs
/// @custom:contact security@morpho.org
/// @notice Interface that oracles used by Morpho must implement.
/// @dev It is the user's responsibility to select markets with safe oracles.
interface IOracle {
    /// @notice Returns the price of 1 asset of collateral token quoted in 1 asset of loan token, scaled by 1e36.
    /// @dev It corresponds to the price of 10**(collateral token decimals) assets of collateral token quoted in
    /// 10**(loan token decimals) assets of loan token with `36 + loan token decimals - collateral token decimals`
    /// decimals of precision.
    function price() external view returns (uint256);
}

// ============================================================
// FILE: src/MetaOracleDeviationTimelock.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

import {Initializable} from "@openzeppelin/contracts/proxy/utils/Initializable.sol";
import {IMetaOracleDeviationTimelock} from "./interfaces/IMetaOracleDeviationTimelock.sol";
import {IOracle} from "./interfaces/IOracle.sol";

/// @title MetaOracleDeviationTimelock
/// @author Steakhouse Financial
/// @notice A meta-oracle that selects between a primary and backup oracle based on price deviation and timelocks.
/// @dev Switches to backup if primary deviates significantly, switches back when prices reconverge.
/// MUST be initialized by calling the `initialize` function.
contract MetaOracleDeviationTimelock is IMetaOracleDeviationTimelock, Initializable {
    // --- Configuration (set during initialization) ---
    IOracle public primaryOracle;
    IOracle public backupOracle;
    uint256 public deviationThreshold; // Scaled by 1e18 (e.g., 0.01e18 for 1%)
    uint256 public challengeTimelockDuration; // Duration in seconds
    uint256 public healingTimelockDuration; // Duration in seconds

    // --- State ---
    IOracle public currentOracle; // Currently selected oracle
    uint256 public challengeExpiresAt; // Timestamp when challenge period ends (0 if not challenged)
    uint256 public healingExpiresAt; // Timestamp when healing period ends (0 if not healing)

    /// @param _primaryOracle The primary price feed.
    /// @param _backupOracle The backup price feed.
    /// @param _deviationThreshold The maximum allowed relative deviation (scaled by 1e18) before a challenge can be initiated.
    /// @param _challengeTimelockDuration The duration (seconds) a challenge must persist before switching to backup.
    /// @param _healingTimelockDuration The duration (seconds) prices must remain converged before switching back to primary.
    function initialize(
        IOracle _primaryOracle,
        IOracle _backupOracle,
        uint256 _deviationThreshold,
        uint256 _challengeTimelockDuration,
        uint256 _healingTimelockDuration
    ) external initializer {
        require(address(_primaryOracle) != address(0), "Invalid primary oracle");
        require(address(_backupOracle) != address(0), "Invalid backup oracle");
        require(address(_primaryOracle) != address(_backupOracle), "Oracles must be different");
        require(_deviationThreshold > 0, "Deviation threshold must be positive");

        primaryOracle = _primaryOracle;
        backupOracle = _backupOracle;
        deviationThreshold = _deviationThreshold;
        challengeTimelockDuration = _challengeTimelockDuration;
        healingTimelockDuration = _healingTimelockDuration;

        // Check initial deviation
        uint256 initialPrimaryPrice = _primaryOracle.price();
        uint256 initialBackupPrice = _backupOracle.price();
        uint256 initialDeviation;
        if (initialBackupPrice == 0) {
            initialDeviation = initialPrimaryPrice == 0 ? 0 : type(uint256).max;
        } else {
            uint256 diff;
            if (initialPrimaryPrice >= initialBackupPrice) {
                diff = initialPrimaryPrice - initialBackupPrice;
            } else {
                diff = initialBackupPrice - initialPrimaryPrice;
            }
            initialDeviation = (diff * 10**18) / initialBackupPrice;
        }
        require(initialDeviation <= _deviationThreshold, "MODT: Initial deviation too high");

        currentOracle = _primaryOracle; // Start with the primary oracle
    }

    /// @inheritdoc IOracle
    function price() public view returns (uint256) {
        try currentOracle.price() returns (uint256 currentPrice) {
            return currentPrice;
        } catch {
            if (isPrimary()) {
                return backupOracle.price();
            } else {
                return primaryOracle.price();
            }
        }
    }

    /// @inheritdoc IMetaOracleDeviationTimelock
    function primaryPrice() public view returns (uint256) {
        return primaryOracle.price();
    }

    /// @inheritdoc IMetaOracleDeviationTimelock
    function backupPrice() public view returns (uint256) {
        return backupOracle.price();
    }

    /// @notice Checks if the primary oracle is currently selected.
    function isPrimary() public view returns (bool) {
        return currentOracle == primaryOracle;
    }

    /// @notice Checks if the backup oracle is currently selected.
    function isBackup() public view returns (bool) {
        return currentOracle == backupOracle;
    }

    /// @notice Checks if a challenge is currently active.
    function isChallenged() public view returns (bool) {
        return challengeExpiresAt > 0;
    }

    /// @notice Checks if a healing period is currently active.
    function isHealing() public view returns (bool) {
        return healingExpiresAt > 0;
    }

    /// @notice Calculates the absolute relative deviation between primary and backup oracles.
    /// @dev Deviation is calculated as `abs(primaryPrice - backupPrice) * 1e18 / backupPrice`.
    /// Returns 0 if backupPrice is 0 and primaryPrice is 0.
    /// Returns type(uint256).max if backupPrice is 0 and primaryPrice is non-zero.
    function getDeviation() public view returns (uint256) {
        uint256 currentPrimaryPrice = primaryOracle.price();
        uint256 currentBackupPrice = backupOracle.price();

        if (currentBackupPrice == 0) {
            return currentPrimaryPrice == 0 ? 0 : type(uint256).max;
        }

        uint256 diff;
        if (currentPrimaryPrice >= currentBackupPrice) {
            diff = currentPrimaryPrice - currentBackupPrice;
        } else {
            diff = currentBackupPrice - currentPrimaryPrice;
        }

        // Use uint256 for intermediate multiplication to avoid overflow before division
        return (diff * 10**18) / currentBackupPrice;
    }

    /// @notice Checks if the deviation exceeds the configured threshold.
    function isDeviant() public view returns (bool) {
        return getDeviation() > deviationThreshold;
    }

    /// @notice Initiates a challenge if the primary oracle is active and deviation threshold is exceeded.
    /// @dev Starts a timelock period (`challengeTimelockDuration`).
    function challenge() external {
        require(isPrimary(), "MODT: Must be primary oracle");
        require(!isChallenged(), "MODT: Already challenged");
        require(isDeviant(), "MODT: Deviation threshold not met");

        challengeExpiresAt = block.timestamp + challengeTimelockDuration;
        emit ChallengeStarted(challengeExpiresAt);
    }

    /// @notice Revokes an active challenge if the deviation is no longer present.
    function revokeChallenge() external {
        require(isPrimary(), "MODT: Must be primary oracle"); // Should still be primary
        require(isChallenged(), "MODT: Not challenged");
        require(!isDeviant(), "MODT: Deviation threshold still met");

        challengeExpiresAt = 0;
        emit ChallengeRevoked();
    }

    /// @notice Checks if the challenge has expired.
    function hasChallengeExpired() public view returns (bool) {
        return isChallenged() && block.timestamp >= challengeExpiresAt;
    }

    /// @notice Checks if the challenge can be accepted.
    function canAcceptChallenge() public view returns (bool) {
        return isPrimary() && isChallenged() && block.timestamp >= challengeExpiresAt && isDeviant();
    }

    /// @notice Accepts the challenge after the timelock expires, switching to the backup oracle.
    /// @dev Requires the deviation to still be present.
    function acceptChallenge() external {
        require(isPrimary(), "MODT: Must be primary oracle");
        require(isChallenged(), "MODT: Not challenged");
        require(block.timestamp >= challengeExpiresAt, "MODT: Challenge timelock not passed");
        require(isDeviant(), "MODT: Deviation resolved"); // Deviation must persist

        currentOracle = backupOracle;
        challengeExpiresAt = 0;
        emit ChallengeAccepted(address(currentOracle));
    }

    /// @notice Initiates the healing process if the backup oracle is active and prices have reconverged.
    /// @dev Starts a timelock period (`healingTimelockDuration`).
    function heal() external {
        require(isBackup(), "MODT: Must be backup oracle");
        require(!isHealing(), "MODT: Already healing");
        require(!isDeviant(), "MODT: Deviation threshold still met");

        healingExpiresAt = block.timestamp + healingTimelockDuration;
        emit HealingStarted(healingExpiresAt);
    }

    /// @notice Revokes an active healing process if the deviation threshold is exceeded again.
    function revokeHealing() external {
        require(isBackup(), "MODT: Must be backup oracle"); // Should still be backup
        require(isHealing(), "MODT: Not healing");
        require(isDeviant(), "MODT: Deviation threshold not met");

        healingExpiresAt = 0;
        emit HealingRevoked();
    }

    /// @notice Checks if the healing has expired.
    function hasHealingExpired() public view returns (bool) {
        return isHealing() && block.timestamp >= healingExpiresAt;
    }

    /// @notice Checks if the healing can be accepted.
    function canAcceptHealing() public view returns (bool) {
        return isBackup() && isHealing() && block.timestamp >= healingExpiresAt && !isDeviant();
    }

    /// @notice Accepts the healing after the timelock expires, switching back to the primary oracle.
    /// @dev Requires the prices to still be converged (not deviant).
    function acceptHealing() external {
        require(isBackup(), "MODT: Must be backup oracle");
        require(isHealing(), "MODT: Not healing");
        require(block.timestamp >= healingExpiresAt, "MODT: Healing timelock not passed");
        require(!isDeviant(), "MODT: Deviation occurred"); // Prices must remain converged

        currentOracle = primaryOracle;
        healingExpiresAt = 0;
        emit HealingAccepted(address(currentOracle));
    }
}
