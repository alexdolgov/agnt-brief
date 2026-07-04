// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {ITToken} from "./interfaces/ITToken.sol";

/**
 * @dev   Escrows assets from async 4626 vault, only callable by the vault that created this contract.
 */

contract TTokenEscrow {
    using SafeERC20 for IERC20;

    error OnlyTToken();
    error EscrowIncomplete();

    address public tToken;

    constructor() {
        tToken = msg.sender;
    }

    /**
     * @notice  Ends escrow for a user
     * @dev     This contract is expected to have the escrow asset to send
     * @param   user  The user whose escrow is being ended
     * @param   escrow  The escrow details for the user
     */
    function endEscrow(address user, ITToken.UserEscrow memory escrow) external {
        if (msg.sender != tToken) {
            revert OnlyTToken();
        }
        if (escrow.escrowEnd > block.timestamp) {
            revert EscrowIncomplete();
        }
        IERC20(escrow.escrowAsset).safeTransfer(user, escrow.escrowAmount);
    }
}
