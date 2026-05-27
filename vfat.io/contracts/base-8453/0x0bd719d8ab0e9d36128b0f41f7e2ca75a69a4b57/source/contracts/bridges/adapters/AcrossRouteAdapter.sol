// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import { BridgeAdapterBase } from "./BridgeAdapterBase.sol";
import { BridgeRouteReceiver } from "contracts/bridges/BridgeRouteReceiver.sol";
import {
    IAcrossMessageHandler
} from "contracts/bridges/interfaces/IAcrossMessageHandler.sol";

contract AcrossRouteAdapter is BridgeAdapterBase, IAcrossMessageHandler {
    BridgeRouteReceiver public immutable receiver;

    constructor(
        address receiver_,
        address admin_,
        address guardian_
    ) BridgeAdapterBase(admin_, guardian_) {
        receiver = BridgeRouteReceiver(payable(receiver_));
    }

    function handleV3AcrossMessage(
        address tokenSent,
        uint256 amount,
        address,
        bytes memory message
    ) external override {
        _onlyWhitelistedEndpoint();
        BridgeRouteReceiver.RouteParams memory params =
            abi.decode(message, (BridgeRouteReceiver.RouteParams));
        uint256 forwarded =
            _forwardAvailable(tokenSent, address(receiver), amount);
        receiver.executeRoute(
            tokenSent, forwarded, address(0), 0, params
        );
    }
}
