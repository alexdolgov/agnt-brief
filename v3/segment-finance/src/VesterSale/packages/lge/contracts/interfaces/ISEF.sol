//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

//IERC20
interface ISEF {
    function balanceOf(address account) external view returns (uint256);

    function transfer(address dst, uint256 rawAmount) external returns (bool);
}
