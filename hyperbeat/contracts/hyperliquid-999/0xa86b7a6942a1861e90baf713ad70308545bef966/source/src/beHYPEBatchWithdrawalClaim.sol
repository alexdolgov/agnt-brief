// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.8.29;

import { IWithdrawManager } from "./interfaces/IWithdrawManager.sol";

contract beHYPEBatchWithdrawalClaim {
    IWithdrawManager public immutable withdrawManager;

    constructor(address _withdrawManager) {
        withdrawManager = IWithdrawManager(_withdrawManager);
    }

    function claimWithdrawalsInBatch(uint256[] memory withdrawalIds) external {
        uint256 withdrawalsLength = withdrawalIds.length;
        for (uint256 i = 0; i < withdrawalsLength; i++) {
            withdrawManager.claimWithdrawal(withdrawalIds[i]);
        }
    }
}
