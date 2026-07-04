// SPDX-License-Identifier: agpl-3.0

pragma solidity 0.7.5;

interface ICooldownManager {
    function cooldown() external;
    function setCooldown(uint256 cooldownSeconds) external;
    function setUnstakeWindow(uint256 unstakeWindow) external;
}