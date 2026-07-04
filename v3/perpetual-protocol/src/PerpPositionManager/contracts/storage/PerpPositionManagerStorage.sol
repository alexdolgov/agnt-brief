// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.7.6;

/// @notice For future upgrades, do not change PerpPositionManagerStorageV1. Create a new
/// contract which implements PerpPositionManagerStorageV1 and following the naming convention
/// PerpPositionManagerStorageVX.
abstract contract PerpPositionManagerStorageV1 {
    address internal _caller;
    address internal _vault;
    address internal _clearingHouse;
    address internal _clearingHouseConfig;
    address internal _accountBalance;
    address internal _vBaseToken;
}
