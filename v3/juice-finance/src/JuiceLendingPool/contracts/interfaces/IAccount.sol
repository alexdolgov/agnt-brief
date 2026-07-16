// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.24;

import "solady/src/tokens/ERC20.sol";
import "../libraries/accounts/AccountLib.sol";
import "../interfaces/IAccountManager.sol";

interface IAccount {
    /// @notice Event emitted when `amount` of `asset` is withdrawn from account
    event Claim(uint256 amount);
    /// @notice Borrow event emitted when `amount` of `asset` is borrowed on behalf of the account
    event Borrow(uint256 amount);
    /// @notice Repay event emitted when `amount` of `asset` is repaid on behalf of the account
    event Repay(uint256 amount);

    function asset() external view returns (IERC20);

    function owner() external view returns (address);

    /// @dev Returns a unique identifier distinguishing this type of account
    function getKind() external view returns (bytes32);

    function getManager() external view returns (IAccountManager);
    function initialize(address owner_) external;

    function pause() external;
    function unpause() external;

    /// Owner interactions

    function borrow(uint256 amount) external payable;
    function repay(uint256 amount) external payable;
    function claim(uint256 amount) external payable;
    function claim(uint256 amount, address recipient) external payable;
}
