// SPDX-License-Identifier: GPL-2.0
pragma solidity ^0.8.20;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IERC4626} from "@openzeppelin/contracts/interfaces/IERC4626.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import {Access} from "../administrator/Access.sol";
import {Common} from "../libs/Common.sol";
import {Constants} from "../libs/Constants.sol";

import {IMinter} from "./interface/IMinter.sol";
import {ILockBox} from "./interface/ILockBox.sol";
import {IYToken} from "./interface/IYToken.sol";

contract LockBox is Access, ILockBox {
    uint256[32] private __gap;

    using SafeERC20 for IERC20;

    function init(address _admin) public initializer {
        __Access_init(_admin);
    }

    function approve(address yToken) external notPaused onlyCollateralManager {
        IERC20(IERC4626(yToken).asset()).forceApprove(yToken, type(uint256).max);
    }

    function _sync(address yToken, uint256 yAmount, address receiver) internal {
        require(yToken != address(0) && yAmount > 0, "!valid");

        // mint tokens to lock box
        uint256 sAmount = ( yAmount * IYToken(yToken).exchangeRate()) / Constants.PINT;
        IMinter(IERC4626(yToken).asset()).mint(address(this), sAmount);
        IERC4626(yToken).deposit(sAmount, receiver);

        emit Sync(msg.sender, yToken, yAmount, sAmount, true);
    }

    function sync(address yToken, uint256 yAmount) external notPaused onlyCollateralManager {
        _sync(yToken, yAmount, address(this));
    }

    function burn(address yToken, uint256 yAmount) external notPaused onlyCollateralManager {
        require(IERC20(yToken).balanceOf(address(this)) >= yAmount, "!balance");

        // Redeem ytokens for sTokens
        uint256 sAmount = IERC4626(yToken).redeem(yAmount, address(this), address(this));

        // Burn sTokens that are received
        IMinter(IERC4626(yToken).asset()).burn(address(this), sAmount);

        emit Sync(msg.sender, yToken, yAmount, sAmount, false);
    }

    function unlock(address yToken, address to, uint256 amount) external nonReentrant notPaused onlyBridge {
        require(to != address(0) && amount > 0, "!valid");
        require(yToken != address(0), "!token");

        if(IERC20(yToken).balanceOf(address(this)) >= amount) {
            IERC20(yToken).safeTransfer(to, amount); // transfer (already minted)
        } else {
            // sync of yToken is yet to happen
            _sync(yToken, amount, to); // mint
        }

        emit Unlock(msg.sender, yToken, to, amount);
    }
}