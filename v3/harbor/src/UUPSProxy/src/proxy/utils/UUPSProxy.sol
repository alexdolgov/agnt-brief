// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import {ERC1967Proxy} from "@openzeppelin/contracts/proxy/ERC1967/ERC1967Proxy.sol";

contract UUPSProxy is ERC1967Proxy {
    constructor(address _logic, address admin_, bytes memory _data) payable ERC1967Proxy(_logic, _data) {
        _changeAdmin(admin_);
    }

    function _changeAdmin(address newAdmin) internal {
        bytes32 ADMIN_SLOT = 0x4fbe08b4f440e2ae74a6ff1daab84ad5a5b8d21c2e4d88303a27d60d5dcdbdb3;
        assembly {
            sstore(ADMIN_SLOT, newAdmin)
        }
    }
}
