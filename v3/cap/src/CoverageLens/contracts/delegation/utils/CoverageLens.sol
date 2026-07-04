// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.28;

import { IDelegation } from "../../interfaces/IDelegation.sol";
import { ISymbioticNetworkMiddleware } from "../../interfaces/ISymbioticNetworkMiddleware.sol";
import { Math } from "@openzeppelin/contracts/utils/math/Math.sol";

/// @title CoverageLens
/// @author weso, Cap Labs
/// @notice Lens for coverage calculations
contract CoverageLens {
    /// @notice Coverage for an agent at an epoch boundary (best-effort lens)
    /// @dev Mirrors `Delegation.coverage()`'s epoch-boundary lookup by querying the network's `slashableCollateral`
    ///      at the epoch start timestamp and applying the delegation's `coverageCap`.
    /// @param delegation Delegation contract address
    /// @param _agent Agent address
    /// @param _epoch Epoch index (same epoch numbering as `IDelegation.epoch()`)
    /// @return coverage Coverage for the agent at that epoch boundary (USD, 8 decimals)
    function coverageAtEpoch(address delegation, address network, address _agent, uint256 _epoch)
        external
        view
        returns (uint256 coverage)
    {
        uint256 ts = _epochToTimestamp(delegation, _epoch);
        require(ts <= type(uint48).max, "epoch too large");

        uint48 epochStart = uint48(ts);
        if (epochStart == block.timestamp && epochStart > 0) epochStart -= 1;

        uint256 cap = IDelegation(delegation).coverageCap(_agent);

        uint256 epochCoverage = ISymbioticNetworkMiddleware(network).slashableCollateral(_agent, epochStart);
        coverage = Math.min(epochCoverage, cap);
    }

    function _epochToTimestamp(address delegation, uint256 _epoch) internal view returns (uint256 timestamp) {
        return IDelegation(delegation).epochDuration() * _epoch;
    }
}