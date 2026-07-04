// SPDX-License-Identifier: GPLv3.0
pragma solidity ^0.8.28;

import '@openzeppelin/contracts/token/ERC20/IERC20.sol';
import '@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol';

contract MockMultiTokenReserve {
    using SafeERC20 for IERC20;
    
    event Transfer(address token, address indexed to, uint256 amount);
    
    function balance(address _token) external view returns (uint256) {
        return IERC20(_token).balanceOf(address(this));
    }

    /**
     * @dev Transfers a specified amount of tokens to a given address
     * @param _token Address of the token to transfer
     * @param _to Address of the recipient
     * @param _value Amount of tokens to transfer
     */
    function transfer(address _token, address _to, uint256 _value)
        external
    {
        IERC20(_token).safeTransfer(_to, _value);
        emit Transfer(_token, _to, _value);
    }
}
