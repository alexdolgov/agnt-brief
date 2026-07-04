// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.29;

import { FeeVaultParameters } from "src/core/Types.sol";

/// @title IFeeVaultDeployer
/// @notice Interface for the fee vault deployer
interface IFeeVaultDeployer {
    ////////////////////////////////////////////////////////////
    //                       Functions                        //
    ////////////////////////////////////////////////////////////

    /// @notice Get the deployment parameters for the fee vault
    /// @return params Deployment parameters for the fee vault
    function feeVaultParameters() external view returns (FeeVaultParameters memory params);
}
