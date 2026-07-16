// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.20;

import "./IVault.sol";

interface IVaultSupervisor {
    function deposit(
        address vault,
        uint256 amount,
        uint256 minSharesOut
    ) external returns (uint256);
    function gimmieShares(IVault vault, uint256 shares) external;
}
