// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.20;

import {WalletBasedClaim} from "./WalletBasedClaim.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

/**
 * @title Wallet based claims with direct withdrawal
 * @author 0xBuooy
 */
contract WalletBasedClaimWithDirectWithdrawal is WalletBasedClaim {
    using SafeERC20 for IERC20;

    ////////////////////////////////////////////
    //        Withdraw
    ////////////////////////////////////////////
    /**
     * @notice Releases the tokens and withdraw directly to the wallet
     */
    function releaseAndWithdraw(
        uint256[] calldata _vestingScheduleIds
    ) external nonReentrant whenNotPaused returns (uint120 transferredAmount) {
        uint256 vestingScheduleIdsLength = _vestingScheduleIds.length;
        for (uint256 i; i < vestingScheduleIdsLength; ) {
            uint256 _vestingScheduleId = _vestingScheduleIds[i];
            VestingData storage vestingData = usersVestingData[msg.sender][
                _vestingScheduleId
            ];

            if (vestingData.revoked) revert VestingIsRevoked();

            uint120 amount = _computeReleasableAmount(
                _vestingScheduleId,
                vestingData
            );

            if (amount <= 0) revert NoReleasableFunds();

            // Update the released amount
            vestingData.released += amount;

            // Transfer the amount
            monToken.safeTransfer(msg.sender, uint256(amount));

            // Update the amount transfered
            transferredAmount += amount;

            unchecked {
                ++i;
            }
        }
    }
}
