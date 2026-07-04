//V3
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract LockLiquidity {
    uint256 public startTime;
    uint256 public timeLocked = 360 days * 3;
    address public owner;

    constructor() {
        startTime = block.timestamp;
        owner = msg.sender;
    }

    function claim(address _token) public {
        require(
            block.timestamp >= startTime + timeLocked,
            "Must be over 3 years"
        );
        IERC20 token = IERC20(_token);
        token.transfer(owner, token.balanceOf(address(this)));
    }
}