// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract IJPEGDistribution is ReentrancyGuard, Ownable {
    IERC20 constant IJPEG = IERC20(0x3415cf1a6459b62A34656e53E4048233775ac0AC);
    uint256 constant ETH_PER_IJPEG = 0.67 ether;

    receive() external payable {}

    function exchange(uint256 _ijpegAmount) external nonReentrant {
        uint256 _ethAmount = _ijpegAmount * ETH_PER_IJPEG / 1 ether;
        IJPEG.transferFrom(msg.sender, address(this), _ijpegAmount);
        (bool sent,) = msg.sender.call{value: _ethAmount}("");
        assert(sent);
    }

    function rescueETH(uint256 _amount) external onlyOwner {
        (bool sent,) = msg.sender.call{value: _amount}("");
        assert(sent);
    }

    function rescueToken(IERC20 _token, uint256 _amount) external onlyOwner {
        _token.transfer(msg.sender, _amount);
    }
}