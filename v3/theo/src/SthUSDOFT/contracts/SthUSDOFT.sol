// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.22;

import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";
import { OFT } from "@layerzerolabs/oft-evm/contracts/OFT.sol";
import { ERC20Permit } from "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";
import { SthUSDBase } from "./SthUSDBase.sol";

contract SthUSDOFT is SthUSDBase, OFT, ERC20Permit {
    constructor(
        address _lzEndpoint,
        address _delegate,
        RateLimitConfig[] memory _rateLimitConfig
    ) OFT("sthUSD", "sthUSD", _lzEndpoint, _delegate) Ownable(_delegate) ERC20Permit("sthUSD") {
        _setRateLimits(_rateLimitConfig);
    }

    function decimals() public pure override returns (uint8) {
        return 6;
    }

    ///
    /// RESTRICTED FUNCTIONS
    ///

    /// @notice moved blacklisted funds back to the contract owner
    function distributeBlacklistedFunds(address _blacklistedUser, uint256 _amount) external onlyOwner {
        // ensure user is blacklisted
        if (!blacklist[_blacklistedUser]) revert NotBlacklisted(_blacklistedUser);

        // temporary removal from blacklist so _update doesn't revert
        blacklist[_blacklistedUser] = false;
        _transfer(_blacklistedUser, owner(), _amount);
        blacklist[_blacklistedUser] = true;

        emit DistributeBlacklistedFunds(_blacklistedUser, _amount);
    }

    ///
    /// OVERRIDE FUNCTIONS
    ///

    /// @notice Override on _update to check blacklist and pause status
    function _update(address _from, address _to, uint256 _value) internal override whenNotPaused {
        if (blacklist[_from]) revert Blacklisted(_from);
        if (blacklist[_to]) revert Blacklisted(_to);
        super._update(_from, _to, _value);
    }

    /// @notice Override _debit to enforce rate limits on token transfers
    function _debit(
        address _from,
        uint256 _amountLD,
        uint256 _minAmountLD,
        uint32 _dstEid
    ) internal override returns (uint256 amountSentLD, uint256 amountReceivedLD) {
        // check rate limit before debiting tokens
        _outflow(_dstEid, _amountLD);

        // normal OFT debit logic
        return super._debit(_from, _amountLD, _minAmountLD, _dstEid);
    }

    /// @notice Override _credit to check for blacklisted receiver cross chain
    /// @dev If blacklisted, funds are routed to the contract owner, cannot revert or will be stuck in LZ endpoint
    function _credit(
        address _to,
        uint256 _amountLD,
        uint32 _srcEid
    ) internal override returns (uint256 amountReceivedLD) {
        if (blacklist[_to]) {
            emit DistributeBlacklistedFunds(_to, _amountLD);
            return super._credit(owner(), _amountLD, _srcEid);
        } else {
            return super._credit(_to, _amountLD, _srcEid);
        }
    }
}
