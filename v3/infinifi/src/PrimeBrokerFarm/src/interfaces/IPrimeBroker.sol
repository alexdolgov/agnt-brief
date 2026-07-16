// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

/// @title IPrimeBroker
/// @notice Interface for the 3F bridge facilitator request contract.
/// @dev Each auction creates a unique PrimeBroker request contract instance.
///      The flow is:
///        1. 3F calls authorizeMinting(facilitator, ptAmount, ytAmount) to approve minting.
///        2. Facilitator approves USDC to this contract, then calls mint().
///        3. Facilitator receives PT and YT tokens (1:1 with USDC).
///        4. To exit, facilitator approves PT/YT back to this contract and calls burnAll().
interface IPrimeBroker {
    /// @notice Mint PT and YT tokens in exchange for USDC.
    /// @dev Caller must be authorized via authorizeMinting() and must have approved
    ///      the required USDC amount to this contract beforehand.
    function mint(uint128 _maxPt, uint128 _minYt) external;

    /// @notice Returns the PT or YT balance held on behalf of an account.
    /// @param account The address to query.
    /// @param isYT    If true, returns YT balance; if false, returns PT balance.
    function balanceOf(address account, bool isYT) external view returns (uint256);

    /// @notice Authorize an address to mint a given amount of PT and YT.
    /// @dev Only callable by the broker owner (3F).
    function authorizeMinting(address to, uint128 ptAmount, uint128 ytAmount) external;

    /// @notice Returns the address of the Principal Token (PT).
    function ptToken() external view returns (address);

    /// @notice Returns the address of the Yield Token (YT).
    function ytToken() external view returns (address);

    /// @notice Burn all PT and YT held by `owner` and send recovered USDC to `receiver`.
    /// @param owner    Address whose PT/YT tokens are burned (must have approved this contract).
    /// @param receiver Address that receives the recovered USDC.
    /// @return ptShares  Amount of PT shares burned.
    /// @return ytShares  Amount of YT shares burned.
    /// @return pAssets   USDC recovered from PT.
    /// @return yAssets   USDC recovered from YT.
    function burnAll(address owner, address receiver)
        external
        returns (uint256 ptShares, uint256 ytShares, uint256 pAssets, uint256 yAssets);
}
