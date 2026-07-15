// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.17;

/// @title GmiStorage
/// @author Umami Devs
/// @notice Storage inheritance for Gm index
abstract contract GmiStorage {
    bytes32 public constant STORAGE_SLOT = keccak256("GmiStorage.storage");
    uint256 constant SCALE = 1e18;

    struct GmiStg {
        /// @dev market addresses
        address[] indexAssets;
        /// @dev target index weights
        uint256[] weights;
        /// @dev gm token mint cap tolerance
        uint256 mintCapTolerance;
        /// @dev fallback pool for minting
        uint8 fallbackMintPool;
        /// @dev handler for all gmx v2 interactions
        address gmiV2Handler;
        /// @dev deposit keys execution status
        mapping(bytes32 => bool) depositKeys;
        /// @dev withdrawal keys execution status
        mapping(bytes32 => bool) withdrawalKeys;
    }

    /**
     * @dev Retrieves the storage struct of the contract.
     * @return _storage The storage struct containing all contract state variables.
     */
    function _getStorage() internal pure returns (GmiStg storage _storage) {
        bytes32 slot = STORAGE_SLOT;

        assembly {
            _storage.slot := slot
        }
    }

    function _getIndexAssets() internal view returns (address[] storage) {
        return _getStorage().indexAssets;
    }

    function _getMintCapTolerance() internal view returns (uint256) {
        return _getStorage().mintCapTolerance;
    }

    function _getWeights() internal view returns (uint256[] storage) {
        return _getStorage().weights;
    }

    function _getFallbackMintPool() internal view returns (uint8) {
        return _getStorage().fallbackMintPool;
    }

    function _setWeights(uint256[] memory _weights) internal {
        _getStorage().weights = _weights;
    }

    function _setIndexAssets(address[] memory _indexAssets) internal {
        _getStorage().indexAssets = _indexAssets;
    }

    function _setGmiV2Handler(address gmiV2Handler) internal {
        _getStorage().gmiV2Handler = gmiV2Handler;
    }

    function _setMintCapTolerance(uint256 newTolerance) internal {
        _getStorage().mintCapTolerance = newTolerance;
    }

    function _setFallbackMintPool(uint8 poolIndex) internal {
        _getStorage().fallbackMintPool = poolIndex;
    }
}
