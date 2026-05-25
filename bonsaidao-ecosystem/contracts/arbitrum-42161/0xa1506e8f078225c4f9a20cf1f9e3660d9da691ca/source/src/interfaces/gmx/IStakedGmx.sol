// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.25;

interface IStakedGmx {
    function depositBalances(address, address) external view returns (uint256);
}
