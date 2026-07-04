// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface ISquadswapFactory {
    event PairCreated(address indexed token0, address indexed token1, address pair, uint);

    function feeTo() external view returns (address);
    function feeToSetter() external view returns (address);
    function poolManager() external view returns (address);
    function owner() external view returns (address);
    function protocolFee() external view returns (uint256);
    function defaultFee() external view returns (uint256);

    function getPair(address tokenA, address tokenB) external view returns (address pair);
    function allPairs(uint) external view returns (address pair);
    function allPairsLength() external view returns (uint);

    function createPair(address tokenA, address tokenB) external returns (address pair);

    function setFeeTo(address) external;
    function setFeeToSetter(address) external;
    function setPoolManager(address) external;
    function setProtocolFee(uint) external;
    function setDefaultFee(uint) external;
    function transferOwnership(address) external;
}
