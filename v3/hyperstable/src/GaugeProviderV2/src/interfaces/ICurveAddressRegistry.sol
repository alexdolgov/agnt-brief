// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

interface ICurveAddressRegistry {
    function get_address(uint256 _index) external returns (address);
}
