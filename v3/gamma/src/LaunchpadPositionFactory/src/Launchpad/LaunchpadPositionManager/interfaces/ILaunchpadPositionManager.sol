/// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.26;

import {IMultiPositionManager} from "./IMultiPositionManager.sol";

/**
 * @title ILaunchpadPositionManager
 * @notice Interface for LimitedPositionManager (locked liquidity version)
 * @dev Similar to IMultiPositionManager but without withdraw/compound functions
 * @dev Uses IMultiPositionManager types (Action, Range, etc.) for compatibility
 */
interface ILaunchpadPositionManager is IMultiPositionManager {
  // NOTE: withdraw(), withdrawCustom(), compound(), compoundSwap() are intentionally removed
  // These functions are disabled in LimitedPositionManager for locked liquidity
  // Calls to these functions will revert with WithdrawalsDisabled or CompoundDisabled errors
}
