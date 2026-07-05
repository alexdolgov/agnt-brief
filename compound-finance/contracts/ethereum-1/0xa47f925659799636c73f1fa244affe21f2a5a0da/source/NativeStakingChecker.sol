// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.4.0
pragma solidity ^0.8.27;

interface IStrategy {
    function safeApproveAllTokens()
        external;
}

contract NativeStakingChecker{
    IStrategy public immutable strategy;

    constructor(IStrategy _strategy) {
        strategy = _strategy;
    }

    function checker()
        external
        pure
        returns (bool canExec, bytes memory execPayload)
    {
        canExec = true;
        execPayload = abi.encodeWithSignature("safeApproveAllTokens()");
    }
}