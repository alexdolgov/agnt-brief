// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.10;

interface FiatTokenV2_2 {

    function name() external view returns(string memory);
    function symbol() external view returns(string memory);
    function decimals() external view returns(uint8);
    function currency() external view returns(string memory);
    function masterMinter() external view returns(address);
    function balanceOf(address account) external view returns (uint256);

    function isMinter(address _account) external view returns (bool);

    function minterAllowance(address minter) external view returns (uint256);

    function mint(address _to, uint256 _amount) external returns (bool);
}
