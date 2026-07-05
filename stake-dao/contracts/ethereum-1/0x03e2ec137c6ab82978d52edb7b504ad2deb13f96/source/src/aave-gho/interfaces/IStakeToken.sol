// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.0;

interface IStakeToken {
    /**
     * @dev Allows staking a specified amount of STAKED_TOKEN
     * @param to The address to receiving the shares
     * @param amount The amount of assets to be staked
     */
    function stake(address to, uint256 amount) external;

    /**
     * @dev Returns the current exchange rate
     * @return exchangeRate as 18 decimal precision uint216
     */
    function getExchangeRate() external view returns (uint216);
}
