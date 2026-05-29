// SPDX-License-Identifier: UNLICENSED

// Copyright (c) 2023 JonesDAO - All rights reserved
// Jones DAO: https://www.jonesdao.io/

// Check https://docs.jonesdao.io/jones-dao/other/bounty for details on our bounty program.

pragma solidity ^0.8.10;

import {MultichainRewards, IAuraBribe, IStargate} from "src/compounder/strategies/MultichainRewards.sol";

contract ArbMultichainRewards is MultichainRewards {
    // Initialize Addresses for this chain
    function initialize(address _keeper, address _bribeReceiver, address _defaultSwapper) public override {
        super.initialize(_keeper, _bribeReceiver, _defaultSwapper);
        WETH = 0x82aF49447D8a07e3bd95BD0d56f35241523fBab1;
        auraBribe = IAuraBribe(0x928b06229a3f4Bc7806d80Fe54e48E777BB74536);
        routerETH = IStargate(0xbf22f0f184bCcbeA268dF387a49fF5238dD23E40);
    }
}
