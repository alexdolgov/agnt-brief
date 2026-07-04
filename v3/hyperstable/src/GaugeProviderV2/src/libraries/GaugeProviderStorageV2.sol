// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import {ICurveAddressRegistry} from "../interfaces/ICurveAddressRegistry.sol";
import {IHyperSwapFactory} from "../interfaces/IHyperSwapFactory.sol";
import {IBribeFactory} from "../interfaces/IBribeFactory.sol";

library GaugeProviderStorageV2 {
    struct Layout {
        mapping(address gauge => uint8 gaugeType) gaugeToType;
    }

    bytes32 internal constant LAYOUT_SLOT = keccak256("hyperstable.storage.gauge_provider.v2");

    function layout() internal pure returns (Layout storage $) {
        bytes32 slot = LAYOUT_SLOT;

        assembly {
            $.slot := slot
        }
    }
}
