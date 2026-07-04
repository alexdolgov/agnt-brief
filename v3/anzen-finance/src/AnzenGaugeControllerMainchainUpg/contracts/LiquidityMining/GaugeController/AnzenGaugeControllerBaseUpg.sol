// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.23;

import "../../core/libraries/math/PMath.sol";
import "../../core/libraries/Errors.sol";
import "../../core/libraries/BoringOwnableUpgradeable.sol";

import "../libraries/WeekMath.sol";

import "../../interfaces/IAGaugeController.sol";
import "../../interfaces/IAMarket.sol";

import "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/proxy/utils/UUPSUpgradeable.sol";

/**
 * @dev Gauge controller provides no write function to any party other than voting controller
 * @dev Gauge controller will receive (lpTokens[], anzen per sec[]) from voting controller and
 * set it directly to contract state
 * @dev All of the core data in this function are set to private to prevent unintended assignments
 * on inheriting contracts
 */

abstract contract AnzenGaugeControllerBaseUpg is IAGaugeController, BoringOwnableUpgradeable, UUPSUpgradeable {
    using SafeERC20 for IERC20;
    using PMath for uint256;

    struct MarketRewardData {
        uint128 anzenPerSec;
        uint128 accumulatedAnzen;
        uint128 lastUpdated;
        uint128 incentiveEndsAt;
    }

    uint128 internal constant WEEK = 1 weeks;

    // solhint-disable immutable-vars-naming
    address public immutable anzen;

    mapping(address => MarketRewardData) public rewardData;
    mapping(uint128 => bool) public epochRewardReceived;

    mapping(address => bool) public isValidMarket;
    uint256[99] private __gap;

    modifier onlyAnzenMarket() {
        if (isValidMarket[msg.sender]) {
            _;
        } else {
            revert Errors.GCNotAnzenMarket(msg.sender);
        }
    }

    constructor(address _anzen) {
        anzen = _anzen;
    }

    /**
     * @notice claim the rewards allocated by gaugeController
     * @dev only anzen market can call this
     */
    function redeemMarketReward() external onlyAnzenMarket {
        address market = msg.sender;
        rewardData[market] = _getUpdatedMarketReward(market);

        uint256 amount = rewardData[market].accumulatedAnzen;
        if (amount != 0) {
            rewardData[market].accumulatedAnzen = 0;
            IERC20(anzen).safeTransfer(market, amount);
        }

        emit MarketClaimReward(market, amount);
    }

    function fundAnzen(uint256 amount) external {
        IERC20(anzen).safeTransferFrom(msg.sender, address(this), amount);
    }

    function withdrawAnzen(uint256 amount) external onlyOwner {
        IERC20(anzen).safeTransfer(msg.sender, amount);
    }

    function addMarket(address market) external onlyOwner {
        isValidMarket[market] = true;
        emit AddMarket(market);
    }

    function removeMarket(address market) external onlyOwner {
        isValidMarket[market] = false;
        emit RemoveMarket(market);
    }

    /**
     * @notice receive voting results from VotingController. Only the first message for a timestamp
     * will be accepted, all subsequent messages will be ignored
     */
    function _receiveVotingResults(uint128 wTime, address[] memory markets, uint256[] memory anzenAmounts) internal {
        if (markets.length != anzenAmounts.length) revert Errors.ArrayLengthMismatch();

        if (epochRewardReceived[wTime]) return; // only accept the first message for the wTime
        epochRewardReceived[wTime] = true;

        for (uint256 i = 0; i < markets.length; ++i) {
            _addRewardsToMarket(markets[i], anzenAmounts[i].Uint128());
        }

        emit ReceiveVotingResults(wTime, markets, anzenAmounts);
    }

    /**
     * @notice merge the additional rewards with the existing rewards
     * @dev this function will calc the total amount of Anzen that hasn't been factored into
     * accumulatedAnzen yet, combined them with the additional anzenAmount, then divide them
     * equally over the next one week
     */
    function _addRewardsToMarket(address market, uint128 anzenAmount) internal {
        MarketRewardData memory rwd = _getUpdatedMarketReward(market);
        uint128 leftover = (rwd.incentiveEndsAt - rwd.lastUpdated) * rwd.anzenPerSec;
        uint128 newSpeed = (leftover + anzenAmount) / WEEK;

        rewardData[market] = MarketRewardData({
            anzenPerSec: newSpeed,
            accumulatedAnzen: rwd.accumulatedAnzen,
            lastUpdated: uint128(block.timestamp),
            incentiveEndsAt: uint128(block.timestamp) + WEEK
        });

        emit UpdateMarketReward(market, newSpeed, uint128(block.timestamp) + WEEK);
    }

    /**
     * @notice get the updated state of the market, to the current time with all the undistributed
     * Anzen distributed to the accumulatedAnzen
     * @dev expect to update accumulatedAnzen & lastUpdated in MarketRewardData
     */
    function _getUpdatedMarketReward(address market) internal view returns (MarketRewardData memory) {
        MarketRewardData memory rwd = rewardData[market];
        uint128 newLastUpdated = uint128(PMath.min(uint128(block.timestamp), rwd.incentiveEndsAt));
        rwd.accumulatedAnzen += rwd.anzenPerSec * (newLastUpdated - rwd.lastUpdated);
        rwd.lastUpdated = newLastUpdated;
        return rwd;
    }

    function _authorizeUpgrade(address) internal virtual override onlyOwner {}
}
