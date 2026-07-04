// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

// ============================================================
//  Chainlink Data Streams Consumer — Multi-Stream Registry
//
//  Extensible: owner can register v10 feeds at any time via addStream().
//
//  VerifierProxy addresses:
//    Arbitrum Sepolia (testnet): 0x2ff010DEbC1297f19579B4246cad07bd24F2488A
//    All networks: https://docs.chain.link/data-streams/supported-networks
//
//  Flow:
//    1. Fund this contract with LINK (pays ~0.001–0.01 LINK per verify call)
//    2. Off-chain: fetch signed report from Data Streams API for any registered feedId
//    3. On-chain:  call verifyReport(signedReport)  — auto-routes by feedId inside the payload
//    4. Read:      getPrice(feedId) / getTokenizedPrice(feedId) / getMultipliers(feedId)
// ============================================================

import {IVerifierProxy, IVerifierFeeManager, Common} from "./interfaces/IDataStreams.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

// ── Report Schema v10: Tokenized Equity ──────────────────────────────────────
// All three streams (TSLAx, SPYx, QQQx) use this schema.
// Field order must exactly match the DON's ABI encoding.
struct ReportV10 {
    bytes32 feedId; // Stream identifier
    uint32 validFromTimestamp; // Validity window start
    uint32 observationsTimestamp; // When price observations were taken
    uint192 nativeFee; // Fee in native gas token (wei)
    uint192 linkFee; // Fee in LINK (18 decimals)
    uint32 expiresAt; // Unix timestamp after which report is stale
    uint64 lastUpdateTimestamp; // Last oracle update time (nanoseconds)
    int192 price; // Consensus mid-price in USD       (18 decimals)
    uint32 marketStatus; // 0=Unknown  1=Closed  2=Open
    int192 currentMultiplier; // Shares per tokenized asset now   (18 decimals)
    int192 newMultiplier; // Upcoming multiplier post-action  (18 decimals)
    uint32 activationDateTime; // When newMultiplier becomes active (unix ts)
    int192 tokenizedPrice; // Secondary market tokenized price (18 decimals)
}

