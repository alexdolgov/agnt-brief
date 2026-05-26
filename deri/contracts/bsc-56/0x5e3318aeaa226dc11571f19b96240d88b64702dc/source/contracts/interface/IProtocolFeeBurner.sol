// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0 <0.9.0;

interface IProtocolFeeBurner {

    event BuyAndBurnDeri(address token, uint256 tokenAmount, uint256 deriAmount);

    function isValidTokenPair(address token0, address token1) external view returns (bool);

}
