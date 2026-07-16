// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

import {Ownable} from "@layerzerolabs/lz-evm-oapp-v2/contracts/oapp/OAppCore.sol";
import {OFTAdapter} from "@layerzerolabs/lz-evm-oapp-v2/contracts/oft/OFTAdapter.sol";

contract InfiniFiOFTAdapter is OFTAdapter {
    constructor(address _token, address _lzEndpoint, address _owner)
        OFTAdapter(_token, _lzEndpoint, _owner)
        Ownable(_owner)
    {}
}
