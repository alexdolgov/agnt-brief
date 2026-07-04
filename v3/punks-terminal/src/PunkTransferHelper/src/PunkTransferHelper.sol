// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import {IERC721} from "forge-std/interfaces/IERC721.sol";
import {IStashFactory} from "./interfaces/IStashFactory.sol";

/**
 * @title PunkTransferHelper
 * @author Yuga Labs
 * @custom:security-contact security@yugalabs.io
 * @notice Helper contract for transferring wrapped punks to stashes as part of sale settlement.
 */
contract PunkTransferHelper {
    error CallerIsNotStash();

    IERC721 private immutable _LEGACY_WRAPPED_PUNKS;
    IERC721 private immutable _CRYPTOPUNKS_721;
    IStashFactory private immutable _STASH_VERIFIER;

    constructor(address legacyWrappedPunks, address cryptoPunks721, address stashVerifier) {
        _LEGACY_WRAPPED_PUNKS = IERC721(legacyWrappedPunks);
        _CRYPTOPUNKS_721 = IERC721(cryptoPunks721);
        _STASH_VERIFIER = IStashFactory(stashVerifier);
    }

    /**
     * @notice Transfers a wrapped punk to a stash.
     * @param _packedData The wrapped punk token ID packed together with owner.
     * @dev For security reasons, will revert if not called by a valid stash contract.
     */
    function transfer721PunkToStash(bytes32 _packedData) external {
        _transferPunkToStash(_packedData, false);
    }

    /**
     * @notice Transfers a wrapped punk to a stash.
     * @param _packedData The wrapped punk token ID packed together with owner.
     * @dev For security reasons, will revert if not called by a valid stash contract.
     */
    function transferLegacyWrappedPunkToStash(bytes32 _packedData) external {
        _transferPunkToStash(_packedData, true);
    }

    function _transferPunkToStash(bytes32 _packedData, bool isLegacy) internal {
        address _stash = msg.sender;
        if (!_STASH_VERIFIER.isStash(_stash)) revert CallerIsNotStash();

        (uint256 _punkIndex, address _owner) = _unpackInputs(_packedData);

        if (isLegacy) {
            _LEGACY_WRAPPED_PUNKS.transferFrom(_owner, _stash, _punkIndex);
        } else {
            _CRYPTOPUNKS_721.transferFrom(_owner, _stash, _punkIndex);
        }
    }

    function _unpackInputs(bytes32 _packedData) internal pure returns (uint256 _punkIndex, address _owner) {
        assembly {
            _punkIndex := shr(160, _packedData)
            _owner := and(_packedData, 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF)
        }
    }
}
