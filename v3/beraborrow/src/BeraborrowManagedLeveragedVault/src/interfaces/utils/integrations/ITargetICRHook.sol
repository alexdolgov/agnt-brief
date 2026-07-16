// SPDX-License-Identifier: MIT

pragma solidity 0.8.26;

interface ITargetICRHook {
    function calcTargetICR()
        external
        view
        returns (uint256 targetICR);
}