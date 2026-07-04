// SPDX-License-Identifier: MIT

pragma solidity 0.8.12;
import "./interfaces/IPythFeed.sol";
import "./PythStruct.sol";

contract PythWrapperUSDC {
    address public constant pyth = 0xA2aa501b19aff244D90cc15a4Cf739D2725B5729;
    bytes32 public priceFeedId =
        0xeaa020c61cc479712813461ce153894a96a6c00b21ed0cfc2798d1f9a9e9c94a;

    function description() external pure returns (string memory) {
        return "USDC / USD";
    }

    function getMaxPrice() external view returns (uint256) {
        PythStruct.Price memory price = IPythFeed(pyth).getPriceUnsafe(priceFeedId);

        require(price.price > 0, "PythWrapperUSDC: invalid price");

        return uint64(price.price) + price.conf;
    }

    function getMinPrice() external view returns (uint256) {
        PythStruct.Price memory price = IPythFeed(pyth).getPriceUnsafe(priceFeedId);

        require(price.price > 0, "PythWrapperUSDC: invalid price");

        return uint64(price.price) - price.conf;
    }

    function getMedianPrice() external view returns (uint256) {
        PythStruct.Price memory price = IPythFeed(pyth).getPriceUnsafe(priceFeedId);

        require(price.price > 0, "PythWrapperUSDC: invalid price");

        return uint64(price.price);
    }
}
