// SPDX-License-Identifier: AGPL-3.0
pragma solidity ^0.8.0;

import { LZCrosschainPayload } from 'lib/grove-gov-relay/test/payloads/LZCrosschainPayload.sol';
import { IPayload }            from 'lib/grove-gov-relay/test/payloads/CrosschainPayload.sol';

import { LZForwarder } from 'lib/xchain-helpers/src/forwarders/LZForwarder.sol';

contract MonadSpellNoSetup is LZCrosschainPayload {

    address public constant RECEIVER = 0x51445fb7Db233B288508606d6c0045a1B0Ba8dFa;
    address public constant PAYLOAD  = 0x7f8408eBbBC3504F83eeDa52910dd75Eba92C955;

    constructor() LZCrosschainPayload(
        LZForwarder.ENDPOINT_ID_MONAD,
        LZForwarder.ENDPOINT_ETHEREUM,
        RECEIVER,
        IPayload(PAYLOAD),
        RECEIVER
    ) {}

}
