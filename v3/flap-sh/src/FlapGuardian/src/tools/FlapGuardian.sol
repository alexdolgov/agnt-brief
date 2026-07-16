// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

/// @title FlapGuardian
/// @author The Flap Team
/// @notice Guardian contract for vault emergency management and CTO cases
/// @dev Currently, this contract does nothing, but this contract is upgradeable.
///      If your Vault has special permissions, you must grant the same permissions
///      to this contract. This allows it to act as a guardian for the Vault in case
///      of an emergency or CTO case.
contract FlapGuardian {
    /// @notice Returns the version of this contract
    /// @return version string
    function version() external pure returns (string memory) {
        return "0.0.1";
    }
}
