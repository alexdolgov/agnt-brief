// SPDX-License-Identifier: MIT
pragma solidity ^0.6.12;

interface IPresale {
    function totalBalance() external view returns (uint);

    function flipToken() external view returns (address);
}
