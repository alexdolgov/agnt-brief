// SPDX-License-Identifier: AGPL-3.0
pragma solidity ^0.8.0;

import {AddressAliasHelper} from "nitro-contracts/src/libraries/AddressAliasHelper.sol";

contract ArbitrumReceiver {

    error ArbitrumReceiver__NotGov();
    error ArbitrumReceiver__CallFail();

    address immutable public governorAddress;

    constructor(address _governorAddress) {
        governorAddress = _governorAddress;
    }

    function execute(address target, uint256 value, bytes calldata data) payable external {
        if (msg.sender != AddressAliasHelper.applyL1ToL2Alias(governorAddress)) {
            revert ArbitrumReceiver__NotGov();
        }
        (bool success,) = target.call{value: value}(data);
        if (! success) {
            revert ArbitrumReceiver__CallFail();
        }
    }

    receive() payable external {}
}