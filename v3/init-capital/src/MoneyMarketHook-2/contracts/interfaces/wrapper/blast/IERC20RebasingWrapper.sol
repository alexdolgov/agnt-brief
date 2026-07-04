// SPDX-License-Identifier: None
pragma solidity ^0.8.19;

import {MathUpgradeable} from '@openzeppelin-contracts-upgradeable/utils/math/MathUpgradeable.sol';

interface IERC20RebasingWrapper {
    /// @dev wrap underlying token to wrapped token
    /// @param _amt amount of underlying token to wrap
    /// @return shares amount of shares minted
    function wrap(uint _amt) external returns (uint shares);

    /// @dev unwrap wrapped token to underlying token
    /// @param _shares amount of wrapped token to unwrap
    /// @return amt amount of underlying token received
    function unwrap(uint _shares) external returns (uint amt);

    /// @dev claim pending interests from underlying token
    function accrueYield() external;

    /// @dev blast-erc20-rebasing token address
    function underlyingToken() external view returns (address);

    /// @notice no need to accruing interests since claimable amount is already included in totalAssets
    /// @dev convert amount of underlying token to shares
    function toShares(uint _amt) external view returns (uint);

    /// @dev convert amount of underlying token to shares
    function toShares(uint _amt, MathUpgradeable.Rounding _rounding) external view returns (uint);

    /// @notice no need to accruing interests since claimable amount is already included in totalAssets
    /// @dev convert amount of shares to underlying token
    function toAmt(uint _shares) external view returns (uint);

    /// @dev convert amount of shares to underlying token
    function toAmt(uint _shares, MathUpgradeable.Rounding _rounding) external view returns (uint);

    /// @notice no need to accruing interests since claimable amount is already included in totalAssets
    /// @dev total
    function totalAssets() external view returns (uint);
}
