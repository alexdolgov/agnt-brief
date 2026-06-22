// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

interface IIntermediary {
    function pullFundsFromUserToVault(
        address user, 
        address vault,
        address token, 
        uint256 amount, 
        bytes calldata data
    ) external;
}