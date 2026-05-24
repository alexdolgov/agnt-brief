// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import { Types } from "../shared/Types.sol";

/**
 * @title IAppStorage
 * @author Rain Team
 * @notice Defines the shared application storage layout used across diamond facets.
 * @dev Exposes accessors and types required to interact with the diamond's central storage while maintaining a single
 * source of truth for state variables.
 */
interface IAppStorage {
    /* ========================== EVENTS ========================== */

    /**
     * @dev Emitted when the value of the maximum position total assets divisor is changed.
     * @param newMaxPositionTotalAssetsDivisor Value of the new maximum position total assets divisor.
     * @param oldMaxPositionTotalAssetsDivisor Value of the previous maximum position total assets divisor.
     */
    event UpdateMaxPositionTotalAssetsDivisor(
        uint256 newMaxPositionTotalAssetsDivisor,
        uint256 oldMaxPositionTotalAssetsDivisor
    );

    /**
     * @dev Emitted when the address of the signer wallet is changed.
     * @param newSigner Address of the new signer wallet.
     * @param oldSigner Address of the previous signer wallet.
     */
    event UpdateSigner(address newSigner, address oldSigner);

    /**
     * @dev Emitted when the address of the default asset token is changed.
     * @param newDefaultAsset Address of the new default asset token.
     * @param oldDefaultAsset Address of the previous default asset token.
     */
    event UpdateDefaultAsset(address newDefaultAsset, address oldDefaultAsset);

    /**
     * @dev Emitted when the address of the rng contract is changed.
     * @param newRng Address of the new rng contract.
     * @param oldRng Address of the previous rng contract.
     */
    event UpdateRng(address newRng, address oldRng);

    /**
     * @dev Emitted when the address of the conduit contract is changed.
     * @param newConduit Address of the new conduit contract.
     * @param oldConduit Address of the previous conduit contract.
     */
    event UpdateConduit(address newConduit, address oldConduit);

    /**
     * @dev Emitted when the address of the reservoir contract is changed.
     * @param newReservoir Address of the new reservoir contract.
     * @param oldReservoir Address of the previous reservoir contract.
     */
    event UpdateReservoir(address newReservoir, address oldReservoir);

    /**
     * @dev Emitted when the url is changed.
     * @param newUrl New url.
     * @param oldUrl Previous url.
     */
    event UpdateUrl(string newUrl, string oldUrl);

    /**
     * @dev Emitted when the path is changed.
     * @param newPath New path.
     * @param oldPath Previous path.
     */
    event UpdatePath(string newPath, string oldPath);

    /**
     * @dev Emitted when the job id is changed.
     * @param newJobId New job id.
     * @param oldJobId Previous job id.
     */
    event UpdateJobId(string newJobId, string oldJobId);

    /**
     * @dev Emitted when the values of fees for a market type are changed.
     * @param marketType Type of market that was configured.
     * @param newFeeBps Values of the new fees.
     * @param oldFeeBps Values of the previous fees.
     */
    event ConfigureFeeBps(Types.MarketType marketType, Types.FeeBps newFeeBps, Types.FeeBps oldFeeBps);

    /* ========================== ERRORS ========================== */

    /**
     * @dev Thrown when total fee in basis points exceeds the maximum limit.
     */
    error ExceededMaxTotalFeeBps();

    /* ========================== FUNCTIONS ========================== */

    /**
     * @notice Updates the value of the maximum position total assets divisor.
     *
     * Requirements:
     *
     * - the caller must be an owner.
     * - `newMaxPositionTotalAssetsDivisor` cannot be `0`.
     * - `newMaxPositionTotalAssetsDivisor` cannot be equal to the existing maximum position total assets divisor value.
     *
     * @param newMaxPositionTotalAssetsDivisor Value of the new maximum position total assets divisor.
     */
    function updateMaxPositionTotalAssetsDivisor(uint256 newMaxPositionTotalAssetsDivisor) external;

    /**
     * @notice Updates the address of the signer wallet.
     *
     * Requirements:
     *
     * - the caller must be an owner.
     * - `newSigner` cannot be the zero address.
     * - `newSigner` cannot be equal to the existing signer wallet address.
     *
     * @param newSigner Address of the new signer wallet.
     */
    function updateSigner(address newSigner) external;

    /**
     * @notice Updates the address of the default asset token.
     *
     * Requirements:
     *
     * - the caller must be an owner.
     * - `newDefaultAsset` cannot be the zero address.
     * - `newDefaultAsset` cannot be equal to the existing default asset token address.
     *
     * @param newDefaultAsset Address of the new default asset token.
     */
    function updateDefaultAsset(address newDefaultAsset) external;

    /**
     * @notice Updates the address of the rng contract.
     *
     * Requirements:
     *
     * - the caller must be an owner.
     * - `newRng` cannot be the zero address.
     * - `newRng` cannot be equal to the existing rng contract address.
     *
     * @param newRng Address of the new rng contract.
     */
    function updateRng(address newRng) external;

