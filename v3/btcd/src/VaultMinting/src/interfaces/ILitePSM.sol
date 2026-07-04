// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

interface ILitePSM {
    function sellGem(address usr, uint256 gemAmt) external returns (uint256 usdsOutWad);
    function buyGem(address usr, uint256 gemAmt) external returns (uint256 usdsInWad);
    function tin() external view returns (uint256);
    function tout() external view returns (uint256);
}
