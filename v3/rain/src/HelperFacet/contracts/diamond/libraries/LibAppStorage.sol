// SPDX-License-Identifier: MIT

pragma solidity 0.8.30;

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

import { IConduit } from "../../interfaces/IConduit.sol";
import { IRandomNumberService } from "../../interfaces/IRandomNumberService.sol";
import { IReservoir } from "../../interfaces/IReservoir.sol";

import { Types } from "../shared/Types.sol";

/**
 * @title LibAppStorage
 * @author Rain Team
 * @notice Library for accessing and managing the diamond's shared application storage.
 * @dev Implements ERC7201 storage slots to ensure consistent state access across all facets in the diamond.
 */
library LibAppStorage {
    /* ========================== ERC7201 STORAGE ========================== */

    /// @dev Namespaced storage location as per ERC-7201 (storage slot zero).
    struct AppStorage {
        uint256 _maxPositionTotalAssetsDivisor;
        uint256 _payoff;
        address _signer;
        IERC20 _defaultAsset;
        IRandomNumberService _rng;
        IConduit _conduit;
        IReservoir _reservoir;
        string _url;
        string _path;
        string _jobId;
        Types.ActivityQueue _activityQueue;
        mapping(Types.MarketType marketType => Types.FeeBps feeBps) _feeBps;
        mapping(bytes32 positionId => Types.PositionData positionData) _positionData;
        mapping(bytes32 positionId => Types.PositionProgress positionProgress) _positionProgress;
        mapping(uint256 requestId => bytes32 positionId) _requestPositionMap;
    }

    /// @dev Points to the zeroth storage slot.
    bytes32 private constant AppStorageLocation = 0;

    function getAppStorage() internal pure returns (AppStorage storage s) {
        assembly {
            s.slot := AppStorageLocation
        }
    }

    /**
     * @dev See {IAppStorage-maxPositionTotalAssetsDivisor}.
     */
    function maxPositionTotalAssetsDivisor() internal view returns (uint256) {
        AppStorage storage s = getAppStorage();

        return s._maxPositionTotalAssetsDivisor;
    }

    /**
     * @dev See {IAppStorage-payoff}.
     */
    function payoff() internal view returns (uint256) {
        AppStorage storage s = getAppStorage();

        return s._payoff;
    }

    /**
     * @dev See {IAppStorage-signer}.
     */
    function signer() internal view returns (address) {
        AppStorage storage s = getAppStorage();

        return s._signer;
    }

    /**
     * @dev See {IAppStorage-defaultAsset}.
     */
    function defaultAsset() internal view returns (address) {
        AppStorage storage s = getAppStorage();

        return address(s._defaultAsset);
    }

    /**
     * @dev See {IAppStorage-rng}.
     */
    function rng() internal view returns (address) {
        AppStorage storage s = getAppStorage();

        return address(s._rng);
    }

    /**
     * @dev See {IAppStorage-conduit}.
     */
    function conduit() internal view returns (address) {
        AppStorage storage s = getAppStorage();

        return address(s._conduit);
    }

    /**
     * @dev See {IAppStorage-reservoir}.
     */
    function reservoir() internal view returns (address) {
        AppStorage storage s = getAppStorage();

        return address(s._reservoir);
    }

    /**
     * @dev See {IAppStorage-url}.
     */
    function url() internal view returns (string memory) {
        AppStorage storage s = getAppStorage();

        return s._url;
    }

    /**
     * @dev See {IAppStorage-path}.
     */
    function path() internal view returns (string memory) {
        AppStorage storage s = getAppStorage();

        return s._path;
    }

    /**
     * @dev See {IAppStorage-jobId}.
     */
    function jobId() internal view returns (string memory) {
        AppStorage storage s = getAppStorage();

        return s._jobId;
    }

    /**
     * @dev See {IAppStorage-feeBps}.
     */
    function feeBps(Types.MarketType marketType) internal view returns (Types.FeeBps memory) {
        AppStorage storage s = getAppStorage();

        return s._feeBps[marketType];
    }

    /**
     * @dev See {IAppStorage-positionData}.
     */
    function positionData(bytes32 positionId) internal view returns (Types.PositionData memory) {
        AppStorage storage s = getAppStorage();

        return s._positionData[positionId];
    }

    /**
     * @dev See {IAppStorage-positionProgress}.
     */
    function positionProgress(bytes32 positionId) internal view returns (Types.PositionProgress memory) {
        AppStorage storage s = getAppStorage();

        return s._positionProgress[positionId];
    }

    /**
     * @dev See {IAppStorage-requestPositionMap}.
     */
    function requestPositionMap(uint256 requestId) internal view returns (bytes32) {
        AppStorage storage s = getAppStorage();

        return s._requestPositionMap[requestId];
    }

    /* ========================== FUNCTIONS ========================== */

    /**
     * @dev See {IAppStorage-updateMaxPositionTotalAssetsDivisor}.
     */
    function updateMaxPositionTotalAssetsDivisor(uint256 newMaxPositionTotalAssetsDivisor) internal {
        AppStorage storage s = getAppStorage();

        s._maxPositionTotalAssetsDivisor = newMaxPositionTotalAssetsDivisor;
    }

    /**
     * @dev See {IAppStorage-updateSigner}.
     */
    function updateSigner(address newSigner) internal {
        AppStorage storage s = getAppStorage();

        s._signer = newSigner;
    }

    /**
     * @dev See {IAppStorage-updateDefaultAsset}.
     */
    function updateDefaultAsset(IERC20 newDefaultAsset) internal {
        AppStorage storage s = getAppStorage();

        s._defaultAsset = newDefaultAsset;
    }

    /**
     * @dev See {IAppStorage-updateRng}.
     */
    function updateRng(IRandomNumberService newRng) internal {
        AppStorage storage s = getAppStorage();

        s._rng = newRng;
    }

    /**
     * @dev See {IAppStorage-updateConduit}.
     */
    function updateConduit(IConduit newConduit) internal {
        AppStorage storage s = getAppStorage();

        s._conduit = newConduit;
    }

    /**
     * @dev See {IAppStorage-updateReservoir}.
     */
    function updateReservoir(IReservoir newReservoir) internal {
        AppStorage storage s = getAppStorage();

        s._reservoir = newReservoir;
    }

    /**
     * @dev See {IAppStorage-updateUrl}.
     */
    function updateUrl(string memory newUrl) internal {
        AppStorage storage s = getAppStorage();

        s._url = newUrl;
    }

    /**
     * @dev See {IAppStorage-updatePath}.
     */
    function updatePath(string memory newPath) internal {
        AppStorage storage s = getAppStorage();

        s._path = newPath;
    }

    /**
     * @dev See {IAppStorage-updateJobId}.
     */
    function updateJobId(string memory newJobId) internal {
        AppStorage storage s = getAppStorage();

        s._jobId = newJobId;
    }

    /**
     * @dev See {IAppStorage-configureFeeBps}.
     */
    function configureFeeBps(Types.MarketType marketType, Types.FeeBps memory newFeeBps) internal {
        AppStorage storage s = getAppStorage();

        s._feeBps[marketType] = newFeeBps;
    }
}
