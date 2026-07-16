// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

import {ITTokenRouter} from "./interfaces/ITTokenRouter.sol";
import {AccessControl} from "@openzeppelin/contracts/access/AccessControl.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IERC20Permit} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Permit.sol";
import {ITToken} from "./interfaces/ITToken.sol";

/**
 * @notice  Helper contract for main use by Theo minting service
 * @dev     deposits and complete pending only callable by the MINTER_ROLE
 */

contract TTokenRouter is ITTokenRouter, AccessControl {
    using SafeERC20 for IERC20;
    bytes32 public constant MINTER_ROLE = keccak256("MINTER_ROLE");

    constructor() {
        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
    }

    /** @dev See {ITTokenRouter-bulkCompletePending} */
    function bulkCompletePending(CompletePending[] calldata completes) external onlyRole(MINTER_ROLE) {
        for (uint256 i = 0; i < completes.length; i++) {
            _completePending(completes[i]);
        }
    }

    /**
     * @notice Internal function to complete pending on a single tToken
     * @dev Checks that the asset is correct, transfers the asset to this contract,
     *      then calls the tToken's completePending function.
     */
    function _completePending(CompletePending calldata complete) internal {
        // ensure asset is correct
        if (ITToken(complete.tToken).asset() != complete.asset) {
            revert InvalidTTokenAsset(complete.asset, ITToken(complete.tToken).asset());
        }
        // check tToken to ensure the amount is not too much
        uint256 amountAsset = complete.amountAsset;
        uint256 tTokenAssetsPending = ITToken(complete.tToken).totalAssetsPending();
        if (complete.amountAsset > tTokenAssetsPending) {
            amountAsset = tTokenAssetsPending;
        }
        // transfer asset to this contract
        IERC20(complete.asset).safeTransferFrom(msg.sender, address(this), amountAsset);
        IERC20(complete.asset).safeIncreaseAllowance(complete.tToken, amountAsset);
        ITToken(complete.tToken).completePending(amountAsset);
    }

    /** @dev See {ITTokenRouter-depositOptimistic} */
    function depositOptimistic(OptimisticDeposit[] calldata deposits) external onlyRole(MINTER_ROLE) {
        for (uint256 i = 0; i < deposits.length; i++) {
            _depositOptimistic(deposits[i]);
        }
    }

    /**
     * @notice Internal function to deposit optimistically on a single tToken
     * @dev Checks that the asset is correct, creates an allowance if needed with permit
     */
    function _depositOptimistic(OptimisticDeposit calldata deposit) internal {
        // create allowance
        _selfPermit(deposit.assetIn, deposit.from, deposit.amountAssetIn, deposit.deadline, deposit.permitSignature);
        // send asset to receiver
        IERC20(deposit.assetIn).safeTransferFrom(deposit.from, deposit.assetReceiver, deposit.amountAssetIn);

        // optimistic deposit on tToken
        ITToken(deposit.tToken).depositOptimistic(deposit.tTokenAssets, deposit.to);
    }

    /**
     * @dev Internal function to check if allowance is needed, or call permit on the erc20Permit asset
     */
    function _selfPermit(address token, address sender, uint256 value, uint256 deadline, Signature memory sig) internal {
        if (IERC20(token).allowance(sender, address(this)) < value) {
            IERC20Permit(token).permit(sender, address(this), value, deadline, sig.v, sig.r, sig.s);
        }
    }

    function setMinter(address minter, bool isMinter) external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (isMinter) {
            _grantRole(MINTER_ROLE, minter);
        } else {
            _revokeRole(MINTER_ROLE, minter);
        }
    }

    /// @dev recover accidental funds sent to this contract
    function recoverFunds(address token, address to, uint256 amount) external onlyRole(DEFAULT_ADMIN_ROLE) {
        IERC20(token).safeTransfer(to, amount);
    }
}
