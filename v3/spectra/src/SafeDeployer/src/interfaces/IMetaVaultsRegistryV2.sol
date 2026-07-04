// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.22;

/// @title ValueType
/// @notice Constants for RegistryEntry.valueType field.
library ValueType {
    uint8 constant STRING = 0;
    uint8 constant ADDRESS = 1;
    uint8 constant UINT256 = 2;
    uint8 constant BYTES = 3;
    uint8 constant BOOL = 4;
}

/// @notice A typed registry entry. Bulk writes accept arrays of these.
/// @dev `valueType` should be one of ValueType.STRING/ADDRESS/UINT256/BYTES/BOOL.
///      `lock` set to true marks the key as locked after write.
struct RegistryEntry {
    bytes32 key;
    bytes value;
    uint8 valueType;
    bool lock;
}

/// @title IMetaVaultsRegistryV2
/// @notice Interface for the V2 metavaults registry: typed key-value metadata storage
///         per vault Safe with key-locking and governance overrides.
/// @dev Auth model on every `set` overload:
///      - msg.sender == vault → write allowed unless the key is locked
///      - msg.sender authorized via AccessManager → write allowed even on locked keys
///        (an additional `ForceSetEntry` event is emitted alongside the typed `*Set` event)
///      - otherwise reverts via AccessManager (`AccessManagedUnauthorized`)
interface IMetaVaultsRegistryV2 {
    // -------------------------------------------------------------------------
    // Errors
    // -------------------------------------------------------------------------

    error ZeroAddress();

    /// @notice Raised when an unsupported valueType is supplied in a bulk entry.
    error InvalidValueType(uint8 valueType);

    /// @notice Raised when a vault attempts to write its own locked key.
    ///         Admins can still override via AccessManager (force-set semantics).
    error KeyIsLocked(bytes32 key);

    // -------------------------------------------------------------------------
    // Events
    // -------------------------------------------------------------------------

    /// @notice Emitted when a string value is stored for a vault key.
    event StringSet(address indexed vault, bytes32 indexed key, string value);

    /// @notice Emitted when an address value is stored for a vault key.
    event AddressSet(address indexed vault, bytes32 indexed key, address value);

    /// @notice Emitted when a uint256 value is stored for a vault key.
    event Uint256Set(address indexed vault, bytes32 indexed key, uint256 value);

    /// @notice Emitted when a bytes value is stored for a vault key.
    event BytesSet(address indexed vault, bytes32 indexed key, bytes value);

    /// @notice Emitted when a bool value is stored for a vault key.
    event BoolSet(address indexed vault, bytes32 indexed key, bool value);

    /// @notice Emitted when a key is locked.
    event KeyLocked(address indexed vault, bytes32 indexed key);

    /// @notice Emitted when a key is unlocked by governance.
    event KeyUnlocked(address indexed vault, bytes32 indexed key);

    /// @notice Emitted alongside the typed `*Set` event when an authorized
    ///         non-vault caller writes a currently-locked key.
    event ForceSetEntry(address indexed vault, bytes32 indexed key, uint8 valueType);

    // -------------------------------------------------------------------------
    // Setters — overloaded `set` for single typed writes and bulk writes
    // -------------------------------------------------------------------------

    /// @notice Store a string value under `key` for `vault`.
    function set(address vault, bytes32 key, string calldata value) external;

    /// @notice Store an address value under `key` for `vault`.
    function set(address vault, bytes32 key, address value) external;

    /// @notice Store a uint256 value under `key` for `vault`.
    function set(address vault, bytes32 key, uint256 value) external;

    /// @notice Store a bytes value under `key` for `vault`.
    /// @dev Passing an empty bytes value clears the slot — `isKeySet` will report
    ///      false afterwards. This is the canonical "delete" path.
    function set(address vault, bytes32 key, bytes calldata value) external;

    /// @notice Store a bool value under `key` for `vault`.
    function set(address vault, bytes32 key, bool value) external;

    /// @notice Bulk-set typed entries for `vault`. Per entry, `lock=true`
    ///         atomically locks the key after the write.
    function set(address vault, RegistryEntry[] calldata entries) external;

    // -------------------------------------------------------------------------
    // Lock management — admin only
    // -------------------------------------------------------------------------

    /// @notice Mark `key` as locked for `vault`. Admin only.
    function lockKey(address vault, bytes32 key) external;

    /// @notice Remove the locked flag from `key` for `vault`. Admin only.
    function unlockKey(address vault, bytes32 key) external;

    // -------------------------------------------------------------------------
    // Getters
    // -------------------------------------------------------------------------

    /// @notice Retrieve the string stored under `key` for `vault`.
    function getString(address vault, bytes32 key) external view returns (string memory);

    /// @notice Retrieve the address stored under `key` for `vault`.
    function getAddress(address vault, bytes32 key) external view returns (address);

    /// @notice Retrieve the uint256 stored under `key` for `vault`.
    function getUint256(address vault, bytes32 key) external view returns (uint256);

    /// @notice Retrieve the raw bytes stored under `key` for `vault`.
    /// @dev Doubles as the type-agnostic read path; values written as string/address/uint256/bool
    ///      are stored as ABI-encoded bytes and can be decoded by callers if needed.
    function getBytes(address vault, bytes32 key) external view returns (bytes memory);

    /// @notice Retrieve the bool stored under `key` for `vault`.
    function getBool(address vault, bytes32 key) external view returns (bool);

    /// @notice Whether `key` has any value stored for `vault`.
    /// @dev Distinguishes "never written" from "written to a zero value" — the typed
    ///      getters return zero in both cases, this returns true only for the latter.
    ///      Cleared by writing empty bytes via `set(vault, key, bytes(""))`.
    function isKeySet(address vault, bytes32 key) external view returns (bool);

    /// @notice Check whether a key is locked for a given vault.
    function isKeyLocked(address vault, bytes32 key) external view returns (bool);
}
