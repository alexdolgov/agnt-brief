// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

/**
 * @dev A token holder contract that will allow a beneficiary to extract the
 * tokens after a given release time.
 *
 * Useful for simple vesting schedules like "advisors get all of their tokens
 * after 1 year".
 */
contract TokenTimelockVesting {
    using SafeERC20 for IERC20;

    // ERC20 basic token contract being held
    IERC20 immutable private _token;

    // beneficiary of tokens after they are released
    address immutable private _beneficiary;

    // timestamp when token release is enabled
    uint256  private _releaseBlock;

    uint256 immutable private _intervalBlockCount; //blocks between withdrawls.
    
    uint256 immutable private _withdrawAmount; //amount that can be withdrawn each time.

    constructor (IERC20 token_, address beneficiary_,  uint256 intervalBlocks, uint256 withdrawAmount) {
        // solhint-disable-next-line not-rely-on-time
        require( (block.number + intervalBlocks) > block.number, "TokenTimelock: release time is before current time");
        _token = token_;
        _beneficiary = beneficiary_;
        _releaseBlock = block.number + intervalBlocks;
        _intervalBlockCount = intervalBlocks;
        _withdrawAmount = withdrawAmount * 10 ** 18;
    }

    /**
     * @return the token being held.
     */
    function token() public view virtual returns (IERC20) {
        return _token;
    }

    /**
     * @return the beneficiary of the tokens.
     */
    function beneficiary() public view virtual returns (address) {
        return _beneficiary;
    }

    /**
     * @return the time when the tokens are released.
     */
    function releaseTime() public view virtual returns (uint256) {
        return _releaseBlock;
    }

    function withdrawAllowance() public view returns (uint256) {
        return _withdrawAmount;
    }

    function withdrawInterval() public view returns (uint256) {
        return _intervalBlockCount;
    }

    /**
     * @notice Transfers tokens held by timelock to beneficiary.
     */
    function release() public virtual {
        // solhint-disable-next-line not-rely-on-time
        require(block.number >= releaseTime(), "TokenTimelock: current time is before next allowed release time");
        _releaseBlock = _releaseBlock + _intervalBlockCount;

        if(token().balanceOf(address(this)) >= _withdrawAmount) {
            token().safeTransfer(beneficiary(), _withdrawAmount);
        } else{
            uint256 amount = token().balanceOf(address(this));
            require(amount > 0, "TokenTimelock: no tokens to release");
            token().safeTransfer(beneficiary(), amount);
        }
    }
}