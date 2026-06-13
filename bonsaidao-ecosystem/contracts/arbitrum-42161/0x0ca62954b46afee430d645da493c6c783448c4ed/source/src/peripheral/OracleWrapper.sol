// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.17;

import { GlobalACL, Auth, REQUEST_HANDLER, AGGREGATE_VAULT_ROLE, KEEPER_ROLE } from "../Auth.sol";
import { IAggregatorV3Interface } from "../interfaces/IAggregatorV3Interface.sol";
import { IVerifierProxy } from "../interfaces/IVerifierProxy.sol";
import { IArbSys } from "../interfaces/IArbSys.sol";
import { ARBSYS, GMX_V2_LTC_INDEX_TOKEN, TOKEN_USDC_NATIVE } from "../constants.sol";
import { ERC20 } from "solmate/tokens/ERC20.sol";
import { SafeTransferLib } from "solmate/utils/SafeTransferLib.sol";
import { ISupraSValueFeed } from "../interfaces/ISupraSValueFeed.sol";
import { StorageViewer } from "./StorageViewer.sol";

using SafeTransferLib for ERC20;

library LLOReportDecoder {
    struct SignedReportData {
        bytes32[3] context;
        bytes blob;
        bytes32[] rawRs;
        bytes32[] rawSs;
        bytes32 rawVs;
    }

    struct ReportData {
        bytes32 feedId;
        uint32 validFromTimestamp;
        uint32 observationsTimestamp;
        uint192 nativeFee;
        uint192 linkFee;
        uint32 expiresAt;
        int192 benchmarkPrice;
    }

    function decodeSignedReport(bytes memory _signedReportData)
        internal
        pure
        returns (SignedReportData memory _reportData)
    {
        (_reportData.context, _reportData.blob, _reportData.rawRs, _reportData.rawSs, _reportData.rawVs) =
            abi.decode(_signedReportData, (bytes32[3], bytes, bytes32[], bytes32[], bytes32));
    }

    function decodeReportBlob(bytes memory _reportBlob) internal pure returns (ReportData memory _reportData) {
        (
            _reportData.feedId,
            _reportData.validFromTimestamp,
            _reportData.observationsTimestamp,
            _reportData.nativeFee,
            _reportData.linkFee,
            _reportData.expiresAt,
            _reportData.benchmarkPrice
        ) = abi.decode(_reportBlob, (bytes32, uint32, uint32, uint192, uint192, uint32, int192));
    }
}

