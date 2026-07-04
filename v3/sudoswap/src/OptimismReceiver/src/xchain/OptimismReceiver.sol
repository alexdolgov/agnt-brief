// SPDX-License-Identifier: AGPL-3.0
pragma solidity ^0.8.0;

import {LibOptimism} from "@openzeppelin/contracts/crosschain/optimism/LibOptimism.sol";

contract OptimismReceiver {

    error OptimismReceiver__NotGov();
    error OptimismReceiver__CallFail();

    address immutable public governorAddress;
    address constant L2_CROSS_DOMAIN_MESSENGER_PRECOMPILE = 0x4200000000000000000000000000000000000007;

    constructor(address _governorAddress) {
        governorAddress = _governorAddress;
    }

    function execute(address target, uint256 value, bytes calldata data) payable external {
        // Call can only come from the Cross Domain Messenger
        if (msg.sender != L2_CROSS_DOMAIN_MESSENGER_PRECOMPILE) {
            revert OptimismReceiver__NotGov();
        }
        address l1Sender = LibOptimism.crossChainSender(msg.sender);
        if (l1Sender != governorAddress) {
            revert OptimismReceiver__NotGov();
        }
        (bool success,) = target.call{value: value}(data);
        if (! success) {
            revert OptimismReceiver__CallFail();
        }
    }

    receive() payable external {}
}