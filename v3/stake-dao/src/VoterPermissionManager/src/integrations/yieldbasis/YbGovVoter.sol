// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.28;
import {YieldBasisProtocol, YieldBasisLocker} from "@address-book/src/YieldbasisEthereum.sol";
import {IYbPlugin, Tally} from "src/interfaces/IYbPlugin.sol";
import {VoterBase} from "src/VoterBase.sol";

/// @notice Structure representing a single vote operation
struct Vote {
    uint256 _voteId;         // The ID of the proposal
    Tally _tally;            // The voting choice (e.g., Yes, No, Abstain)
    bool _tryEarlyExecution; // Flag to attempt execution immediately if the vote passes
}

/// @title YbGovVoter
/// @notice A Safe Module designed to batch votes for the YieldBasis governance protocol
/// @dev Inherits from VoterBase to handle Safe access control and permissions
contract YbGovVoter is VoterBase {

    /// @notice The immutable address of the YieldBasis Plugin contract
    address public immutable PLUGIN = YieldBasisProtocol.PLUGIN;

    /// @notice YB Locker
    address public immutable LOCKER = YieldBasisLocker.LOCKER;

    /// @notice Constructor to initialize the voter contract
    /// @param _gateway The address of the governance gateway or Safe module controller
    constructor(address _gateway) VoterBase(_gateway) {}
   
    /// @notice Executes a batch of votes on the YieldBasis Plugin
    /// @dev This function is atomic: if one vote fails, the entire transaction reverts.
    ///      Protected by 'hasProposalsOrAllPermission' from VoterBase.
    /// @param _votes An array of Vote structs containing the vote parameters
    function votes(Vote[] calldata _votes) external hasProposalsOrAllPermission {
        // Iterate through the votes array
        for (uint256 i; i < _votes.length;) {
            Vote calldata vote = _votes[i];
            
            bytes memory data = abi.encodeWithSelector(IYbPlugin.vote.selector, vote._voteId, vote._tally, vote._tryEarlyExecution);
            _executeTransaction(PLUGIN, data);

            unchecked {
                ++i;
            }
        }
    }

    function voteGauges(address[] calldata _gauges, uint256[] calldata _weights) 
        external 
        override 
        hasGaugesOrAllPermission 
    {
        revert("NOT_IMPLEMENTED");
    }

    /// @notice Get the locker address
    /// @dev Must be implemented for the SafeModule contract
    function _getLocker() internal view override returns (address) {
        return LOCKER;
    }

    function _getController() internal view override returns (address) {
        revert("NOT_IMPLEMENTED");
    }
}