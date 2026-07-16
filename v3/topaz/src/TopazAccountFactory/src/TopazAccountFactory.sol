// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import {Clones} from "@openzeppelin/contracts/proxy/Clones.sol";
import {TopazAccount} from "./TopazAccount.sol";

/// @title TopazAccountFactory
/// @notice Deterministic clone factory for TopazAccount using CREATE2.
///         One canonical account per (owner, userSalt) within a version namespace.
contract TopazAccountFactory {
    address public immutable implementation;

    /// @dev Bumping this on a future version prevents address collisions / enables migration.
    bytes32 public constant VERSION_NAMESPACE = bytes32("TOPAZ_BETA_V1");

    event AccountDeployed(address indexed owner, bytes32 indexed userSalt, address account);

    error ZeroImplementation();

    constructor(address _implementation) {
        if (_implementation == address(0)) revert ZeroImplementation();
        implementation = _implementation;
    }

    function _salt(address owner, bytes32 userSalt) internal pure returns (bytes32) {
        return keccak256(abi.encode(owner, VERSION_NAMESPACE, userSalt));
    }

    /// @notice Predicted account address for (owner, userSalt). Pure CREATE2 math.
    function computeAccount(address owner, bytes32 userSalt) public view returns (address) {
        return Clones.predictDeterministicAddress(implementation, _salt(owner, userSalt), address(this));
    }

    /// @notice Alias of computeAccount for callers that prefer the read name.
    function accountOf(address owner, bytes32 userSalt) external view returns (address) {
        return computeAccount(owner, userSalt);
    }

    function isDeployed(address account) public view returns (bool) {
        return account.code.length > 0;
    }

    /// @notice Deploy the account for (owner, userSalt). Reverts if already deployed.
    function deployAccount(address owner, bytes32 userSalt) public returns (address account) {
        account = Clones.cloneDeterministic(implementation, _salt(owner, userSalt));
        TopazAccount(payable(account)).initialize(owner);
        emit AccountDeployed(owner, userSalt, account);
    }

    /// @notice Idempotent: returns the existing account or deploys it if absent.
    function getOrDeployAccount(address owner, bytes32 userSalt) external returns (address account) {
        account = computeAccount(owner, userSalt);
        if (!isDeployed(account)) {
            account = deployAccount(owner, userSalt);
        }
    }
}
