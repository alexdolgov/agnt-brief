//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.25;

interface IBracketOracle {
    error ZeroAddress();
    error LowLevelCallFailed();
    error InvalidToken();

    // Get how much ETH is one token worth.
    function getRate(address token) external view returns (uint256);

    // Get how much ETH is an amount of tokens worth.
    function getValue(address token, uint256 amount) external view returns (uint256);

    // Get how much ETH is different collaterals and amounts of tokens worth.
    function getTotalValue(address[] calldata tokens, uint256[] calldata amounts) external view returns (uint256);
}
