// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

import {Ownable} from "@layerzerolabs/lz-evm-oapp-v2/contracts/oapp/OAppCore.sol";
import {OFTAdapter} from "@layerzerolabs/lz-evm-oapp-v2/contracts/oft/OFTAdapter.sol";

contract InfiniFiOFTAdapter is OFTAdapter {
    constructor()
        OFTAdapter(
            0xDBDC1Ef57537E34680B898E1FEBD3D68c7389bCB,
            0x1a44076050125825900e736c501f859c50fE728c,
            msg.sender
        )
        Ownable(msg.sender)
    {}
}
