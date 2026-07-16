// SPDX-License-Identifier: MIT

pragma solidity 0.8.30;

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

import { IConduit } from "../../interfaces/IConduit.sol";
import { IRandomNumberService } from "../../interfaces/IRandomNumberService.sol";
import { IReservoir } from "../../interfaces/IReservoir.sol";

import { IAppStorage } from "../interfaces/IAppStorage.sol";
import { LibAppStorage } from "../libraries/LibAppStorage.sol";
import { LibConstants } from "../libraries/LibConstants.sol";
import { LibUtilsRevert } from "../libraries/LibUtilsRevert.sol";
import { Errors } from "../shared/Errors.sol";
import { Types } from "../shared/Types.sol";
import { Modifiers } from "../utils/Modifiers.sol";

/**
 * @title AppStorageFacet
 * @author Rain Team
 * @notice Exposes core application configuration and shared storage values.
 * @dev Acts as an interface to AppStorage for external consumers. Provides access restrictions when mutating state.
 */
contract AppStorageFacet is IAppStorage, Modifiers {
    /* ========================== FUNCTIONS ========================== */

    /**
     * @inheritdoc IAppStorage
     */
    function updateMaxPositionTotalAssetsDivisor(
        uint256 newMaxPositionTotalAssetsDivisor
    ) external onlyRole(LibConstants.OWNER_ROLE) {
        if (newMaxPositionTotalAssetsDivisor == 0) {
            LibUtilsRevert.revertWithSelector(Errors.InvalidAmount.selector);
        }

        uint256 oldMaxPositionTotalAssetsDivisor = LibAppStorage.maxPositionTotalAssetsDivisor();

        if (newMaxPositionTotalAssetsDivisor == oldMaxPositionTotalAssetsDivisor) {
            LibUtilsRevert.revertWithSelector(Errors.InvalidAssignment.selector);
        }

        LibAppStorage.updateMaxPositionTotalAssetsDivisor(newMaxPositionTotalAssetsDivisor);

        emit UpdateMaxPositionTotalAssetsDivisor({
            newMaxPositionTotalAssetsDivisor: newMaxPositionTotalAssetsDivisor,
            oldMaxPositionTotalAssetsDivisor: oldMaxPositionTotalAssetsDivisor
        });
    }

    /**
     * @inheritdoc IAppStorage
     */
    function updateSigner(address newSigner) external onlyRole(LibConstants.OWNER_ROLE) {
        if (newSigner == address(0)) {
            LibUtilsRevert.revertWithSelector(Errors.InvalidAddress.selector);
        }

        address oldSigner = LibAppStorage.signer();

        if (newSigner == oldSigner) {
            LibUtilsRevert.revertWithSelector(Errors.InvalidAssignment.selector);
        }

        LibAppStorage.updateSigner(newSigner);

        emit UpdateSigner({ newSigner: newSigner, oldSigner: oldSigner });
    }

    /**
     * @inheritdoc IAppStorage
     */
    function updateDefaultAsset(address newDefaultAsset) external onlyRole(LibConstants.OWNER_ROLE) {
        if (newDefaultAsset == address(0)) {
            LibUtilsRevert.revertWithSelector(Errors.InvalidAddress.selector);
        }

        address oldDefaultAsset = LibAppStorage.defaultAsset();

        if (newDefaultAsset == oldDefaultAsset) {
            LibUtilsRevert.revertWithSelector(Errors.InvalidAssignment.selector);
        }

        LibAppStorage.updateDefaultAsset(IERC20(newDefaultAsset));

        emit UpdateDefaultAsset({ newDefaultAsset: newDefaultAsset, oldDefaultAsset: oldDefaultAsset });
    }

    /**
     * @inheritdoc IAppStorage
     */
    function updateRng(address newRng) external onlyRole(LibConstants.OWNER_ROLE) {
        if (newRng == address(0)) {
            LibUtilsRevert.revertWithSelector(Errors.InvalidAddress.selector);
        }

        address oldRng = LibAppStorage.rng();

        if (newRng == oldRng) {
            LibUtilsRevert.revertWithSelector(Errors.InvalidAssignment.selector);
        }

        LibAppStorage.updateRng(IRandomNumberService(newRng));

        emit UpdateRng({ newRng: newRng, oldRng: oldRng });
    }

    /**
     * @inheritdoc IAppStorage
     */
    function updateConduit(address newConduit) external onlyRole(LibConstants.OWNER_ROLE) {
        if (newConduit == address(0)) {
            LibUtilsRevert.revertWithSelector(Errors.InvalidAddress.selector);
        }

        address oldConduit = LibAppStorage.conduit();

        if (newConduit == oldConduit) {
            LibUtilsRevert.revertWithSelector(Errors.InvalidAssignment.selector);
        }

        LibAppStorage.updateConduit(IConduit(newConduit));

        emit UpdateConduit({ newConduit: newConduit, oldConduit: oldConduit });
    }

    /**
     * @inheritdoc IAppStorage
     */
    function updateReservoir(address newReservoir) external onlyRole(LibConstants.OWNER_ROLE) {
        if (newReservoir == address(0)) {
            LibUtilsRevert.revertWithSelector(Errors.InvalidAddress.selector);
        }

        address oldReservoir = LibAppStorage.reservoir();

        if (newReservoir == oldReservoir) {
            LibUtilsRevert.revertWithSelector(Errors.InvalidAssignment.selector);
        }

        LibAppStorage.updateReservoir(IReservoir(newReservoir));

        emit UpdateReservoir({ newReservoir: newReservoir, oldReservoir: oldReservoir });
    }

    /**
     * @inheritdoc IAppStorage
     */
    function updateUrl(string memory newUrl) external onlyRole(LibConstants.OWNER_ROLE) {
        if (bytes(newUrl).length == 0) {
            LibUtilsRevert.revertWithSelector(Errors.InvalidString.selector);
        }

        string memory oldUrl = LibAppStorage.url();

        if (keccak256(bytes(newUrl)) == keccak256(bytes(oldUrl))) {
            LibUtilsRevert.revertWithSelector(Errors.InvalidAssignment.selector);
        }

        LibAppStorage.updateUrl(newUrl);

        emit UpdateUrl({ newUrl: newUrl, oldUrl: oldUrl });
    }

    /**
     * @inheritdoc IAppStorage
     */
    function updatePath(string memory newPath) external onlyRole(LibConstants.OWNER_ROLE) {
        if (bytes(newPath).length == 0) {
            LibUtilsRevert.revertWithSelector(Errors.InvalidString.selector);
        }

        string memory oldPath = LibAppStorage.path();

        if (keccak256(bytes(newPath)) == keccak256(bytes(oldPath))) {
            LibUtilsRevert.revertWithSelector(Errors.InvalidAssignment.selector);
        }

        LibAppStorage.updatePath(newPath);

        emit UpdatePath({ newPath: newPath, oldPath: oldPath });
    }

    /**
     * @inheritdoc IAppStorage
     */
    function updateJobId(string memory newJobId) external onlyRole(LibConstants.OWNER_ROLE) {
        if (bytes(newJobId).length == 0) {
            LibUtilsRevert.revertWithSelector(Errors.InvalidString.selector);
        }

        string memory oldJobId = LibAppStorage.jobId();

        if (keccak256(bytes(newJobId)) == keccak256(bytes(oldJobId))) {
            LibUtilsRevert.revertWithSelector(Errors.InvalidAssignment.selector);
        }

        LibAppStorage.updateJobId(newJobId);

        emit UpdateJobId({ newJobId: newJobId, oldJobId: oldJobId });
    }

    /**
     * @inheritdoc IAppStorage
     */
    function configureFeeBps(
        Types.MarketType marketType,
        Types.FeeBps memory newFeeBps
    ) external onlyRole(LibConstants.OWNER_ROLE) {
        uint256 newTotalFeeBps;

        unchecked {
            newTotalFeeBps = newFeeBps.conduitFeeBps + newFeeBps.reservoirFeeBps + newFeeBps.payoffFeeBps;
        }

        if (newTotalFeeBps > LibConstants.MAX_TOTAL_FEE_BPS) {
            LibUtilsRevert.revertWithSelector(ExceededMaxTotalFeeBps.selector);
        }

        Types.FeeBps memory oldFeeBps = LibAppStorage.feeBps(marketType);

        LibAppStorage.configureFeeBps(marketType, newFeeBps);

        emit ConfigureFeeBps({ marketType: marketType, newFeeBps: newFeeBps, oldFeeBps: oldFeeBps });
    }

    /**
     * @inheritdoc IAppStorage
     */
    function maxPositionTotalAssetsDivisor() external view returns (uint256) {
        return LibAppStorage.maxPositionTotalAssetsDivisor();
    }

    /**
     * @inheritdoc IAppStorage
     */
    function payoff() external view returns (uint256) {
        return LibAppStorage.payoff();
    }

    /**
     * @inheritdoc IAppStorage
     */
    function signer() external view returns (address) {
        return LibAppStorage.signer();
    }

    /**
     * @inheritdoc IAppStorage
     */
    function defaultAsset() external view returns (address) {
        return LibAppStorage.defaultAsset();
    }

    /**
     * @inheritdoc IAppStorage
     */
    function rng() external view returns (address) {
        return LibAppStorage.rng();
    }

    /**
     * @inheritdoc IAppStorage
     */
    function conduit() external view returns (address) {
        return LibAppStorage.conduit();
    }

    /**
     * @inheritdoc IAppStorage
     */
    function reservoir() external view returns (address) {
        return LibAppStorage.reservoir();
    }

    /**
     * @inheritdoc IAppStorage
     */
    function url() external view returns (string memory) {
        return LibAppStorage.url();
    }

    /**
     * @inheritdoc IAppStorage
     */
    function path() external view returns (string memory) {
        return LibAppStorage.path();
    }

    /**
     * @inheritdoc IAppStorage
     */
    function jobId() external view returns (string memory) {
        return LibAppStorage.jobId();
    }

    /**
     * @inheritdoc IAppStorage
     */
    function feeBps(
        Types.MarketType marketType
    ) external view returns (uint256 conduitFeeBps, uint256 reservoirFeeBps, uint256 payoffFeeBps) {
        Types.FeeBps memory bps = LibAppStorage.feeBps(marketType);

        conduitFeeBps = bps.conduitFeeBps;
        reservoirFeeBps = bps.reservoirFeeBps;
        payoffFeeBps = bps.payoffFeeBps;
    }

    /**
     * @inheritdoc IAppStorage
     */
    function positionData(
        bytes32 positionId
    )
        external
        view
        returns (
            Types.MarketType marketType,
            bytes32 id,
            address user,
            uint256 amount,
            uint256 line,
            uint256 iterations,
            uint256 startBlock,
            uint256 startTime,
            uint256 expiryTime,
            uint256 requiredConfirmations,
            uint256[] memory requestIds,
            bytes memory extraData
        )
    {
        Types.PositionData memory data = LibAppStorage.positionData(positionId);

        marketType = data.marketType;
        id = data.id;
        user = data.user;
        amount = data.amount;
        line = data.line;
        iterations = data.iterations;
        startBlock = data.startBlock;
        startTime = data.startTime;
        expiryTime = data.expiryTime;
        requiredConfirmations = data.requiredConfirmations;
        requestIds = data.requestIds;
        extraData = data.extraData;
    }

    /**
     * @inheritdoc IAppStorage
     */
    function positionProgress(
        bytes32 positionId
    )
        external
        view
        returns (
            Types.MarketType marketType,
            bytes32 id,
            address user,
            uint256 settlement,
            uint256 receivedConfirmations,
            bytes memory extraData
        )
    {
        Types.PositionProgress memory progress = LibAppStorage.positionProgress(positionId);

        marketType = progress.marketType;
        id = progress.id;
        user = progress.user;
        settlement = progress.settlement;
        receivedConfirmations = progress.receivedConfirmations;
        extraData = progress.extraData;
    }

    /**
     * @inheritdoc IAppStorage
     */
    function requestPositionMap(uint256 requestId) external view returns (bytes32 positionId) {
        positionId = LibAppStorage.requestPositionMap(requestId);
    }
}
