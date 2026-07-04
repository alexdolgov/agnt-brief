// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import {GaugeV2} from "../GaugeV2.sol";
import {BribeFactory} from "../BribeFactory.sol";
import {Validate} from "../../libraries/Validate.sol";
import {IHyperSwapPair} from "../../interfaces/IHyperSwapPair.sol";
import {IHyperSwapFactory} from "../../interfaces/IHyperSwapFactory.sol";

contract HyperSwapGaugeFactory {
    error OnlyGaugeProvider();

    IHyperSwapFactory public constant HYPERSWAP_FACTORY = IHyperSwapFactory(0x724412C00059bf7d6ee7d4a1d0D5cd4de3ea1C48);
    BribeFactory public constant BRIBE_FACTORY = BribeFactory(0x058855F5132b2518168e5B85cf2e44Cab57E0FF1);
    address public constant PEG_ADDRESS = 0x28245AB01298eaEf7933bC90d35Bd9DbCA5C89DB;
    address public constant VE_PEG_ADDRESS = 0xdB9A1bdc443dd11366b8a6dc8038144eCc4D4E23;
    address public constant VOTER_ADDRESS = 0xF3113E4F80c84935E576CFD75F4423E9B911908A;
    address public constant GAUGE_PROVIDER = 0x79367964c8F9B6DEb993D0a50D128500b9686583;

    function deploy(address _pair) external returns (address, address, address) {
        if (msg.sender != GAUGE_PROVIDER) {
            revert OnlyGaugeProvider();
        }

        address token0 = IHyperSwapPair(_pair).token0();
        address token1 = IHyperSwapPair(_pair).token1();

        Validate.notZeroAddress(token0);
        Validate.notZeroAddress(token1);
        Validate.notZeroAddress(HYPERSWAP_FACTORY.getPair(token0, token1));

        bool baseAdded = false;

        if (token0 == PEG_ADDRESS || token1 == PEG_ADDRESS) {
            baseAdded = true;
        }

        address[] memory internalRewards = new address[](2);
        internalRewards[0] = token0;
        internalRewards[1] = token1;

        address[] memory externalRewards;

        if (baseAdded) {
            externalRewards = new address[](2);
        } else {
            externalRewards = new address[](3);
        }

        externalRewards[0] = token0;
        externalRewards[1] = token1;

        if (!baseAdded) {
            externalRewards[2] = PEG_ADDRESS;
        }

        address internalBribe = BRIBE_FACTORY.createInternalBribe(internalRewards);
        address externalBribe = BRIBE_FACTORY.createExternalBribe(externalRewards);

        GaugeV2 gauge = new GaugeV2(_pair, internalBribe, externalBribe, VE_PEG_ADDRESS, VOTER_ADDRESS, externalRewards);

        return (address(gauge), address(internalBribe), address(externalBribe));
    }
}
