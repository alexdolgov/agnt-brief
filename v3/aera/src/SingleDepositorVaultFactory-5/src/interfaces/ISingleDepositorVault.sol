// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.28;

import { AssetAmount, OperationPayable } from "../Types.sol";

/// @notice Interface for the SingleDepositorVault
interface ISingleDepositorVault {
    ////////////////////////////////////////////////////////////
    //                         Events                         //
    ////////////////////////////////////////////////////////////

    event Deposit(AssetAmount[] assetAmounts);
    event Withdraw(AssetAmount[] assetAmounts);
    event Execute(bytes result);

    ////////////////////////////////////////////////////////////
    //                         Errors                         //
    ////////////////////////////////////////////////////////////

    error Aera__ExecutionFailed(bytes result);

    ////////////////////////////////////////////////////////////
    //                       Functions                        //
    ////////////////////////////////////////////////////////////

    function deposit(AssetAmount[] calldata assetAmounts) external;
    function withdraw(AssetAmount[] calldata assetAmounts) external;
    function execute(OperationPayable[] calldata operations) external;
}
