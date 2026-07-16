// SPDX-License-Identifier: MIT
pragma solidity 0.8.29;

import {IOFT, SendParam, OFTReceipt} from "@layerzerolabs/oft-evm/contracts/interfaces/IOFT.sol";
import {MessagingFee, MessagingReceipt} from "@layerzerolabs/lz-evm-protocol-v2/contracts/interfaces/ILayerZeroEndpointV2.sol";

struct Ticket {
    uint72 ticketId;
    bytes passengerBytes;
}

interface IStargateV2 is IOFT {
    function sendToken(
        SendParam calldata sendParam,
        MessagingFee calldata fee,
        address refundAddress
    ) external payable returns (MessagingReceipt memory msgReceipt, OFTReceipt memory oftReceipt, Ticket memory ticket);
}
