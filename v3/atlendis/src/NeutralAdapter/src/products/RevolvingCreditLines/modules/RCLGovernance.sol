// SPDX-License-Identifier: AGPL-3.0
pragma solidity 0.8.13;

import './interfaces/IRCLGovernance.sol';
import './RCLOrderBook.sol';

/**
 * @title Governance
 * @author Atlendis Labs
 * @notice Implementation of the IRCLGovernance
 *         Governance module of the RCL product
 */
abstract contract RCLGovernance is IRCLGovernance, RCLOrderBook {
    /**
     * @notice Constructor - register creation timestamp and grant the owner rights to the governance address
     * @param governance Address of the governance
     */
    constructor(address governance) {
        _transferOwnership(governance);
    }

    /*//////////////////////////////////////////////////////////////
                        EXTERNAL FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    function allowBorrower(address borrower) external onlyOwner {
        permissionedBorrowers[borrower] = true;
    }
}
