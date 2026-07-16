// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.20;

import {PermissionLevel} from "../interfaces/IAccess.sol";
import {IAsyncVaultFactory} from "../interfaces/IAsyncVaultFactory.sol";

import {FailedDeployment} from "../constants/Errors.sol";
import {AccountableAsyncRedeemVault} from "../vault/AccountableAsyncRedeemVault.sol";

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

/// @title AsyncVaultFactory
/// @notice Factory for creating async vaults
contract AsyncVaultFactory is IAsyncVaultFactory {
    string internal constant ZERO_VAULT_ADDRESS = "zero vault address";

    /// @inheritdoc IAsyncVaultFactory
    function createAsyncRedeemVault(
        IERC20 asset_,
        address proxy_,
        bool sharesTransferable_,
        PermissionLevel permissionLevel_,
        string memory name_,
        string memory symbol_,
        uint256 precision_
    ) external returns (address vault) {
        vault = address(
            new AccountableAsyncRedeemVault(
                asset_, proxy_, sharesTransferable_, permissionLevel_, name_, symbol_, precision_
            )
        );
        if (vault == address(0)) revert FailedDeployment(ZERO_VAULT_ADDRESS);

        emit AsyncRedeemVaultCreated(vault);
    }
}
