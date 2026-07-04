// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.28;

import { BaseVault } from "./BaseVault.sol";
import { AssetAmount, OperationPayable, VaultParameters } from "./Types.sol";

import { ISingleDepositorVault } from "./interfaces/ISingleDepositorVault.sol";
import { ISingleDepositorVaultFactory } from "./interfaces/ISingleDepositorVaultFactory.sol";
import { IERC20 } from "@oz/interfaces/IERC20.sol";
import { SafeERC20 } from "@oz/token/ERC20/utils/SafeERC20.sol";

contract SingleDepositorVault is ISingleDepositorVault, BaseVault {
    using SafeERC20 for IERC20;

    constructor() {
        VaultParameters memory params = ISingleDepositorVaultFactory(msg.sender).parameters();

        // Requirements: check that the admin address is not zero.
        require(params.owner != address(0), Aera__ZeroAddressOwner());

        // Effects: set the owner.
        transferOwnership(params.owner);

        // Effects: set the BaseVault's parameters.
        __BaseVault_setInitParams(params.guardian, params.hook, params.root);
    }

    function deposit(AssetAmount[] calldata assetAmounts) external requiresAuth {
        AssetAmount calldata assetAmount;
        uint256 length = assetAmounts.length;
        for (uint256 i = 0; i < length; ++i) {
            assetAmount = assetAmounts[i];
            assetAmount.asset.safeTransferFrom(msg.sender, address(this), assetAmount.amount);
        }

        emit Deposit(assetAmounts);
    }

    function withdraw(AssetAmount[] calldata assetAmounts) external requiresAuth {
        AssetAmount calldata assetAmount;
        uint256 length = assetAmounts.length;
        for (uint256 i = 0; i < length; ++i) {
            assetAmount = assetAmounts[i];
            assetAmount.asset.safeTransfer(msg.sender, assetAmount.amount);
        }

        emit Withdraw(assetAmounts);
    }

    function execute(OperationPayable[] calldata operations) external requiresAuth {
        bool success;
        bytes memory result;
        OperationPayable calldata operation;
        uint256 length = operations.length;
        for (uint256 i = 0; i < length; ++i) {
            operation = operations[i];

            //slither-disable-next-line arbitrary-send-eth
            (success, result) = operation.target.call{ value: operation.value }(operation.data);
            require(success, Aera__ExecutionFailed(result));
        }
    }
}
