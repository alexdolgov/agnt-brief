// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

interface IPendleBooster {

    function DENOMINATOR() external view returns (uint256);
    function farmEqbShare() external view returns (uint256);
    function eqbMinter() external view returns (address);

}