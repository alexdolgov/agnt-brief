// SPDX-License-Identifier: UNLICENSED

// Copyright (c) 2023 JonesDAO - All rights reserved
// Jones DAO: https://www.jonesdao.io/

// Check https://docs.jonesdao.io/jones-dao/other/bounty for details on our bounty program.

pragma solidity ^0.8.10;

import {IRateProvider} from "src/interfaces/IRateProvider.sol";

contract StaticRateViewer {
    uint256 public immutable rate;
    IRateProvider public constant RATE_PROVIDER = IRateProvider(0x3556F710c165090AAE9f98Eb62F5b04ADeF7Eaea);

    constructor() {
        rate = RATE_PROVIDER.getRate();
    }

    function getAuraRedemption(uint256 _shares, bool _tokenized) public view returns (uint256, uint256) {
        return (rate, 0);
    }
}
