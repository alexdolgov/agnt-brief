// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

import {AccessControlEnumerable} from "@uniswap/openzeppelin-contracts/contracts/access/extensions/AccessControlEnumerable.sol";
import {IArenaReferralRegistry} from "./intefaces/IArenaReferralRegistry.sol";


contract ArenaReferralRegistry is AccessControlEnumerable, IArenaReferralRegistry {

    bytes32 public constant REFERER_ADMIN_ROLE = keccak256("REFERER_ADMIN_ROLE");
    mapping(address => address) public referrer;
    event ReferrerSet(address _referrer, address _referee);
    event ReferrerSetBatch(address[] _referrers, address[] _referees);

    error ReferrerCantBeSelf();
    error ReferrersAndRefereesLengthMismatch();

    constructor(address _owner) {
        _grantRole(DEFAULT_ADMIN_ROLE, _owner);
    }

    function setReferrerWithAdmin(address _referrer, address _referee) public onlyRole(REFERER_ADMIN_ROLE) { 
        referrer[_referee] = _referrer;
        emit ReferrerSet(_referrer, _referee);
    }

    function setReferrerBatchWithAdmin(address[] calldata _referrers, address[] calldata _referees) public onlyRole(REFERER_ADMIN_ROLE) {
        require(_referrers.length == _referees.length, ReferrersAndRefereesLengthMismatch());
        for (uint256 i = 0; i < _referrers.length; i++) {
            referrer[_referees[i]] = _referrers[i];
        }
        emit ReferrerSetBatch(_referrers, _referees);
    }

    function getReferrer(address _referee) public view returns (address) {
        return referrer[_referee];
    }

    
}