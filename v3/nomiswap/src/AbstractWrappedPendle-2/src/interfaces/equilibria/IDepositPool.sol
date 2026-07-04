// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

interface IDepositPool {

    function DENOMINATOR() external view returns (uint256);
    function depositAll(uint256 _pid, bool _stake) external;
    function eqb() external view returns (address);
    function eqbMinter() external view returns (address);
    function farmEqbShare() external view returns (uint256);
    function withdraw(uint256 _pid, uint256 _amount) external;
    function xEqb() external view returns (address);

}
