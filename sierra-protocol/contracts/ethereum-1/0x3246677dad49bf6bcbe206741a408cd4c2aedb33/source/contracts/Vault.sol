//Copyright Open Trade Technology Ltd. 2023. All rights reserved.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "./interfaces/IVault.sol";
import "./interfaces/IServiceConfigurationV3.sol";
import "./upgrades/BeaconImplementation.sol";
import "./interfaces/IPool.sol";
import { IVaultType } from "./factories/interfaces/IVaultFactory.sol";
import { IERC20Upgradeable } from "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import { SafeERC20Upgradeable } from "@openzeppelin/contracts-upgradeable/token/ERC20/utils/SafeERC20Upgradeable.sol";
import { OwnableUpgradeable } from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import { IERC721Upgradeable } from "@openzeppelin/contracts-upgradeable/token/ERC721/ERC721Upgradeable.sol";
import { ERC721HolderUpgradeable } from "@openzeppelin/contracts-upgradeable/token/ERC721/utils/ERC721HolderUpgradeable.sol";
import { SafeERC20Upgradeable } from "@openzeppelin/contracts-upgradeable/token/ERC20/utils/SafeERC20Upgradeable.sol";

/**
 * @title Vault holds a balance, and allows withdrawals to the Vault's owner.
 * @dev Vaults are deployed as beacon proxy contracts.
 */

contract Vault is IVault, OwnableUpgradeable, BeaconImplementation, ERC721HolderUpgradeable {
  using SafeERC20Upgradeable for IERC20Upgradeable;

  /**
   * @dev Reference to the global service configuration
   */
  IServiceConfigurationV3 private _serviceConfiguration;

  address public _pool;

  address public _owner;
  IVaultType public vaultType;

  function isBorrowerVault() public view returns (bool) {
    return IPool(_pool).withdrawController().borrowerVault() == address(this);
  }

  /**
   * @dev Modifier to check that the protocol is not paused
   */
  modifier onlyNotPaused() {
    require(!_serviceConfiguration.paused(), "Vault: Protocol paused");
    _;
  }

  modifier onlyBorrowerVault() {
    require(vaultType == IVaultType.BorrowerVault, "Vault: Protocol paused");
    _;
  }

  /**
   * @dev Initialize function as a Beacon proxy implementation.
   */
  function initialize(address owner, IVaultType _vaultType, address serviceConfiguration) public initializer {
    __ERC721Holder_init();

    _owner = owner;
    vaultType = _vaultType;

    _transferOwnership(owner);
    _serviceConfiguration = IServiceConfigurationV3(serviceConfiguration);
  }

  /**
   * @inheritdoc IVault
   */
  function withdrawERC20(address asset, uint256 amount, address receiver) external override onlyOwner onlyNotPaused {
    require(receiver != address(0), "Vault: 0 add");
    if (vaultType == IVaultType.BorrowerVault) {
      require(receiver == IWithdrawController(_owner).borrowerVault(), "Vault: Invalid receiver");
    }

    IERC20Upgradeable(asset).safeTransfer(receiver, amount);
    emit WithdrewERC20(asset, amount, receiver);
  }

  function withdrawERC20ToBorrowerWallet(
    address asset,
    uint256 amount
  ) external override onlyBorrowerVault onlyOwner onlyNotPaused {
    address receiver = IWithdrawController(_owner).borrowerWallet();

    require(receiver != address(0), "Vault: 0 address");
    IERC20Upgradeable(asset).safeTransfer(receiver, amount);
    emit WithdrewERC20(asset, amount, receiver);
  }

  function payFees(address asset, uint256 amount) external override onlyBorrowerVault onlyNotPaused onlyOwner {
    address feeVault = IWithdrawController(_owner).feeVault();
    IERC20Upgradeable(asset).safeTransfer(feeVault, amount);
    emit WithdrewERC20(asset, amount, feeVault);
  }

  function repayLoan(address asset, uint256 amount) external override onlyBorrowerVault onlyNotPaused /*  onlyOwner */ {
    address poolAddr = IWithdrawController(_owner).pool();
    IERC20Upgradeable(asset).safeTransfer(poolAddr, amount);
    emit WithdrewERC20(asset, amount, _owner);
  }

  /**
   * @inheritdoc IVault
   */
  function withdrawERC721(address asset, uint256 tokenId, address receiver) external override onlyOwner onlyNotPaused {
    require(receiver != address(0), "Vault: 0 address");
    IERC721Upgradeable(asset).safeTransferFrom(address(this), receiver, tokenId);
    emit WithdrewERC721(asset, tokenId, receiver);
  }
}
