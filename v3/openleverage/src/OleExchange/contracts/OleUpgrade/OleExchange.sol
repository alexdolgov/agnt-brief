// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.7.6;
pragma experimental ABIEncoderV2 ;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/SafeERC20.sol";
import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import "@openzeppelin/contracts/math/SafeMath.sol";
import ".././Adminable.sol";

contract OleExchange is Adminable, ReentrancyGuard {
    using SafeERC20 for IERC20;
    using SafeMath for uint256;

    IERC20 public oldOle;
    IERC20 public newOle;
    uint64 public expireTime;

    constructor (IERC20 _oldOle, IERC20 _newOle, uint64 _expireTime){
        admin = msg.sender;
        oldOle = _oldOle;
        newOle = _newOle;
        expireTime = _expireTime;
    }

    function exchange(uint256 _amount) external nonReentrant(){
        require(expireTime > block.timestamp, 'Expired');
        uint newOleBalanceBefore = newOle.balanceOf(address(this));
        require(newOleBalanceBefore >= _amount, 'NE');

        uint oldOleBalanceBefore = oldOle.balanceOf(address(this));
        oldOle.safeTransferFrom(msg.sender, address(this), _amount);
        uint oldOleBalanceAfter = oldOle.balanceOf(address(this));
        require(oldOleBalanceAfter.sub(oldOleBalanceBefore) == _amount, "ERR1");

        newOle.safeTransfer(msg.sender, _amount);
        uint newOleBalanceAfter= newOle.balanceOf(address(this));
        require(newOleBalanceBefore.sub(newOleBalanceAfter) == _amount, "ERR2");
    }

    function recycle(address _account, uint256 _amount) external onlyAdmin {
        require(newOle.balanceOf(address(this)) >= _amount, "NE");
        newOle.safeTransfer(_account, _amount);
    }

}