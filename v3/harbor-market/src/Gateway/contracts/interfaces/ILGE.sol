// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.0;

interface ILGE {
    event Claim(address indexed user, uint256 value);
    event Buy(address indexed user, address indexed token, uint256 amount);

    function userShares(address user) external view returns (uint256, uint256);

    /// @notice Allows a user to buy a share of the LGE using {amount} of {token}
    /// @dev numberOfReleases has a max
    function buy(address token, uint256 amount, uint256 minUsdtAmountOut, address onBehalfOf) external returns (uint256 usdtValue);

    /// @notice Allows a user to claim all the tokens he can according to their share and the vesting duration
    function claim() external returns (uint256 amountReleased);

    /// @notice Get how much HBR a user can claim
    // We may be able to get rid of this one as claim() and a static call can return the same value
    function pending(address user) external view returns (uint256 claimableAmount);

    /// @notice Get how much HBR a user is still owed by the end of their vesting
    function totalOwed(address user) external view returns (uint256 userTotal);

    /// @notice Get how much USDT has been raised
    function totalRaisedUsdt() external view returns (uint256 total);

    /// @notice Timestamp for LGE end
    function lgeEnd() external view returns (uint256 lgeEnd);

    /// @notice Amount of Harbor bought thus far
    function hbrBought() external view returns (uint256 hbrBought);   
}