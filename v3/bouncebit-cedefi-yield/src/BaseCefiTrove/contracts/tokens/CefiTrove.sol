// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.23;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {BaseCefiTrove} from "./BaseCefiTrove.sol";

contract CefiTrove is BaseCefiTrove {
    using SafeERC20 for IERC20;

    function _handleOpenToken(address token, address account, uint256 amount) internal override {
        IERC20(token).safeTransferFrom(account, address(this), amount);
    }

    function _handleTokenClaim(address token, address account, uint256 amount) internal override {
        IERC20(token).safeTransfer(account, amount);
    }

    // solhint-disable-next-line no-empty-blocks
    function _handleBatchOpenFor(address token, address account, uint256 amount) internal override {}
}
