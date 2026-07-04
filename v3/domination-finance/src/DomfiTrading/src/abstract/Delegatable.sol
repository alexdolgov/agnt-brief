// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import { IDelegatable } from "../interfaces/IDelegatable.sol";

abstract contract Delegatable is IDelegatable {
    mapping(address delegator => address) public delegations;
    address private senderOverride;

    function setDelegate(address newDelegate) external {
        if (newDelegate == address(0)) {
            revert NullAddr();
        }

        delegations[msg.sender] = newDelegate;
        emit DelegateAdded(msg.sender, newDelegate);
    }

    function removeDelegate() external {
        if (delegations[msg.sender] == address(0)) {
            revert NoDelegate(msg.sender);
        }
        address delegate = delegations[msg.sender];

        delete delegations[msg.sender];
        emit DelegateRemoved(msg.sender, delegate);
    }

    function delegatedAction(address trader, bytes calldata callData)
        external
        returns (bytes memory)
    {
        if (delegations[trader] != msg.sender) {
            revert NotDelegate(trader, msg.sender);
        }

        senderOverride = trader;
        // slither-disable-next-line low-level-calls,reentrancy-benign
        (bool success, bytes memory result) = address(this).delegatecall(callData);
        if (!success) {
            if (result.length > 0) {
                // slither-disable-next-line assembly
                assembly {
                    revert(add(result, 0x20), mload(result))
                }
            } else {
                revert DelegatedActionFailed();
            }
        }

        senderOverride = address(0);

        return result;
    }

    function msgSender() public view returns (address) {
        if (senderOverride == address(0)) {
            return msg.sender;
        } else {
            return senderOverride;
        }
    }
}