    /**
     * @notice Updates the address of the conduit contract.
     *
     * Requirements:
     *
     * - the caller must be an owner.
     * - `newConduit` cannot be the zero address.
     * - `newConduit` cannot be equal to the existing conduit contract address.
     *
     * @param newConduit Address of the new conduit contract.
     */
    function updateConduit(address newConduit) external;

    /**
     * @notice Updates the address of the reservoir contract.
     *
     * Requirements:
     *
     * - the caller must be an owner.
     * - `newReservoir` cannot be the zero address.
     * - `newReservoir` cannot be equal to the existing reservoir contract address.
     *
     * @param newReservoir Address of the new reservoir contract.
     */
    function updateReservoir(address newReservoir) external;

    /**
     * @notice Updates the url.
     *
     * Requirements:
     *
     * - the caller must be an owner.
     * - `newUrl` cannot be an empty string.
     * - `newUrl` cannot be equal to the existing url.
     *
     * @param newUrl New url.
     */
    function updateUrl(string memory newUrl) external;

    /**
     * @notice Updates the path.
     *
     * Requirements:
     *
     * - the caller must be an owner.
     * - `newPath` cannot be an empty string.
     * - `newPath` cannot be equal to the existing path.
     *
     * @param newPath New path.
     */
    function updatePath(string memory newPath) external;

    /**
     * @notice Updates the job id.
     *
     * Requirements:
     *
     * - the caller must be an owner.
     * - `newJobId` cannot be an empty string.
     * - `newJobId` cannot be equal to the existing job id.
     *
     * @param newJobId New job id.
     */
    function updateJobId(string memory newJobId) external;

    /**
     * @notice Configures the values of fees for the given market type.
     *
     * NOTE: To remove fees from a market type, pass all values as zero.
     *
     * Requirements:
     *
     * - the caller must be an owner.
     * - sum of all values of fees in `newFeeBps` must be less than or equal to the value of maximum allowed total fee.
     *
     * @param marketType Type of market to configure fee distrubtion.
     * @param newFeeBps Values of the new fees.
     */
    function configureFeeBps(Types.MarketType marketType, Types.FeeBps memory newFeeBps) external;

    /**
     * @notice Divisor used to calculate the maximum position amount.
     */
    function maxPositionTotalAssetsDivisor() external view returns (uint256);

    /**
     * @notice Current payoff balance.
     */
    function payoff() external view returns (uint256);

    /**
     * @notice Address of the signer wallet.
     */
    function signer() external view returns (address);

    /**
     * @notice Address of the default asset token.
     */
    function defaultAsset() external view returns (address);

    /**
     * @notice Address of the rng contract.
     */
    function rng() external view returns (address);

    /**
     * @notice Address of the conduit contract.
     */
    function conduit() external view returns (address);

    /**
     * @notice Address of the reservoir contract.
     */
    function reservoir() external view returns (address);

    /**
     * @notice Url used for off-chain requests.
     */
    function url() external view returns (string memory);

    /**
     * @notice Path appended to the url for off-chain requests.
     */
    function path() external view returns (string memory);

    /**
     * @notice Job Id used for off-chain requests.
     */
    function jobId() external view returns (string memory);

    /**
     * @notice Fee distribution in basis points for opening positions across markets.
     * @param marketType Type of market.
     * @return conduitFeeBps Basis points fee sent to the conduit for buyback and burn.
     * @return reservoirFeeBps Basis points fee sent to the reservoir for liquidity rewards.
     * @return payoffFeeBps Basis points fee sent to the protocol itself for payoff distribution.
     */
    function feeBps(
        Types.MarketType marketType
    ) external view returns (uint256 conduitFeeBps, uint256 reservoirFeeBps, uint256 payoffFeeBps);

    /**
     * @notice Data associated with `positionId`.
     * @param positionId Unique identifier of the position.
     * @return marketType Type of market.
     * @return id Position's unique identifier.
     * @return user Address of the user who opened the position.
     * @return amount Position amount.
     * @return line Line associated with the position.
     * @return iterations Number of iterations for the position.
     * @return startBlock Block number when the position was opened.
     * @return startTime Timestamp when the position was opened.
     * @return expiryTime Expiration timestamp for the position.
     * @return requiredConfirmations Confirmations required to close the position.
     * @return requestIds Array of oracle request identifiers associated with this position.
     * @return extraData Additional position-specific data encoded as bytes.
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
        );

    /**
     * @notice Progress data associated with `positionId`.
     * @param positionId Unique identifier of the position.
     * @return marketType Type of market.
     * @return id Position's unique identifier.
     * @return user Address of the user who opened the position.
     * @return settlement Total settlement for this position.
     * @return receivedConfirmations Number of oracle confirmations received.
     * @return extraData Additional position-specific progress data encoded as bytes.
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
        );

    /**
     * @notice Position identifier associated with `requestId`.
     * @param requestId Oracle request identifier.
     * @return positionId Associated position identifier.
     */
    function requestPositionMap(uint256 requestId) external view returns (bytes32 positionId);
}
