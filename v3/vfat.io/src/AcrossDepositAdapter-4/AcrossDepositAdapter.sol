// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import { BridgeAdapterBase } from "./BridgeAdapterBase.sol";
import {
    BridgeDepositStrategy
} from "contracts/strategies/BridgeDepositStrategy.sol";
import {
    IAcrossMessageHandler
} from "contracts/bridges/interfaces/IAcrossMessageHandler.sol";

contract AcrossDepositAdapter is BridgeAdapterBase, IAcrossMessageHandler {
    BridgeDepositStrategy public immutable strategy;

    constructor(
        address strategy_,
        address admin_,
        address guardian_
    ) BridgeAdapterBase(admin_, guardian_) {
        strategy = BridgeDepositStrategy(strategy_);
    }

    function handleV3AcrossMessage(
        address tokenSent,
        uint256 amount,
        address, // relayer
        bytes memory message
    ) external override {
        _onlyWhitelistedEndpoint();
        (
            address sickleOwner,
            BridgeDepositStrategy.DepositParams memory params,
            bytes32 intentId,
            uint256 deadline,
            bytes memory signature
        ) = abi.decode(
            message,
            (
                address,
                BridgeDepositStrategy.DepositParams,
                bytes32,
                uint256,
                bytes
            )
        );
        uint256 forwarded =
            _forwardAvailable(tokenSent, address(strategy), amount);
        strategy.executeDeposit(
            tokenSent, forwarded, sickleOwner, params, intentId, deadline,
            signature
        );
    }
}
