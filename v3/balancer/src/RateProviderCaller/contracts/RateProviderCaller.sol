// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import { IRateProvider } from "./interfaces/IRateProvider.sol";

contract RateProviderCaller  {
    uint256 public rate;
    address public rateProvider;

    function getRate() external view returns (uint256) {
        return IRateProvider(rateProvider).getRate();
    }

    function setRate(uint256 _rate) external {
        rate = _rate;
    }

    function setRateProvider(address _rateProvider) external {
        rateProvider = _rateProvider;
    }
}

