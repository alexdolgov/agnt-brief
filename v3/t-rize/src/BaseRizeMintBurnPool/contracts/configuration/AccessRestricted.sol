// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import {IAccessList} from "contracts/interfaces/IAccessList.sol";

abstract contract AccessRestricted {
    IAccessList private immutable _ACCESS_LIST;

    error SenderNotCommittee(address sender);
    error SenderNotBridge(address sender);

    modifier onlyCommittee() {
        if (_ACCESS_LIST.isCommittee(msg.sender) == false) {
            revert SenderNotCommittee(msg.sender);
        }
        _;
    }

    modifier onlyBridge() {
        if (_ACCESS_LIST.isBridge(msg.sender) == false) {
            revert SenderNotBridge(msg.sender);
        }
        _;
    }

    constructor(address accessList) {
        _ACCESS_LIST = IAccessList(accessList);
    }

    function getAccessList() public view virtual returns (address) {
        return address(_ACCESS_LIST);
    }
}
