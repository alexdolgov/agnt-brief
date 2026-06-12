// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {Auth} from "chronicle-std/auth/Auth.sol";

import {IVerifierECDSA} from "sonic/v1/IVerifierECDSA.sol";

import {IVerifierECDSAWatOnboarder} from "./IVerifierECDSAWatOnboarder.sol";

/**
 * @title VerifierECDSAWatOnboarder
 *
 * @notice Contract to support new wats on v1/VerifierECDSA instances
 *
 * @dev This contract can be auth'ed on v1/VerifierECDSA instances to enable
 *      bypassing DAO procedures to onboard new wats.
 *
 *      The contract as is simple as possible and does not allow any
 *      programmability.
 *
 * @author Chronicle Labs, Inc
 * @custom:security-contact security@chroniclelabs.org
 */
contract VerifierECDSAWatOnboarder is IVerifierECDSAWatOnboarder, Auth {
    constructor(address initialAuthed) Auth(initialAuthed) {}

    /// @inheritdoc IVerifierECDSAWatOnboarder
    function onboard(address verifierECDSA, bytes32 wat, uint8 bar, uint bloom)
        external
        auth
    {
        if (IVerifierECDSA(verifierECDSA).wats(wat)) {
            revert WatAlreadyOnboarded();
        }
        if (bar == 0 || bloom == 0) {
            revert BarOrBloomZero();
        }

        IVerifierECDSA(verifierECDSA).setConfig(wat, bar, bloom);
    }
}

contract VerifierECDSAWatOnboarder_1 is VerifierECDSAWatOnboarder {
    constructor(address initialAuthed)
        VerifierECDSAWatOnboarder(initialAuthed)
    {}
}
