// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

interface IClaimPrivate {
    function getClaimable(address user) external view returns (uint256);

    function claim() external;
}