/// @title OracleWrapper
/// @author Umami Devs
/// @notice Contains core oracle logic
contract OracleWrapper is GlobalACL {
    error ZeroAddress();
    error InvalidPrice();
    error FailedDeviationCheck(uint256);
    error InvalidToken();
    error PriceOutsideTolerance();

    event UpdateTokenDetails(address indexed _token, TokenDetails _tokenDetails);

    struct TokenDetails {
        uint96 decimals;
        address chainlinkPriceFeed;
        bytes32 lloFeedId;
    }

    struct LLOConfiguration {
        IVerifierProxy verifierProxy;
        address feeManager;
        address rewardManager;
    }

    struct PriceDetails {
        uint32 validFrom;
        uint32 validTill;
        uint192 price;
        uint128 lastUpdatedBlockNumber;
        uint128 lastUpdatedBlockNumberL2;
        uint128 lastUpdatedBlockTimestamp;
        bytes32 feedId;
    }

    mapping(address => TokenDetails) tokenDetails;
    LLOConfiguration public lloConfiguration;
    address public immutable LINK;
    mapping(address => PriceDetails) lloPriceDetails;
    StorageViewer public storageViewer;
    uint256 public lloDeviationFactor;

    constructor(
        Auth _auth,
        StorageViewer viewer,
        address _verifierProxy,
        address _feeManager,
        address _rewardManager,
        address _link
    ) GlobalACL(_auth) {
        lloConfiguration = LLOConfiguration({
            verifierProxy: IVerifierProxy(_verifierProxy),
            feeManager: _feeManager,
            rewardManager: _rewardManager
        });
        LINK = _link;
        require(address(viewer) != address(0));
        storageViewer = viewer;
    }

    function updateViewer(StorageViewer viewer) external onlyConfigurator {
        require(address(viewer) != address(0));
        storageViewer = viewer;
    }

    function updateDeviationFactor(uint256 _newDeviationFactor) external onlyConfigurator {
        require(_newDeviationFactor < 1e18);
        lloDeviationFactor = _newDeviationFactor;
    }

    function updateTokenDetails(address _token, address _chainlinkPriceFeed, uint256 _decimals, bytes32 _lloFeedId)
        external
        onlyConfigurator
    {
        TokenDetails storage deets = tokenDetails[_token];
        deets.chainlinkPriceFeed = _chainlinkPriceFeed;
        // read decimals from chain if token contract is not empty and decimals arg passed is 0
        uint96 decimals = _decimals > 0 ? uint96(_decimals) : _token.code.length > 0 ? ERC20(_token).decimals() : 0;
        deets.decimals = decimals;
        deets.lloFeedId = _lloFeedId;
        emit UpdateTokenDetails(_token, deets);
    }

    function updateLLOConfiguration(address _verifierProxy, address _feeManager, address _rewardManager)
        external
        onlyConfigurator
    {
        lloConfiguration = LLOConfiguration({
            verifierProxy: IVerifierProxy(_verifierProxy),
            feeManager: _feeManager,
            rewardManager: _rewardManager
        });
    }

    function getChainlinkPrice(address _token) public view returns (uint256 _price) {
        TokenDetails storage deets = tokenDetails[_token];
        uint256 tokenDecimals = deets.decimals;
        uint256 priceDecimal;

        if (_token == GMX_V2_LTC_INDEX_TOKEN) {
            return _getLtcPrice();
        } else {
            address priceFeed = deets.chainlinkPriceFeed;
            if (priceFeed == address(0)) revert ZeroAddress();

            (, int256 price,,,) = IAggregatorV3Interface(priceFeed).latestRoundData();
            if (price < 0) revert InvalidPrice();
            _price = uint256(price);
            priceDecimal = IAggregatorV3Interface(priceFeed).decimals();
        }

        uint256 targetDecimals = 30;
        if (priceDecimal + tokenDecimals < targetDecimals) {
            _price = _price * (10 ** (targetDecimals - priceDecimal - tokenDecimals));
        } else {
            _price = _price / (10 ** (priceDecimal + tokenDecimals - targetDecimals));
        }
    }

    function getChainlinkPriceInternal(address _token) public view returns (uint256) {
        uint256 externalPrice = getChainlinkPrice(_token);
        TokenDetails storage deets = tokenDetails[_token];
        uint256 tokenDecimals = deets.decimals;
        uint256 oneToken = 10 ** tokenDecimals;
        return externalPrice * oneToken / 1e12;
    }

    function setAndGetLloPrice(address _token, bytes calldata _report)
        public
        validateSetPriceAuth
        returns (uint256 _price)
    {
        _price = _setAndGetPriceInternal(_token, _report);
    }

    function getLloPriceWithinL1Blocks(address _token) public view returns (uint256 _price) {
        if (_token == TOKEN_USDC_NATIVE) return getChainlinkPrice(_token);
        PriceDetails storage priceDeets = lloPriceDetails[_token];
        if (priceDeets.feedId == bytes32(0)) revert InvalidToken();
        uint256 minBlockNumber = block.number - storageViewer.getBlockTolerance();
        if (priceDeets.lastUpdatedBlockNumber < minBlockNumber) revert PriceOutsideTolerance();
        _price = priceDeets.price;
    }

    function getLloPriceWithinL2Blocks(address _token) public view returns (uint256 _price) {
        if (_token == TOKEN_USDC_NATIVE) return getChainlinkPrice(_token);
        PriceDetails storage priceDeets = lloPriceDetails[_token];
        if (priceDeets.feedId == bytes32(0)) revert InvalidToken();
        uint256 minBlockNumber = _getBlockNumber() - storageViewer.getBlockTolerance();
        if (priceDeets.lastUpdatedBlockNumberL2 < minBlockNumber) revert PriceOutsideTolerance();
        _price = priceDeets.price;
    }

    function getLloPriceWithinSeconds(address _token, uint256 _seconds) public view returns (uint256 _price) {
        if (_token == TOKEN_USDC_NATIVE) return getChainlinkPrice(_token);
        PriceDetails storage priceDeets = lloPriceDetails[_token];
        if (priceDeets.feedId == bytes32(0)) revert InvalidToken();
        uint256 minTimestamp = block.timestamp - _seconds;
        if (priceDeets.lastUpdatedBlockTimestamp < minTimestamp) revert PriceOutsideTolerance();
        _price = priceDeets.price;
    }

    /// @dev mostly a test util, this.call so it catches the mock
    function _getLloPrice18Decimals(address _token) public view returns (uint256 _price) {
        uint256 lloPrice = this.getLloPriceWithinL1Blocks(_token);
        TokenDetails storage deets = tokenDetails[_token];
        uint256 tokenDecimals = deets.decimals;
        uint256 oneToken = uint256(10) ** tokenDecimals;
        _price = lloPrice * oneToken / 1e12;
    }

    function _approveTokens(bytes memory _report) internal {
        LLOReportDecoder.SignedReportData memory signedReportData = LLOReportDecoder.decodeSignedReport(_report);
        LLOReportDecoder.ReportData memory reportData = LLOReportDecoder.decodeReportBlob(signedReportData.blob);
        ERC20(LINK).safeApprove(lloConfiguration.rewardManager, reportData.linkFee);
    }

    function _getBlockNumber() internal view returns (uint256 _blockNumber) {
        _blockNumber = IArbSys(ARBSYS).arbBlockNumber();
    }

    function _getLtcPrice() internal view returns (uint256 _price) {
        /// @dev return last LLO price
        _price = lloPriceDetails[GMX_V2_LTC_INDEX_TOKEN].price;
    }

    function _setAndGetPriceInternal(address _token, bytes memory _report) internal returns (uint256 _price) {
        _price = abi.decode(_report, (uint256));
        _checkPriceDeviation(_token, _price);
        lloPriceDetails[_token] = PriceDetails({
            validFrom: uint32(block.timestamp),
            validTill: uint32(block.timestamp + 5 minutes),
            price: uint192(_price),
            lastUpdatedBlockNumberL2: uint128(_getBlockNumber()),
            lastUpdatedBlockNumber: uint128(block.number),
            lastUpdatedBlockTimestamp: uint128(block.timestamp),
            feedId: bytes32(type(uint256).max)
        });
    }

    function _setAndGetPriceLlo(address _token, bytes memory _report) internal returns (uint256 _price) {
        bytes32 lloFeedId = tokenDetails[_token].lloFeedId;
        if (lloFeedId == bytes32(0)) revert InvalidToken();

        _approveTokens(_report);
        bytes memory verifiedData = lloConfiguration.verifierProxy.verify(_report);
        LLOReportDecoder.ReportData memory reportData = LLOReportDecoder.decodeReportBlob(verifiedData);
        if (reportData.benchmarkPrice < 0) revert InvalidPrice();
        if (reportData.feedId != lloFeedId) revert InvalidToken();
        _price = uint256(uint192(reportData.benchmarkPrice));
        lloPriceDetails[_token] = PriceDetails({
            validFrom: reportData.validFromTimestamp,
            validTill: reportData.expiresAt,
            price: uint192(_price),
            lastUpdatedBlockNumberL2: uint128(_getBlockNumber()),
            lastUpdatedBlockNumber: uint128(block.number),
            lastUpdatedBlockTimestamp: uint128(block.timestamp),
            feedId: lloFeedId
        });
    }

    function _checkPriceDeviation(address _token, uint256 _newPrice) internal {
        if (_token == GMX_V2_LTC_INDEX_TOKEN) {
            return; // skip for LTC due to lack of on-chain oracle
        }
        uint256 externalPrice = getChainlinkPrice(_token);
        uint256 deviation = _newPrice * 1e18 / externalPrice;
        if (deviation < 1e18 - lloDeviationFactor || deviation > 1e18 + lloDeviationFactor) {
            revert FailedDeviationCheck(deviation);
        }
    }

    /// @dev validate the set price call
    modifier validateSetPriceAuth() {
        require(
            AUTH.hasRole(AGGREGATE_VAULT_ROLE, msg.sender) || AUTH.hasRole(REQUEST_HANDLER, msg.sender)
                || AUTH.hasRole(KEEPER_ROLE, msg.sender),
            "OracleWrapper: !authorized"
        );
        _;
    }
}
