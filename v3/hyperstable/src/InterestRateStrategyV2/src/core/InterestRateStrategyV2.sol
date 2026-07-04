// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import {UUPSUpgradeable} from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import {OwnableUpgradeable} from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import {FixedPointMathLib} from "solady/utils/FixedPointMathLib.sol";
import {AdaptiveIRM, AdaptiveIRMStorage} from "../libraries/AdaptiveIRM.sol";
import {ManualIRM, ManualIRMStorage} from "../libraries/ManualIRM.sol";
import {PegIRM, PegIRMStorage} from "../libraries/PegIRM.sol";
import {IInterestRateStrategy} from "../interfaces/IInterestRateStrategy.sol";
import {IPositionManager} from "../interfaces/IPositionManager.sol";
import {IPriceFeed} from "../interfaces/IPriceFeed.sol";
import {IVault} from "../interfaces/IVault.sol";
import {Ownable} from "solady/auth/Ownable.sol";

contract InterestRateStrategyV2 is OwnableUpgradeable, UUPSUpgradeable, IInterestRateStrategy {
    using FixedPointMathLib for int256;
    using FixedPointMathLib for uint256;
    using AdaptiveIRM for AdaptiveIRMStorage;
    using PegIRM for PegIRMStorage;
    using ManualIRM for ManualIRMStorage;

    address public positionManagerAddress;

    event VaultRegistered(uint8 indexed vaultAddress, bytes registerData);

    error OnlyPositionManager();

    constructor() {
        _disableInitializers();
    }

    function initialize(bytes memory) external reinitializer(2) {}

    function registerVault(uint8 _vaultId, bytes memory _registerData) external {
        _onlyPositionManager();

        (uint256 targetUtilization) = abi.decode(_registerData, (uint256));

        AdaptiveIRMStorage storage adaptiveIRM = AdaptiveIRM.getStorage();

        IPositionManager.VaultData memory vaultData = IPositionManager(positionManagerAddress).getVault(_vaultId);

        adaptiveIRM.setTargetUtilization(_vaultId, targetUtilization);

        (, int256 end) = adaptiveIRM.interestRate(_vaultId, 0, 0, vaultData.MCR);

        adaptiveIRM.updateInterestRateAtTarget(_vaultId, end);

        emit VaultRegistered(_vaultId, _registerData);
    }

    function interestRate(uint8 _vaultId) external returns (uint256) {
        _onlyPositionManager();

        IPositionManager.VaultData memory vaultData = IPositionManager(positionManagerAddress).getVault(_vaultId);

        uint256 collateralValue = IVault(vaultData.addr).sharePrice().mulWad(vaultData.collateralSnapshot);

        AdaptiveIRMStorage storage adaptiveIRM = AdaptiveIRM.getStorage();

        (uint256 adaptiveInterestRate, int256 end) =
            adaptiveIRM.interestRate(_vaultId, collateralValue, vaultData.debtSnapshot, vaultData.MCR);

        adaptiveIRM.updateInterestRateAtTarget(_vaultId, end);

        uint256 pegInterestRate = PegIRM.interestRate(false);

        uint256 manualInterestRate = ManualIRM.interestRate();

        return adaptiveInterestRate + pegInterestRate + manualInterestRate;
    }

    function interestRateView(uint8 _vaultId) external view returns (uint256) {
        IPositionManager.VaultData memory vaultData = IPositionManager(positionManagerAddress).getVault(_vaultId);

        uint256 collateralValue = IVault(vaultData.addr).sharePrice().mulWad(vaultData.collateralSnapshot);

        (uint256 adaptiveInterestRate,) =
            AdaptiveIRM.interestRate(_vaultId, collateralValue, vaultData.debtSnapshot, vaultData.MCR);

        uint256 pegInterestRate = PegIRM.interestRateView();

        uint256 manualInterestRate = ManualIRM.interestRate();

        return adaptiveInterestRate + pegInterestRate + manualInterestRate;
    }

    function adaptiveIRMUtilization(uint8 _vaultId) external view returns (int256) {
        IPositionManager.VaultData memory vaultData = IPositionManager(positionManagerAddress).getVault(_vaultId);

        uint256 collateralValue = IVault(vaultData.addr).sharePrice().mulWad(vaultData.collateralSnapshot);
        uint256 debt = IPositionManager(positionManagerAddress).vaultDebt(_vaultId);

        int256 utilization = int256(debt > 0 ? debt.divWad(collateralValue) : 0).sDivWad(
            int256(1e18).sDivWad(int256(vaultData.MCR))
        ).clamp(0, 1e18);

        return utilization;
    }

    function interestRates(uint8 _vaultId) external view returns (uint256, uint256, uint256) {
        IPositionManager.VaultData memory vaultData = IPositionManager(positionManagerAddress).getVault(_vaultId);

        uint256 collateralValue = IVault(vaultData.addr).sharePrice().mulWad(vaultData.collateralSnapshot);

        (uint256 adaptiveInterestRate,) =
            AdaptiveIRM.interestRate(_vaultId, collateralValue, vaultData.debtSnapshot, vaultData.MCR);

        uint256 pegInterestRate = PegIRM.interestRateView();

        uint256 manualInterestRate = ManualIRM.interestRate();

        return (adaptiveInterestRate, pegInterestRate, manualInterestRate);
    }

    function setManualInterestRate(uint256 _newInterestRateBps) external onlyOwner {
        uint256 newInterestRate = _newInterestRateBps / 365 days;

        ManualIRM.setInterestRate(newInterestRate);
    }

    function setTargetUtilization(uint8 _vault, uint256 _newTargetUtilization) external onlyOwner {
        AdaptiveIRM.setTargetUtilization(_vault, _newTargetUtilization);
    }

    function setPegUpdatePeriod(uint256 _newUpdatePeriod) external onlyOwner {
        PegIRM.interestRate(true);
        PegIRM.setUpdatePeriod(_newUpdatePeriod);
    }

    function setPegPriceFeed(address _priceFeed) external onlyOwner {
        PegIRM.interestRate(true);
        PegIRM.setPriceFeed(_priceFeed);
    }

    function setMaxInterestRateBps(uint256 _newMaxInterestRateBps) external onlyOwner {
        PegIRM.interestRate(true);
        PegIRM.setMaxInterestRateBps(_newMaxInterestRateBps);
    }

    function setPegInterestCoefficient(uint256 _interestCoefficient) external onlyOwner {
        PegIRM.interestRate(true);
        PegIRM.setInterestCoefficient(_interestCoefficient);
    }

    function _onlyPositionManager() internal view {
        if (msg.sender != positionManagerAddress) {
            revert OnlyPositionManager();
        }
    }

    function _authorizeUpgrade(address) internal override onlyOwner {}
}
