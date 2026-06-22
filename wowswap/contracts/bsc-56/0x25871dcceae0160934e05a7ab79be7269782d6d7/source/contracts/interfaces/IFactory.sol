// SPDX-License-Identifier: agpl-3.0
pragma solidity 0.7.4;
pragma experimental ABIEncoderV2;

/**
 * @title IFactory interface
 * @dev Defines all public and external methods and data of Factory contract
 * @author WOWSwap
 **/
interface IFactory {
    function getPool(address lendable, address tradable) external view returns(address);
    function getReserve(address lendable) external view returns(address);

    function getOrCreatePool(address lendable, address tradable) external returns(address);
    function getOrCreateReserve(address lendable) external returns(address);
    function poolBytecodeHash() external view returns(bytes32);
    function reserveBytecodeHash() external view returns(bytes32);
    function registerTradable(address token) external returns (bool);
    function registerTradables(address[] calldata tokens) external returns (bool);
    function registerLendable(address token) external returns (bool);
    function registerLendables(address[] calldata token) external returns (bool);
    function parseTokens(address tokenA, address tokenB) external returns (address, address);

    function getAllTradables() external returns (bytes32[] memory);
    function getAllLendables() external returns (bytes32[] memory);
}