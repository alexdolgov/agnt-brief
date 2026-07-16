// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.24;

import "../../interfaces/IProtocolGovernor.sol";
import "../../libraries/GovernorLib.sol";
import "../../external/blast/IBlast.sol";

/// @title BlastPoints
/// @notice Configures a hot wallet that operates the points API for this contract.
abstract contract BlastPoints {
    IProtocolGovernor private _protocolGovernor;

    event PointsOperatorConfigured(address indexed operator);

    function __BlastPoints_init(address protocolGovernor_, address pointsOperator_) internal {
        _protocolGovernor = IProtocolGovernor(protocolGovernor_);

        IBlastPoints blast = IBlastPoints(_protocolGovernor.getImmutableAddress(GovernorLib.BLAST_POINTS));
        blast.configurePointsOperator(pointsOperator_);
    }
}
