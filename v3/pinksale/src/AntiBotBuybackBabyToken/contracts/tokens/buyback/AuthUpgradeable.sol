//SPDX-License-Identifier: MIT
pragma solidity =0.7.6;

import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";

abstract contract AuthUpgradeable is OwnableUpgradeable {
    mapping(address => bool) internal authorizations;

    function __Auth_init(address owner) internal initializer {
        __Ownable_init();
        transferOwnership(owner);
        __Auth_init_unchained();
    }

    function __Auth_init_unchained() internal initializer {
        authorizations[owner()] = true;
    }

    /**
     * Function modifier to require caller to be authorized
     */
    modifier authorized() {
        require(isAuthorized(msg.sender), "!AUTHORIZED");
        _;
    }

    /**
     * Authorize address. Owner only
     */
    function authorize(address adr) public onlyOwner {
        authorizations[adr] = true;
    }

    /**
     * Remove address' authorization. Owner only
     */
    function unauthorize(address adr) public onlyOwner {
        authorizations[adr] = false;
    }

    /**
     * Return address' authorization status
     */
    function isAuthorized(address adr) public view returns (bool) {
        return authorizations[adr];
    }
}
