// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

interface IApexPremierAccess {
    function isAdmin(address account) external view returns (bool);
}
