// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import {ICurveAddressRegistry} from "../interfaces/ICurveAddressRegistry.sol";
import {IBribeFactory} from "../interfaces/IBribeFactory.sol";

library GaugeProviderStorageV1 {
    struct Layout {
        address peg;
        address vePeg;
        address voter;
        IBribeFactory bribeFactory;
        ICurveAddressRegistry curveAddressRegistry;
        mapping(address gauge => uint8 gaugeType) gaugeToType;
    }

    bytes32 internal constant LAYOUT_SLOT = keccak256("hyperstable.storage.adaptiveIRM");

    function layout() internal pure returns (Layout storage $) {
        bytes32 slot = LAYOUT_SLOT;

        assembly {
            $.slot := slot
        }
    }
}
