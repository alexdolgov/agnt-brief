// SPDX-License-Identifier: LGPL-3.0
pragma solidity 0.8.20;

import {ReentrancyGuard} from '@openzeppelin/contracts/security/ReentrancyGuard.sol';
import {SafeERC20, IERC20Permit} from '@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol';
import {IERC20, IERC20Metadata} from '@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol';
import {ECDSA} from '@openzeppelin/contracts/utils/cryptography/ECDSA.sol';
import {EnumerableSet} from '@openzeppelin/contracts/utils/structs/EnumerableSet.sol';
import {Ownable2Step} from '@openzeppelin/contracts/access/Ownable2Step.sol';
import {AccessControl} from '@openzeppelin/contracts/access/AccessControl.sol';
import {Pausable} from '@openzeppelin/contracts/security/Pausable.sol';
import {Errors} from './helpers/Errors.sol';
import {IUSDX} from './interfaces/IUSDX.sol';
import {IUSDXSales} from './interfaces/IUSDXSales.sol';

/**
 * @title USDX Sales
 */
contract USDXSales is Ownable2Step, AccessControl, Pausable, ReentrancyGuard, IUSDXSales {
  uint256 private constant FEE_RATE_FACTOR = 1e6;

  /// @notice usdx stablecoin
  IUSDX public immutable USDX;

  /// @notice Supported assets
  EnumerableSet.AddressSet private _supportedAssets;

  // @notice custodian addresses
  EnumerableSet.AddressSet private _custodianAddresses;

  uint256 public feeRate;

  using SafeERC20 for IERC20;
  using SafeERC20 for IERC20Permit;
  using EnumerableSet for EnumerableSet.AddressSet;

  constructor(IUSDX _usdx, address[] memory _assets, address[] memory _custodians, address _owner) {
    require(address(_usdx) != address(0), Errors.ZERO_ADDRESS_NOT_VALID);
    require(_assets.length != 0, Errors.CONFIG_SUPPORT_ASEETS);
    require(_owner != address(0), Errors.ZERO_ADDRESS_NOT_VALID);

    USDX = _usdx;

    for (uint256 i = 0; i < _assets.length; i++) {
      addSupportedAsset(_assets[i]);
    }

    for (uint256 j = 0; j < _custodians.length; j++) {
      addCustodianAddress(_custodians[j]);
    }

    _transferOwnership(_owner);
  }

  /// @inheritdoc IUSDXSales
  function buy(
    address _collateralAsset,
    uint256 _collateralAmount,
    address _custodianAddress
  ) external override whenNotPaused nonReentrant {
    require(_supportedAssets.contains(_collateralAsset), Errors.CONFIG_SUPPORT_ASEETS);
    require(_collateralAmount > 0, Errors.ZERO_AMOUNT_NOT_VALID);
    require(_custodianAddress != address(0) && _custodianAddresses.contains(_custodianAddress), Errors.INVALID_ROUTE);
    _buy(_collateralAsset, _collateralAmount, _custodianAddress);
  }

  function buyWithPermit(
    address _collateralAsset,
    uint256 _collateralAmount,
    address _custodianAddress,
    uint256 _deadline,
    uint8 _permitV,
    bytes32 _permitR,
    bytes32 _permitS
  ) external override whenNotPaused nonReentrant {
    require(_supportedAssets.contains(_collateralAsset), Errors.CONFIG_SUPPORT_ASEETS);
    require(_collateralAmount > 0, Errors.ZERO_AMOUNT_NOT_VALID);
    require(_custodianAddress != address(0) && _custodianAddresses.contains(_custodianAddress), Errors.INVALID_ROUTE);
    IERC20Permit(_collateralAsset).safePermit(_msgSender(), address(this), _collateralAmount, _deadline, _permitV, _permitR, _permitS);
    _buy(_collateralAsset, _collateralAmount, _custodianAddress);
  }

  /// @inheritdoc IUSDXSales
  function addSupportedAsset(address asset) public override onlyOwner {
    require(asset != address(0) && _supportedAssets.add(asset), Errors.INVALID_ASSET_ADDRESS);
    emit AssetAdded(asset);
  }

  /// @inheritdoc IUSDXSales
  function addCustodianAddress(address custodian) public override onlyOwner {
    require(custodian != address(0) && _custodianAddresses.add(custodian), Errors.INVALID_CUSTODIAN_ADDRESS);
    emit CustodianAddressAdded(custodian);
  }

  /// @inheritdoc IUSDXSales
  function removeSupportedAsset(address asset) external override onlyOwner {
    require(_supportedAssets.remove(asset), Errors.INVALID_ASSET_ADDRESS);
    emit AssetRemoved(asset);
  }

  /// @inheritdoc IUSDXSales
  function removeCustodianAddress(address custodian) external override onlyOwner {
    require(_custodianAddresses.remove(custodian), Errors.INVALID_CUSTODIAN_ADDRESS);
    emit CustodianAddressRemoved(custodian);
  }

  /// @inheritdoc IUSDXSales
  function isSupportedAsset(address asset) external view override returns (bool) {
    return _supportedAssets.contains(asset);
  }

  /// @inheritdoc IUSDXSales
  function isCustodianAddress(address custodian) external view override returns (bool) {
    return _custodianAddresses.contains(custodian);
  }

  function listSupportedAssets() public view returns (address[] memory) {
    return _supportedAssets.values();
  }

  function listCustodians() public view returns (address[] memory) {
    return _custodianAddresses.values();
  }

  /// @inheritdoc IUSDXSales
  function updateFeeRate(uint256 _rate) external override onlyOwner {
    require(_rate >= 0 && _rate < 1e5, Errors.INVALID_FEE_RATE);
    emit UpdateFeeRate(feeRate, _rate);
    feeRate = _rate;
  }

  /// @inheritdoc IUSDXSales
  function pause() external override onlyOwner {
    _pause();
  }

  /// @inheritdoc IUSDXSales
  function unpause() external override onlyOwner {
    _unpause();
  }

  function _buy(address _collateralAsset, uint256 _collateralAmount, address _custodianAddress) internal {
    uint256 fee;
    if (feeRate > 0) {
      fee = (_collateralAmount * feeRate) / FEE_RATE_FACTOR;
    }

    IERC20(_collateralAsset).safeTransferFrom(_msgSender(), _custodianAddress, _collateralAmount);

    uint256 _usdxAmount = (_collateralAmount - fee) * (1e18 / 10 ** IERC20Metadata(_collateralAsset).decimals());

    USDX.mint(_msgSender(), _usdxAmount);
    emit BuySuccess(_msgSender(), _collateralAsset, _collateralAmount, _usdxAmount, fee);
  }
}
