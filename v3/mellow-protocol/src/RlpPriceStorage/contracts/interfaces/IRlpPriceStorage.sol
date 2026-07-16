// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

interface IRlpPriceStorage {

    event PriceSet(bytes32 indexed key, uint256 price);

    error PriceAlreadySet(bytes32 distributionTxHash);

    function setPrice(bytes32 _distributionTxHash, uint256 _price) external;
    function lastPrice() external view returns (uint256 price);
    function prices(bytes32 _distributionTxHash) external view returns (uint256 price);

}
