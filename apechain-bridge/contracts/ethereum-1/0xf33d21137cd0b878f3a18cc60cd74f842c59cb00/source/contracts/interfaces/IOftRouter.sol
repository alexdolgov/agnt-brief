// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.22;

import {ILayerZeroComposer} from "@layerzerolabs/lz-evm-protocol-v2/contracts/interfaces/ILayerZeroComposer.sol";

interface IOftRouter is ILayerZeroComposer {
    error OnlyOft4626();

    error OnlyLzEndpoint();

    error RefundFailed();

    error SharesTooLow();

    error InvalidLZOptions();

    struct DecentBridgeCall {
        uint256 amount;
        address toAddress;
        address refundAddress;
        uint32 dstEid;
    }
}

struct FeeManager {
    uint256 feeBps;
    address feeRecipient;
}
