// SPDX-License-Identifier: MIT

pragma solidity 0.8.26;

import {IFeeHook} from "src/interfaces/utils/integrations/IFeeHook.sol";
import {IMetaBeraborrowCore} from "src/interfaces/core/IMetaBeraborrowCore.sol";

/**
 * @title FeeHook
 * @author Beraborrow Team
 * @notice Simple settable fee for MLVs
 */
contract FeeHook is IFeeHook {
    uint256 fee;
    IMetaBeraborrowCore immutable public metaBeraborrowCore;
    
    error NotOwner(address caller);

    constructor(uint256 _fee, address _metaBeraborrowCore) {
        fee = _fee;
        metaBeraborrowCore = IMetaBeraborrowCore(_metaBeraborrowCore);
    }

    function setFee(uint256 _fee) external {
        if (msg.sender != metaBeraborrowCore.owner()) revert NotOwner(msg.sender);

        fee = _fee;
    }

    function calcFee(address caller, address token, uint amount, Action action) external view returns (uint256 feeInBP) {
        return fee;
    }
}