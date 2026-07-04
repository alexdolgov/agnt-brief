// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import {UUPSUpgradeable} from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import {Ownable2StepUpgradeable} from "@openzeppelin/contracts-upgradeable/access/Ownable2StepUpgradeable.sol";
import {Voter} from "./Voter.sol";
import {GaugeProviderStorageV1} from "../libraries/GaugeProviderStorageV1.sol";
import {GaugeProviderStorageV2} from "../libraries/GaugeProviderStorageV2.sol";
import {IGaugeProvider} from "../interfaces/IGaugeProvider.sol";
import {CurveGaugeFactory} from "./gauges/CurveGaugeFactory.sol";
import {HyperSwapGaugeFactory} from "./gauges/HyperSwapGaugeFactory.sol";

contract GaugeProviderV2 is IGaugeProvider, UUPSUpgradeable, Ownable2StepUpgradeable {
    CurveGaugeFactory public immutable CURVE_GAUGE_FACTORY;
    HyperSwapGaugeFactory public immutable HYPERSWAP_GAUGE_FACTORY;

    address public constant VOTER_ADDRESS = 0xF3113E4F80c84935E576CFD75F4423E9B911908A;

    event GaugeDeployed(uint8 indexed gaugeType, address indexed gauge, address internalBribes, address externalBribes);

    error InvalidGaugeType();
    error OnlyVoter();
    error NotAGauge();

    constructor(address _curveGaugeFactory, address _hyperSwapGaugeFactory) {
        CURVE_GAUGE_FACTORY = CurveGaugeFactory(_curveGaugeFactory);
        HYPERSWAP_GAUGE_FACTORY = HyperSwapGaugeFactory(_hyperSwapGaugeFactory);

        _disableInitializers();
    }

    function initialize() external reinitializer(3) {
        GaugeProviderStorageV1.Layout storage $v1 = GaugeProviderStorageV1.layout();
        GaugeProviderStorageV2.Layout storage $v2 = GaugeProviderStorageV2.layout();

        Voter voter = Voter(VOTER_ADDRESS);

        uint256 totalGauges = voter.length();

        for (uint256 i; i < totalGauges; i++) {
            address pool = voter.pools(i);
            address gauge = voter.gauges(pool);

            $v2.gaugeToType[gauge] = $v1.gaugeToType[gauge];
        }
    }

    function deployGauge(uint8 _type, address _pool) external returns (address, address, address) {
        if (msg.sender != VOTER_ADDRESS) {
            revert OnlyVoter();
        }

        address gauge;
        address internalBribe;
        address externalBribe;

        if (_type == 0) {
            (gauge, internalBribe, externalBribe) = CURVE_GAUGE_FACTORY.deploy(_pool);
        } else if (_type == 1) {
            (gauge, internalBribe, externalBribe) = CURVE_GAUGE_FACTORY.deploy(_pool);
        } else if (_type == 2) {
            (gauge, internalBribe, externalBribe) = HYPERSWAP_GAUGE_FACTORY.deploy(_pool);
        } else {
            revert InvalidGaugeType();
        }

        GaugeProviderStorageV2.layout().gaugeToType[gauge] = _type;

        emit GaugeDeployed(_type, gauge, internalBribe, externalBribe);

        return (gauge, internalBribe, externalBribe);
    }

    function gaugeToType(address _gauge) external view returns (uint8) {
        GaugeProviderStorageV2.Layout storage $ = GaugeProviderStorageV2.layout();

        if (!Voter(VOTER_ADDRESS).isGauge(_gauge)) {
            revert NotAGauge();
        }

        return $.gaugeToType[_gauge];
    }

    function _authorizeUpgrade(address) internal view override onlyOwner {}
}
