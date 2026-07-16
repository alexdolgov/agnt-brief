// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.23;

import "Upgradeable.sol";

contract FungifyPriceFeed is Upgradeable {
    event RateUpdated(int256 oldRate, int256 newRate, int256 inputRate);
    error UnderTimeAndPriceDeviationMinimums();
    error OverPriceDeviationMaximum();
    error Unauthorized();
    error AdditionOverflow();
    error SubtractionOverflow();
    error LessThanTwoPeriods();

    // --- Auth ---
    mapping (address => uint256) public wards;
    function rely(address guy) external onlyOwner { wards[guy] = 1; }
    function deny(address guy) external onlyOwner { wards[guy] = 0; }
    modifier auth {
        if (wards[msg.sender] == 0) {
            revert Unauthorized();
        }
        _;
    }

    int256 public constant ONE_IN_BIP = 10000;
    uint8 public immutable _decimals;

    int256 public latestAnswer;
    uint256 public latestUpdateTime;

    // Variables for price updating assertions
    int256 public minPriceDeviationBip; // Defined in basis points: 1 Bip = .01%
    uint256 public stalePriceTime;

    int256 public emaPeriods; // averaging periods for EMA calculation
    int public maxPriceDeviationBip; // Defined in basis points: 1 Bip = .01%

    constructor(uint8 decimals_) {
        _decimals = decimals_;
    }

    function initialize(int256 startingRate_) external {
        if (msg.sender != owner()) {
            revert Unauthorized();
        }

        latestAnswer = startingRate_;
        latestUpdateTime = block.timestamp;
        stalePriceTime = 7200;
        minPriceDeviationBip = 200;
        maxPriceDeviationBip = 3500;
        emaPeriods = 3;
        emit RateUpdated(0, startingRate_, startingRate_);
    }

    function decimals() public view returns (uint8) {
        return _decimals;
    }

    function latestRoundData()
        public
        view
        returns (
            uint80 roundId,
            int256 answer,
            uint256 startedAt,
            uint256 updatedAt,
            uint80 answeredInRound
        ) {
        return (0, latestAnswer, 0, latestUpdateTime, 0);
    }

    // Verifies if a newRate is within the priceDeviationBip of oldRate
    function underMinPriceDeviation(int256 newRate, int256 oldRate) public view returns(bool) {

        int256 allowedDeviation = oldRate * minPriceDeviationBip / ONE_IN_BIP;

        if (newRate > oldRate + allowedDeviation || newRate < oldRate - allowedDeviation) {
            return false;
        } else {
            return true;
        }
    }

    // Verifies that a newRate is within the maxPriceDeviationBip of oldRate
    function overMaxPriceDeviation(int256 newRate, int256 oldRate) public view returns(bool) {

        int allowedDeviation = oldRate * maxPriceDeviationBip / ONE_IN_BIP;

        if (newRate > oldRate + allowedDeviation || newRate < oldRate - allowedDeviation) {
            return true;
        } else {
            return false;
        }
    }

    function updateRate(int256 newRate_) public auth {

        int256 oldEMA = latestAnswer;

        if (overMaxPriceDeviation(newRate_, oldEMA)) {
            revert OverPriceDeviationMaximum();
        }
        
        // Performs Price Update Minimum Deviation Time and Price Checks
        if (underMinPriceDeviation(newRate_, oldEMA) && block.timestamp < latestUpdateTime + stalePriceTime) {
            revert UnderTimeAndPriceDeviationMinimums();
        }

        int256 newEMA = updateEMA(oldEMA, newRate_);

        latestAnswer = newEMA;
        latestUpdateTime = block.timestamp;
        emit RateUpdated(oldEMA, newEMA, newRate_);
    }

    function updateEMA(int256 currentEMA, int256 newValue) internal view returns (int256) {
        /*
            Multiplier: 2 / (emaPeriods + 1)
            EMA: (LastestValue - PreviousEMA) * Multiplier + PreviousEMA
        */

        int256 emaPeriods_ = emaPeriods;

        int256 newEMA =
            sub(
                add(
                    newValue * 2 / (emaPeriods_ + 1),
                    currentEMA
                ),
                currentEMA * 2 / (emaPeriods_ + 1)
            );

        return newEMA;
    }

    function setStalePriceTime(uint _stalePriceTime) external onlyOwner {
        stalePriceTime = _stalePriceTime;
    }

    // Defined in basis points: 1 Bip = .01%
    function setMinPriceDeviationBip(int _minPriceDeviationBip) external onlyOwner {
        minPriceDeviationBip = _minPriceDeviationBip;
    }

    // Defined in basis points: 1 Bip = .01%
    function setMaxPriceDeviationBip(int _maxPriceDeviationBip) external onlyOwner {
        maxPriceDeviationBip = _maxPriceDeviationBip;
    }

    function setEMAPeriods(int _emaPeriods) external onlyOwner {
        if (_emaPeriods < 2) {
            revert LessThanTwoPeriods();
        }
        emaPeriods = _emaPeriods;
    }

    function adminUpdateRate(int256 newRate_) external onlyOwner {
        int256 oldRate = latestAnswer;
        latestAnswer = newRate_;
        latestUpdateTime = block.timestamp;
        emit RateUpdated(oldRate, newRate_, newRate_);
    }

    function add(int256 a, int256 b) internal pure returns (int256) {
        int256 c;
        unchecked { c = a + b; }
        if (!((b >= 0 && c >= a) || (b < 0 && c < a))) {
            revert AdditionOverflow();
        }

        return c;
    }
    function sub(int256 a, int256 b) internal pure returns (int256) {
        int256 c;
        unchecked { c = a - b; }
        if (!((b >= 0 && c <= a) || (b < 0 && c > a))) {
            revert SubtractionOverflow();
        }

        return c;
    }
}
