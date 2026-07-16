// SPDX-License-Identifier: MIT

pragma solidity 0.6.12;

interface ISpiritGauge {
    function TOKEN() external view returns (address);
}

interface IBaseV1Pair {
    function claimFees() external returns (uint, uint);
    function tokens() external returns (address, address);
    function stable() external returns (bool);
}