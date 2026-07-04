// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import {FixedPointMathLib} from "solady/utils/FixedPointMathLib.sol";
import {IPriceFeed} from "../interfaces/IPriceFeed.sol";

struct PegIRMStorage {
    IPriceFeed priceFeed;
    uint256 lastUpdate;
    uint256 interestRateSnapshot;
    uint256 interestRatePerSecondSnapshot;
    uint256 interestCoefficient;
    uint256 maxInterestRateBps;
    uint256 updatePeriod;
}

library PegIRM {
    using PegIRM for PegIRMStorage;
    using FixedPointMathLib for uint256;

    bytes32 internal constant SLOT = keccak256(bytes("hyperstable.storage.pegIRM"));
    uint256 internal constant ONE_DOLAR = 1e18;
    uint256 internal constant ONE_YEAR = 365 days;

    function getStorage() internal pure returns (PegIRMStorage storage s) {
        bytes32 slot = SLOT;
        assembly {
            s.slot := slot
        }
    }

    function init(address _priceFeed, uint256 _interestRateCoefficient) internal {
        init(getStorage(), _priceFeed, _interestRateCoefficient);
    }

    function init(PegIRMStorage storage $, address _priceFeed, uint256 _interestRateCoefficient) internal {
        $.setPriceFeed(_priceFeed);
        $.setInterestCoefficient(_interestRateCoefficient);
        $.setMaxInterestRateBps(0.1e18);
        $.interestRate(true);
        $.setUpdatePeriod(6 hours);
    }

    function setPriceFeed(address _priceFeed) internal {
        setPriceFeed(getStorage(), _priceFeed);
    }

    function setPriceFeed(PegIRMStorage storage $, address _priceFeed) internal {
        $.priceFeed = IPriceFeed(_priceFeed);
        $.interestRate(true);
    }

    function setUpdatePeriod(uint256 _newUpdatePeriod) internal {
        getStorage().setUpdatePeriod(_newUpdatePeriod);
    }

    function setUpdatePeriod(PegIRMStorage storage $, uint256 _newUpdatePeriod) internal {
        $.updatePeriod = _newUpdatePeriod;
    }

    function setInterestCoefficient(uint256 _interestCoefficient) internal returns (PegIRMStorage storage) {
        return getStorage().setInterestCoefficient(_interestCoefficient);
    }

    function setInterestCoefficient(PegIRMStorage storage s, uint256 _interestCoefficient)
        internal
        returns (PegIRMStorage storage)
    {
        s.interestCoefficient = _interestCoefficient;
        return s;
    }

    function interestRate(bool _forceUpdate) internal returns (uint256) {
        return interestRate(getStorage(), _forceUpdate);
    }

    function interestRateView() internal view returns (uint256) {
        return interestRateView(getStorage());
    }

    function setMaxInterestRateBps(uint256 _maxInterestRateBps) internal {
        getStorage().setMaxInterestRateBps(_maxInterestRateBps);
    }

    function setMaxInterestRateBps(PegIRMStorage storage s, uint256 _maxInterestRateBps) internal {
        s.maxInterestRateBps = _maxInterestRateBps;
    }

    function interestRateView(PegIRMStorage storage s) internal view returns (uint256) {
        if (block.timestamp < s.lastUpdate + s.updatePeriod) {
            return s.interestRatePerSecondSnapshot;
        }

        uint256 price = s.priceFeed.fetchPrice();

        uint256 delta = ONE_DOLAR >= price ? ONE_DOLAR - price : price - ONE_DOLAR;

        uint256 adjustedInterest = delta.mulWad(s.interestCoefficient);

        uint256 newInterestRate;

        if (price >= ONE_DOLAR) {
            uint256 interestRateSnapshot = s.interestRateSnapshot;
            newInterestRate = adjustedInterest <= interestRateSnapshot ? interestRateSnapshot - adjustedInterest : 0;
        } else {
            newInterestRate = adjustedInterest + s.interestRateSnapshot;
        }

        newInterestRate = newInterestRate.clamp(0, s.maxInterestRateBps);

        return newInterestRate / ONE_YEAR;
    }

    function interestRate(PegIRMStorage storage s, bool _forceUpdate) internal returns (uint256) {
        if (!_forceUpdate) {
            if (block.timestamp < s.lastUpdate + s.updatePeriod) {
                return s.interestRatePerSecondSnapshot;
            }
        }

        uint256 price = s.priceFeed.fetchPrice();

        uint256 delta = ONE_DOLAR >= price ? ONE_DOLAR - price : price - ONE_DOLAR;

        uint256 adjustedInterest = delta.mulWad(s.interestCoefficient);

        uint256 newInterestRate;

        if (price >= ONE_DOLAR) {
            uint256 interestRateSnapshot = s.interestRateSnapshot;
            newInterestRate = adjustedInterest <= interestRateSnapshot ? interestRateSnapshot - adjustedInterest : 0;
        } else {
            newInterestRate = adjustedInterest + s.interestRateSnapshot;
        }

        newInterestRate = newInterestRate.clamp(0, s.maxInterestRateBps);

        s.lastUpdate = block.timestamp;

        s.interestRateSnapshot = newInterestRate;

        uint256 interestRatePerSecond = newInterestRate / ONE_YEAR;

        s.interestRatePerSecondSnapshot = interestRatePerSecond;

        return interestRatePerSecond;
    }
}
