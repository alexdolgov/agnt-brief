// SPDX-License-Identifier: AGPL-3.0
pragma solidity ^0.8.24;

import "@solmate/auth/Owned.sol";

import "./InputChecker.sol";

/// @title AddressMethodManager
/// @notice Whitelist of contract addresses and, per address, the set of function selectors
/// that are authorized for that contract. A (target, selector) pair is authorized only when
/// both the target address and the selector on that target have been whitelisted by the owner.
/// A constructor-supplied global selector blacklist prevents specific selectors from ever being
/// whitelisted on any address, even by the owner.
contract AddressMethodManager is Owned {
    /// @notice One entry for `addAddressBatch`: a target address and the selectors to whitelist on it.
    struct AddressMethods {
        address target;
        bytes4[] methods;
    }

    using InputChecker for address;

    event AddressAdded(address indexed _address);
    event AddressRemoved(address indexed _address);
    event MethodAdded(address indexed _address, bytes4 indexed _selector);
    event MethodRemoved(address indexed _address, bytes4 indexed _selector);

    error AddressAlreadyWhitelistedError(address _address);
    error AddressNotWhitelistedError(address _address);
    error MethodAlreadyWhitelistedError(address _address, bytes4 _selector);
    error MethodNotWhitelistedError(address _address, bytes4 _selector);
    error MethodBlacklistedError(bytes4 _selector);

    mapping(address => bool) private _addressWhitelist;
    mapping(address => mapping(bytes4 => bool)) private _methodWhitelist;
    /// @dev Conceptually immutable: populated only in the constructor and never written elsewhere.
    /// Solidity does not allow `immutable` on mapping types, so the invariant is enforced by code
    mapping(bytes4 => bool) private _blacklistedMethods;

    /// @dev Reverse indexes for enumeration. Entries are assigned on first add and never
    /// cleared, mirroring `AddressManager`'s directory: a removed entry retains its index so
    /// historical positions stay stable. Index 0 means "never indexed"; live indexes start at 1.
    mapping(address => uint16) private _addressIndex;
    mapping(uint16 => address) private _indexToAddress;
    uint16 private _lastAddressIndex;

    mapping(address => mapping(bytes4 => uint16)) private _methodIndex;
    mapping(address => mapping(uint16 => bytes4)) private _indexToMethod;
    mapping(address => uint16) private _lastMethodIndex;

    constructor(bytes4[] memory _blacklistMethods) Owned(msg.sender) {
        uint256 blacklistTotal = _blacklistMethods.length;
        for (uint256 i; i < blacklistTotal; ++i) {
            _blacklistedMethods[_blacklistMethods[i]] = true;
        }
    }

    /// @notice Whitelist a contract address. Methods must be added separately.
    function addAddress(address _entry) external onlyOwner {
        _addAddress(_entry);
    }

    /// @notice Whitelist a contract address and a batch of selectors on it in one transaction.
    /// Reverts if any selector is blacklisted; partial state from earlier iterations is rolled
    /// back together with the failed one because the whole call reverts.
    function addAddress(address _entry, bytes4[] calldata _methods) external onlyOwner {
        _addAddress(_entry);
        uint256 total = _methods.length;
        for (uint256 i; i < total; ++i) {
            _addMethod(_entry, _methods[i]);
        }
    }

    /// @notice Whitelist many addresses (each with their own selector list) in one transaction.
    /// Any per-entry failure (zero address, duplicate, blacklisted selector, …) reverts the
    /// whole batch, so partial state from earlier entries is rolled back.
    function addAddressBatch(AddressMethods[] calldata _entries) external onlyOwner {
        uint256 total = _entries.length;
        for (uint256 i; i < total; ++i) {
            address target = _entries[i].target;
            _addAddress(target);
            bytes4[] calldata methods = _entries[i].methods;
            uint256 methodsTotal = methods.length;
            for (uint256 j; j < methodsTotal; ++j) {
                _addMethod(target, methods[j]);
            }
        }
    }

    /// @notice Remove a contract from the whitelist and clears every method whitelisted.
    function removeAddress(address _entry) external onlyOwner {
        if (!_addressWhitelist[_entry]) revert AddressNotWhitelistedError(_entry);
        _addressWhitelist[_entry] = false;
        uint16 last = _lastMethodIndex[_entry];
        for (uint16 i = 1; i <= last; ++i) {
            _methodWhitelist[_entry][_indexToMethod[_entry][i]] = false;
        }
        emit AddressRemoved(_entry);
    }

    /// @notice Whitelist `_selector` as callable on `_entry`. The target address must already
    /// be whitelisted via `addAddress`, and the selector must not be in the global blacklist.
    function addMethod(address _entry, bytes4 _selector) external onlyOwner {
        _addMethod(_entry, _selector);
    }

    /// @notice Remove a previously-whitelisted selector from `_entry`.
    function removeMethod(address _entry, bytes4 _selector) external onlyOwner {
        if (!_methodWhitelist[_entry][_selector]) revert MethodNotWhitelistedError(_entry, _selector);
        _methodWhitelist[_entry][_selector] = false;
        emit MethodRemoved(_entry, _selector);
    }

    /// @notice Whether the address itself is whitelisted (ignoring method-level state). Useful
    /// for early defense-in-depth checks where a specific selector is not yet known.
    function isAddressWhitelisted(address _entry) external view returns (bool) {
        return _addressWhitelist[_entry];
    }

    /// @notice Whether `_selector` is callable on `_entry`. Returns true only when both
    /// the address and the selector are whitelisted; removing the address suspends all methods.
    function isWhitelisted(address _entry, bytes4 _selector) external view returns (bool) {
        return _addressWhitelist[_entry] && _methodWhitelist[_entry][_selector];
    }

    /// @notice Address previously assigned to `_index`. Returns the zero address for unused indexes;
    /// iterate from 1 until a zero return to enumerate every address that has ever been added.
    function indexToAddress(uint16 _index) external view returns (address) {
        return _indexToAddress[_index];
    }

    /// @notice Selector previously assigned to `_index` on `_entry`. Returns zero for unused indexes;
    /// iterate from 1 until a zero return to enumerate every selector ever added on `_entry`.
    function indexToMethod(address _entry, uint16 _index) external view returns (bytes4) {
        return _indexToMethod[_entry][_index];
    }

    function _addAddress(address _entry) private {
        _entry.checkNotZero();
        if (_addressWhitelist[_entry]) revert AddressAlreadyWhitelistedError(_entry);
        _addressWhitelist[_entry] = true;
        if (_addressIndex[_entry] == 0) {
            unchecked {
                ++_lastAddressIndex;
            }
            _addressIndex[_entry] = _lastAddressIndex;
            _indexToAddress[_lastAddressIndex] = _entry;
        }
        emit AddressAdded(_entry);
    }

    function _addMethod(address _entry, bytes4 _selector) private {
        if (!_addressWhitelist[_entry]) revert AddressNotWhitelistedError(_entry);
        if (_blacklistedMethods[_selector]) revert MethodBlacklistedError(_selector);
        if (_methodWhitelist[_entry][_selector]) revert MethodAlreadyWhitelistedError(_entry, _selector);
        _methodWhitelist[_entry][_selector] = true;
        if (_methodIndex[_entry][_selector] == 0) {
            unchecked {
                ++_lastMethodIndex[_entry];
            }
            uint16 idx = _lastMethodIndex[_entry];
            _methodIndex[_entry][_selector] = idx;
            _indexToMethod[_entry][idx] = _selector;
        }
        emit MethodAdded(_entry, _selector);
    }
}
