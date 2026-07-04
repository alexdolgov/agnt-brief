// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.9.0;
interface ICErc20Delegator{
    function mint(uint256) external returns (uint);
    function mint() external payable ;
    function redeem(uint256) external  returns (uint);
    function redeemUnderlying(uint256) external  returns (uint);
    function exchangeRateCurrent() external returns (uint);
    function exchangeRateStored() external view returns (uint);
    function getAccountSnapshot(address account)  external view returns (uint, uint, uint, uint);
}