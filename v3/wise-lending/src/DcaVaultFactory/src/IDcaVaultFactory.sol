// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

interface IDcaVaultFactory {
    function feeRecipient() 
        external 
        view 
        returns (address);

    function feeBps() 
        external 
        view 
        returns (uint16);

    function isApprovedSwapRouter(
        address router
    )
        external
        view
        returns (bool);
}
