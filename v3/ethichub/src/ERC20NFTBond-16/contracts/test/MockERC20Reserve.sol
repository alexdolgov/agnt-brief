// SPDX-License-Identifier: GPLv3.0
pragma solidity ^0.8.28;

import '@openzeppelin/contracts/token/ERC20/IERC20.sol';
import '@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol';

contract MockERC20Reserve {
    using SafeERC20 for IERC20;
    IERC20 public token;
    
    event Transfer(address indexed to, uint256 amount);
    
    constructor(address _token) {
        token = IERC20(_token);
    }

    function balance() external view returns (uint256) {
        return token.balanceOf(address(this));
    }

    /**
     * @dev Transfers a specified amount of tokens to a given address
     * @param _to Address of the recipient
     * @param _value Amount of tokens to transfer
     */
    function transfer(address _to, uint256 _value)
        external
        returns (bool)
    {
        token.safeTransfer(_to, _value);
        emit Transfer(_to, _value);
        return true;
    }
}