// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "openzeppelin-contracts-upgradeable/contracts/metatx/ERC2771ContextUpgradeable.sol";

abstract contract SettableERC2771ContextUpgradeable is ERC2771ContextUpgradeable {
    address private _forwarder;

    event TrustForwarderUpdated(address indexed previousForwarder, address indexed newForwarder);

    constructor() ERC2771ContextUpgradeable(address(0)) {}

    /**
     * @dev Sets the values for {forwarder}.
     */
    function __SettableERC2771Context_init(address forwarder_) internal onlyInitializing {
        __SettableERC2771Context_init_unchained(forwarder_);
    }

    function __SettableERC2771Context_init_unchained(address forwarder_) internal onlyInitializing {
        _forwarder = forwarder_;
    }

    /**
     * @dev Returns the address of the trusted forwarder.
     */
    function trustedForwarder() public view virtual returns (address) {
        return _forwarder;
    }

    /**
     * @dev Indicates whether any particular address is the trusted forwarder.
     */
    function isTrustedForwarder(address forwarder_) public view virtual override returns (bool) {
        return forwarder_ == trustedForwarder();
    }

    /**
     * @dev Sets trusted forwarder.
     * Internal function without access restriction.
     */
    function _setTrustForwarder(address forwarder_) internal virtual {
        address prevForwarder = _forwarder;
        _forwarder = forwarder_;
        emit TrustForwarderUpdated(prevForwarder, forwarder_);
    }
}
