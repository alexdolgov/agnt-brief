// SPDX-License-Identifier: MIT

pragma solidity 0.8.12;
import "./interfaces/IPythFeed.sol";
import "./PythStruct.sol";

contract PythWrapperBTC {
    address public constant pyth = 0xA2aa501b19aff244D90cc15a4Cf739D2725B5729;
    bytes32 public priceFeedId =
        0xe62df6c8b4a85fe1a67db44dc12de5db330f7ac66b72dc658afedf0f4a415b43;

    function description() external pure returns (string memory) {
        return "BTC / USD";
    }

    function getMaxPrice() external view returns (uint256) {
        PythStruct.Price memory price = IPythFeed(pyth).getPriceUnsafe(priceFeedId);

        require(price.price > 0, "PythWrapperBTC: invalid price");

        return uint64(price.price) + price.conf;
    }

    function getMinPrice() external view returns (uint256) {
        PythStruct.Price memory price = IPythFeed(pyth).getPriceUnsafe(priceFeedId);

        require(price.price > 0, "PythWrapperBTC: invalid price");

        return uint64(price.price) - price.conf;
    }

    function getMedianPrice() external view returns (uint256) {
        PythStruct.Price memory price = IPythFeed(pyth).getPriceUnsafe(priceFeedId);

        require(price.price > 0, "PythWrapperBTC: invalid price");

        return uint64(price.price);
    }
}
