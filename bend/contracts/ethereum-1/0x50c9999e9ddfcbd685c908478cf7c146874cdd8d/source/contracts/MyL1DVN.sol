// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.20;

import { ArbitrumDVNAdapterL1 } from "@layerzerolabs/lz-evm-messagelib-v2/contracts/uln/dvn/adapters/arbitrum/ArbitrumDVNAdapterL1.sol";

contract MyL1DVN is ArbitrumDVNAdapterL1 {
    constructor(address[] memory _admins, uint32 _arbitrumEid, address _inbox) ArbitrumDVNAdapterL1(_admins, _arbitrumEid, _inbox) {}
}
