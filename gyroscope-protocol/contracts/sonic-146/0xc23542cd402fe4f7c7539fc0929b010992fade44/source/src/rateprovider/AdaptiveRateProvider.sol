// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "./interfaces/IRateProvider.sol";

/// @notice This is used for volatile eclps which can adapt the range.
contract AdaptiveRateProvider is IRateProvider {
    uint256 public rate;
    address public admin;

    constructor(uint256 _rate, address _admin) {
        rate = _rate;
        admin = _admin;
    }

    function setRate(uint256 _rate) external {
        require(msg.sender == admin, "Only admin can set rate");
        rate = _rate;
    }

    function getRate() external view override returns (uint256) {
        return rate;
    }
}
