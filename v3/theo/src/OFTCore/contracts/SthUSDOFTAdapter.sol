// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.22;

import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";
import { OFTAdapter } from "@layerzerolabs/oft-evm/contracts/OFTAdapter.sol";
import { SthUSDBase } from "./SthUSDBase.sol";

/**
 * @title OFTAdapter Contract
 * @dev OFTAdapter is a contract that adapts an ERC-20 token to the OFT functionality.
 *
 * @dev For existing ERC20 tokens, this can be used to convert the token to crosschain compatibility.
 * @dev WARNING: ONLY 1 of these should exist for a given global mesh,
 * unless you make a NON-default implementation of OFT and needs to be done very carefully.
 * @dev WARNING: The default OFTAdapter implementation assumes LOSSLESS transfers, ie. 1 token in, 1 token out.
 * IF the 'innerToken' applies something like a transfer fee, the default will NOT work...
 * a pre/post balance check will need to be done to calculate the amountSentLD/amountReceivedLD.
 */
contract SthUSDOFTAdapter is SthUSDBase, OFTAdapter {
    constructor(
        address _sthusd,
        address _lzEndpoint,
        address _delegate,
        RateLimitConfig[] memory _rateLimitConfig
    ) OFTAdapter(_sthusd, _lzEndpoint, _delegate) Ownable(_delegate) {
        _setRateLimits(_rateLimitConfig);
    }

    ///
    /// OVERRIDE FUNCTIONS
    ///

    /// @notice Override _debit to enforce rate limits on token transfers
    function _debit(
        address _from,
        uint256 _amountLD,
        uint256 _minAmountLD,
        uint32 _dstEid
    ) internal override whenNotPaused returns (uint256 amountSentLD, uint256 amountReceivedLD) {
        // check for blacklist since _update does not exist in OFTAdapter
        if (blacklist[_from]) revert Blacklisted(_from);

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
    ) internal override whenNotPaused returns (uint256 amountReceivedLD) {
        if (blacklist[_to]) {
            emit DistributeBlacklistedFunds(_to, _amountLD);
            return super._credit(owner(), _amountLD, _srcEid);
        } else {
            return super._credit(_to, _amountLD, _srcEid);
        }
    }
}
