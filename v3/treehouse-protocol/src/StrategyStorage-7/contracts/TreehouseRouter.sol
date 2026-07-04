// SPDX-License-Identifier: MIT
pragma solidity =0.8.24;

import '@openzeppelin/contracts/access/Ownable2Step.sol';
import '@openzeppelin/contracts/interfaces/IERC4626.sol';
import '@openzeppelin/contracts/interfaces/IERC20.sol';
import '@openzeppelin/contracts/utils/ReentrancyGuard.sol';
import '@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol';
import '@openzeppelin/contracts/utils/Pausable.sol';

import { IInternalAccountingUnit } from './InternalAccountingUnit.sol';
import { IWAVAX } from './interfaces/IWAVAX.sol';
import { ISAVAX } from './interfaces/savax/ISAVAX.sol';
import { IVault } from './Vault.sol';
import './libs/Rescuable.sol';

interface ITreehouseRouter {
  error DepositCapExceeded();
  error NotAllowableAsset();
  error NoSharesMinted();
  error ConversionToUnderlyingFailed();
  error InvalidSender();

  event Deposited(address _asset, uint _amountInUnderlying, uint _shares);
  event DepositCapUpdated(uint _newDepositCap, uint _oldDepositCap);

  function deposit(address _asset, uint256 _amount) external;

  function depositAVAX() external payable;
}

/**
 * @notice TreehouseRouter is the entrypoint for deposits into Treehouse Protocol
 */
contract TreehouseRouter is ITreehouseRouter, Ownable2Step, ReentrancyGuard, Pausable, Rescuable {
  using SafeERC20 for IERC20;

  address public immutable wAVAX;
  address public immutable sAVAX;
  address public immutable IAU;
  IERC4626 public immutable TASSET;
  IVault public immutable VAULT;

  uint public depositCapInAvax;

  constructor(
    address _creator,
    address _wavax,
    address _savax,
    IVault _vault,
    uint _depositCapInAvax
  ) Ownable(_creator) {
    wAVAX = _wavax;
    sAVAX = _savax;

    VAULT = _vault;
    TASSET = IERC4626(_vault.getTAsset());
    IAU = TASSET.asset();

    depositCapInAvax = _depositCapInAvax;

    IERC20(IAU).approve(address(TASSET), type(uint).max);
  }

  receive() external payable {
    if (msg.sender != wAVAX) revert InvalidSender();
  }

  /**
   * @notice for ERC20 deposits
   * @param _asset asset to deposit
   * @param _amount amount to deposit
   * @dev must be a Vault.allowableAsset; needs approval from user
   */
  function deposit(address _asset, uint256 _amount) public nonReentrant whenNotPaused {
    if (VAULT.isAllowableAsset(_asset) == false) revert NotAllowableAsset();
    uint _valueInUnderlying;

    if (_asset == VAULT.getUnderlying()) {
      IERC20(_asset).safeTransferFrom(msg.sender, address(VAULT), _amount);
      _valueInUnderlying = _amount;
    } else if (_asset == wAVAX) {
      //WAVAX deposits
      IERC20(_asset).safeTransferFrom(msg.sender, address(this), _amount);
      IWAVAX(wAVAX).withdraw(_amount);
      _valueInUnderlying = ISAVAX(sAVAX).submit{ value: _amount }();
      IERC20(VAULT.getUnderlying()).safeTransfer(address(VAULT), _valueInUnderlying);
    }

    uint _shares = _mintAndStake(_valueInUnderlying, msg.sender);
    _checkAvaxCap();
    if (_shares == 0) revert NoSharesMinted();
    emit Deposited(_asset, _valueInUnderlying, _shares);
  }

  /**
   * @notice for native AVAX deposits into the protocol
   */
  function depositAVAX() public payable nonReentrant whenNotPaused {
    uint _valueInUnderlying = ISAVAX(sAVAX).submit{ value: msg.value }();
    IERC20(VAULT.getUnderlying()).safeTransfer(address(VAULT), _valueInUnderlying);

    uint _shares = _mintAndStake(_valueInUnderlying, msg.sender);
    _checkAvaxCap();
    if (_shares == 0) revert NoSharesMinted();
    emit Deposited(0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE, _valueInUnderlying, _shares);
  }

  /**
   * @notice sets deposit cap of protocol
   * @param _newCap new deposit cap
   */
  function setDepositCap(uint _newCap) external onlyOwner {
    emit DepositCapUpdated(_newCap, depositCapInAvax);
    depositCapInAvax = _newCap;
  }

  /**
   * @notice Set the pause state of the contract
   * @param _paused is contract paused
   */
  function setPause(bool _paused) external onlyOwner {
    if (_paused) {
      _pause();
    } else {
      _unpause();
    }
  }

  /// @dev atomically mint + stake iau into tAsset
  function _mintAndStake(uint _iauAmount, address _receiver) internal returns (uint) {
    IInternalAccountingUnit(IAU).mintTo(address(this), _iauAmount);
    return TASSET.deposit(_iauAmount, _receiver);
  }

  function _checkAvaxCap() internal view {
    unchecked {
      if (ISAVAX(sAVAX).getPooledAvaxByShares(IERC20(IAU).totalSupply()) > depositCapInAvax)
        revert DepositCapExceeded();
    }
  }

  ////////////////////// Inheritance overrides. Note: Sequence doesn't matter ////////////////////////
  function transferOwnership(address newOwner) public virtual override(Ownable2Step, Ownable) onlyOwner {
    super.transferOwnership(newOwner);
  }

  function _transferOwnership(address newOwner) internal virtual override(Ownable2Step, Ownable) {
    super._transferOwnership(newOwner);
  }
}
