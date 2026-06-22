// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

interface IOracle {

    event PriceUpdated(address oracle, address token, uint256 price, uint64 publishTime);

    event PriceAgeUpdated(uint256 oldAge, uint256 newAge);

    event TokenPriceIdUpdated(address token, bytes32 priceId);

    event OracleManagerUpdated(address oldAddress, address newAddress);

    error IncorrectFee(uint256 fee);

    struct PriceInfo {
        bytes32 id;
        uint256 price;
        uint64 publishTime;
    }

    function updateOracleManager(address newAddress) external;

    function updatePriceAge(uint256 age) external;

    function updateVerifyAddress(address newAddress) external;

    function setTokenPriceIds(
        address[] memory tokens,
        bytes32[] memory priceIds
    ) external;

    function updatePrice(
        address[] calldata tokens,
        bytes[] calldata updateData,
        uint64[] calldata publishTimes
    ) external payable;

    function updateHistoricalPrice(
        address[] calldata tokens,
        bytes[] calldata updateData,
        uint64 publishTime
    ) external payable;

    function removeHistoricalPrice(
        uint64 _backtrackRound,
        address[] calldata tokens
    ) external;

    function getHistoricalPrice(
        uint64 publishTime,
        address token
    ) external view returns (uint256);

    function getPrice(address token) external view returns (uint256);

    function getPriceSafely(address token) external view returns (uint256);

    function decimals() external pure returns (uint256);

}
