// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity 0.8.17;

import {Owned} from "solmate/auth/Owned.sol";
import {Constants} from "src/libraries/Constants.sol";
import {ERC20, SafeTransferLib} from "solmate/utils/SafeTransferLib.sol";

/// @title LiquidTransferProxy
/// @notice This contract is used to transfer tokens to the Liquid Router.
contract LiquidTransferProxy is Owned {
    using SafeTransferLib for ERC20;

    /// @notice LiquidRouter contract address.
    address public liquidRouter;

    /// @notice New implementation address.
    address public newLiquidRouter;

    /// @notice Timestamp of the pending upgrade.
    uint256 public upgradeTimestamp;

    /// @notice Delay before an implementation of liquid router can be updated.
    uint256 public immutable delay;

    event ImplementationUpgraded(address indexed liquidRouter, uint256 timestamp);

    event NewImplementationQueued(address indexed liquidRouter, uint256 timestamp);

    constructor(uint256 _delay) Owned(msg.sender) {
        delay = _delay;
    }

    function initialize(address _liquidRouter) external onlyOwner {
        if (liquidRouter != address(0)) revert Constants.ALREADY_INITIALIZED();
        liquidRouter = _liquidRouter;
    }

    modifier onlyLiquidRouter() {
        if (msg.sender != liquidRouter) revert Constants.NOT_ALLOWED();
        _;
    }

    function transferFrom(address token, address from, address to, uint256 amount) external onlyLiquidRouter {
        ERC20(token).safeTransferFrom(from, to, amount);
    }

    function queueImplementation(address _liquidRouter) external onlyOwner {
        emit NewImplementationQueued(newLiquidRouter = _liquidRouter, upgradeTimestamp = block.timestamp + delay);
    }

    function upgradeImplementation() external onlyOwner {
        if (block.timestamp < upgradeTimestamp || newLiquidRouter == address(0)) revert Constants.NOT_ALLOWED();
        emit ImplementationUpgraded(liquidRouter = newLiquidRouter, block.timestamp);

        newLiquidRouter = address(0);
    }
}
