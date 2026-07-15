// SPDX-License-Identifier: MIT
pragma solidity >=0.8.5;

import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "../interfaces/IFeeCounter.sol";

contract FeeCounter is OwnableUpgradeable, IFeeCounter {
    uint256 public lpFee;
    uint256 public baseVolumeFeeRate;
    uint256 public lambda;
    uint256 public volumeFeeMaximum;
    uint256 public dynamicFeeThreshold;
    uint256 public dynamicFeeMaximum;
    uint256 public dynamicFeePow;
    uint256 public WAD;

    mapping(uint256 => uint256) public volumeFeeRate;

    event VolumeFeeRateSet(uint256 token, uint256 rate);
    event LpFeeSet(uint256 lpFee);
    event SetDynamicFeeParameters(uint256 dynamicFeeThreshold, uint256 dynamicFeeMaximum, uint256 dynamicFeePow);
    event SetVolumeFeeParameters(uint256 baseVolumeFeeRate, uint256 lambda);

    function initialize(
        uint256 _lpFee,
        uint256 _baseVolumeFeeRate,
        uint256 _lambda,
        uint256 _volumeFeeMaximum,
        uint256 _dynamicFeeThreshold,
        uint256 _dynamicFeeMaximum,
        uint256 _dynamicFeePow
    ) public virtual initializer {
        __Ownable_init(msg.sender);
        lpFee = _lpFee;
        baseVolumeFeeRate = _baseVolumeFeeRate;
        lambda = _lambda;
        volumeFeeMaximum = _volumeFeeMaximum;
        dynamicFeeThreshold = _dynamicFeeThreshold;
        dynamicFeeMaximum = _dynamicFeeMaximum;
        dynamicFeePow = _dynamicFeePow;

        WAD = 1e18;
    }

    function setLpFee(uint256 _lpFee) external onlyOwner {
        lpFee = _lpFee;
        emit LpFeeSet(_lpFee);
    }

    function setVolumeFeeRate(uint256 _tokenId, uint256 _volumeFeeRate) external onlyOwner {
        volumeFeeRate[_tokenId] = _volumeFeeRate;
        emit VolumeFeeRateSet(_tokenId, _volumeFeeRate);
    }

    function setDynamicFeeParameters(
        uint256 _newDynamicFeeThreshold,
        uint256 _newDynamicFeeMaximum,
        uint256 _newDynamicFeePow
    ) external onlyOwner
    {
        dynamicFeeThreshold = _newDynamicFeeThreshold;
        dynamicFeeMaximum = _newDynamicFeeMaximum;
        dynamicFeePow = _newDynamicFeePow;
        emit SetDynamicFeeParameters(_newDynamicFeeThreshold, _newDynamicFeeMaximum, _newDynamicFeePow);
    }

    function setVolumeFeeParameters(
        uint256 _baseVolumeFeeRate,
        uint256 _lambda
    ) external onlyOwner
    {
        baseVolumeFeeRate = _baseVolumeFeeRate;
        lambda = _lambda;
        emit SetVolumeFeeParameters(_baseVolumeFeeRate, _lambda);
    }

    function calculateInputFee(
        uint256 id,
        uint256 liability,
        uint256 cashBefore,
        uint256 cashAfter
    ) external view override returns (Fees memory fees) {
        fees.baseFee = volumeFeeRate[id] != 0 ? volumeFeeRate[id] : baseVolumeFeeRate;
        {

            uint256 rBefore;
            if (cashBefore < liability) {
                rBefore = liability * WAD / cashBefore;
            } else {
                rBefore = cashBefore * WAD / liability;
            }
            uint256 rAfter;
            if (cashAfter < liability) {
                rAfter = liability * WAD / cashAfter;
            } else {
                rAfter = cashAfter * WAD / liability;
            }

            if (rAfter < rBefore) {
                fees.volumeFee = fees.baseFee * rAfter * WAD / rBefore / WAD * (WAD - lambda) / WAD;
            } else if (rAfter > rBefore) {
                fees.volumeFee = fees.baseFee * rAfter * WAD / rBefore / WAD;
            } else {
                fees.volumeFee =  fees.baseFee;
            }

            fees.volumeFee = fees.volumeFee < volumeFeeMaximum ? fees.volumeFee : volumeFeeMaximum;
        }

        {

            uint256 fromLiabilityToCash = liability * WAD / cashAfter;

            fees.poolFee = fromLiabilityToCash > dynamicFeeThreshold
            ? 0
            : dynamicFeeMaximum * WAD **  dynamicFeePow / fromLiabilityToCash ** dynamicFeePow
            - dynamicFeeMaximum * WAD **  dynamicFeePow / dynamicFeeThreshold ** dynamicFeePow;

            fees.poolFee = fees.poolFee / 100;
            fees.poolFee += lpFee;
        }

    }

    function calculateOutputFee(
        uint256 id,
        uint256 liability,
        uint256 cashBefore,
        uint256 cashAfter
    ) external view override returns (Fees memory fees) {
        fees.baseFee = volumeFeeRate[id] != 0 ? volumeFeeRate[id] : baseVolumeFeeRate;
        {
            uint256 rBefore;
            if (cashBefore < liability) {
                rBefore = liability * WAD / cashBefore;
            } else {
                rBefore = cashBefore * WAD / liability;
            }
            uint256 rAfter;
            if (cashAfter < liability) {
                rAfter = liability * WAD / cashAfter;
            } else {
                rAfter = cashAfter * WAD / liability;
            }

            if (rAfter < rBefore) {
                fees.volumeFee = fees.baseFee * rAfter * WAD / rBefore / WAD * (WAD - lambda) / WAD;
            } else if (rAfter > rBefore) {
                fees.volumeFee = fees.baseFee * rAfter * WAD / rBefore / WAD ;
            } else {
                fees.volumeFee =  fees.baseFee;
            }

            fees.volumeFee = fees.volumeFee < volumeFeeMaximum ? fees.volumeFee : volumeFeeMaximum;
        }

        {

            uint256 fromCashToLiability = cashAfter * WAD / liability;

            fees.poolFee = fromCashToLiability > dynamicFeeThreshold
            ? 0
            : dynamicFeeMaximum * WAD **  dynamicFeePow / fromCashToLiability ** dynamicFeePow
            - dynamicFeeMaximum * WAD **  dynamicFeePow / dynamicFeeThreshold ** dynamicFeePow;

            fees.poolFee  = fees.poolFee  / 100;
            fees.poolFee += lpFee;
            }

    }
}
