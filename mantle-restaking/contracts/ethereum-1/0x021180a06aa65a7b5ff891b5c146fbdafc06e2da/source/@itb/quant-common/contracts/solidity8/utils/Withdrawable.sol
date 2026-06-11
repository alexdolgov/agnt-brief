// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import './Executable.sol';

/**
    Ensures that any contract that inherits from this contract is able to
    withdraw funds that are accidentally received or stuck.
 */

/// @title Base contract that implements withdrawal related functions
/// @author IntoTheBlock Corp
/// @dev Abstract
abstract contract Withdrawable is Executable {
    using SafeERC20 for IERC20;
    address constant ETHER = address(0);

    event LogWithdraw(
        address indexed _to,
        address indexed _asset_address,
        uint256 amount
    );

    receive() external payable {}

    /// @notice ERC20 or ETH balance of this contract given a token address
    /// @param _asset_address Token address or address(0) for ETH
    /// @return Balance    
    function _balance(address _asset_address) internal view returns (uint256) {
        return _asset_address == ETHER ? address(this).balance : IERC20(_asset_address).balanceOf(address(this));
    }
    
    /// @notice ERC20 balance of given account
    /// @param _asset_address Token address 
    /// @param _account Account address 
    /// @return Balance  
    function balanceOf(address _asset_address, address _account) public view returns (uint256) {
        return IERC20(_asset_address).balanceOf(_account);
    }

    /// @notice Send the given amount of the given token or ETH to the given receiver
    /// @param _asset_address Token address or address(0) for ETH
    /// @param _amount Amount to send
    /// @param _to Receiver address
    function _withdraw_to(address _asset_address, uint256 _amount, address payable _to) internal {
        require(_to != address(0), 'Invalid address');
        uint256 balance = _balance(_asset_address);
        require(balance >= _amount, 'Insufficient funds');
        if (_asset_address == ETHER) {
            (bool success, ) = _to.call{value: _amount}(''); /* carry gas over so it works with contracts with custom fallback, we dont care about reentrancy on onlyOwner */
            require(success, 'Native transfer failed.');
        } else
            IERC20(_asset_address).safeTransfer(_to, _amount);
        emit LogWithdraw(_to, _asset_address, _amount);
    }

    /// @notice Only owner. Send the given amount of the given token or ETH to the caller
    /// @param _asset_address Token address or address(0) for ETH
    /// @param _amount Amount to send
    function withdraw(address _asset_address, uint256 _amount) external onlyOwner {
        _withdraw_to(_asset_address, _amount, payable(msg.sender));
    }

    /// @notice Only owner. Send the given amount of the given token or ETH to the given receiver
    /// @param _asset_address Token address or address(0) for ETH
    /// @param _amount Amount to send
    /// @param _to Receiver address
    function withdrawTo(address _asset_address, uint256 _amount, address payable _to) external onlyOwner {
        _withdraw_to(_asset_address, _amount, _to);
    }

    /// @notice Only owner. Send its entire balance of the given token or ETH to the caller
    /// @param _asset_address Token address or address(0) for ETH
    function withdrawAll(address _asset_address) external onlyOwner {
        uint256 balance = _balance(_asset_address);
        _withdraw_to(_asset_address, balance, payable(msg.sender));
    }

    /// @notice Only owner. Send its entire balance of the given token or ETH to the given receiver
    /// @param _asset_address Token address or address(0) for ETH
    /// @param _to Receiver address
    function withdrawAllTo(address _asset_address, address payable _to) external onlyOwner {
        uint256 balance = _balance(_asset_address);
        _withdraw_to(_asset_address, balance, _to);
    }
}
