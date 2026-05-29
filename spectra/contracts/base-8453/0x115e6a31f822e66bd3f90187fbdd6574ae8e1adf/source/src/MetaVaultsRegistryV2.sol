// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.22;

import {IMetaVaultsRegistryV2, RegistryEntry, ValueType} from "./interfaces/IMetaVaultsRegistryV2.sol";
import {AccessManagedUpgradeable} from "@openzeppelin/contracts-upgradeable/access/manager/AccessManagedUpgradeable.sol";
import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";

/**
 * @title MetaVaultsRegistryV2
 * @notice On-chain registry with typed key-value metadata storage and key-locking.
 * @dev Auth on every `set` overload:
 *      - msg.sender == vault → write allowed unless the key is locked (revert KeyIsLocked)
 *      - msg.sender authorized via AccessManager → write allowed on any key; if the key
 *        is currently locked, a `ForceSetEntry` event is emitted alongside the typed event
 *      - otherwise the AccessManager reverts with `AccessManagedUnauthorized`
 *
 *      Lock state is mutated only by `lockKey`/`unlockKey`, or by the per-entry `lock`
 *      flag in the bulk `set(address, RegistryEntry[])` path (lock-only, never unlock).
 */
contract MetaVaultsRegistryV2 is IMetaVaultsRegistryV2, Initializable, AccessManagedUpgradeable {
    // keccak256(abi.encode(uint256(keccak256("spectra.storage.MetavaultsRegistryV2")) - 1)) & ~bytes32(uint256(0xff))
    /// @custom:storage-location erc7201:spectra.storage.MetavaultsRegistryV2
    bytes32 private constant REGISTRY_V2_LOCATION =
        0xa12655e687d31b33eeef01659eede7715da4fbff845357642b000b2563725000;

    struct RegistryV2Storage {
        mapping(address vault => mapping(bytes32 key => bytes)) data;
        mapping(address vault => mapping(bytes32 key => bool)) lockedKeys;
    }

    function _getRegistryV2Storage() private pure returns (RegistryV2Storage storage $) {
        assembly {
            $.slot := REGISTRY_V2_LOCATION
        }
    }

    constructor() {
        _disableInitializers();
    }

    function initialize(address initialAuthority) external initializer {
        __AccessManaged_init(initialAuthority);
    }

    // -----------------------------------------------------------------------
    // Setters — `set` overloads
    // -----------------------------------------------------------------------

    /// @inheritdoc IMetaVaultsRegistryV2
    function set(address vault, bytes32 key, string calldata value) external {
        bool locked = _authorizeWrite(vault, key);
        _getRegistryV2Storage().data[vault][key] = abi.encode(value);
        emit StringSet(vault, key, value);
        if (locked) emit ForceSetEntry(vault, key, ValueType.STRING);
    }

    /// @inheritdoc IMetaVaultsRegistryV2
    function set(address vault, bytes32 key, address value) external {
        bool locked = _authorizeWrite(vault, key);
        _getRegistryV2Storage().data[vault][key] = abi.encode(value);
        emit AddressSet(vault, key, value);
        if (locked) emit ForceSetEntry(vault, key, ValueType.ADDRESS);
    }

    /// @inheritdoc IMetaVaultsRegistryV2
    function set(address vault, bytes32 key, uint256 value) external {
        bool locked = _authorizeWrite(vault, key);
        _getRegistryV2Storage().data[vault][key] = abi.encode(value);
        emit Uint256Set(vault, key, value);
        if (locked) emit ForceSetEntry(vault, key, ValueType.UINT256);
    }

    /// @inheritdoc IMetaVaultsRegistryV2
    function set(address vault, bytes32 key, bytes calldata value) external {
        bool locked = _authorizeWrite(vault, key);
        _getRegistryV2Storage().data[vault][key] = value;
        emit BytesSet(vault, key, value);
        if (locked) emit ForceSetEntry(vault, key, ValueType.BYTES);
    }

    /// @inheritdoc IMetaVaultsRegistryV2
    function set(address vault, bytes32 key, bool value) external {
        bool locked = _authorizeWrite(vault, key);
        _getRegistryV2Storage().data[vault][key] = abi.encode(value);
        emit BoolSet(vault, key, value);
        if (locked) emit ForceSetEntry(vault, key, ValueType.BOOL);
    }

    /// @inheritdoc IMetaVaultsRegistryV2
    function set(address vault, RegistryEntry[] calldata entries) external {
        // Authorize once for the whole bulk write (admin or vault writing to itself).
        bool isSelf = _authorizeBulk(vault);
        RegistryV2Storage storage $ = _getRegistryV2Storage();
        for (uint256 i = 0; i < entries.length; i++) {
            RegistryEntry calldata e = entries[i];
            bool locked = $.lockedKeys[vault][e.key];
            if (locked && isSelf) revert KeyIsLocked(e.key);
            $.data[vault][e.key] = e.value;
            if (e.valueType == ValueType.STRING)
                emit StringSet(vault, e.key, abi.decode(e.value, (string)));
            else if (e.valueType == ValueType.ADDRESS)
                emit AddressSet(vault, e.key, abi.decode(e.value, (address)));
            else if (e.valueType == ValueType.UINT256)
                emit Uint256Set(vault, e.key, abi.decode(e.value, (uint256)));
            else if (e.valueType == ValueType.BYTES) emit BytesSet(vault, e.key, e.value);
            else if (e.valueType == ValueType.BOOL)
                emit BoolSet(vault, e.key, abi.decode(e.value, (bool)));
            else revert InvalidValueType(e.valueType);
            if (locked) emit ForceSetEntry(vault, e.key, e.valueType);
            if (e.lock && !locked) {
                $.lockedKeys[vault][e.key] = true;
                emit KeyLocked(vault, e.key);
            }
        }
    }

    // -----------------------------------------------------------------------
    // Lock management — admin only
    // -----------------------------------------------------------------------

    /// @inheritdoc IMetaVaultsRegistryV2
    function lockKey(address vault, bytes32 key) external restricted {
        _getRegistryV2Storage().lockedKeys[vault][key] = true;
        emit KeyLocked(vault, key);
    }

    /// @inheritdoc IMetaVaultsRegistryV2
    function unlockKey(address vault, bytes32 key) external restricted {
        _getRegistryV2Storage().lockedKeys[vault][key] = false;
        emit KeyUnlocked(vault, key);
    }

    // -----------------------------------------------------------------------
    // Getters
    // -----------------------------------------------------------------------

    /// @inheritdoc IMetaVaultsRegistryV2
    function getString(address vault, bytes32 key) external view returns (string memory) {
        bytes memory raw = _getRegistryV2Storage().data[vault][key];
        if (raw.length == 0) return "";
        return abi.decode(raw, (string));
    }

    /// @inheritdoc IMetaVaultsRegistryV2
    function getAddress(address vault, bytes32 key) external view returns (address) {
        bytes memory raw = _getRegistryV2Storage().data[vault][key];
        if (raw.length == 0) return address(0);
        return abi.decode(raw, (address));
    }

    /// @inheritdoc IMetaVaultsRegistryV2
    function getUint256(address vault, bytes32 key) external view returns (uint256) {
        bytes memory raw = _getRegistryV2Storage().data[vault][key];
        if (raw.length == 0) return 0;
        return abi.decode(raw, (uint256));
    }

    /// @inheritdoc IMetaVaultsRegistryV2
    function getBytes(address vault, bytes32 key) external view returns (bytes memory) {
        return _getRegistryV2Storage().data[vault][key];
    }

    /// @inheritdoc IMetaVaultsRegistryV2
    function getBool(address vault, bytes32 key) external view returns (bool) {
        bytes memory raw = _getRegistryV2Storage().data[vault][key];
        if (raw.length == 0) return false;
        return abi.decode(raw, (bool));
    }

    /// @inheritdoc IMetaVaultsRegistryV2
    function isKeySet(address vault, bytes32 key) external view returns (bool) {
        return _getRegistryV2Storage().data[vault][key].length > 0;
    }

    /// @inheritdoc IMetaVaultsRegistryV2
    function isKeyLocked(address vault, bytes32 key) external view returns (bool) {
        return _getRegistryV2Storage().lockedKeys[vault][key];
    }

    // -----------------------------------------------------------------------
    // Internal auth helpers
    // -----------------------------------------------------------------------

    /// @dev Authorize a single-entry `set` call and return the current lock state.
    ///      Self-writes (msg.sender == vault) revert if the key is locked. Admin
    ///      writes proceed regardless; the caller emits `ForceSetEntry` when locked.
    function _authorizeWrite(address vault, bytes32 key) internal returns (bool locked) {
        bool isSelf = _msgSender() == vault;
        if (!isSelf) {
            _checkCanCall(_msgSender(), _msgData());
        }
        locked = _getRegistryV2Storage().lockedKeys[vault][key];
        if (locked && isSelf) revert KeyIsLocked(key);
    }

    /// @dev Authorize a bulk `set` call. Returns whether the caller is the vault itself.
    ///      Per-entry lock checks happen in the loop.
    function _authorizeBulk(address vault) internal returns (bool isSelf) {
        isSelf = _msgSender() == vault;
        if (!isSelf) {
            _checkCanCall(_msgSender(), _msgData());
        }
    }
}
