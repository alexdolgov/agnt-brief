// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.28;

import { AssetAmount, OperationPayable } from "src/core/Types.sol";
import { IFeeVault } from "src/core/interfaces/IFeeVault.sol";

/// @notice Interface for the SingleDepositorVault
interface ISingleDepositorVault is IFeeVault {
    ////////////////////////////////////////////////////////////
    //                         Events                         //
    ////////////////////////////////////////////////////////////

    event Deposited(address indexed depositor, AssetAmount[] assetAmounts);
    event Withdrawn(address indexed withdrawer, AssetAmount[] assetAmounts);

    ////////////////////////////////////////////////////////////
    //                         Errors                         //
    ////////////////////////////////////////////////////////////

    error Aera__ExecutionFailed(bytes result);

    ////////////////////////////////////////////////////////////
    //                       Functions                        //
    ////////////////////////////////////////////////////////////

    /// @notice Deposit assets into the vault
    /// @param assetAmounts The assets to deposit
    function deposit(AssetAmount[] calldata assetAmounts) external;

    /// @notice Withdraw assets from the vault
    /// @param assetAmounts The assets to withdraw
    function withdraw(AssetAmount[] calldata assetAmounts) external;

    /// @notice Execute operations on the vault
    /// @param operations The operations to execute
    function execute(OperationPayable[] calldata operations) external;
}
