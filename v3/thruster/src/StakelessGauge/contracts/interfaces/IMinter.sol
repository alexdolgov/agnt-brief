// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

interface IMinter {
    function mint(address) external;

    function token() external returns (address);

    function controller() external returns (address);
}
