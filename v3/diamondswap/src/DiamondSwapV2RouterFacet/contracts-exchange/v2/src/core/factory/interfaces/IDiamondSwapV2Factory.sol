// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.0;

interface IDiamondSwapV2Factory {
    error IdenticalAddresses();
    error ZeroAddress();
    error Unauthorized();
    error FactoryInactive();

    event ActiveChanged(bool active);
    event PairCreated(address indexed token0, address indexed token1, address pair, uint256 totalPairs);

    function feesEnabled() external view returns (bool);

    function getPair(address tokenA, address tokenB) external view returns (address pair);
    function allPairs(uint256) external view returns (address pair);
    function allPairsLength() external view returns (uint256);

    function createPair(address tokenA, address tokenB) external returns (address pair);

    function feeTo() external view returns (address);

    function setActive(bool newValue) external;

    function swapFee() external view returns (uint32);

    function getPairAddresses(uint256 start, uint256 count) external view returns (address[] memory);
}
