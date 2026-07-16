// SPDX-License-Identifier: LGPL-3.0
pragma solidity 0.8.20;

import {ReentrancyGuard} from '@openzeppelin/contracts/security/ReentrancyGuard.sol';
import {SafeERC20, IERC20, IERC20Permit} from '@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol';
import {IERC20Metadata} from '@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol';
import {EnumerableSet} from '@openzeppelin/contracts/utils/structs/EnumerableSet.sol';
import {Ownable2Step} from '@openzeppelin/contracts/access/Ownable2Step.sol';
import {Pausable} from '@openzeppelin/contracts/security/Pausable.sol';
import {Errors} from './helpers/Errors.sol';
import {IUSDX} from './interfaces/IUSDX.sol';
import {IUSDXRedeem} from './interfaces/IUSDXRedeem.sol';

/**
 * @title USDX Redeem
 */
contract USDXRedeem is Ownable2Step, Pausable, ReentrancyGuard, IUSDXRedeem {
  uint256 private constant FEE_RATE_FACTOR = 1e6;
  uint256 private constant MIN_REDEEM = 1e18;

  /// @notice usdx stablecoin
  IUSDX public immutable USDX;

  /// @notice Supported assets
  EnumerableSet.AddressSet private _supportedAssets;

  address public vault;
  /// T+2
  uint24 public cooldownDuration;
  uint256 public feeRate;
  uint256 public maxPerRedeem;

  using SafeERC20 for IERC20;
  using SafeERC20 for IERC20Permit;
  using EnumerableSet for EnumerableSet.AddressSet;

  /// assetToken => account => Redemption
  mapping(address => mapping(address => Redemption)) public redemptions;
  /// assetToken => timestamp(days) => totalRedeem
  mapping(address => mapping(uint256 => uint256)) public redemptionHistory;

  constructor(IUSDX _usdx, address _vault, address[] memory _assets, address _initialOwner) {
    require(address(_usdx) != address(0), Errors.ZERO_ADDRESS_NOT_VALID);
    require(_assets.length != 0, Errors.CONFIG_SUPPORT_ASEETS);
    require(_initialOwner != address(0), Errors.ZERO_ADDRESS_NOT_VALID);

    USDX = _usdx;
    vault = _vault != address(0) ? _vault : address(this);
    cooldownDuration = 2 days;

    for (uint256 i = 0; i < _assets.length; i++) {
      addSupportedAsset(_assets[i]);
    }

    _transferOwnership(_initialOwner);
  }

  /// @inheritdoc IUSDXRedeem
  function redeem(address _assetToken, uint256 _usdxAmount) external override nonReentrant whenNotPaused {
    require(_supportedAssets.contains(_assetToken), Errors.CONFIG_SUPPORT_ASEETS);
    require(_usdxAmount >= MIN_REDEEM, Errors.MIN_REDEEM_VIOLATION);
    require(_usdxAmount <= maxPerRedeem, Errors.EXCESSIVE_REDEEM_AMOUNT);

    _redeem(_assetToken, _usdxAmount);
  }

  /// @inheritdoc IUSDXRedeem
  function redeemWithPermit(
    address _assetToken,
    uint256 _usdxAmount,
    uint256 _deadline,
    uint8 _permitV,
    bytes32 _permitR,
    bytes32 _permitS
  ) external override nonReentrant whenNotPaused {
    require(_supportedAssets.contains(_assetToken), Errors.CONFIG_SUPPORT_ASEETS);
    require(_usdxAmount >= MIN_REDEEM, Errors.MIN_REDEEM_VIOLATION);
    require(_usdxAmount <= maxPerRedeem, Errors.EXCESSIVE_REDEEM_AMOUNT);

    IERC20Permit(address(USDX)).safePermit(_msgSender(), address(this), _usdxAmount, _deadline, _permitV, _permitR, _permitS);
    _redeem(_assetToken, _usdxAmount);
  }

  /// @inheritdoc IUSDXRedeem
  function claim(address _assetToken) external override nonReentrant whenNotPaused {
    require(_supportedAssets.contains(_assetToken), Errors.INVALID_ASSET_ADDRESS);
    Redemption storage _redemption = redemptions[_assetToken][_msgSender()];
    uint256 _usdxAmount = _redemption.usdxAmount;
    uint256 _claimAmount = _redemption.underlingAmount;
    require(_usdxAmount > 0 && _claimAmount > 0, Errors.INVALID_AMOUNT);
    require(block.timestamp >= _redemption.cooldownEnd, Errors.COOLDOWN_NOT_OVER);

    USDX.burn(_usdxAmount);
    _redemption.cooldownEnd = 0;
    _redemption.underlingAmount = 0;
    _redemption.usdxAmount = 0;

    _payOrTransfer(_assetToken, vault, _msgSender(), _claimAmount);

    emit Claim(_msgSender(), _assetToken, _claimAmount);
  }

  /// @inheritdoc IUSDXRedeem
  function setCooldownDuration(uint24 _cooldownDuration) external override onlyOwner {
    require(_cooldownDuration >= 1 days, Errors.INVALID_COOLDOWN);
    emit CooldownSet(cooldownDuration, _cooldownDuration);
    cooldownDuration = _cooldownDuration;
  }

  /// @inheritdoc IUSDXRedeem
  function updateFeeRate(uint256 _feeRate) external override onlyOwner {
    require(_feeRate >= 0 && _feeRate < 1e5, Errors.INVALID_FEE_RATE);
    emit UpdateFeeRate(feeRate, _feeRate);
    feeRate = _feeRate;
  }

  /// @inheritdoc IUSDXRedeem
  function updateMaxPerRedeem(uint256 _maxRedeem) external override onlyOwner {
    require(_maxRedeem > 0, Errors.INVALID_AMOUNT);
    emit UpdateMaxPerRedeem(maxPerRedeem, _maxRedeem);
    maxPerRedeem = _maxRedeem;
  }

  /// @inheritdoc IUSDXRedeem
  function updateVault(address _vault) external override onlyOwner {
    require(_vault != address(0), Errors.ZERO_ADDRESS_NOT_VALID);
    emit UpdatedVault(vault, _vault);
    vault = _vault;
  }

  /// @inheritdoc IUSDXRedeem
  function pause() external override onlyOwner {
    _pause();
  }

  /// @inheritdoc IUSDXRedeem
  function unpause() external override onlyOwner {
    _unpause();
  }

  /// @inheritdoc IUSDXRedeem
  function addSupportedAsset(address _asset) public override onlyOwner {
    require(_asset != address(0) && _supportedAssets.add(_asset), Errors.INVALID_ASSET_ADDRESS);
    emit AssetAdded(_asset);
  }

  /// @inheritdoc IUSDXRedeem
  function removeSupportedAsset(address _asset) external override onlyOwner {
    require(_supportedAssets.remove(_asset), Errors.INVALID_ASSET_ADDRESS);
    emit AssetRemoved(_asset);
  }

  /// @inheritdoc IUSDXRedeem
  function isSupportedAsset(address _asset) external view override returns (bool) {
    return _supportedAssets.contains(_asset);
  }

  function listSupportedAssets() public view returns (address[] memory) {
    return _supportedAssets.values();
  }

  function rescueTokens(address _token, address _to, uint256 _amount) external onlyOwner {
    require(address(_token) != address(USDX), Errors.INVALID_TOKEN);
    require(_to != address(0), Errors.ZERO_ADDRESS_NOT_VALID);
    require(_amount > 0, Errors.ZERO_AMOUNT_NOT_VALID);
    IERC20(_token).safeTransfer(_to, _amount);
  }

  function _redeem(address _assetToken, uint256 _usdxAmount) internal {
    uint256 _assetAmount = _usdxAmount / (1e18 / 10 ** IERC20Metadata(_assetToken).decimals());
    uint256 fee;
    if (feeRate > 0) {
      fee = (_assetAmount * feeRate) / FEE_RATE_FACTOR;
    }
    _assetAmount -= fee;

    Redemption storage _redemption = redemptions[_assetToken][_msgSender()];
    _redemption.usdxAmount += _usdxAmount;
    _redemption.underlingAmount += _assetAmount;
    _redemption.cooldownEnd = block.timestamp + cooldownDuration;

    redemptionHistory[_assetToken][(block.timestamp / 1 days) * 1 days] += _assetAmount;

    IERC20(address(USDX)).safeTransferFrom(_msgSender(), address(this), _usdxAmount);

    emit Redeem(_msgSender(), _assetToken, _assetAmount, _usdxAmount, fee);
  }

  function _payOrTransfer(address _token, address _payer, address _recipient, uint256 _amount) internal {
    if (_payer == address(this)) IERC20(_token).safeTransfer(_recipient, _amount);
    else IERC20(_token).safeTransferFrom(_payer, _recipient, _amount);
  }
}
