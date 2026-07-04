// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import {UUPSUpgradeable} from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import {OwnableUpgradeable} from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import {AccessControlUpgradeable} from "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import {OwnableRoles} from "solady/auth/OwnableRoles.sol";
import {FixedPointMathLib} from "solady/utils/FixedPointMathLib.sol";
import {PositionManagerStorage} from "../libraries/PositionManagerStorage.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IVault} from "../interfaces/IVault.sol";
import {IPositionManager} from "../interfaces/IPositionManager.sol";
import {IDebtToken} from "../interfaces/IDebtToken.sol";
import {IInterestRateStrategy} from "../interfaces/IInterestRateStrategy.sol";
import {OperableUpgradeable} from "./OperableUpgradeable.sol";
import {LiquidationManagerV2} from "./LiquidationManagerV2.sol";

contract PositionManagerV2 is AccessControlUpgradeable, OperableUpgradeable, IPositionManager {
    using FixedPointMathLib for uint256;

    bytes32 public constant INTEREST_CLAIMER_ROLE = keccak256("INTEREST_CLAIMER_ROLE");

    uint256 public constant INTEREST_PRECISION = 1e18;

    IDebtToken public immutable DEBT_TOKEN;

    constructor(address _debtTokenAddress) {
        DEBT_TOKEN = IDebtToken(_debtTokenAddress);
        _disableInitializers();
    }

    function initialize(address[] calldata _systemOperators) external reinitializer(2) {
        __Operable_init(_systemOperators);
    }

    function registerVault(address _vaultAddress, bytes memory _registerData) external onlyOwner returns (uint8) {
        PositionManagerStorage.Layout storage $ = PositionManagerStorage.layout();

        uint8 index = $.lastVaultIndex;

        (
            uint256 mcr,
            uint256 minDebt,
            uint256 debtCap,
            bytes memory interestStrategyData,
            bytes memory liquidationManagerData
        ) = abi.decode(_registerData, (uint256, uint256, uint256, bytes, bytes));

        VaultData memory data;

        data.addr = _vaultAddress;
        data.MCR = mcr;
        data.asset = IVault(_vaultAddress).asset();
        data.interestIndex = INTEREST_PRECISION;
        data.lastInterestIndexUpdate = block.timestamp;
        data.debtCap = debtCap;
        data.minDebt = minDebt;

        $.vaults[index] = data;
        $.lastVaultIndex = index + 1;

        IVault(_vaultAddress).approve(address($.liquidationManager), type(uint256).max);
        IERC20(data.asset).approve(_vaultAddress, type(uint256).max);

        $.interestRateStrategy.registerVault(index, interestStrategyData);

        (uint256 liquidatorRewardBps, uint256 bufferRewardsBps) = abi.decode(liquidationManagerData, (uint256, uint256));

        LiquidationManagerV2($.liquidationManager).setRewardsBps(index, liquidatorRewardBps, bufferRewardsBps);

        emit VaultRegistered(index, _vaultAddress, data.asset, mcr, minDebt, debtCap, data.interestIndex);

        return index;
    }

    function setVaultMCR(uint8 _vault, uint256 _newMCR) external onlyOwner {
        PositionManagerStorage.Layout storage $ = PositionManagerStorage.layout();

        emit MCRUpdated(_vault, $.vaults[_vault].MCR, _newMCR);

        $.vaults[_vault].MCR = _newMCR;
    }

    function setDebtCap(uint8 _vault, uint256 _newDebtCap) external onlyOwner {
        PositionManagerStorage.Layout storage $ = PositionManagerStorage.layout();

        $.vaults[_vault].debtCap = _newDebtCap;

        emit DebtCapUpdated(_vault, _newDebtCap);
    }

    function setMinDebt(uint8 _vault, uint256 _newMinDebt) external onlyOwner {
        PositionManagerStorage.Layout storage $ = PositionManagerStorage.layout();

        $.vaults[_vault].minDebt = _newMinDebt;

        emit MinDebtUpdated(_vault, _newMinDebt);
    }

    function setInterestRateStrategy(address _newInterestRateStrategy, bytes calldata _initData) external onlyOwner {
        if (_newInterestRateStrategy == address(0)) {
            revert ZeroAddress();
        }

        PositionManagerStorage.Layout storage $ = PositionManagerStorage.layout();

        emit NewInterestRateStrategy(address($.interestRateStrategy), address(_newInterestRateStrategy));

        $.interestRateStrategy = IInterestRateStrategy(_newInterestRateStrategy);

        if (_initData.length > 0) {
            $.interestRateStrategy.initialize(_initData);
        }
    }

    function lastVaultIndex() external view override returns (uint8) {
        return PositionManagerStorage.layout().lastVaultIndex;
    }

    function getVault(uint8 _index) external view returns (VaultData memory) {
        PositionManagerStorage.Layout storage $ = PositionManagerStorage.layout();

        return $.vaults[_index];
    }

    function getPosition(uint8 _vaultIndex, address _owner) external view returns (PositionData memory) {
        PositionManagerStorage.Layout storage $ = PositionManagerStorage.layout();

        return $.positions[_vaultIndex][_owner];
    }

    function interestRateStrategy() external view returns (address) {
        return address(PositionManagerStorage.layout().interestRateStrategy);
    }

    function liquidationManager() external view returns (address) {
        return PositionManagerStorage.layout().liquidationManager;
    }

    function claimInterest(uint8 _vault) external onlyRole(INTEREST_CLAIMER_ROLE) returns (uint256) {
        PositionManagerStorage.Layout storage $ = PositionManagerStorage.layout();

        VaultData storage vaultData = $.vaults[_vault];

        _accrueVaultDebt(_vault, vaultData);

        uint256 toClaim = vaultData.claimableInterest;
        if (toClaim > 0) {
            vaultData.claimableInterest = 0;

            DEBT_TOKEN.mint(msg.sender, toClaim);
        }

        emit InterestClaimed(_vault, msg.sender, toClaim);

        return toClaim;
    }

    function claimableInterest(uint8 _vault) external view returns (uint256) {
        PositionManagerStorage.Layout storage $ = PositionManagerStorage.layout();

        VaultData memory vaultData = $.vaults[_vault];

        uint256 interestRate = $.interestRateStrategy.interestRateView(_vault);

        (, uint256 factor) = _calculateInterestIndex(vaultData, interestRate);

        return vaultData.claimableInterest + vaultData.debtSnapshot.mulDivUp(factor, INTEREST_PRECISION);
    }

    function deposit(uint8 _index, address _user, uint256 _amountToDeposit, uint256 _minSharesReceived)
        external
        onlyUserOrOperator(_user)
    {
        _isValidVault(_index);

        PositionManagerStorage.Layout storage $ = PositionManagerStorage.layout();

        VaultData storage vaultData = $.vaults[_index];
        PositionData storage positionData = $.positions[_index][_user];

        if (positionData.owner == address(0)) {
            positionData.owner = _user;
        }

        IVault vault = IVault(vaultData.addr);
        IERC20 asset = IERC20(vaultData.asset);

        asset.transferFrom(msg.sender, address(this), _amountToDeposit);
        uint256 shares = vault.deposit(_amountToDeposit, address(this));

        if (shares < _minSharesReceived) {
            revert SlippageIsTooHigh();
        }

        _accruePositionDebt(_index, vaultData, positionData);

        uint256 newVaultCollateralSnapshot = vaultData.collateralSnapshot + shares;
        vaultData.collateralSnapshot = newVaultCollateralSnapshot;

        uint256 newCollateralSnapshot = positionData.collateralSnapshot + shares;
        positionData.collateralSnapshot = newCollateralSnapshot;

        emit Deposit(_index, _user, _amountToDeposit);

        emit VaultUpdated(_index, newVaultCollateralSnapshot, vaultData.debtSnapshot, vaultData.interestIndex);
        emit PositionUpdated(
            _index, _user, newCollateralSnapshot, positionData.debtSnapshot, positionData.interestIndex
        );
    }

    function withdraw(uint8 _index, address _user, uint256 _amountToWithdraw, uint256 _minAssetRedeemed)
        external
        onlyUserOrOperator(_user)
    {
        _isValidVault(_index);

        PositionManagerStorage.Layout storage $ = PositionManagerStorage.layout();

        VaultData storage vaultData = $.vaults[_index];
        PositionData storage positionData = $.positions[_index][_user];

        IVault vault = IVault(vaultData.addr);

        uint256 shares = positionData.collateralSnapshot;

        uint256 toWithdraw = _amountToWithdraw >= shares ? shares : _amountToWithdraw;

        uint256 redeemed = vault.redeem(toWithdraw, msg.sender, address(this));

        if (redeemed < _minAssetRedeemed) {
            revert SlippageIsTooHigh();
        }

        _accruePositionDebt(_index, vaultData, positionData);

        uint256 newVaultCollateralSnapshot = vaultData.collateralSnapshot - toWithdraw;
        vaultData.collateralSnapshot = newVaultCollateralSnapshot;

        uint256 newCollateralSnapshot = positionData.collateralSnapshot - toWithdraw;
        positionData.collateralSnapshot = newCollateralSnapshot;

        _checkCR(vaultData, positionData);

        emit Withdraw(_index, _user, _amountToWithdraw);
        emit VaultUpdated(_index, newVaultCollateralSnapshot, vaultData.debtSnapshot, vaultData.interestIndex);
        emit PositionUpdated(
            _index, _user, newCollateralSnapshot, positionData.debtSnapshot, positionData.interestIndex
        );
    }

    function borrow(uint8 _index, address _user, uint256 _amountToBorrow) external onlyUserOrOperator(_user) {
        _isValidVault(_index);

        PositionManagerStorage.Layout storage $ = PositionManagerStorage.layout();

        VaultData storage vaultData = $.vaults[_index];

        PositionData storage positionData = $.positions[_index][_user];

        (uint256 updatedUserDebt, uint256 updatedVaultDebt) = _accruePositionDebt(_index, vaultData, positionData);

        _checkMinDebt(vaultData, updatedUserDebt + _amountToBorrow);

        if (updatedVaultDebt + _amountToBorrow > vaultData.debtCap) {
            revert DebtCapReached();
        }

        uint256 newVaultDebtSnapshot = updatedVaultDebt + _amountToBorrow;
        vaultData.debtSnapshot = newVaultDebtSnapshot;

        uint256 newDebtSnapshot = updatedUserDebt + _amountToBorrow;
        positionData.debtSnapshot = newDebtSnapshot;

        DEBT_TOKEN.mint(msg.sender, _amountToBorrow);

        _checkCR(vaultData, positionData);

        emit Borrow(_index, _user, _amountToBorrow);

        emit VaultUpdated(_index, vaultData.collateralSnapshot, newVaultDebtSnapshot, vaultData.interestIndex);
        emit PositionUpdated(
            _index, _user, positionData.collateralSnapshot, newDebtSnapshot, positionData.interestIndex
        );
    }

    function repay(uint8 _index, address _user, uint256 _amountToRepay) external onlyUserOrOperator(_user) {
        _isValidVault(_index);

        PositionManagerStorage.Layout storage $ = PositionManagerStorage.layout();

        VaultData storage vaultData = $.vaults[_index];
        PositionData storage positionData = $.positions[_index][_user];

        (uint256 updatedPositionDebt, uint256 updatedVaultDebt) = _accruePositionDebt(_index, vaultData, positionData);

        if (_amountToRepay > updatedPositionDebt) {
            _amountToRepay = updatedPositionDebt;
        }

        _checkMinDebt(vaultData, updatedPositionDebt - _amountToRepay);

        uint256 newVaultDebtSnapshot = updatedVaultDebt - _amountToRepay;
        vaultData.debtSnapshot = newVaultDebtSnapshot;

        uint256 newDebtSnapshot = updatedPositionDebt - _amountToRepay;
        positionData.debtSnapshot = newDebtSnapshot;

        DEBT_TOKEN.burn(msg.sender, _amountToRepay);

        emit Repay(_index, _user, _amountToRepay);

        emit VaultUpdated(_index, vaultData.collateralSnapshot, newVaultDebtSnapshot, vaultData.interestIndex);
        emit PositionUpdated(
            _index, _user, positionData.collateralSnapshot, newDebtSnapshot, positionData.interestIndex
        );
    }

    function accountCr(uint8 _index, address _account) external view returns (uint256) {
        PositionManagerStorage.Layout storage $ = PositionManagerStorage.layout();

        VaultData memory vaultData = $.vaults[_index];
        PositionData memory positionData = $.positions[_index][_account];

        uint256 collateralSharesValue = positionData.collateralSnapshot.mulWad(IVault(vaultData.addr).sharePrice());

        uint256 interestRate = $.interestRateStrategy.interestRateView(_index);

        (uint256 newInterestIndex,) = _calculateInterestIndex(vaultData, interestRate);

        uint256 positionDebt = positionData.debtSnapshot;

        if (positionData.interestIndex < newInterestIndex) {
            if (positionDebt == 0) {
                return 0;
            }

            positionDebt = positionDebt.mulDivUp(newInterestIndex, positionData.interestIndex);
        }

        return _calculateCr(collateralSharesValue, positionDebt);
    }

    function setLiquidationManager(address _newLiquidationManager) external onlyOwner {
        PositionManagerStorage.Layout storage $ = PositionManagerStorage.layout();

        address oldLiquidationManager = $.liquidationManager;

        VaultData[255] storage allVaults = $.vaults;

        for (uint256 i; i < $.lastVaultIndex; i++) {
            IVault(allVaults[i].addr).approve(address(_newLiquidationManager), type(uint256).max);
            IVault(allVaults[i].addr).approve(address(oldLiquidationManager), 0);
        }

        $.liquidationManager = _newLiquidationManager;

        emit NewLiquidationManager(oldLiquidationManager, _newLiquidationManager);
    }

    function initLiquidation(uint8 _index, address _positionOwner)
        external
        returns (VaultData memory, PositionData memory)
    {
        _isValidVault(_index);
        _onlyLiquidationManager();

        PositionManagerStorage.Layout storage $ = PositionManagerStorage.layout();

        VaultData storage vaultData = $.vaults[_index];
        PositionData storage positionData = $.positions[_index][_positionOwner];

        _accruePositionDebt(_index, vaultData, positionData);

        return (vaultData, positionData);
    }

    function accrueVaultDebt(uint8 _vault) external {
        _onlyInterestRateStrategy();

        PositionManagerStorage.Layout storage $ = PositionManagerStorage.layout();

        _accrueVaultDebt(_vault, $.vaults[_vault]);
    }

    function finishLiquidation(
        uint8 _index,
        address _positionOwner,
        uint256 _debtToRepay,
        uint256 _collateralToLiquidate
    ) external {
        _isValidVault(_index);
        _onlyLiquidationManager();

        PositionManagerStorage.Layout storage $ = PositionManagerStorage.layout();

        VaultData storage vaultData = $.vaults[_index];
        PositionData storage positionData = $.positions[_index][_positionOwner];

        uint256 newVaultDebtSnapshot = vaultData.debtSnapshot - _debtToRepay;
        vaultData.debtSnapshot = newVaultDebtSnapshot;

        uint256 newVaultCollateralSnapshot = vaultData.collateralSnapshot - _collateralToLiquidate;
        vaultData.collateralSnapshot = newVaultCollateralSnapshot;

        uint256 newDebtSnapshot = positionData.debtSnapshot - _debtToRepay;
        positionData.debtSnapshot = newDebtSnapshot;

        uint256 newCollateralSnapshot = positionData.collateralSnapshot - _collateralToLiquidate;
        positionData.collateralSnapshot = newCollateralSnapshot;

        _checkMinDebt(vaultData, positionData.debtSnapshot);

        emit VaultUpdated(_index, newVaultCollateralSnapshot, newVaultDebtSnapshot, vaultData.interestIndex);
        emit PositionUpdated(_index, _positionOwner, newCollateralSnapshot, newDebtSnapshot, positionData.interestIndex);
    }

    function debt(uint8 _index, address _positionOwner) external view returns (uint256) {
        PositionManagerStorage.Layout storage $ = PositionManagerStorage.layout();

        PositionData memory positionData = $.positions[_index][_positionOwner];

        VaultData memory vaultData = $.vaults[_index];

        uint256 interestRate = $.interestRateStrategy.interestRateView(_index);

        (uint256 newInterestIndex,) = _calculateInterestIndex(vaultData, interestRate);

        uint256 positionDebt = positionData.debtSnapshot;

        if (positionData.interestIndex < newInterestIndex) {
            if (positionDebt == 0) {
                return 0;
            }

            positionDebt = positionDebt.mulDivUp(newInterestIndex, positionData.interestIndex);
        }

        return positionDebt;
    }

    function vaultDebt(uint8 _index) external view returns (uint256) {
        PositionManagerStorage.Layout storage $ = PositionManagerStorage.layout();

        VaultData memory vaultData = $.vaults[_index];

        uint256 interestRate = $.interestRateStrategy.interestRateView(_index);

        (, uint256 factor) = _calculateInterestIndex(vaultData, interestRate);

        return vaultData.debtSnapshot + vaultData.debtSnapshot.mulDivUp(factor, INTEREST_PRECISION);
    }

    function _checkCR(VaultData memory _vaultData, PositionData memory _positionData) internal view {
        uint256 sharePrice = IVault(_vaultData.addr).sharePrice();

        uint256 collateralSharesValue = sharePrice.mulWad(_positionData.collateralSnapshot);
        uint256 currentCr = _calculateCr(collateralSharesValue, _positionData.debtSnapshot);

        if (currentCr < _vaultData.MCR) {
            revert CollateralRatioBelowMin();
        }
    }

    function _calculateCr(uint256 _collateralInUSD, uint256 _debt) internal pure returns (uint256) {
        if (_debt == 0) {
            return type(uint256).max;
        }

        return _collateralInUSD.mulDiv(1e18, _debt);
    }

    function _isValidVault(uint8 _index) internal view {
        PositionManagerStorage.Layout storage $ = PositionManagerStorage.layout();

        if ($.vaults[_index].addr == address(0)) {
            revert InvalidVault();
        }
    }

    function _onlyLiquidationManager() internal view {
        PositionManagerStorage.Layout storage $ = PositionManagerStorage.layout();

        if (msg.sender != $.liquidationManager) {
            revert OnlyLiquidatorManager();
        }
    }

    function _onlyInterestRateStrategy() internal view {
        PositionManagerStorage.Layout storage $ = PositionManagerStorage.layout();

        if (msg.sender != address($.interestRateStrategy)) {
            revert OnlyInterestRateStrategy();
        }
    }

    function _accruePositionDebt(uint8 _vaultIndex, VaultData storage _vaultData, PositionData storage _positionData)
        internal
        returns (uint256, uint256)
    {
        uint256 currentInterestIndex = _positionData.interestIndex;
        (uint256 newInterestIndex, uint256 newVaultDebt) = _accrueVaultDebt(_vaultIndex, _vaultData);

        uint256 positionDebt = _positionData.debtSnapshot;
        if (currentInterestIndex < newInterestIndex) {
            _positionData.interestIndex = newInterestIndex;
            if (positionDebt == 0) {
                return (0, newVaultDebt);
            }

            positionDebt = positionDebt.mulDivUp(newInterestIndex, currentInterestIndex);
            _positionData.debtSnapshot = positionDebt;
        }

        emit PositionDebtAccrued(_vaultIndex, _positionData.owner, positionDebt, newInterestIndex);

        return (positionDebt, newVaultDebt);
    }

    function _accrueVaultDebt(uint8 _vaultIndex, VaultData storage _vaultData) internal returns (uint256, uint256) {
        PositionManagerStorage.Layout storage $ = PositionManagerStorage.layout();

        uint256 interestRate = $.interestRateStrategy.interestRate(_vaultIndex);

        (uint256 newInterestIndex, uint256 factor) = _calculateInterestIndex(_vaultData, interestRate);

        uint256 newVaultDebt = _vaultData.debtSnapshot;

        uint256 earnedInterest;

        if (factor > 0) {
            earnedInterest = newVaultDebt.mulDivUp(factor, INTEREST_PRECISION);
            _vaultData.debtSnapshot = newVaultDebt + earnedInterest;
            newVaultDebt += earnedInterest;
            _vaultData.claimableInterest += earnedInterest;
            _vaultData.interestIndex = newInterestIndex;
            _vaultData.lastInterestIndexUpdate = block.timestamp;
        }

        emit VaultDebtAccrued(_vaultIndex, newVaultDebt, newInterestIndex, earnedInterest);

        return (newInterestIndex, newVaultDebt);
    }

    function _calculateInterestIndex(VaultData memory _vaultData, uint256 _interestRate)
        internal
        view
        returns (uint256 newInterestIndex, uint256 factor)
    {
        newInterestIndex = _vaultData.interestIndex;

        if (_vaultData.lastInterestIndexUpdate == block.timestamp) {
            return (newInterestIndex, 0);
        }

        if (_interestRate > 0) {
            uint256 timeDelta = block.timestamp - _vaultData.lastInterestIndexUpdate;
            factor = timeDelta * _interestRate;
            newInterestIndex += newInterestIndex.mulDivUp(factor, INTEREST_PRECISION);
        }
    }

    function _checkMinDebt(VaultData memory _vaultData, uint256 _positionDebt) internal pure {
        if (_positionDebt > 0 && _positionDebt < _vaultData.minDebt) {
            revert PositionBelowMinDebt();
        }
    }

    function _authorizeUpgrade(address) internal view override onlyOwner {}
}
