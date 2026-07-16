// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

import {AccessControlEnumerable} from "@uniswap/openzeppelin-contracts/contracts/access/extensions/AccessControlEnumerable.sol";
import {IArenaReferralRegistry} from "./intefaces/IArenaReferralRegistry.sol";


contract ArenaReferralRegistry is AccessControlEnumerable, IArenaReferralRegistry {

    bytes32 public constant REFERER_ADMIN_ROLE = keccak256("REFERER_ADMIN_ROLE");
    mapping(address => address) public referrer;

    error ReferrerCantBeSelf();

    constructor(address _owner) {
        _grantRole(DEFAULT_ADMIN_ROLE, _owner);
    }

    function setReferrerWithAdmin(address _referrer, address _referee) public onlyRole(REFERER_ADMIN_ROLE) { 
        referrer[_referee] = _referrer;
    }

    function setReferrer(address _referrer) public {
        require(_referrer != msg.sender, ReferrerCantBeSelf());
        referrer[msg.sender] = _referrer;
    }

    function getReferrer(address _referee) public view returns (address) {
        return referrer[_referee];
    }

    
}