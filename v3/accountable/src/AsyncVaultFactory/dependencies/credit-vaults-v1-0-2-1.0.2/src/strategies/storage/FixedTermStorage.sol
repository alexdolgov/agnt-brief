// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.20;

import {IAccountableFixedTerm, InterestParams} from "../../interfaces/IAccountableFixedTerm.sol";

/// @title FixedTermStorage
/// @notice Storage layout for AccountableFixedTerm with upgrade safety gap
/// @dev Centralizes storage to avoid collisions and simplify upgradeable contract development
///      All storage variables MUST be declared here
abstract contract FixedTermStorage is IAccountableFixedTerm {
    /// @dev Loan interest parameters
    InterestParams internal _interestParams;

    /// @dev Accumulator for interest per share
    uint256 internal _accInterestPerShare;

    /// @dev Accumulator for interest index per user
    mapping(address user => uint256 index) internal _userIndex;

    /// @dev Accumulator for pending interest per user
    mapping(address user => uint256 interest) internal _pendingInterest;

    /// @notice address of base token
    address public asset;

    /// @dev Gap for future storage variables in AccountableFixedTerm
    /// @dev Reserves 50 slots for future additions to AccountableFixedTerm
    uint256[50] private __gap;
}
