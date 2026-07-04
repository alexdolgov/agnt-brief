pragma solidity 0.8.4;

import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Exchange is Ownable {
    IERC20 public relayToken;
    IERC20 public zeroToken;

    constructor(address _relayToken, address _zeroToken) {
        relayToken = IERC20(_relayToken);
        zeroToken = IERC20(_zeroToken);
    }

    function swap(uint256 amount) public {
        zeroToken.transferFrom(msg.sender, address(this), amount);
        relayToken.transfer(msg.sender, amount / 100);
    }

    function adminWithdrawETH() external onlyOwner {
        payable(msg.sender).transfer(address(this).balance);
    }

    function adminWithdrawERC20(address token) external onlyOwner {
        uint256 amount = IERC20(token).balanceOf(address(this));
        IERC20(token).transfer(msg.sender, amount);
    }
}
