// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {BeaconProxy} from "@openzeppelin/contracts/proxy/beacon/BeaconProxy.sol";
import {UpgradeableBeacon} from "@openzeppelin/contracts/proxy/beacon/UpgradeableBeacon.sol";

import {Common} from "src/interfaces/Common.sol";
import {IRewardManager} from "src/interfaces/IRewardManager.sol";
import {IVerifierProxy} from "src/interfaces/IVerifierProxy.sol";
import {IFeeManager} from "src/interfaces/IFeeManager.sol";

import {IPriceFeedFactory} from "src/interfaces/IPriceFeedFactory.sol";
import {CustomPriceFeed} from "./CustomPriceFeed.sol";

contract PriceFeedFactory is UpgradeableBeacon, IPriceFeedFactory {
    using SafeERC20 for IERC20;

    IVerifierProxy public immutable verifierProxy;

    mapping(bytes32 feedId => address priceFeed) public priceFeeds;
    mapping(address priceFeed => bytes32 feedId) public feedIds;

    event PriceFeedCreated(bytes32 indexed feedId, address indexed priceFeed);

    error FeeRequired(uint256 feeAmount); // Thrown when balance of factory is not enough to pay verification fee.
    error InvalidReportVersion(uint16 version); // Thrown when an unsupported report version is provided to verifyReport.
    error InvalidFeedId(); // This error is thrown whenever a report is signed with a different feedId than the feedId of the price feed
    error ExistingPriceFeed(); // Thrown when creating a new price feed with feedId created previously
    error InvalidVerifierProxy(); // Thrown when deploying with zero proxyVerifier

    constructor(address initialOwner, address _verifierProxy)
        UpgradeableBeacon(address(new CustomPriceFeed()), initialOwner)
    {
        if (_verifierProxy == address(0)) revert InvalidVerifierProxy();
        verifierProxy = IVerifierProxy(_verifierProxy);
    }

    function verifySignedReport(bytes calldata signedReport, bool isNativeFee) external returns (BasicReport memory) {
        // Decode signed report
        (, bytes memory reportData) = abi.decode(signedReport, (bytes32[3], bytes));

        // Extract report version from reportData
        uint16 reportVersion = (uint16(uint8(reportData[0])) << 8) | uint16(uint8(reportData[1]));

        // Validate report version
        if (reportVersion != 3 && reportVersion != 4) {
            revert InvalidReportVersion(uint8(reportVersion));
        }

        // Extract feed Id
        bytes32 reportFeedId = bytes32(reportData);
        if (reportFeedId != feedIds[msg.sender]) revert InvalidFeedId();

        // Handle billing
        IFeeManager feeManager = IFeeManager(verifierProxy.s_feeManager());
        IRewardManager rewardManager = IRewardManager(feeManager.i_rewardManager());

        // Fees can be paid in either LINK (i_linkAddress()) or native coin ERC20-wrapped version (i_nativeAddress())
        address feeTokenAddress = isNativeFee ? feeManager.i_nativeAddress() : feeManager.i_linkAddress();
        (Common.Asset memory fee,,) = feeManager.getFeeAndReward(address(this), reportData, feeTokenAddress);

        if (fee.amount > 0) {
            if (IERC20(feeTokenAddress).balanceOf(address(this)) < fee.amount) {
                revert FeeRequired(fee.amount);
            } else {
                IERC20(feeTokenAddress).forceApprove(
                    isNativeFee ? address(feeManager) : address(rewardManager), fee.amount
                );
            }
        }

        // Verify the report
        bytes memory verifiedReportData = verifierProxy.verify(signedReport, abi.encode(feeTokenAddress));

        // Decode verified report data into BasicReport struct
        BasicReport memory verifiedReport = abi.decode(verifiedReportData, (BasicReport));

        return verifiedReport;
    }

    function createPriceFeed(bytes32 feedId, uint8 decimals) external onlyOwner returns (CustomPriceFeed) {
        if (priceFeeds[feedId] != address(0)) revert ExistingPriceFeed();

        address feedProxy = address(
            new BeaconProxy(
                address(this), abi.encodeWithSelector(CustomPriceFeed.initialize.selector, feedId, decimals)
            )
        );

        priceFeeds[feedId] = feedProxy;
        feedIds[feedProxy] = feedId;

        emit PriceFeedCreated(feedId, feedProxy);

        return CustomPriceFeed(feedProxy);
    }

    function withdrawERC20(address token, uint256 amount, address receiver) external onlyOwner {
        IERC20(token).safeTransfer(receiver, amount);
    }
}
