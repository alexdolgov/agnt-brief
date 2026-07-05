// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.28;

import {YieldBasisProtocol, YieldBasisLocker} from "@address-book/src/YieldBasisEthereum.sol";
import {IYbGaugeController} from "src/interfaces/IYbGaugeController.sol";
import {VoterBase} from "src/VoterBase.sol";

/// @title YbVoter
/// @notice A Safe Module designed to facilitate voting on the YB Gauge Controller.
/// @dev This contract inherits from VoterBase and allows authorized users to cast votes
///      on gauges via a Gnosis Safe transaction execution.
contract YbVoter is VoterBase {
    ////////////////////////////////////////////////////////////////
    /// --- CONSTANTS
    ///////////////////////////////////////////////////////////////

    /// @notice The immutable address of the YB Locker contract.
    address public immutable LOCKER = YieldBasisLocker.LOCKER;

    /// @notice Initializes the YbVoter contract.
    /// @param _gateway The address of the gateway or access control contract.
    constructor(address _gateway) VoterBase(_gateway) {}

    ////////////////////////////////////////////////////////////////
    /// --- EXTERNAL FUNCTIONS
    ///////////////////////////////////////////////////////////////

    /// @notice Submits votes for specific gauges with corresponding weights.
    /// @dev Encodes the vote data and executes a transaction targeting the YB Gauge Controller.
    ///      Requires the caller to have the `hasGaugesOrAllPermission` permission.
    /// @param _gauges An array of gauge addresses to vote for.
    /// @param _weights An array of weights corresponding to the gauges (usually in basis points).
    function voteGauges(address[] calldata _gauges, uint256[] calldata _weights) 
        external 
        override 
        hasGaugesOrAllPermission 
    {
        // Ensure input arrays have the same length to prevent mismatch errors
        if (_gauges.length != _weights.length) revert INCORRECT_LENGTH();

        // Encode the function call for the Gauge Controller
        bytes memory data = abi.encodeWithSelector(
            IYbGaugeController.vote_for_gauge_weights.selector, 
            _gauges, 
            _weights
        );

        // Execute the transaction via the Safe module mechanism
        _executeTransaction(YieldBasisProtocol.GAUGE_CONTROLLER, data);
    }

    ////////////////////////////////////////////////////////////////
    /// --- INTERNAL FUNCTIONS
    ///////////////////////////////////////////////////////////////

    /// @notice Retrieves the address of the locker.
    /// @dev Overrides the base implementation to return the YbLocker address.
    /// @return The address of the immutable LOCKER.
    function _getLocker() internal view override returns (address) {
        return LOCKER;
    }

    /// @notice Retrieves the controller address.
    /// @dev Not implemented for this specific voter contract.
    ///      Calling this function will result in a revert.
    function _getController() internal pure override returns (address) {
        revert("NOT_IMPLEMENTED");
    }
}