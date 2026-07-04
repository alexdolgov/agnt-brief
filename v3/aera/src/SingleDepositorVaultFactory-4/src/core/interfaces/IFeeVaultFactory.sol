// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.28;

import { FeeVaultParameters } from "src/core/Types.sol";

/// @title IFeeVaultFactory
/// @notice Interface for the fee vault factory.
interface IFeeVaultFactory {
    ////////////////////////////////////////////////////////////
    //                       Functions                        //
    ////////////////////////////////////////////////////////////

    /// @notice Get the parameters for the fee vault.
    /// @return params The parameters for the fee vault.
    function feeVaultParameters() external view returns (FeeVaultParameters memory params);
}
