// SPDX-License-Identifier: AGPL-3.0
pragma solidity ^0.8.0;

import { LZForwarder } from 'lib/xchain-helpers/src/forwarders/LZForwarder.sol';

contract MonadSpellConfig {

    function execute() public {

        address[] memory dvns = new address[](2);
        dvns[0] = LZForwarder.LZ_DVN_ETHEREUM; // LayerZero Labs
        dvns[1] = 0xF4064220871e3B94Ca6aB3b0CEE8e29178bF47dE; // Nethermind

        LZForwarder.configureSender(
            LZForwarder.ENDPOINT_MONAD,
            LZForwarder.ENDPOINT_ID_MONAD,
            dvns
        );
    }

}
