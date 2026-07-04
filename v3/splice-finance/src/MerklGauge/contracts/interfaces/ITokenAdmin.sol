// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

interface ITokenAdmin {
    function token() external view returns (address);

    function minter() external view returns (address);

    function rate() external view returns (uint256);

    function mint(address to_, uint256 amount_) external returns (bool);
}
