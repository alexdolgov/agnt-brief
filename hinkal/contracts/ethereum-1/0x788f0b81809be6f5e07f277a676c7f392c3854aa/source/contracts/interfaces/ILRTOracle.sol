// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.34;

interface ILRTOracle {
    // errors
    error AssetOracleNotSupported();
    error InvalidPriceOracle();
    error PriceAboveDailyThreshold();
    error ProtocolFeeExceededTVLIncrease();
    error DailyFeeMintLimitExceeded(uint256 currentAmount, uint256 maxAmount);
    error ContractPaused();
    error ContractNotPaused();
    error PeriodStartTimeShouldBeWithin24Hours();
    error InvalidExternalAccountingReport();
    error ExternalAccountingReportNotAvailable();
    error ReportTooFresh(uint256 currentSlot, uint256 earliestApplicableSlot);
    error ReportHashMismatch(bytes32 expected, bytes32 actual);
    error AccountingReportAlreadyApplied(bytes32 reportHash);
    error PostReportWaitTimeNotBelowReportInterval(uint256 waitTimeInSlots, uint256 reportIntervalSlots);
    error ExternalAccountingCanOnlyBeEnabledOnce();
    error LegacyPriceUpdateDisabled();

    // events
    event AssetPriceOracleUpdate(address indexed asset, address indexed priceOracle);
    event RsETHPriceUpdate(uint256 newPrice, uint256 oldPrice);
    event PricePercentageLimitUpdate(uint256 newLimit);
    event FeeMinted(address treasury, uint256 rsethAmount);
    event RsETHPriceBelowPeak(uint256 highestRsethPrice, uint256 newPrice);
    event RsETHPriceDecrease(uint256 newPrice, uint256 oldPrice);
    event PeriodInTimestampUpdate(uint256 newPeriod);
    event MaxFeeMintAmountPerDayUpdated(uint256 newLimit);
    event Paused(address account);
    event Unpaused(address account);
    event FeePeriodStartTimeSet(uint256 feePeriodStartTime);
    event ExternalAccountingEnabledUpdate(bool enabled);
    event UpperPriceLimitUpdate(uint256 newLimit);
    event LowerPriceLimitUpdate(uint256 newLimit);
    event ExternalAccountingPriceUpdateSkippedUpside(uint256 highestRsethPrice, uint256 proposedPrice, uint256 limit);
    event PostReportWaitTimeSlotsUpdated(uint32 newWaitTimeInSlots);

    // methods
    function getAssetPrice(address asset) external view returns (uint256);
    function assetPriceOracle(address asset) external view returns (address);
    function rsETHPrice() external view returns (uint256);
    function isExternalAccountingEnabled() external view returns (bool);
    /// @notice Upper bound used only by the external-accounting price update path.
    function upperPriceLimit() external view returns (uint256);
    /// @notice Lower bound used only by the external-accounting price update path.
    function lowerPriceLimit() external view returns (uint256);
    function postReportWaitTimeInSlots() external view returns (uint32);
    function setPostReportWaitTimeInSlots(uint32 newWaitTimeInSlots) external;
    function updateRsETHPriceFromAccountingReport(bytes32 expectedReportHash) external;
    function updateRsETHPriceFromAccountingReportAsManager(bytes32 expectedReportHash) external;
    function enableExternalAccounting() external;
    function setUpperPriceLimit(uint256) external;
    function setLowerPriceLimit(uint256) external;
}
