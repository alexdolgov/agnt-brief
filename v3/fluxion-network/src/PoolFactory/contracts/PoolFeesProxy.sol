// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.20;

import {Proxy} from "@openzeppelin/contracts/proxy/Proxy.sol";

/// @title PoolFeesProxy
/// @notice Simple UUPS-compatible proxy for PoolFeesUpgradeable
/// @dev This proxy is compatible with Solidity 0.8.20
contract PoolFeesProxy is Proxy {
    // ERC1967 implementation slot: keccak256("eip1967.proxy.implementation") - 1
    bytes32 private constant IMPLEMENTATION_SLOT = 0x360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382bbc;

    constructor(address implementation, bytes memory _data) {
        // Store implementation address
        assembly {
            sstore(IMPLEMENTATION_SLOT, implementation)
        }

        // Initialize if data is provided
        if (_data.length > 0) {
            (bool success, ) = implementation.delegatecall(_data);
            require(success, "Initialization failed");
        }
    }

    function _implementation() internal view virtual override returns (address impl) {
        assembly {
            impl := sload(IMPLEMENTATION_SLOT)
        }
    }
}
