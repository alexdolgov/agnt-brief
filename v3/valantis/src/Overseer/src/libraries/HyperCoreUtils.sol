// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {PrecompileLib} from "@hyper-evm-lib/src/PrecompileLib.sol";
import {HLConstants} from "@hyper-evm-lib/src/common/HLConstants.sol";

library HyperCoreUtils {
    uint256 private constant E10 = 1e10;

    function getHypeSpotBalance(address user) internal view returns (uint256) {
        PrecompileLib.SpotBalance memory result = PrecompileLib.spotBalance(user, HLConstants.hypeTokenIndex());

        return uint256(result.total);
    }

    function getHypeStakingBalance(address user) internal view returns (uint256) {
        PrecompileLib.DelegatorSummary memory result = PrecompileLib.delegatorSummary(user);

        return uint256(result.delegated) + uint256(result.undelegated) + uint256(result.totalPendingWithdrawal);
    }

    function getHypeTotalL1Balance18Decimals(address user) internal view returns (uint256) {
        // Multiply by 1e10 to convert to 18 decimals
        return (getHypeSpotBalance(user) + getHypeStakingBalance(user)) * E10;
    }

    function isHyperCoreAccountActivated(address user) internal view returns (bool) {
        return PrecompileLib.coreUserExists(user);
    }
}
