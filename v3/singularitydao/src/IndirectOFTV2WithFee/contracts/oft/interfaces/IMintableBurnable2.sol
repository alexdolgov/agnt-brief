// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

interface IMintableBurnable2 {
    function burn(address from, uint256 amount) external ;

    function mint(address to, uint256 amount) external ;
}