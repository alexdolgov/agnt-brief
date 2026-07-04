// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import {IString} from "../../../storage/IString.sol";

interface IFCNServiceSpecs is IString {
    struct TaskRequest {
        bytes32 taskId;
        bytes32 fheKeySetId;
        bytes taskInputs;
    }

    struct TaskResult {
        URL result;
    }
}
