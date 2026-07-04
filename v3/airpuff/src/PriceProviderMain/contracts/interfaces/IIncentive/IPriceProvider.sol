// SPDX-License-Identifier: MIT

pragma solidity ^0.8.23;

interface IPriceProvider {
    /********************** Events ***********************/

    event ChainlinkOracleSet(address ethOracle);
    event TimeIntervalSet(uint256 indexed timeInterval, uint32 indexed twapInterval, uint8 indexed timePoints);
    event PriceUpdated(uint256 indexed price);
    event PriceBroadcasted(uint256 chainId, uint256 indexed price);
    event ApuffTokenPoolSet(address indexed apuffTokenPoolAddress);
    event EthWithdrawn(uint256 indexed amount);
    event KeeperSet(address keeper, bool isKeeper);
    /********************** Errors ***********************/
    error AddressZero();
    error InvalidTimeInterval();
    error InvalidTimePoints();
    error NotKeeper();

    function getTokenPrice() external view returns (uint256);

    function decimals() external view returns (uint8);
}
