// SPDX-License-Identifier: MIT

pragma solidity ^0.8.10;

import {ILBPair} from "joe-v2/interfaces/ILBPair.sol";
import {IBaseComponent} from "./IBaseComponent.sol";

interface IFeeCollector is IBaseComponent {
    function collectProtocolFees(ILBPair lbPair) external;

    function batchCollectProtocolFees(ILBPair[] calldata lbPairs) external;
}
