// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import {BracketVaultV2} from "./BracketVaultV2.sol";

contract BracketVaultLens {

    function getSharesUnderManagement(address vault) public view returns (uint256) {
        BracketVaultV2 bracketVault = BracketVaultV2(vault);

        uint16 epoch = bracketVault.epoch();
        uint16 withdrawDelay = bracketVault.withdrawDelay();
        uint256 totalShares = bracketVault.totalShares();

        for (uint16 i; i <= withdrawDelay; i++) {
            totalShares += bracketVault.totalWithdrawals(epoch + i);
        }

        return totalShares;
    }

    function getTVL(address vault) public view returns (uint256) {
        BracketVaultV2 bracketVault = BracketVaultV2(vault);

        uint256 assetsUnderManagement = bracketVault.convertToAssets(getSharesUnderManagement(vault));
        uint256 pendingDeposits = bracketVault.totalDeposits() + bracketVault.totalQueuedDeposits();

        return assetsUnderManagement + pendingDeposits;
    }
}