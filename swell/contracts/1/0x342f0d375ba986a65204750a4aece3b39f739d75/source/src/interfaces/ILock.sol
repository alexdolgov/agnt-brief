// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.23;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

interface ILock {
    /// @notice locks the token in the staking contract.
    /// @param _account The account address to lock for.
    /// @param _amount The amount of token to lock.
    function lock(address _account, uint256 _amount) external;


    /// @notice Get the staking token address.
    /// @return The staking token address.
    function token() external view returns (IERC20);
}
