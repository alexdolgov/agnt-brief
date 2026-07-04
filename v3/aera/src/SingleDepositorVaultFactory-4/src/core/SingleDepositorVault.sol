// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.28;

import { IERC20 } from "@oz/interfaces/IERC20.sol";
import { SafeERC20 } from "@oz/token/ERC20/utils/SafeERC20.sol";

import { FeeVault } from "src/core/FeeVault.sol";
import { AssetAmount, OperationPayable } from "src/core/Types.sol";
import { ISingleDepositorVault } from "src/core/interfaces/ISingleDepositorVault.sol";

contract SingleDepositorVault is ISingleDepositorVault, FeeVault {
    using SafeERC20 for IERC20;

    ////////////////////////////////////////////////////////////
    //              Public / External Functions               //
    ////////////////////////////////////////////////////////////

    /// @inheritdoc ISingleDepositorVault
    function deposit(AssetAmount[] calldata assetAmounts) external requiresAuth {
        AssetAmount calldata assetAmount;
        uint256 length = assetAmounts.length;
        for (uint256 i = 0; i < length; ++i) {
            assetAmount = assetAmounts[i];
            // Interactions: transfer the assets from the user to the vault
            assetAmount.asset.safeTransferFrom(msg.sender, address(this), assetAmount.amount);
        }

        // Log the deposit event
        emit Deposited(msg.sender, assetAmounts);
    }

    /// @inheritdoc ISingleDepositorVault
    function withdraw(AssetAmount[] calldata assetAmounts) external requiresAuth {
        AssetAmount calldata assetAmount;
        uint256 length = assetAmounts.length;
        for (uint256 i = 0; i < length; ++i) {
            assetAmount = assetAmounts[i];
            // Interactions: transfer the assets from the vault to the user
            assetAmount.asset.safeTransfer(msg.sender, assetAmount.amount);
        }

        // Log the withdraw event
        emit Withdrawn(msg.sender, assetAmounts);
    }

    /// @inheritdoc ISingleDepositorVault
    function execute(OperationPayable[] calldata operations) external requiresAuth {
        bool success;
        bytes memory result;
        OperationPayable calldata operation;
        uint256 length = operations.length;
        for (uint256 i = 0; i < length; ++i) {
            operation = operations[i];

            // Interactions: execute the call
            //slither-disable-next-line arbitrary-send-eth
            (success, result) = operation.target.call{ value: operation.value }(operation.data);
            // Requirements: check that the execution was successful
            require(success, Aera__ExecutionFailed(result));
        }
    }
}
