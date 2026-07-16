// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.26;

/// @title IReferralRegistry Interface
/// @author luoyhang003
/// @notice Defines the referral binding system used across staking and expedition modules.
/// @dev
///  This registry maintains:
///   - One-to-one mapping between referee -> referrer
///   - Keeper-controlled binding operations
///   - View helpers for reading referral relationships
///  Keeper contracts are expected to be staking contracts or other protocol-approved callers.
interface IReferralRegistry {
    /*//////////////////////////////////////////////////////////////////////////
                                    EVENTS
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Emitted when a referral relationship is successfully established.
    /// @param referee The user who was referred.
    /// @param referrer The user who referred the referee.
    event ReferralBinded(address indexed referee, address indexed referrer);

    /// @notice Emitted when keeper permissions change.
    /// @param keeper Address of the keeper contract.
    /// @param flag True to enable, false to disable.
    event SetKeepers(address indexed keeper, bool flag);

    /*//////////////////////////////////////////////////////////////////////////
                                    VIEW FUNCTIONS
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Returns the referrer associated with a given referee.
    /// @dev Returns:
    ///   - address(0) if no referrer is set
    ///   - DEAD_ADDRESS if referrer is invalid or self-referred
    /// @param _referee The address whose referrer is queried.
    /// @return referrer_ The resulting referrer address.
    function getReferrerOf(
        address _referee
    ) external view returns (address referrer_);

    /*//////////////////////////////////////////////////////////////////////////
                                    PERMISSIONED FUNCTIONS
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Binds a referral relationship between a referee and a referrer.
    /// @dev
    ///  - Only callable by keeper contracts.
    ///  - Binding occurs only if referee has no existing referrer.
    ///  - Invalid referrers (zero address or self-reference) map to DEAD_ADDRESS.
    /// @param _referee The user being referred.
    /// @param _referrer The user who referred the referee.
    /// @return binded_ True if a valid referral was recorded, false otherwise.
    function bindReferral(
        address _referee,
        address _referrer
    ) external returns (bool binded_);
}
