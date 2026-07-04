// SPDX-License-Identifier: MIT
pragma solidity =0.7.6;
pragma abicoder v2;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/SafeERC20.sol";
import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import "@openzeppelin/contracts/math/SafeMath.sol";
import "./interfaces/IWETH.sol";


contract Refund is Ownable, ReentrancyGuard {
    using SafeMath for uint256;
    using SafeERC20 for IERC20;

    struct UserInfo {
        uint256 amountToClaim;
        uint256 claimedAmount;
    }

    mapping(address => UserInfo) public userInfo;
    address public weth = 0x82aF49447D8a07e3bd95BD0d56f35241523fBab1;

    bool public open;

    struct ClaimSettings {
        address account;
        uint256 amount;
    }

    event RefundUser(address user, uint256 amount);
    event EmergencyWithdraw(address token, uint256 amount);

    receive() external payable {
        assert(msg.sender == weth); // only accept ETH via fallback from the WETH contract
    }

    function setUsersClaimableAmount(ClaimSettings[] calldata users) public onlyOwner {
        for (uint256 i = 0; i < users.length; ++i) {
            ClaimSettings memory userSettings = users[i];
            UserInfo storage user = userInfo[userSettings.account];
            user.amountToClaim = userSettings.amount;
        }
    }

    function userRemainingAmountToClaim(address userAddress) external view returns (uint256) {
        UserInfo storage user = userInfo[userAddress];

        return user.amountToClaim.sub(user.claimedAmount);
    }

    function claim() external virtual nonReentrant {
        require(open, "Not open for claim");
        UserInfo storage user = userInfo[msg.sender];

        uint256 amountToClaim = user.amountToClaim.sub(user.claimedAmount);
        require(amountToClaim > 0, "nothing to claim");

        user.claimedAmount = user.claimedAmount.add(amountToClaim);

        IWETH(weth).withdraw(amountToClaim);
        _safeTransferETH(msg.sender, amountToClaim);

        emit RefundUser(msg.sender, amountToClaim);
    }

    function setOpen(bool value) external onlyOwner {
        open = value;
    }

    /**
     * @dev Failsafe
   */
    function emergencyWithdrawFunds(address token, uint256 amount) external onlyOwner {
        IERC20(token).safeTransfer(msg.sender, amount);

        emit EmergencyWithdraw(token, amount);
    }

    function _safeTransferETH(address to, uint256 value) internal {
        (bool success, ) = to.call{value: value}(new bytes(0));
        require(success, 'TransferHelper::safeTransferETH: ETH transfer failed');
    }
}