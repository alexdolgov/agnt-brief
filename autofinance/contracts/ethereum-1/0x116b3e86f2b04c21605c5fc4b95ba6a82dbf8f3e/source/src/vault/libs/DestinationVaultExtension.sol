// SPDX-License-Identifier: UNLICENSED
// Copyright (c) 2023 Tokemak Foundation. All rights reserved.

pragma solidity ^0.8.24;

import { Errors } from "src/utils/Errors.sol";
import { IERC20Metadata as IERC20 } from "openzeppelin-contracts/token/ERC20/extensions/IERC20Metadata.sol";
import { IDestinationVaultExtension } from "src/interfaces/vault/IDestinationVaultExtension.sol";
import { EnumerableSet } from "openzeppelin-contracts/utils/structs/EnumerableSet.sol";
import { IDestinationVault } from "src/interfaces/vault/IDestinationVault.sol";
import { Address } from "openzeppelin-contracts/utils/Address.sol";

library DestinationVaultExtension {
    using EnumerableSet for EnumerableSet.AddressSet;
    using Address for address;

    error ExtensionNotActive();
    error ExtensionAmountMismatch();

    function executeExtension(
        address extension,
        uint256 extensionSetTime,
        EnumerableSet.AddressSet storage _trackedTokens,
        bytes memory data
    ) external {
        Errors.verifyNotZero(extension, "extension");

        IDestinationVault dv = IDestinationVault(address(this));

        // slither-disable-next-line timestamp
        if (block.timestamp < extensionSetTime + 7 days) {
            revert ExtensionNotActive();
        }

        uint256 trackedTokensLength = _trackedTokens.length();

        // Save the balances
        uint256[] memory trackedTokensBalances = new uint256[](trackedTokensLength);
        uint256 externalDebtBalance_ = dv.externalDebtBalance();
        uint256 internalDebtBalance_ = dv.internalDebtBalance();
        // slither-disable-next-line similar-names
        uint256 externalQueriedBalance_ = dv.externalQueriedBalance();
        uint256 internalQueriedBalance_ = dv.internalQueriedBalance();

        for (uint256 i = 0; i < trackedTokensLength; ++i) {
            trackedTokensBalances[i] = IERC20(_trackedTokens.at(i)).balanceOf(address(this));
        }

        // This could still set an approval that allows a later transfer out
        // but that is acceptable for our use case
        // slither-disable-next-line unused-return
        extension.functionDelegateCall(abi.encodeCall(IDestinationVaultExtension.execute, (data)));

        // Verify that no tokens were pulled
        for (uint256 i = 0; i < trackedTokensLength; ++i) {
            IERC20 token = IERC20(_trackedTokens.at(i));
            if (trackedTokensBalances[i] != token.balanceOf(address(this))) {
                revert ExtensionAmountMismatch();
            }
        }

        // Verify that DestinationVault balances have not changed
        if (
            externalDebtBalance_ != dv.externalDebtBalance() || internalDebtBalance_ != dv.internalDebtBalance()
                || externalQueriedBalance_ != dv.externalQueriedBalance()
                || internalQueriedBalance_ != dv.internalQueriedBalance()
        ) {
            revert ExtensionAmountMismatch();
        }
    }
}
