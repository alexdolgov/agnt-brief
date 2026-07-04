// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.30;

import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import {UUPSUpgradeable} from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import {
    AccessManagedUpgradeable
} from "@openzeppelin/contracts-upgradeable/access/manager/AccessManagedUpgradeable.sol";
import {ERC165Upgradeable} from "@openzeppelin/contracts-upgradeable/utils/introspection/ERC165Upgradeable.sol";
import {PausableUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/PausableUpgradeable.sol";
import {AggregatorV3Interface} from "chainlink/shared/interfaces/AggregatorV3Interface.sol";
import {IApyxCollateralRatioOracle} from "src/interfaces/IApyxCollateralRatioOracle.sol";
import {EInvalidAddress} from "src/errors/InvalidAddress.sol";
import {EInvalidAnswer} from "src/errors/InvalidAnswer.sol";
import {EInvalidBufferCapacity} from "src/errors/InvalidBufferCapacity.sol";
import {ENoRoundData} from "src/errors/NoRoundData.sol";

/// @title ApyxCollateralRatioOracle
/// @notice Publishes the Apyx protocol collateralization ratio on-chain via AggregatorV3Interface.
///         Stores the last `capacity` rounds in a ring buffer indexed by roundId % capacity.
contract ApyxCollateralRatioOracle is
    Initializable,
    UUPSUpgradeable,
    AccessManagedUpgradeable,
    ERC165Upgradeable,
    PausableUpgradeable,
    IApyxCollateralRatioOracle,
    EInvalidAddress,
    EInvalidAnswer,
    EInvalidBufferCapacity,
    ENoRoundData
{
    struct RoundData {
        uint80 roundId; // stored for slot-recycling verification
        int256 answer;
        uint256 updatedAt;
    }

    /// @custom:storage-location erc7201:apyx.storage.CollateralRatioOracle
    struct OracleStorage {
        // ── V1 fields ──
        uint80 latestRoundId;
        mapping(uint80 => RoundData) rounds; // ring-indexed: key = roundId % capacity

        // ── V2 fields (zero-valued before initialize) ──
        uint80 capacity; // immutable after initialize; must be > 0

        // ── V3 fields (reserved for CRE integration) ──
        bytes32 allowedWorkflowId;
        bytes10 allowedWorkflowName;
        address allowedWorkflowOwner;
    }

    // keccak256(abi.encode(uint256(keccak256("apyx.storage.CollateralRatioOracle")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant STORAGE_LOCATION = 0x917caeefb931eb988f8354dbccc5c3bff29f4ca1a8d18dc00be09740f65fc600;

    int256 public constant MAX_ANSWER = 150_000_000; // 1.50 (150%) at 8 decimals

    function _getOracleStorage() private pure returns (OracleStorage storage $) {
        assembly {
            $.slot := STORAGE_LOCATION
        }
    }

    constructor() {
        _disableInitializers();
    }

    /// @notice Initialize the oracle with an access manager and ring buffer capacity
    /// @param accessManager_   The AccessManager contract address
    /// @param capacity_  Number of historical rounds to retain (must be > 0)
    function initialize(address accessManager_, uint80 capacity_) external initializer {
        if (accessManager_ == address(0)) revert InvalidAddress("accessManager");
        if (capacity_ == 0) revert InvalidBufferCapacity();

        __AccessManaged_init(accessManager_);
        __Pausable_init();
        __ERC165_init();

        _getOracleStorage().capacity = capacity_;
    }

    function _authorizeUpgrade(address) internal override restricted {}

    function supportsInterface(bytes4 interfaceId) public view virtual override returns (bool) {
        return interfaceId == type(AggregatorV3Interface).interfaceId || super.supportsInterface(interfaceId);
    }

    // ========================================
    // Pausable
    // ========================================

    /// @notice Pause the oracle — disables pushRound and all reads
    function pause() external restricted {
        _pause();
    }

    /// @notice Unpause the oracle — re-enables all operations
    function unpause() external restricted {
        _unpause();
    }

    // ========================================
    // View functions
    // ========================================

    /// @inheritdoc IApyxCollateralRatioOracle
    function capacity() external view returns (uint80) {
        return _getOracleStorage().capacity;
    }

    /// @notice Returns the number of decimals in the oracle answer
    function decimals() external pure returns (uint8) {
        return 8;
    }

    /// @notice Returns the oracle description
    function description() external pure returns (string memory) {
        return "Apyx Collateralization Ratio";
    }

    /// @notice Returns the feed format version
    function version() external pure returns (uint256) {
        return 1;
    }

    // ========================================
    // Write
    // ========================================

    /// @inheritdoc IApyxCollateralRatioOracle
    function pushRound(int256 answer) external restricted whenNotPaused {
        _pushRound(answer);
    }

    function _pushRound(int256 answer) internal {
        if (answer <= 0 || answer > MAX_ANSWER) revert InvalidAnswer(answer);

        OracleStorage storage $ = _getOracleStorage();
        uint80 newRoundId = $.latestRoundId + 1;
        $.latestRoundId = newRoundId;

        $.rounds[newRoundId % $.capacity] = RoundData({roundId: newRoundId, answer: answer, updatedAt: block.timestamp});

        emit RoundUpdated(newRoundId, answer, block.timestamp);
    }

    // ========================================
    // Read
    // ========================================

    /// @notice Returns the latest round data
    /// @dev This oracle does not enforce a staleness threshold. Consumers are responsible for
    ///      checking `updatedAt` against their own freshness requirements. The `startedAt` field
    ///      equals `updatedAt` and `answeredInRound` equals `roundId` (modern aggregator convention);
    ///      neither carries an independent staleness signal.
    function latestRoundData()
        external
        view
        whenNotPaused
        returns (uint80 roundId, int256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound)
    {
        OracleStorage storage $ = _getOracleStorage();
        roundId = $.latestRoundId;
        if (roundId == 0) revert NoRoundData(0);

        RoundData storage rd = $.rounds[roundId % $.capacity];
        return (roundId, rd.answer, rd.updatedAt, rd.updatedAt, roundId);
    }

    /// @notice Returns round data for a specific round ID
    /// @param roundId_ The round ID to query (must be within the active buffer window)
    /// @dev Reverts with NoRoundData if the round has been recycled or never existed.
    ///      See `latestRoundData` for staleness and field convention notes.
    function getRoundData(uint80 roundId_)
        external
        view
        whenNotPaused
        returns (uint80 roundId, int256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound)
    {
        OracleStorage storage $ = _getOracleStorage();
        if (roundId_ == 0 || roundId_ > $.latestRoundId) revert NoRoundData(roundId_);

        RoundData storage rd = $.rounds[roundId_ % $.capacity];
        if (rd.roundId != roundId_) revert NoRoundData(roundId_);

        return (roundId_, rd.answer, rd.updatedAt, rd.updatedAt, roundId_);
    }
}
