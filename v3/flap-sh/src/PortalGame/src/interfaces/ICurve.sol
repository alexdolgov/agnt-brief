// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

interface ICurve {
    // custom error type

    /// @notice error if the difference between the current supply and the new supply is too small
    error SupplyDiffTooSmall(uint256 currSupply, uint256 newSupply);

    /// @notice error if the new supply is greater than the total supply
    error SupplyExceedsTotalSupply(uint256 newSupply);

    /// @notice error if reserve is greater than the max reserve
    error ReserveExceedsMaxReserve(uint256 reserve);

    /// @notice estimate the reserve given the supply
    /// @dev This function returns a roundup value, because we want the following invariant to hold:
    ///         currReserve >= estimateReserve_without_roudup(currSupply)
    ///
    ///      This function is used when a user wants to sell tokens, a rounded up value
    ///      is more favorable to the protocol.
    function estimateReserve(uint256 supply) external view returns (uint256 reserve);

    /// @notice Return the estimate supply given the reserve amount
    /// @param reserve  The reserve amount
    /// @dev The resulting supply is rounded down and may even subtract small amount
    ///
    ///      This function is used when a user wants to buy tokens,
    ///      a rounded down value is more favorable to the protocol.
    function estimateSupply(uint256 reserve) external view returns (uint256 supply);

    /// @notice price (wei) of a token (1e18) if you buy/sell inifinitesimal amount at current supply
    function price(uint256 supply) external view returns (uint256);
}
