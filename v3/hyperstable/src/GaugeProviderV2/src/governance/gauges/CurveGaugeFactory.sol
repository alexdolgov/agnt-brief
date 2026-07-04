// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import {ICurveMetaRegistry} from "../../interfaces/ICurveMetaRegistry.sol";
import {ICurveAddressRegistry} from "../../interfaces/ICurveAddressRegistry.sol";
import {Gauge} from "../Gauge.sol";
import {BribeFactory} from "../BribeFactory.sol";

contract CurveGaugeFactory {
    error PoolIsNotRegistered();
    error OnlyGaugeProvider();

    ICurveAddressRegistry public constant CURVE_ADDRESS_REGISTRY =
        ICurveAddressRegistry(0x1764ee18e8B3ccA4787249Ceb249356192594585);
    BribeFactory public constant BRIBE_FACTORY = BribeFactory(0x058855F5132b2518168e5B85cf2e44Cab57E0FF1);
    address public constant PEG_ADDRESS = 0x28245AB01298eaEf7933bC90d35Bd9DbCA5C89DB;
    address public constant VE_PEG_ADDRESS = 0xdB9A1bdc443dd11366b8a6dc8038144eCc4D4E23;
    address public constant VOTER_ADDRESS = 0xF3113E4F80c84935E576CFD75F4423E9B911908A;
    address public constant GAUGE_PROVIDER = 0x79367964c8F9B6DEb993D0a50D128500b9686583;

    function deploy(address _pool) external returns (address, address, address) {
        if (msg.sender != GAUGE_PROVIDER) {
            revert OnlyGaugeProvider();
        }

        ICurveMetaRegistry poolRegistry = ICurveMetaRegistry(CURVE_ADDRESS_REGISTRY.get_address(7));

        if (!poolRegistry.is_registered(_pool)) {
            revert PoolIsNotRegistered();
        }

        uint256 numberOfCoins = poolRegistry.get_n_coins(_pool);
        address[8] memory coins = poolRegistry.get_coins(_pool);
        address[] memory allowedRewards = new address[](numberOfCoins + 1);
        address[] memory internalRewards = new address[](numberOfCoins);

        bool baseAdded;

        for (uint256 i; i < numberOfCoins; i++) {
            address coin = coins[i];

            if (coin == PEG_ADDRESS) {
                baseAdded = true;
            }

            allowedRewards[i] = coin;
            internalRewards[i] = coin;
        }

        if (!baseAdded) {
            allowedRewards[numberOfCoins] = PEG_ADDRESS;
        }

        address internalBribe = BRIBE_FACTORY.createInternalBribe(internalRewards);
        address externalBribe = BRIBE_FACTORY.createExternalBribe(allowedRewards);
        Gauge gauge = new Gauge(
            poolRegistry.get_lp_token(_pool),
            poolRegistry.get_gauge(_pool),
            internalBribe,
            externalBribe,
            VE_PEG_ADDRESS,
            VOTER_ADDRESS,
            true,
            allowedRewards
        );

        return (address(gauge), address(internalBribe), address(externalBribe));
    }
}
