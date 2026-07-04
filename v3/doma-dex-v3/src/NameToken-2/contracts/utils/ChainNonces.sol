// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

abstract contract ChainNonces {
    event NonceSet(string indexed chainId, uint256 indexed key, uint64 indexed nonce);

    /// @custom:storage-location erc7201:doma.storage.ChainNoncesKeyed
    struct NoncesStorage {
        mapping(string chainId => mapping(uint256 key => uint64)) _nonces;
    }

    bytes32 private constant _CHAIN_NONCES_STORAGE_LOCATION =
        keccak256(abi.encode(uint256(keccak256("doma.storage.ChainNoncesKeyed")) - 1)) &
            ~bytes32(uint256(0xff));

    function _getNoncesStorage() private pure returns (NoncesStorage storage $) {
        bytes32 slot = _CHAIN_NONCES_STORAGE_LOCATION;

        // solhint-disable-next-line no-inline-assembly
        assembly {
            $.slot := slot
        }
    }

    function _useNonce(string calldata chainId, uint256 key) internal virtual returns (uint64) {
        NoncesStorage storage $ = _getNoncesStorage();
        unchecked {
            // It is important to do x++ and not ++x here.
            uint64 nonce = $._nonces[chainId][key]++;
            emit NonceSet(chainId, key, $._nonces[chainId][key]);
            return nonce;
        }
    }

    function _setCurrentNonce(string calldata chainId, uint256 key, uint64 nonce) internal virtual {
        NoncesStorage storage $ = _getNoncesStorage();
        $._nonces[chainId][key] = nonce;

        emit NonceSet(chainId, key, nonce);
    }

    function getCurrentNonce(
        string calldata chainId,
        uint256 key
    ) external view virtual returns (uint64) {
        return _getNoncesStorage()._nonces[chainId][key];
    }

    function setCurrentNonce(string calldata chainId, uint256 key, uint64 nonce) external virtual;
}
