// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

/**
 * @title GovernanceAccessor
 *
 * @notice Base contract for Governance Accessors
 *
 * @dev Governance Accessors are contracts enabling a SpellExecutor to perform
 *      a subset of auth operations on a contract.
 *
 * @dev The contract makes available the spell modifier to protect sensitive
 *      functions that must only be executeable via a SpellExecutor.
 *
 * @author Chronicle Labs, Inc.
 * @custom:security-contact security@chroniclelabs.org
 */
abstract contract GovernanceAccessor {
    /// @notice Thrown by protected function if caller not spell executor.
    /// @param caller The caller's address.
    error NotSpellExecutor(address caller);

    /// @notice Emitted when a protected accessor function is executed.
    /// @param caller The address that invoked the accessor (always the spell
    ///               executor due to the `spell` modifier).
    /// @param target The contract address the accessor forwarded the call to.
    event AccessorExecuted(address indexed caller, address indexed target);

    /// @notice The spell executor is the only address eligible to call
    ///         protected functions.
    address public immutable spellExecutor;

    constructor(address spellExecutor_) {
        spellExecutor = spellExecutor_;
    }

    modifier spell() {
        if (msg.sender != spellExecutor) {
            revert NotSpellExecutor(msg.sender);
        }
        _;
    }
}

