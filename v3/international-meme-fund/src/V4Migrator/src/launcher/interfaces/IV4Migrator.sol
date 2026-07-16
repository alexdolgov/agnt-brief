// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

import { IMigrator } from "./IMigrator.sol";

/// @title  IV4Migrator
/// @notice Extension of {IMigrator} that exposes the per-migration context used by the
///         v4 fee hook. The hook's `afterInitialize` reads {currentGraduatingCurve} to
///         resolve the bonding curve that triggered the pool creation.
interface IV4Migrator is IMigrator {
    /// @notice The bonding curve currently mid-graduation, or zero outside a {migrate} call.
    function currentGraduatingCurve() external view returns (address);

    function LP_LOCK_SINK() external view returns (address);
}
