// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

interface ILiquidationBuffer {
    function deposits(uint8 _vault) external view returns (uint256);
    function notifyDeposit(uint8 _vault, uint256 _amount) external;
    function redeem(uint8 _vault, address _to, uint256 _amount) external returns (uint256);
}
