// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity 0.8.19;

interface IDistributor {
    function updateRewards(uint8 tokenId, address tokenAddress, address trader, uint256 rawAmount) external;
}
