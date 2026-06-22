// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

interface ISwapper {
    function referrers(address) external view returns (address);
}
