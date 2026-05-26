// SPDX-License-Identifier: MIT
pragma solidity 0.8.12;

import { AToken } from "@radiant-v2-core/lending/tokenization/AToken.sol";
import { Errors } from "@radiant-v2-core/lending/libraries/helpers/Errors.sol";
import { Errors as RizErrors } from "../libraries/Errors.sol";
import { RizLendingPool } from "../riz-lending/RizLendingPool.sol";
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { WadRayMath } from "@radiant-v2-core/lending/libraries/math/WadRayMath.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

contract RizAToken is AToken {
    using WadRayMath for uint256;
    using SafeERC20 for IERC20;

    event EmergencyTransfer(address indexed from, address indexed to, uint256 amount);

    /// @notice Emergency withdrawal function. Please note, that this should be ONLY called in case
    /// pool is bricked and all users need to withdraw their funds in ratio defined in BadDebtManager
    /// NOTE: This will not burn AToken supplies of users as we need to identify their proportion of
    /// the underlying asset and transfer it to them
    function emergencyWithdrawal(address user, address receiverOfUnderlying, uint256 amount, uint256 index)
        external
        onlyLendingPool
    {
        // We need to check that RizLendingPool is bricked
        if (!RizLendingPool(address(_pool)).isShutdown()) {
            revert RizErrors.PoolNotDisabled();
        }
        uint256 amountScaled = amount.rayDiv(index);
        require(amountScaled != 0, Errors.CT_INVALID_BURN_AMOUNT);
        // Transfer without burning. At this stage if pool is bricked, we don't really care about atoken supply anymore
        // and will try to distribute all assets across depositors in a weighted manner
        IERC20(_underlyingAsset).safeTransfer(receiverOfUnderlying, amount);

        emit EmergencyTransfer(user, receiverOfUnderlying, amount);
    }
}
