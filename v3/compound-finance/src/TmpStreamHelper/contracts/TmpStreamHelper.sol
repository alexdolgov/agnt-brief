// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

import "./IStreamerFactory.sol";

contract TmpStreamHelper {
    address constant public streamerFactory = 0xFB9167A8b5Cb585202953c6d5537A7D640c43a96;
    address constant public _streamingAsset = 0xc3d688B66703497DAA19211EEdff47f25384cdc3;
    address constant public _nativeAsset = 0xA0b86991c6218b36c1d19D4a2e9Eb0cE3606eB48;
    address constant public _streamingAssetOracle = 0xD72ac1bCE9177CFe7aEb5d0516a38c88a64cE0AB;
    address constant public _nativeAssetOracle = 0xD72ac1bCE9177CFe7aEb5d0516a38c88a64cE0AB;
    address constant public _returnAddress = 0x256C842Dbded9eA34d2D5569fc0324BeF8F5A67f;
    address constant public _streamCreator = 0x256C842Dbded9eA34d2D5569fc0324BeF8F5A67f;
    address constant public _recipient = 0x4d1e8c1a10745D2f674dDD337Ac869B93976467b;
    uint256 constant public _nativeAssetStreamingAmount = 12082190000;
    uint256 constant public _slippage = 0;
    uint256 constant public _claimCooldown = 1;
    uint256 constant public _sweepCooldown = 864000;
    uint256 constant public desiredDeadline = 1798761599;
    uint256 constant public _minimumNoticePeriod = 1;

    uint256 public constant SLIPPAGE_SCALE = 1e8;    
    uint256 public constant MIN_DURATION = 1 days;

    error ZeroAmount();
    error NotReceiver();
    error NotStreamCreator();
    error CantRescueStreamingAsset();
    error ZeroAddress();
    error SlippageExceedsScaleFactor();
    error InvalidPrice();
    error NotInitialized();
    error NotEnoughBalance(uint256 balance, uint256 streamingAmount);
    error StreamNotFinished();
    error AlreadyInitialized();
    error DurationTooShort();
    error TerminationIsAfterStream(uint256 terminationTimestamp);
    error CreatorCannotSweepYet();
    error SweepCooldownNotPassed();
    error AlreadyTerminated();
    error NoticePeriodExceedsStreamDuration();
    error DecimalsNotInBounds();
    error StreamingAmountTooLow();
    function deployStreamer() public {
        if (_recipient == address(0)) revert ZeroAddress();
        if (_streamCreator == address(0)) revert ZeroAddress();
        if (_returnAddress == address(0)) revert ZeroAddress();
        if (address(_streamingAsset) == address(0)) revert ZeroAddress();
        if (_nativeAssetStreamingAmount == 0) revert ZeroAmount();
        if (_slippage > SLIPPAGE_SCALE) revert SlippageExceedsScaleFactor();
        if (_claimCooldown < MIN_DURATION) revert DurationTooShort();
        if (_sweepCooldown < MIN_DURATION) revert DurationTooShort();
        if (desiredDeadline - block.timestamp < MIN_DURATION) revert DurationTooShort();
        if (_minimumNoticePeriod < MIN_DURATION) revert DurationTooShort();
        if (_minimumNoticePeriod > desiredDeadline - block.timestamp) revert NoticePeriodExceedsStreamDuration();


        IStreamerFactory(streamerFactory).deployStreamer(
            address(_streamingAsset),
            _nativeAsset,
            _streamingAssetOracle,
            _nativeAssetOracle,
            _returnAddress,
            _streamCreator,
            _recipient,
            _nativeAssetStreamingAmount,
            _slippage,
            _sweepCooldown,
            _claimCooldown,
            desiredDeadline - block.timestamp,
            _minimumNoticePeriod
        );
    }
}
