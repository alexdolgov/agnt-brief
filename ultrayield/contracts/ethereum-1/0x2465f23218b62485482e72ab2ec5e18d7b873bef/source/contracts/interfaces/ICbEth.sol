// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

/// @notice ICbEth represents a Coinbase Eth staked contract
interface ICbEth {
    /**
     * @notice Get amount of ETH for a one cbEth
     * @return Amount of ETH for 1 cbEth
     */
    function exchangeRate() external view returns (uint256);
}
