// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

import "./interfaces/IThroneVault.sol";

contract ThroneVault is IThroneVault, Ownable {
    using SafeERC20 for IERC20;
    IERC20 public THRONE;

    uint8 public immutable VERSION = 0;

    constructor(address _throne) {
        THRONE = IERC20(_throne);
    }

    /// @notice Safe transfer THRONE function, just in case if rounding error causes pool to not have enough THRONEs.
    /// @param _to The address to transfer THRONE to
    /// @param _amount The amount to transfer to
    function safeTransferThrone(address _to, uint256 _amount) external override onlyOwner {
        uint256 throneBal = THRONE.balanceOf(address(this));
        if (_amount >= throneBal) {
            THRONE.safeTransfer(_to, throneBal);
        } else {
            THRONE.safeTransfer(_to, _amount);
        }
    }
}
