// SPDX-License-Identifier: MIT
pragma solidity 0.6.12;

interface IBunicornRoller {
    function mintOneRandomBunicorn(address minter, uint256 randomSeed) external returns(uint256);
    function mintOneRandomBunicornWithStar(address minter, uint8 stars, uint256 randomSeed) external returns(uint256);
    function mintOneRandomBunicornWithElement(address minter, uint8 element, uint256 randomSeed) external returns(uint256);
    function mintOneRandomBunicornWithStarAndElement(address minter, uint8 stars, uint8 element, uint256 randomSeed) external returns(uint256);
}