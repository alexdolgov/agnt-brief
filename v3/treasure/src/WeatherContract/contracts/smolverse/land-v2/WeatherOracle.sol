// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract WeatherContract {
    uint256 private seed = 1913151222518195;

    function initialize() external {}

    function getWeather(uint256 day, uint256 month, uint256 year) public view returns (string memory) {
        uint256 rand = uint256(keccak256(abi.encodePacked(day, month, year, seed)));
        // Convert rand to a value between 0 and 999
        uint256 scaledRand = rand % 1000;
        if (scaledRand < 540) {
            return "sunny";
        } else if (scaledRand < 740) {
            return "rainy";
        } else if (scaledRand < 810) {
            return "cloudy";
        } else if (scaledRand < 880) {
            return "windy";
        } else if (scaledRand < 950) {
            return "fog";
        } else {
            return "snowy";
        }
    }
}
