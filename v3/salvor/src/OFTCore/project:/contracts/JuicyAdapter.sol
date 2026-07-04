// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {OFTAdapter} from "@layerzerolabs/oft-evm/contracts/OFTAdapter.sol";

contract JuicyAdapter is OFTAdapter {
    constructor(address token_, address endpoint_, address owner_)
        OFTAdapter(token_, endpoint_, owner_)
    {}
}
