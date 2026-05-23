// SPDX-License-Identifier: MIT

pragma solidity 0.8.12;
import "./interfaces/IPythFeed.sol";
import "./PythStruct.sol";

contract PythWrapperETH {
    address public constant pyth = 0xA2aa501b19aff244D90cc15a4Cf739D2725B5729;
    bytes32 public priceFeedId =
        0xff61491a931112ddf1bd8147cd1b641375f79f5825126d665480874634fd0ace;

    function description() external pure returns (string memory) {
        return "ETH / USD";
    }

    function getMaxPrice() external view returns (uint256) {
        PythStruct.Price memory price = IPythFeed(pyth).getPriceUnsafe(priceFeedId);

        require(price.price > 0, "PythWrapperETH: invalid price");

        return uint64(price.price) + price.conf;
    }

    function getMinPrice() external view returns (uint256) {
        PythStruct.Price memory price = IPythFeed(pyth).getPriceUnsafe(priceFeedId);

        require(price.price > 0, "PythWrapperETH: invalid price");

        return uint64(price.price) - price.conf;
    }

    function getMedianPrice() external view returns (uint256) {
        PythStruct.Price memory price = IPythFeed(pyth).getPriceUnsafe(priceFeedId);

        require(price.price > 0, "PythWrapperETH: invalid price");

        return uint64(price.price);
    }
}
