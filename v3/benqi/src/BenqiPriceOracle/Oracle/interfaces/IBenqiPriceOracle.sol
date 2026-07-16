// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./IPriceOracle.sol";
import "./IQiToken.sol";
import "./IAggregatorV2V3Interface.sol";

/**
 * @title IBenqiPriceOracle
 * @author BENQI Finance
 * @notice Interface for the generic price oracle implementation
 */
interface IBenqiPriceOracle is IPriceOracle {
    function admin() external view returns (address);
    function feeds(address) external view returns (IAggregatorV2V3Interface);
    function qiAvaxAddress() external view returns (address);

    function getUnderlyingPrice(IQiToken qiToken) external view returns (uint256);
    function getUnderlyingPriceWithTimestamp(IQiToken qiToken) external view returns (uint256, uint256);
    function setUnderlyingPrice(IQiToken qiToken, uint256 underlyingPriceMantissa) external;
    function setDirectPrice(address asset, uint256 price) external;
    function setFeed(address token, address feed) external;
    function getFeed(address token) external view returns (IAggregatorV2V3Interface);
    function assetPrices(address asset) external view returns (uint256);
    function setAdmin(address newAdmin) external;
}
