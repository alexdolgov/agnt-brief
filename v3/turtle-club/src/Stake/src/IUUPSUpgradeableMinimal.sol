// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.2.0
pragma solidity =0.8.26;

interface IUUPSUpgradeableMinimal {
    function upgradeToAndCall(address newImplementation, bytes calldata data) external payable;
}
