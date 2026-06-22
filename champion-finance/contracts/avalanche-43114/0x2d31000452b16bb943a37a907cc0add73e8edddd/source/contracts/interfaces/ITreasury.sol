// SPDX-License-Identifier: MIT

pragma solidity 0.8.13;

interface ITreasury {
    function epoch() external view returns (uint256);

    function nextEpochPoint() external view returns (uint256);

    function getMainTokenPrice() external view returns (uint256);
    
    function mainTokenPriceOne() external view returns (uint256);
}
