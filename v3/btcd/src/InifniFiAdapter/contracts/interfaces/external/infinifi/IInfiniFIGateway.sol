// SPDX-License-Identifier: MIT

pragma solidity 0.8.24;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

/// @title IInfiniFIGateway
/// @notice Interface for the InfiniFi protocol, combining ERC20 receipt token functionality
///         with staking and redemption operations.
interface IInfiniFIGateway is IERC20 {
    /// @notice Deposits underlying assets, mints iUSD, and stakes them in a single transaction.
    /// @param to_ The address that will receive the staked receipt tokens.
    /// @param amount_ The amount of USDC to deposit.
    /// @return _receiptTokens The amount of siUSD minted and staked.
    function mintAndStake(address to_, uint256 amount_) external returns (uint256 _receiptTokens);

    /// @notice Unstakes receipt tokens and returns the underlying iUSD to the recipient.
    /// @param _to The address that will receive the unstaked tokens.
    /// @param _stakedTokens The amount of siUSD to unstake.
    /// @return _receiptTokens The amount of iUSD returned.
    function unstake(address _to, uint256 _stakedTokens) external returns (uint256 _receiptTokens);

    /// @notice Redeems iUSD tokens for the underlying assets.
    /// @param _to The address that will receive the underlying assets.
    /// @param _amount The amount of iUSD tokens to redeem.
    /// @param _minAssetsOut The minimum amount of USDC expected, used as slippage protection.
    /// @return _assetsOut The actual amount of USDC assets received.
    function redeem(address _to, uint256 _amount, uint256 _minAssetsOut) external returns (uint256 _assetsOut);

    function getAddress(string memory _name) external view returns (address);
}
