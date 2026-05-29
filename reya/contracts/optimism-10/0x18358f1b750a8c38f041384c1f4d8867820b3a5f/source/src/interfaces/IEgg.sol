// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.13;

interface IEgg {
    function egg(
        address msgSender,
        bytes calldata data
    ) external view returns (bool);
}