contract DataStreamsConsumer {
    // ── Immutables ──────────────────────────────────────────────────────────

    IVerifierProxy public immutable VERIFIER_PROXY;
    address public immutable LINK_TOKEN;
    address public owner;

    // ── Stream Registry ─────────────────────────────────────────────────────

    /// @dev Stored per-stream after each successful verification
    struct StreamData {
        string name; // Human-readable label e.g. "TSLAx/USD"
        int192 price; // Consensus mid-price           (18 decimals)
        int192 tokenizedPrice; // Secondary market price        (18 decimals)
        int192 currentMultiplier; // Shares per tokenized token    (18 decimals)
        int192 newMultiplier; // Upcoming multiplier           (18 decimals)
        uint32 activationDateTime; // When newMultiplier is active  (unix ts)
        uint32 observationsTimestamp; // Timestamp of price observation
        uint64 lastUpdateTimestamp; // Last oracle update time (nanoseconds)
        uint32 marketStatus; // 1=Closed  2=Open
        bool active; // Is this feedId registered?
        bool initialized; // Has at least one report been verified?
    }

    /// feedId → StreamData
    mapping(bytes32 => StreamData) public streams;

    /// Ordered list of registered feedIds (for enumeration)
    bytes32[] public registeredFeeds;

    // ── Events ──────────────────────────────────────────────────────────────

    event ReportVerified(
        bytes32 indexed feedId,
        string name,
        int192 price,
        int192 tokenizedPrice,
        int192 currentMultiplier,
        uint32 timestamp,
        uint32 marketStatus
    );

    event StreamAdded(bytes32 indexed feedId, string name);
    event StreamDeactivated(bytes32 indexed feedId);

    // ── Errors ──────────────────────────────────────────────────────────────

    error NotOwner();
    error FeedNotRegistered(bytes32 feedId);
    error FeedAlreadyRegistered(bytes32 feedId);
    error ReportExpired(uint32 expiresAt, uint32 blockTime);
    error InsufficientLinkBalance(uint256 have, uint256 need);
    error NotInitialized(bytes32 feedId);

    // ── Modifiers ───────────────────────────────────────────────────────────

    modifier onlyOwner() {
        if (msg.sender != owner) revert NotOwner();
        _;
    }

    modifier streamExists(bytes32 feedId) {
        if (!streams[feedId].active) revert FeedNotRegistered(feedId);
        _;
    }

    modifier streamHasData(bytes32 feedId) {
        if (!streams[feedId].initialized) revert NotInitialized(feedId);
        _;
    }

    // ── Constructor ─────────────────────────────────────────────────────────

    /// @param _verifierProxy  VerifierProxy address for your network.
    ///                        Find at docs.chain.link/data-streams/supported-networks
    constructor(address _verifierProxy) {
        owner = msg.sender;
        VERIFIER_PROXY = IVerifierProxy(_verifierProxy);

        address feeManagerAddr = address(VERIFIER_PROXY.s_feeManager());
        LINK_TOKEN = feeManagerAddr != address(0)
            ? IVerifierFeeManager(feeManagerAddr).i_linkAddress()
            : address(0);
    }

    // ── Core: Verify Report ─────────────────────────────────────────────────

    /// @notice Verify a signed report from the Data Streams API on-chain.
    ///         The feedId is extracted from the payload automatically — no need to pass it.
    ///
    /// @dev    This contract must hold LINK to pay the verification fee.
    ///         The feedId inside the report must belong to a registered stream.
    ///
    /// @param signedReport  Raw bytes from GET /api/v1/reports?feedID=<id>&timestamp=<ts>
    function verifyReport(bytes calldata signedReport) external {
        IVerifierFeeManager feeManager = IVerifierFeeManager(address(VERIFIER_PROXY.s_feeManager()));

        bytes memory parameterPayload;

        if (address(feeManager) != address(0)) {
            // 1. Calculate required LINK fee
            (Common.Asset memory fee,,) = feeManager.getFeeAndReward(address(this), signedReport, LINK_TOKEN);

            // 2. Check LINK balance
            uint256 balance = IERC20(LINK_TOKEN).balanceOf(address(this));
            if (balance < fee.amount) {
                revert InsufficientLinkBalance(balance, fee.amount);
            }

            // 3. Approve RewardManager (not VerifierProxy) to pull the LINK fee
            IERC20(LINK_TOKEN).approve(feeManager.i_rewardManager(), fee.amount);
            parameterPayload = abi.encode(LINK_TOKEN);
        } else {
            // No FeeManager on this chain (e.g. Ethereum mainnet) — no fee required
            parameterPayload = bytes("");
        }

        // 4. Verify on-chain — VERIFIER_PROXY checks DON signatures
        bytes memory verifiedReportData = VERIFIER_PROXY.verify(
            signedReport,
            parameterPayload
        );

        // 5. Decode the verified bytes into the v10 struct
        ReportV10 memory report = abi.decode(verifiedReportData, (ReportV10));

        // 6. Feed must be registered
        if (!streams[report.feedId].active) {
            revert FeedNotRegistered(report.feedId);
        }

        // 7. Report must not be expired
        if (report.expiresAt <= block.timestamp) {
            revert ReportExpired(report.expiresAt, uint32(block.timestamp));
        }

        // 8. Persist latest data for this stream
        StreamData storage s = streams[report.feedId];
        s.price = report.price;
        s.tokenizedPrice = report.tokenizedPrice;
        s.currentMultiplier = report.currentMultiplier;
        s.newMultiplier = report.newMultiplier;
        s.activationDateTime = report.activationDateTime;
        s.observationsTimestamp = report.observationsTimestamp;
        s.lastUpdateTimestamp = report.lastUpdateTimestamp;
        s.marketStatus = report.marketStatus;
        s.initialized = true;

        emit ReportVerified(
            report.feedId,
            s.name,
            report.price,
            report.tokenizedPrice,
            report.currentMultiplier,
            report.observationsTimestamp,
            report.marketStatus
        );
    }

    // ── Core: Verify Bulk Reports ───────────────────────────────────────────

    /// @notice Verify multiple signed reports in a single transaction.
    ///         Saves gas vs calling verifyReport() N times separately.
    ///         Each report's feedId must be registered. Expired reports are skipped (not reverted).
    ///
    /// @param signedReports  Array of raw report bytes — one per feed, same order as your feed list.
    function verifyBulkReports(bytes[] calldata signedReports) external {
        uint256 n = signedReports.length;
        require(n > 0, "empty");

        IVerifierFeeManager feeManager = IVerifierFeeManager(address(VERIFIER_PROXY.s_feeManager()));

        bytes memory parameterPayload;

        if (address(feeManager) != address(0)) {
            address rewardManager = feeManager.i_rewardManager();

            // 1. Sum up total LINK fee across all reports
            uint256 totalFee;
            for (uint256 i = 0; i < n; i++) {
                (Common.Asset memory fee,,) = feeManager.getFeeAndReward(address(this), signedReports[i], LINK_TOKEN);
                totalFee += fee.amount;
            }

            // 2. Check LINK balance covers total
            uint256 balance = IERC20(LINK_TOKEN).balanceOf(address(this));
            if (balance < totalFee) {
                revert InsufficientLinkBalance(balance, totalFee);
            }

            // 3. Approve RewardManager for the total fee in one call
            IERC20(LINK_TOKEN).approve(rewardManager, totalFee);
            parameterPayload = abi.encode(LINK_TOKEN);
        } else {
            // No FeeManager on this chain (e.g. Ethereum mainnet) — no fee required
            parameterPayload = bytes("");
        }

        // 4. Verify all reports in one VerifierProxy call
        bytes[] memory verifiedReports = VERIFIER_PROXY.verifyBulk(
            signedReports,
            parameterPayload
        );

        // 5. Decode and store each verified report
        for (uint256 i = 0; i < n; i++) {
            ReportV10 memory report = abi.decode(verifiedReports[i], (ReportV10));

            if (!streams[report.feedId].active) continue;  // skip unregistered feeds
            if (report.expiresAt <= block.timestamp) continue; // skip expired reports

            StreamData storage s = streams[report.feedId];
            s.price                 = report.price;
            s.tokenizedPrice        = report.tokenizedPrice;
            s.currentMultiplier     = report.currentMultiplier;
            s.newMultiplier         = report.newMultiplier;
            s.activationDateTime    = report.activationDateTime;
            s.observationsTimestamp = report.observationsTimestamp;
            s.lastUpdateTimestamp   = report.lastUpdateTimestamp;
            s.marketStatus          = report.marketStatus;
            s.initialized           = true;

            emit ReportVerified(
                report.feedId,
                s.name,
                report.price,
                report.tokenizedPrice,
                report.currentMultiplier,
                report.observationsTimestamp,
                report.marketStatus
            );
        }
    }

    // ── View: Price ─────────────────────────────────────────────────────────

    /// @notice Latest verified consensus mid-price for any registered stream.
    /// @param feedId    Use the TSLAX_USD / SPYX_USD / QQQX_USD constants or any registered id
    /// @return price    18-decimal int192. USD value = uint256(price) / 1e18
    /// @return timestamp Unix timestamp of the price observation
    function getPrice(bytes32 feedId)
        external
        view
        streamExists(feedId)
        streamHasData(feedId)
        returns (int192 price, uint32 timestamp)
    {
        StreamData storage s = streams[feedId];
        return (s.price, s.observationsTimestamp);
    }

    /// @notice Latest tokenized secondary-market price.
    function getTokenizedPrice(bytes32 feedId)
        external
        view
        streamExists(feedId)
        streamHasData(feedId)
        returns (int192 tokenizedPrice, uint32 timestamp)
    {
        StreamData storage s = streams[feedId];
        return (s.tokenizedPrice, s.observationsTimestamp);
    }

    // ── View: Total Return Multiplier ───────────────────────────────────────

    /// @notice Total Return Multiplier data for any registered stream.
    ///
    ///         The multiplier tracks how many underlying shares each tokenized asset
    ///         represents, adjusted for dividends and corporate actions (stock splits, etc.).
    ///
    /// @return currentMultiplier   Current shares per token (1e18 = 1 share)
    /// @return newMultiplier       Upcoming multiplier (0 if no action pending)
    /// @return activationDateTime  Unix ts when newMultiplier activates (0 if none)
    function getMultipliers(bytes32 feedId)
        external
        view
        streamExists(feedId)
        streamHasData(feedId)
        returns (int192 currentMultiplier, int192 newMultiplier, uint32 activationDateTime)
    {
        StreamData storage s = streams[feedId];
        return (s.currentMultiplier, s.newMultiplier, s.activationDateTime);
    }

    // ── View: Market Status ─────────────────────────────────────────────────

    /// @notice 0=Unknown  1=Closed  2=Open
    function getMarketStatus(bytes32 feedId) external view streamExists(feedId) streamHasData(feedId) returns (uint32) {
        return streams[feedId].marketStatus;
    }

    // ── View: Full Stream Data ──────────────────────────────────────────────

    /// @notice Returns all latest data for a stream in a single call.
    function getStreamData(bytes32 feedId)
        external
        view
        streamExists(feedId)
        streamHasData(feedId)
        returns (StreamData memory)
    {
        return streams[feedId];
    }

    /// @notice Convenience: returns price scaled to 8 decimals (AggregatorV3-compatible).
    function getPriceAs8Dec(bytes32 feedId) external view streamExists(feedId) streamHasData(feedId) returns (uint256) {
        // int192 with 18 decimals → divide by 1e10 → 8 decimals
        return uint256(uint192(streams[feedId].price)) / 1e10;
    }

    // ── View: Registry ──────────────────────────────────────────────────────

    /// @notice Returns all registered feedIds (including inactive ones).
    function getAllFeedIds() external view returns (bytes32[] memory) {
        return registeredFeeds;
    }

    /// @notice Returns count of registered feeds.
    function feedCount() external view returns (uint256) {
        return registeredFeeds.length;
    }

    // ── Admin: Registry Management ──────────────────────────────────────────

    /// @notice Register a new v10 stream so its reports can be verified and stored.
    /// @param feedId  The stream's feed ID from data.chain.link/streams/...
    /// @param name    Human-readable label e.g. "AAPLx/USD"
    function addStream(bytes32 feedId, string calldata name) external onlyOwner {
        _addStream(feedId, name);
    }

    /// @notice Deactivate a stream — blocks new report verifications for that feedId.
    ///         Existing stored data is preserved and still readable.
    function deactivateStream(bytes32 feedId) external onlyOwner {
        if (!streams[feedId].active) revert FeedNotRegistered(feedId);
        streams[feedId].active = false;
        emit StreamDeactivated(feedId);
    }

    /// @notice Reactivate a previously deactivated stream.
    function reactivateStream(bytes32 feedId) external onlyOwner {
        streams[feedId].active = true;
    }

    /// @notice Transfer contract ownership.
    function transferOwnership(address newOwner) external onlyOwner {
        owner = newOwner;
    }

    // ── Admin: Funding ──────────────────────────────────────────────────────

    /// @notice LINK balance available for verification fees.
    function linkBalance() external view returns (uint256) {
        return IERC20(LINK_TOKEN).balanceOf(address(this));
    }

    /// @notice Withdraw LINK from the contract.
    function withdrawLink(address to, uint256 amount) external onlyOwner {
        SafeERC20.safeTransfer(IERC20(LINK_TOKEN), to, amount);
    }

    receive() external payable {}

    // ── Internal ────────────────────────────────────────────────────────────

    function _addStream(bytes32 feedId, string memory name) internal {
        if (streams[feedId].active) revert FeedAlreadyRegistered(feedId);
        streams[feedId].name = name;
        streams[feedId].active = true;
        registeredFeeds.push(feedId);
        emit StreamAdded(feedId, name);
    }
}
