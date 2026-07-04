// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.28;

import {IFactory} from 'src/interfaces/IFactory.sol';

/// @title IFactoryWithSidecar.
/// @author Stake DAO
/// @custom:github @stake-dao
/// @custom:contact contact@stakedao.org

/// @notice Interface for factories that support Convex sidecar functionality.
interface ICurveFactory is IFactory {
    /// @notice Convex sidecar factory address
    function CONVEX_SIDECAR_FACTORY() external view returns (address);
}
