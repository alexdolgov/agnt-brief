// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.12;

interface IVaporDEXFactory {
    function feeCollector() external view returns (address);

    function feeCollectorSetter() external view returns (address);

    function migrator() external view returns (address);

    function getPair(address tokenA, address tokenB) external view returns (address pair);

    function allPairs(uint256) external view returns (address pair);

    function allPairsLength() external view returns (uint256);

    function createPair(address tokenA, address tokenB) external returns (address pair);

    function setFeeCollector(address) external;

    function setFeeCollectorSetter(address) external;

    function setMigrator(address) external;
}
