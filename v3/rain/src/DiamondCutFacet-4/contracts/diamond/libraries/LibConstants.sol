// SPDX-License-Identifier: MIT

pragma solidity 0.8.30;

/**
 * @title LibConstants
 * @author Rain Team
 * @notice Centralized repository of protocol-wide constants.
 * @dev Stores immutable configuration values shared across facets and libraries to ensure consistency and reduce
 * duplication.
 */
library LibConstants {
    /* ========================== STATE VARIABLES ========================== */

    // keccak256("Authority")
    /// @dev Authority role.
    bytes32 internal constant AUTHORITY_ROLE = 0x8b16b0b80f67879a61157c5541d94886825d45098bee58e37e2d2e87b2fe367b;

    // keccak256("Owner")
    /// @dev Owner role.
    bytes32 internal constant OWNER_ROLE = 0x929f3fd6848015f83b9210c89f7744e3941acae1195c8bf9f5798c090dc8f497;

    /// @dev Maximum allowed total fee in basis points.
    uint256 internal constant MAX_TOTAL_FEE_BPS = 500;

    /// @dev Maximum termination market duration in milliseconds.
    uint256 internal constant MAX_MARKET_TERMINATION_DURATION_MS = 92_000;
}
