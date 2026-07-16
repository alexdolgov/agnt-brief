// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.26;

interface IVEKIP {
    function transferFromStaking(address _from, address _to, uint256 _value) external;
    function balanceOf(address _owner) external view returns (uint256 balance);
}