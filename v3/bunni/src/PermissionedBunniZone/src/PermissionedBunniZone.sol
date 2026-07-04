// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.0;

import "flood-contracts/src/interfaces/IZone.sol";
import "flood-contracts/src/interfaces/IFloodPlain.sol";

import {Ownable} from "./base/Ownable.sol";
import {IBunniZone} from "./interfaces/IBunniZone.sol";

/// @notice Basic zone that restricts fulfillers to a mutable whitelist.
contract PermissionedBunniZone is IBunniZone, Ownable {
    mapping(address => bool) public isWhitelisted;

    constructor(address initialOwner, address[] memory initialWhitelist) {
        _initializeOwner(initialOwner);

        for (uint256 i; i < initialWhitelist.length; ++i) {
            isWhitelisted[initialWhitelist[i]] = true;
        }
    }

    /// -----------------------------------------------------------------------
    /// Owner functions
    /// -----------------------------------------------------------------------

    function setIsWhitelisted(address account, bool isWhitelisted_) external onlyOwner {
        isWhitelisted[account] = isWhitelisted_;
        emit SetIsWhitelisted(account, isWhitelisted_);
    }

    /// -----------------------------------------------------------------------
    /// Flood IZone compliance
    /// -----------------------------------------------------------------------

    /// @inheritdoc IZone
    /// @dev Only allows whitelisted fulfillers.
    function validate(IFloodPlain.Order calldata, /* order */ address fulfiller) external view returns (bool) {
        return isWhitelisted[fulfiller];
    }

    /// @inheritdoc IZone
    function fee(IFloodPlain.Order calldata, address) external pure returns (IZone.FeeInfo memory) {
        return IZone.FeeInfo(address(0), 0);
    }
}
