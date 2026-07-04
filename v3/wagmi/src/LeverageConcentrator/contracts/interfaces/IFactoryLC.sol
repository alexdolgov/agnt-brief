// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.0;

interface IFactoryLC {
    function createLCpool(
        address tokenA,
        address tokenB,
        uint24 feeTier,
        string memory symbols
    ) external returns (address);

    function getpool(
        uint24 feeTier,
        address tokenA,
        address tokenB
    ) external view returns (address, bytes32);
}
