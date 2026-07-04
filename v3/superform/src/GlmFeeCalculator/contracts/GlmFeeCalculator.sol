// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";

import "./interfaces/IGlmFeeCalculator.sol";

import "solmate/src/utils/FixedPointMathLib.sol";

contract GlmFeeCalculator is OwnableUpgradeable, IGlmFeeCalculator {
    using FixedPointMathLib for uint256;

    uint256 public baseFee; // e.g., 0.01 * PRECISION for 1%
    uint256 public quadraticCoeff; // Coefficient for quadratic term
    uint256 public linearCoeff; // Coefficient for linear term
    uint256 public constantCoeff; // Constant term

    uint256[50] __gaps;

    /*//////////////////////////////////////////////////////////////
                            INIT FUNCTIONS
    //////////////////////////////////////////////////////////////*/
    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize() public initializer {
        __Ownable_init();
    }

    function setBaseFee(uint256 _baseFee) external onlyOwner {
        require(_baseFee < 40000 * 1e12);
        baseFee = _baseFee;
        emit BaseFeeUpdated(_baseFee);
    }

    function setCoefficients(uint256 _quadraticCoeff, uint256 _linearCoeff, uint256 _constantCoeff) external onlyOwner {
        require(_quadraticCoeff < 80000 * 1e12);
        require(_linearCoeff < 2000 * 1e12);
        require(_constantCoeff < 400 * 1e12);
        quadraticCoeff = _quadraticCoeff;
        linearCoeff = _linearCoeff;
        constantCoeff = _constantCoeff;

        emit CoefficientsUpdated(_quadraticCoeff, _linearCoeff, _constantCoeff);
    }

    function calculateAggressiveFee(uint256 deviation) external view returns (uint256) {
        // Calculate fee using the quadratic formula
        uint256 formattedDeviation = deviation / 1e12;
        uint256 fee = quadraticCoeff.mulWadDown(formattedDeviation.mulWadDown(formattedDeviation)) + // a * deviation^2
            linearCoeff.mulWadDown(formattedDeviation) + // b * deviation
            constantCoeff; // + c

        //@note output: 0.107 * 1e18 =
        return fee.mulWadDown(baseFee) * 1e5;
    }
}
