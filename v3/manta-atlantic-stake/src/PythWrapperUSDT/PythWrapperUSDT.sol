// SPDX-License-Identifier: MIT

pragma solidity 0.8.12;
import "./interfaces/IPythFeed.sol";
import "./PythStruct.sol";

contract PythWrapperUSDT {
    address public constant pyth = 0xA2aa501b19aff244D90cc15a4Cf739D2725B5729;
    bytes32 public priceFeedId =
        0x2b89b9dc8fdf9f34709a5b106b472f0f39bb6ca9ce04b0fd7f2e971688e2e53b;

    function description() external pure returns (string memory) {
        return "USDT / USD";
    }

    function getMaxPrice() external view returns (uint256) {
        PythStruct.Price memory price = IPythFeed(pyth).getPriceUnsafe(priceFeedId);

        require(price.price > 0, "PythWrapperUSDT: invalid price");

        return uint64(price.price) + price.conf;
    }

    function getMinPrice() external view returns (uint256) {
        PythStruct.Price memory price = IPythFeed(pyth).getPriceUnsafe(priceFeedId);

        require(price.price > 0, "PythWrapperUSDT: invalid price");

        return uint64(price.price) - price.conf;
    }

    function getMedianPrice() external view returns (uint256) {
        PythStruct.Price memory price = IPythFeed(pyth).getPriceUnsafe(priceFeedId);

        require(price.price > 0, "PythWrapperUSDT: invalid price");

        return uint64(price.price);
    }
}
