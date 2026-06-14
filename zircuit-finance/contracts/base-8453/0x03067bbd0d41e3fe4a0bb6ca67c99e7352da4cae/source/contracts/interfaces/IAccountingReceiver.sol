// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

import { AccountingReceiverParams, DeltaMessage } from "../common/Types.sol";

interface IAccountingReceiver {
    function updateAccountingLocal(DeltaMessage calldata _message) external;
    function initialize(AccountingReceiverParams calldata _params) external;
}
