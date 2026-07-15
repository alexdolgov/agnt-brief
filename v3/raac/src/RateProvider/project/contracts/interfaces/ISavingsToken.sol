// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.28;

import {IERC4626} from "@openzeppelin/contracts/interfaces/IERC4626.sol";

/// @title ISavingsToken
/// @notice Interface for the savings token accepted by the PSM vault.
/// @dev Extends IERC4626. The RateProvider uses convertToAssets() to derive the exchange rate.
interface ISavingsToken is IERC4626 {}
