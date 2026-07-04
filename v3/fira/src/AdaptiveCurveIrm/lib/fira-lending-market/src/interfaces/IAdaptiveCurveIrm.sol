// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity 0.8.30;

import {IIrm} from "./IIrm.sol";
import {Id} from "./ILendingMarket.sol";

/// @title IAdaptiveCurveIrm
/// @author Fira Labs
/// @notice Interface exposed by the AdaptiveCurveIrm.
interface IAdaptiveCurveIrm is IIrm {
    /// @notice Address of lending market.
    function LENDING_MARKET() external view returns (address);

    /// @notice Rate at target utilization.
    /// @dev Tells the height of the curve.
    function rateAtTarget(Id id) external view returns (int256);
}
