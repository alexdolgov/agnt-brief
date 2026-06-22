// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

contract BlpRewards is Ownable {
    using SafeERC20 for IERC20;

    IERC20 internal constant WGLMR =
        IERC20(0xAcc15dC74880C9944775448304B263D191c6077F);
    address internal constant RECIPIENT =
        0x3DeCCEfd66b34b64b8830b036843C9568504E217;
    uint256 public rewardsPerDay = 8000 ether;

    mapping(address => bool) public operators;

    constructor() {
        operators[msg.sender] = true;
    }

    function sendRewards() external {
        require(operators[msg.sender], "not operator");
        WGLMR.safeTransfer(RECIPIENT, rewardsPerDay);
    }

    function setRewardsPerDay(uint256 _rewardsPerDay) external onlyOwner {
        rewardsPerDay = _rewardsPerDay;
    }

    function emergencyWithdraw(
        IERC20 _token,
        uint256 amount
    ) external onlyOwner {
        _token.safeTransfer(msg.sender, amount);
    }

    function setOperator(address _operator, bool _status) external onlyOwner {
        operators[_operator] = _status;
    }
}
