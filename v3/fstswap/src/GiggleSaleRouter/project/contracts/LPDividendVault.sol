// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

interface IERC20Minimal {
    function approve(address spender, uint256 value) external returns (bool);
    function transfer(address to, uint256 value) external returns (bool);
    function balanceOf(address account) external view returns (uint256);
}

/**
 * LPDividendVault
 * - Holds the LP dividend reward token
 * - Created by MemeToken at token creation time
 * - On creation, approves `msg.sender` (the MemeToken) for the reward token (per requirement)
 * - Only the MemeToken can move funds out (via transferReward)
 * - No admin/rescue functions — fully trustless
 */
contract LPDividendVault {
    address public immutable token;
    address public immutable rewardToken;

    modifier onlyToken() {
        require(msg.sender == token, "ONLY_TOKEN");
        _;
    }

    constructor(address _rewardToken) {
        token = msg.sender;
        rewardToken = _rewardToken;

        if (_rewardToken != address(0)) {
            IERC20Minimal(_rewardToken).approve(msg.sender, type(uint256).max);
        }
    }

    function balance() external view returns (uint256) {
        return IERC20Minimal(rewardToken).balanceOf(address(this));
    }

    function transferReward(address to, uint256 amount) external onlyToken {
        if (amount == 0) return;
        IERC20Minimal(rewardToken).transfer(to, amount);
    }

    receive() external payable {}
}
