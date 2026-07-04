// SPDX-License-Identifier: MIT

pragma solidity 0.8.26;

import {ITargetICRHook} from "src/interfaces/utils/integrations/ITargetICRHook.sol";
import {IMetaBeraborrowCore} from "src/interfaces/core/IMetaBeraborrowCore.sol";

/**
 * @title TargetICRHook
 * @author Beraborrow Team
 * @notice Simple settable target ICR for MLVs
 */
contract TargetICRHook is ITargetICRHook {
    uint256 targetICR;
    IMetaBeraborrowCore immutable public metaBeraborrowCore;

    error NotOwner(address caller);

    constructor(uint256 _targetICR, address _metaBeraborrowCore) {
        targetICR = _targetICR;
        metaBeraborrowCore = IMetaBeraborrowCore(_metaBeraborrowCore);
    }

    function setTargetICR(uint256 _targetICR) external {
        if (msg.sender != metaBeraborrowCore.owner()) revert NotOwner(msg.sender);

        targetICR = _targetICR;
    }

    function calcTargetICR() external view returns (uint256) {
        return targetICR;
    }
}