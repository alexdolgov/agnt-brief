// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity 0.8.28;

interface IMux3AumReader {
    function estimatedAumUsd(address pool) external view returns (uint256 aum);
}
