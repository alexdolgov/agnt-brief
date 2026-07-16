// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.2.0) (proxy/ERC1967/ERC1967Proxy.sol)

pragma solidity ^0.8.22;

import {Proxy} from "@openzeppelin/contracts/proxy/Proxy.sol";
import {ERC1967Utils} from "./proxy/ERC1967Utils.sol";

contract ERC1967Proxy is Proxy {
    constructor(address implementation, bytes memory _data) payable {
        ERC1967Utils.upgradeToAndCall(implementation, _data);
    }

    function _implementation()
        internal
        view
        virtual
        override
        returns (address)
    {
        return ERC1967Utils.getImplementation();
    }
}
