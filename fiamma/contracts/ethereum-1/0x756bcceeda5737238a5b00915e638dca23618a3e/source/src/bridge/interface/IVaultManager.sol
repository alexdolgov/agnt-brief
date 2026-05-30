// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

interface IVaultManager {
    function deposit(
        address vault,
        uint8 vaultExtra,
        uint256 amount,
        string memory bitcoinAddress,
        bytes32 pubX,
        bytes32 pubY
    ) external;
}
