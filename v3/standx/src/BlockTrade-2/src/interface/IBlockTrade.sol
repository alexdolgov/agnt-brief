// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.30;

import {BlockTradeLib} from "../block-trade/BlockTradeLib.sol";

interface IBlockTrade {
    function createMakerOrder(
        BlockTradeLib.Message calldata message,
        BlockTradeLib.MessageSignature calldata signature
    ) external;
    function createTakerOrder(
        BlockTradeLib.Message calldata message,
        BlockTradeLib.MessageSignature calldata signature
    ) external;
    function ackOrder(
        BlockTradeLib.OrderAckParams[] calldata ackParams
    ) external;
    function closeOrder(
        BlockTradeLib.CloseOrderMessage calldata closeMsg,
        BlockTradeLib.MessageSignature calldata signature
    ) external;
    function archiveOrder(
        BlockTradeLib.Message calldata message,
        BlockTradeLib.MessageSignature calldata signature
    ) external;
}
