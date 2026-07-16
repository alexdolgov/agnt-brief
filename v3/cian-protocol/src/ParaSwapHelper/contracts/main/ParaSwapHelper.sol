// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.25;

import "./swap/ParaSwapCaller.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract ParaSwapHelper is ParaSwapCaller, Ownable {
    using SafeERC20 for IERC20;

    constructor() Ownable(msg.sender) {}

    function executeSwap(
        uint256 _amount,
        address _srcToken,
        address _dstToken,
        bytes calldata _swapData,
        uint256 _swapGetMin
    ) external payable returns (uint256 returnAmount_, uint256 spentAmount_) {
        if (_srcToken == ETH) {
            require(msg.value == _amount, "ParaSwapHelper: ETH amount mismatch");
        } else {
            IERC20(_srcToken).safeTransferFrom(msg.sender, address(this), _amount);
        }
        (returnAmount_, spentAmount_) = _executeSwap(_amount, _srcToken, _dstToken, _swapData, _swapGetMin);
        if (_dstToken == ETH) {
            payable(msg.sender).call{value: returnAmount_}("");
        } else {
            IERC20(_dstToken).safeTransfer(msg.sender, returnAmount_);
        }
    }

    function sweep(address _token) external onlyOwner {
        if (_token == ETH) {
            payable(owner()).transfer(address(this).balance);
        } else {
            IERC20(_token).safeTransfer(owner(), IERC20(_token).balanceOf(address(this)));
        }
    }

    receive() external payable {}
}
