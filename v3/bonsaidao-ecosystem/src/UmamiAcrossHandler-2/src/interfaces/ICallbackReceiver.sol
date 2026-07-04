// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.17;

import { AggregateVaultStorage } from "../storage/AggregateVaultStorage.sol";

interface ICallbackReceiver {
    function afterDepositExecution(uint256 key, bool sucess, AggregateVaultStorage.OCRequest memory request) external;

    function afterWithdrawalExecution(uint256 key, bool sucess, AggregateVaultStorage.OCRequest memory request)
        external;
}
