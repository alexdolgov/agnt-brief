// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {AccessControl} from "@openzeppelin/contracts/access/AccessControl.sol";
import {EnumerableSet} from "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";

/// @title RewardTokenRegistry
/// @notice Append-only registry of all reward tokens ever seen by the protocol (e.g., received by the Vault/Distributor).
contract RewardTokenRegistry is AccessControl {
    using EnumerableSet for EnumerableSet.AddressSet;

    bytes32 public constant REGISTRAR_ROLE = keccak256("REGISTRAR_ROLE");

    EnumerableSet.AddressSet private _tokens;

    event TokenRegistered(address indexed token);
    event TokenUnregistered(address indexed token); // optional, off by default

    constructor(address admin, address registrar) {
        require(admin != address(0), "admin=0");
        _grantRole(DEFAULT_ADMIN_ROLE, admin);
        if (registrar != address(0)) {
            _grantRole(REGISTRAR_ROLE, registrar);
        }
    }

    /* ========================= Writes (role-gated) ========================= */

    function register(address token) external onlyRole(REGISTRAR_ROLE) {
        _register(token);
    }

    function registerBatch(address[] calldata tokens) external onlyRole(REGISTRAR_ROLE) {
        uint256 len = tokens.length;
        for (uint256 i = 0; i < len; i++) {
            _register(tokens[i]);
        }
    }

    // Optional admin method if you ever need to prune a mistake
    function adminUnregister(address token) external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (_tokens.remove(token)) {
            emit TokenUnregistered(token);
        }
    }

    function _register(address token) internal {
        require(token != address(0), "token=0");
        if (_tokens.add(token)) {
            emit TokenRegistered(token);
        }
    }

    /* ============================== Reads ============================== */

    function tokenCount() external view returns (uint256) {
        return _tokens.length();
    }

    /// @notice Returns up to `limit` tokens starting at `offset`.
    function tokens(uint256 offset, uint256 limit) external view returns (address[] memory out) {
        uint256 n = _tokens.length();
        if (offset >= n) return out;
        uint256 end = offset + limit;
        if (end > n) end = n;
        uint256 sz = end - offset;
        out = new address[](sz);
        for (uint256 i = 0; i < sz; i++) {
            out[i] = _tokens.at(offset + i);
        }
    }

    function isRegistered(address token) external view returns (bool) {
        return _tokens.contains(token);
    }

    function allTokens() external view returns (address[] memory out) {
        uint256 n = _tokens.length();
        out = new address[](n);
        for (uint256 i = 0; i < n; i++) out[i] = _tokens.at(i);
    }
}
