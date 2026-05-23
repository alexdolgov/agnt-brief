// SPDX-License-Identifier: MIT
pragma solidity 0.8.29;

import {Execution} from "kernel/types/Structs.sol";
import {AdvancedTransactionExecutor} from "./AdvancedTransactionExecutor.sol";

abstract contract CallOrderExecutor is AdvancedTransactionExecutor {
    struct AdditionalData {
        // The array of ERC-7579 execution/call objects
        Execution[] executions;
    }

    event CallOrderFilled();

    error EmptyExecutionsArray();

    constructor(address owner_) AdvancedTransactionExecutor(owner_) {}

    /*//////////////////////////////////////////////////////////////////////////
                                     MODULE LOGIC
    //////////////////////////////////////////////////////////////////////////*/

    /// @inheritdoc AdvancedTransactionExecutor
    function _validateAdditionalData(bytes memory additionalData_) internal pure override {
        AdditionalData memory _data = abi.decode(additionalData_, (AdditionalData));

        if (_data.executions.length == 0) revert EmptyExecutionsArray();
    }

    /// @inheritdoc AdvancedTransactionExecutor
    function _fill(Order memory order_, bytes memory /*callbackData_*/) internal override {
        AdditionalData memory _data = abi.decode(order_.additionalData, (AdditionalData));

        // Note: It'll revert if any execution fails
        _executeOnBehalf(order_.smartAccount, _data.executions);

        emit CallOrderFilled();
    }
}
