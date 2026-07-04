// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.6.12;

interface IRegister {
    function register(address _recipient) external returns (uint256 tokenId);
}