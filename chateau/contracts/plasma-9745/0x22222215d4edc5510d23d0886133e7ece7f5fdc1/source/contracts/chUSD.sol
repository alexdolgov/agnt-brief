// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";
import "./interfaces/IchUSDDefinitions.sol";
import "./OFT/OFTOwnable2Step.sol";

import { RateLimiter } from "./OFT/RateLimiter.sol";

/**
 * @title chUSD
 */
contract chUSD is OFTOwnable2Step, ERC20Burnable, ERC20Permit, IchUSDDefinitions, RateLimiter {
    address public minter;

    constructor(address admin, address _lzEndpoint, address _delegate, RateLimitConfig[] memory _rateLimitConfigs)
        OFTOwnable2Step("chUSD", "chUSD", _lzEndpoint, _delegate)
        ERC20Permit("chUSD")
    {
        if (admin == address(0)) revert ZeroAddressException();
        _transferOwnership(admin);
        _setRateLimits(_rateLimitConfigs);
    }

    function setMinter(address newMinter) external onlyOwner {
        emit MinterUpdated(newMinter, minter);
        minter = newMinter;
    }

    function mint(address to, uint256 amount) external {
        if (msg.sender != minter) revert OnlyMinter();
        _mint(to, amount);
    }

    function renounceOwnership() public view override onlyOwner {
        revert CantRenounceOwnership();
    }

    /**
     * @dev Sets the rate limits based on RateLimitConfig array. Only callable by the owner.
     * @param _rateLimitConfigs An array of RateLimitConfig structures defining the rate limits.
     */
    function setRateLimits(RateLimitConfig[] calldata _rateLimitConfigs) external onlyOwner {
        _setRateLimits(_rateLimitConfigs);
    }

    /**
     * @dev Checks and updates the rate limit before initiating a token transfer.
     * @param _from The address from which tokens will be debited.
     * @param _amountLD The amount of tokens to be transferred.
     * @param _minAmountLD The minimum amount of tokens expected to be received.
     * @param _dstEid The destination endpoint identifier.
     * @return amountSentLD The actual amount of tokens sent.
     * @return amountReceivedLD The actual amount of tokens received.
     */
    function _debit(
        address _from,
        uint256 _amountLD,
        uint256 _minAmountLD,
        uint32 _dstEid
    ) internal virtual override returns (uint256 amountSentLD, uint256 amountReceivedLD) {
        _checkAndUpdateRateLimit(_dstEid, _amountLD);
        return super._debit(_from, _amountLD, _minAmountLD, _dstEid);
    }
}
