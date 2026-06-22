// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {SafeCast} from "@openzeppelin/contracts/utils/math/SafeCast.sol";
import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";

import {IPriceFeedFactory} from "src/interfaces/IPriceFeedFactory.sol";
import {CustomPriceFeedState} from "./CustomPriceFeedState.sol";

contract CustomPriceFeed is CustomPriceFeedState, Initializable {
    using SafeERC20 for IERC20;

    IPriceFeedFactory public immutable factory;

    event PriceTransmit(uint80 indexed round, int192 indexed price); // Event emitted when a report is successfully verified and transmitted.

    error InvalidRoundData(); // Thrown when the round data is invalid

    constructor() {
        factory = IPriceFeedFactory(msg.sender);
        _disableInitializers();
    }

    function initialize(bytes32 feedId_, uint8 decimals_) external initializer {
        require(feedId_ != bytes32(0));
        require(decimals_ != 0);
        _setFeedId(feedId_);
        _setDecimals(decimals_);
    }

    function transmit(bytes calldata signedReport, bool isNativeFee) external {
        IPriceFeedFactory.BasicReport memory verifiedReport = factory.verifySignedReport(signedReport, isNativeFee);
        _validateReportTimestamp(verifiedReport);
        uint80 round = _transmit(
            verifiedReport.price,
            SafeCast.toUint32(block.timestamp),
            verifiedReport.validFromTimestamp,
            verifiedReport.observationsTimestamp
        );
        emit PriceTransmit(round, verifiedReport.price);
    }

    function _validateReportTimestamp(IPriceFeedFactory.BasicReport memory report) internal view {
        uint256 latestRoundOsTs = getRoundTransmission(latestRound()).observationsTimestamp;
        if (
            report.validFromTimestamp > block.timestamp || report.observationsTimestamp < block.timestamp
                || report.observationsTimestamp <= latestRoundOsTs
        ) {
            revert InvalidRoundData();
        }
    }

    function latestAnswer() external view returns (int256) {
        return int256(getRoundTransmission(latestRound()).answer);
    }

    function latestRoundData()
        external
        view
        returns (uint80 roundId, int256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound)
    {
        uint80 _latestRound = latestRound();
        Transmission memory roundData = getRoundTransmission(_latestRound);
        roundId = _latestRound;
        answer = int256(roundData.answer);
        startedAt = roundData.validFromTimestamp;
        updatedAt = roundData.updatedAt;
        answeredInRound = _latestRound;
    }
}
