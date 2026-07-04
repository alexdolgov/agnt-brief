// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.26;

import {
    Ownable2Step,
    Ownable
} from "@openzeppelin/contracts/access/Ownable2Step.sol";

import {IReferralRegistry} from "./interfaces/IReferralRegistry.sol";

import {Errors} from "./libraries/Errors.sol";

/// @title ReferralRegistry
/// @author luoyhang003
/// @notice Maintains referrer–referee relationships for the Genesis Expedition event.
/// @dev
///  - A referee can only be bound once; future attempts return false.
///  - Self-referrals and zero-address referrers are replaced with a DEAD_ADDRESS marker.
///  - Only keeper contracts (staking contracts) can bind referral relationships.
///  - Owner can configure keeper addresses.
///  - The DEAD_ADDRESS is used to explicitly mark invalid or blocked relationships.
contract ReferralRegistry is IReferralRegistry, Ownable2Step {
    /*//////////////////////////////////////////////////////////////////////////
                                    STATE VARIABLES
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Pseudo-referrer used to indicate invalid or rejected referral bindings.
    /// @dev When a user self-refers or referrer is zero address, we assign DEAD_ADDRESS.
    address constant DEAD_ADDRESS = 0x000000000000000000000000000000000000dEaD;

    /// @notice Tracks each user's referrer.
    /// @dev A value of ZERO means "not yet bound", DEAD_ADDRESS means "invalid binding".
    mapping(address => address) private referrerOf;

    /// @notice Addresses authorized to bind referrals.
    /// @dev Usually STOStaking and STONEUSDStaking contracts.
    mapping(address => bool) private keepers;

    /*//////////////////////////////////////////////////////////////////////////
                                    MODIFIER
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Restricts function access to keeper contracts only.
    /// @dev Reverts with NotKeeperContract() if caller is not authorized.
    modifier onlyKeepers() {
        _onlyKeepers();
        _;
    }

    /*//////////////////////////////////////////////////////////////////////////
                                    CONSTRUCTOR
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Initializes the Referral Registry.
    /// @dev Deploying address becomes owner (via Ownable2Step).
    constructor() Ownable(msg.sender) {}

    /*//////////////////////////////////////////////////////////////////////////
                                    VIEW FUNCTIONS
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Returns the referrer for a given referee.
    /// @dev
    ///  - Returns address(0) if not yet bound.
    ///  - Returns DEAD_ADDRESS if binding was invalid (self-referral or bad input).
    /// @param _referee The address whose referrer is queried.
    /// @return referrer_ The referee's referrer.
    function getReferrerOf(
        address _referee
    ) external view returns (address referrer_) {
        referrer_ = referrerOf[_referee];
    }

    /*//////////////////////////////////////////////////////////////////////////
                                    PERMISSIONED FUNCTIONS
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Binds a referee to a referrer. Can only be called by keeper contracts.
    /// @dev
    ///  Rules:
    ///  - A referee can only be bound once.
    ///  - Self-referrals or zero-address referrers are replaced with DEAD_ADDRESS.
    ///  - Returns true only if a successful valid binding occurred.
    ///
    /// @param _referee The user being referred.
    /// @param _referrer The address that referred the referee.
    /// @return binded_ Whether a new valid referral entry was successfully created.
    function bindReferral(
        address _referee,
        address _referrer
    ) external onlyKeepers returns (bool binded_) {
        // Already bound -> do nothing
        if (referrerOf[_referee] != address(0)) return false;

        // Reject self-referral or zero address
        if (_referrer == address(0) || _referrer == _referee) {
            referrerOf[_referee] = DEAD_ADDRESS;
            return false;
        }

        // Valid referral
        referrerOf[_referee] = _referrer;
        binded_ = true;

        emit ReferralBinded(_referee, _referrer);
    }

    /*//////////////////////////////////////////////////////////////////////////
                                    ADMIN FUNCTIONS
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Updates keeper authorization for a contract or address.
    /// @dev
    ///  - Only owner can call.
    ///  - Setting `_flag = true` authorizes the address as a keeper.
    ///  - Setting `_flag = false` removes authorization.
    ///
    /// @param _keeper Address to update.
    /// @param _flag Whether the address should be authorized as a keeper.
    function setKeepers(address _keeper, bool _flag) external onlyOwner {
        if (_keeper == address(0)) revert Errors.ZeroAddress();

        keepers[_keeper] = _flag;

        emit SetKeepers(_keeper, _flag);
    }

    /*//////////////////////////////////////////////////////////////////////////
                                    INTERNAL FUNCTIONS
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Ensures that the caller is an authorized keeper contract.
    /// @dev Reverts with NotKeeperContract() if `keepers[msg.sender]` is false.
    function _onlyKeepers() internal view {
        if (!keepers[msg.sender]) revert Errors.NotKeeperContract();
    }
}
