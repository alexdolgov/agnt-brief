// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.30;

import {IRehypothecationModule} from "../interfaces/IRehypothecationModule.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

/**
 * @title RehypothecationModule
 *  @notice Holder contract for 3 values that play role in rehypothecation:
 * - ϕMax - Maximum ratio of raw tokens to total balance
 * - ϕMin - Minimum ratio of raw tokens to total balance
 * - ϕTarget - Target ratio of raw tokens to total balance
 * Rebalance Trigger: when the ratio of raw tokens to total balance goes above ϕMax or below ϕMin, tokens are
 * rebalanced to reach ϕTarget
 */
contract RehypothecationModule is Ownable, IRehypothecationModule {
    uint256 private constant BIPS = 10000;

    uint256 public phiMax; // ϕMax
    uint256 public phiMin; // ϕMin
    uint256 public phiTarget; // ϕTarget

    event RehypothecationParamsUpdated(uint256 phiMax, uint256 phiMin, uint256 phiTarget);

    constructor(uint256 _phiMax, uint256 _phiMin, uint256 _phiTarget, address owner) Ownable(owner) {
        require(_phiMin <= _phiTarget && _phiTarget <= _phiMax && _phiMax <= BIPS, "Invalid params");
        phiMax = _phiMax;
        phiMin = _phiMin;
        phiTarget = _phiTarget;
        emit RehypothecationParamsUpdated(_phiMax, _phiMin, _phiTarget);
    }

    /// @notice Updates the rehypothecation parameters
    /// @param _phiMax New value for ϕMax
    /// @param _phiMin New value for ϕMin
    /// @param _phiTarget New value for ϕTarget
    /// @dev Only callable by the owner
    function updateRehypothecationParams(uint256 _phiMax, uint256 _phiMin, uint256 _phiTarget) external onlyOwner {
        require(_phiMin <= _phiTarget && _phiTarget <= _phiMax && _phiMax <= BIPS, "Invalid params");
        phiMax = _phiMax;
        phiMin = _phiMin;
        phiTarget = _phiTarget;
        emit RehypothecationParamsUpdated(_phiMax, _phiMin, _phiTarget);
    }
}
