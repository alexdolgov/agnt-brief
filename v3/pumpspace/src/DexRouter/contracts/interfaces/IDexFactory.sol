// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IDexFactory {

    function feeTo() external view returns (address);
    function feeToSetter() external view returns (address);
    function swapFeeTo() external view returns (address);
    function swapFeeRate() external view returns (uint);

    function getPair(address tokenA, address tokenB) external view returns (address pair);
    function allPairs(uint) external view returns (address pair);
    function allPairsLength() external view returns (uint);

    function createPair(address tokenA, address tokenB) external returns (address pair);

    function setFeeTo(address) external;
    function setFeeToSetter(address) external;

    function setFeeRate(uint256 _feeRate) external;
    function setSwapFeeTo(address) external;
}
