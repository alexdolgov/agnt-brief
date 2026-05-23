pragma solidity ^0.8.20;
// SPDX-License-Identifier: MIT

import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";
import { AccessControlUpgradeable } from "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";

import { RateLimiter } from "@layerzerolabs/lz-evm-oapp-v2/contracts/oapp/utils/RateLimiter.sol";
import { OFTAdapterUpgradeable } from "@layerzerolabs/lz-evm-oapp-v2/contracts-upgradeable/oft/OFTAdapterUpgradeable.sol";


contract SwellOFTAdapter is OFTAdapterUpgradeable, AccessControlUpgradeable, RateLimiter {
    
    constructor(address token, address lzEndpoint) OFTAdapterUpgradeable(token, lzEndpoint) {}

    function initialize(address owner) external initializer {
        __OFTAdapter_init(owner);
        __Ownable_init(owner);
        _grantRole(DEFAULT_ADMIN_ROLE, owner);
    }

    function _debit(
        uint256 _amountLD,
        uint256 _minAmountLD,
        uint32 _dstEid
    ) internal virtual override returns (uint256 amountSentLD, uint256 amountReceivedLD) {
        _checkAndUpdateRateLimit(_dstEid, _amountLD);
        return super._debit(_amountLD, _minAmountLD, _dstEid);
    }

    function setRateLimits(RateLimitConfig[] calldata _rateLimitConfigs) external onlyRole(DEFAULT_ADMIN_ROLE) {
        _setRateLimits(_rateLimitConfigs);
    }
}
