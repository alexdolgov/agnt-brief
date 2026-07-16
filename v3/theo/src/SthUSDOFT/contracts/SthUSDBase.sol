// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.22;

import { RateLimiter } from "@layerzerolabs/oapp-evm/contracts/oapp/utils/RateLimiter.sol";
import { Pausable } from "@openzeppelin/contracts/utils/Pausable.sol";
import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";

/// @notice Base contract for shared functionality between SthUSDOFT and SthUSDOFTAdapter
/// @dev Base contract includes rate limiter, pausable, and blacklisting
abstract contract SthUSDBase is RateLimiter, Pausable, Ownable {
    /// @dev Not using access control since single address per role
    /// @dev Set address to address(0) to disable role
    address public emergencyPauser;
    address public blacklister;

    // mapping for blacklisted users
    mapping(address => bool) public blacklist;

    event EmergencyPauserSet(address indexed newEmergencyPauser);
    event BlacklisterSet(address indexed newBlacklister);
    event BlacklistUpdated(address indexed user, bool isBlacklisted);
    event DistributeBlacklistedFunds(address indexed blacklistedUser, uint256 amount);

    // Restricted Action errors
    error Blacklisted(address user);
    error NotBlacklisted(address user);
    error OnlyBlacklister();
    error OnlyPauser();

    ///
    /// RESTRICTED FUNCTIONS
    ///

    /// @notice rate limiter config admin function
    function setRateLimits(RateLimitConfig[] memory _rateLimitConfig) external onlyOwner {
        _setRateLimits(_rateLimitConfig);
    }

    /// @notice set emergency pauser address
    function setEmergencyPauser(address _emergencyPauser) external onlyOwner {
        emergencyPauser = _emergencyPauser;
        emit EmergencyPauserSet(_emergencyPauser);
    }

    /// @notice set blacklister address
    function setBlacklister(address _blacklister) external onlyOwner {
        blacklister = _blacklister;
        emit BlacklisterSet(_blacklister);
    }

    /// @notice update blacklist status of a user
    function updateBlacklist(address _user, bool _isBlacklisted) external {
        if (msg.sender != blacklister || blacklister == address(0)) revert OnlyBlacklister();
        blacklist[_user] = _isBlacklisted;
        emit BlacklistUpdated(_user, _isBlacklisted);
    }

    /// @notice Only emergency pauser can call pause
    function pause() external {
        if (msg.sender != emergencyPauser || emergencyPauser == address(0)) revert OnlyPauser();
        _pause();
    }

    /// @notice Only owner can call unpause
    function unpause() external onlyOwner {
        _unpause();
    }
}
