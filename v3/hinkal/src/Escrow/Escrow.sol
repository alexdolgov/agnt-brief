// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

contract Escrow is Ownable {
    using SafeERC20 for IERC20;

    receive() external payable {}

    function distributeToken(IERC20 _token, address _recipient, uint256 _amount) external onlyOwner {
        _token.safeTransfer(_recipient, _amount);
    }

    function distributeETH(address _recipient, uint256 _amount) external onlyOwner {
        (bool ok,) = _recipient.call{value: _amount}("");
        require(ok);
    }

}