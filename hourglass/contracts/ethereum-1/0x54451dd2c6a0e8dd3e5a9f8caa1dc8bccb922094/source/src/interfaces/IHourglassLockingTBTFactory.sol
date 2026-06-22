// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

interface IHourglassLockingTBTFactory {
    function cloneReceipt(address implementation) external returns (address deployment);
}
