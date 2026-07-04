// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

interface ICipCaller {
    function call(
        uint16 executionChainId_,
        string calldata executionContract_,
        string calldata functionName_,
        string[] calldata args_
    ) external;
}
