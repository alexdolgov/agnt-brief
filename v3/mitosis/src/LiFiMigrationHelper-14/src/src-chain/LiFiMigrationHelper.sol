// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.8.28;

import { IERC20 } from '@oz/interfaces/IERC20.sol';
import { SafeERC20 } from '@oz/token/ERC20/utils/SafeERC20.sol';
import { Address } from '@oz/utils/Address.sol';

import { ITokenBridge, Quote as TokenBridgeQuote } from '@hpl/interfaces/ITokenBridge.sol';
import { TypeCasts } from '@hpl/libs/TypeCasts.sol';

import { IMitosisVault } from '@mito/interfaces/branch/IMitosisVault.sol';
import { ERC7201Utils } from '@mito/lib/ERC7201Utils.sol';

import { AccessControlEnumerableUpgradeable } from
  '@ozu/access/extensions/AccessControlEnumerableUpgradeable.sol';
import { UUPSUpgradeable } from '@ozu/proxy/utils/UUPSUpgradeable.sol';
import { ReentrancyGuardUpgradeable } from '@ozu/utils/ReentrancyGuardUpgradeable.sol';

import { IExpeditionVault } from './IExpeditionVault.sol';

contract LiFiMigrationHelper is
  AccessControlEnumerableUpgradeable,
  ReentrancyGuardUpgradeable,
  UUPSUpgradeable
{
  using SafeERC20 for IERC20;
  using SafeERC20 for IExpeditionVault;
  using Address for address;
  using Address for address payable;
  using ERC7201Utils for string;
  using TypeCasts for address;

  /// @custom:storage-location mitosis.storage.LiFiMigrationHelper
  struct StorageV1 {
    uint256 destinationGas; // gas on middleware chain
    address destinationGasReceiver; // receiver of the destination gas
    mapping(address => uint256) operationNonces;
    mapping(address => bool) allowedVaults;
  }

  event DestinationGasSet(uint256 gas);
  event DestinationGasReceiverSet(address receiver);
  event VaultAllowed(address indexed vault, bool allowed);

  error InsufficientBalance();
  error InsufficientDestinationGas();
  error InsufficientLiFiGas();
  error AllowanceNotSpent();
  error InvalidVaultAddress();
  error InvalidAmount();
  error InvalidReceiver();
  error VaultNotAllowed();

  // =========================== NOTE: STORAGE DEFINITIONS =========================== //

  string private constant _NAMESPACE = 'mitosis.storage.LiFiMigrationHelper';
  bytes32 private immutable _slot = _NAMESPACE.storageSlot();

  function _getStorage() private view returns (StorageV1 storage $) {
    bytes32 slot = _slot;
    // slither-disable-next-line assembly
    assembly {
      $.slot := slot
    }
  }

  // ================================================================================= //

  address payable public immutable lifi;
  address payable public immutable mito;

  constructor(address _lifi, address _mito) {
    require(_lifi != address(0), InvalidReceiver());
    require(_mito != address(0), InvalidReceiver());
    lifi = payable(_lifi);
    mito = payable(_mito);
  }

  function initialize(address admin) external initializer {
    require(admin != address(0), InvalidReceiver());

    __AccessControl_init();
    __AccessControlEnumerable_init();
    __ReentrancyGuard_init();
    __UUPSUpgradeable_init();

    _grantRole(DEFAULT_ADMIN_ROLE, admin);
  }

  receive() external payable {
    // redirect to the destination gas receiver
    payable(_getStorage().destinationGasReceiver).sendValue(msg.value);
  }

  function destinationGas() external view returns (uint256) {
    return _getStorage().destinationGas;
  }

  function destinationGasReceiver() external view returns (address) {
    return _getStorage().destinationGasReceiver;
  }

  function setDestinationGas(uint256 gas) external onlyRole(DEFAULT_ADMIN_ROLE) {
    _getStorage().destinationGas = gas;

    emit DestinationGasSet(gas);
  }

  function setDestinationGasReceiver(address receiver) external onlyRole(DEFAULT_ADMIN_ROLE) {
    _getStorage().destinationGasReceiver = receiver;

    emit DestinationGasReceiverSet(receiver);
  }

  function setVaultAllowed(address vault, bool allowed) external onlyRole(DEFAULT_ADMIN_ROLE) {
    _getStorage().allowedVaults[vault] = allowed;
    emit VaultAllowed(vault, allowed);
  }

  function operationNonce(address sender) external view returns (uint256) {
    return _getStorage().operationNonces[sender];
  }

  function nextOperationId(address sender) external view returns (bytes32) {
    return _buildOperationId(sender, _getStorage().operationNonces[sender]);
  }

  function isVaultAllowed(address vault) external view returns (bool) {
    return _getStorage().allowedVaults[vault];
  }

  //======================================== NOTE: MIGRATE LIFI ============================================ //

  event MigrationInitiated(
    bytes32 indexed operationId,
    address indexed sender,
    address indexed vaultAddr,
    uint256 amount,
    uint256 redeemed,
    uint256 lifiGas
  );

  function migrate(address vaultAddr, uint256 amount, bytes calldata lifiCalldata)
    external
    payable
    nonReentrant
  {
    // Input validation using require with custom errors (0.8.28 syntax)
    require(vaultAddr != address(0), InvalidVaultAddress());
    require(amount > 0, InvalidAmount());

    IExpeditionVault vault = IExpeditionVault(vaultAddr);

    vault.safeTransferFrom(_msgSender(), address(this), amount);

    uint256 redeemed = vault.previewRedeem(amount);
    address(vault).functionCall(abi.encodeCall(vault.redeem, (amount, address(this))));

    IERC20 asset = vault.asset();
    uint256 assetBalance = asset.balanceOf(address(this));

    // Ensure we have sufficient balance (should be >= redeemed amount)
    require(assetBalance >= redeemed, InsufficientBalance());

    StorageV1 storage $ = _getStorage();
    require($.allowedVaults[vaultAddr], VaultNotAllowed());

    uint256 gasDemand = $.destinationGas;
    require(gasDemand <= msg.value, InsufficientDestinationGas());

    uint256 lifiGas = msg.value - gasDemand;
    require(lifiGas > 0, InsufficientLiFiGas());

    if ($.destinationGasReceiver != address(0)) {
      payable($.destinationGasReceiver).sendValue(gasDemand);
    }

    asset.forceApprove(lifi, redeemed);
    lifi.functionCallWithValue(lifiCalldata, lifiGas);
    require(asset.allowance(address(this), lifi) == 0, AllowanceNotSpent());

    uint256 nonce = $.operationNonces[_msgSender()]++;
    bytes32 operationId = _buildOperationId(_msgSender(), nonce);

    emit MigrationInitiated(operationId, _msgSender(), vaultAddr, amount, redeemed, lifiGas);
  }

  //======================================== NOTE: MIGRATE HUB ASSET ============================================ //

  event HubAssetMigration(
    address indexed sender,
    address indexed receiver,
    address indexed vaultAddr,
    uint256 amount,
    uint256 hplGas
  );

  function quoteMigrateHubAsset(uint256 amount, address receiver, address vaultAddr)
    external
    view
    returns (uint256)
  {
    IExpeditionVault vault = IExpeditionVault(vaultAddr);
    IERC20 asset = vault.asset();

    return IMitosisVault(mito).quoteDeposit(address(asset), receiver, vault.previewRedeem(amount));
  }

  function migrateHubAsset(uint256 amount, address receiver, address vaultAddr)
    external
    payable
    nonReentrant
  {
    require(amount > 0, InvalidAmount());
    require(receiver != address(0), InvalidReceiver());

    StorageV1 storage $ = _getStorage();
    require($.allowedVaults[vaultAddr], VaultNotAllowed());

    IExpeditionVault vault = IExpeditionVault(vaultAddr);

    vault.safeTransferFrom(_msgSender(), address(this), amount);

    uint256 redeemed = vault.previewRedeem(amount);
    address(vault).functionCall(abi.encodeCall(vault.redeem, (amount, address(this))));

    IERC20 asset = vault.asset();

    uint256 gasDemand = IMitosisVault(mito).quoteDeposit(address(asset), receiver, redeemed);
    require(gasDemand <= msg.value, InsufficientDestinationGas());
    if (msg.value > gasDemand) payable(_msgSender()).sendValue(msg.value - gasDemand);

    asset.forceApprove(mito, redeemed);
    IMitosisVault(mito).deposit{ value: gasDemand }(address(asset), receiver, redeemed);
    asset.forceApprove(mito, 0);

    emit HubAssetMigration(_msgSender(), receiver, vaultAddr, amount, gasDemand);
  }

  //======================================== NOTE: TRANSFER MitosisHypERC20 ============================================ //

  event MitosisHypERC20Transferred(
    bytes32 indexed messageId,
    address indexed receiver,
    address indexed tokenAddr,
    address sender,
    uint256 amount,
    uint256 hplGas
  );

  error NativeGasQuoteNotFound();

  uint32 public constant MITOSIS_DOMAIN_ID = 124816;

  function quoteTransferMitosisHypERC20Remote(address tokenAddr, address receiver, uint256 amount)
    public
    view
    returns (uint256 gas)
  {
    TokenBridgeQuote[] memory quotes = ITokenBridge(tokenAddr).quoteTransferRemote(
      MITOSIS_DOMAIN_ID, receiver.addressToBytes32(), amount
    );

    for (uint256 i = 0; i < quotes.length; i++) {
      if (quotes[i].token == address(0)) return quotes[i].amount;
    }
    revert NativeGasQuoteNotFound();
  }

  function transferMitosisHypERC20Remote(address tokenAddr, address receiver, uint256 amount)
    external
    payable
    nonReentrant
  {
    IERC20(tokenAddr).safeTransferFrom(_msgSender(), address(this), amount);

    uint256 gas = quoteTransferMitosisHypERC20Remote(tokenAddr, receiver, amount);
    require(gas <= msg.value, InsufficientDestinationGas());
    if (msg.value > gas) payable(_msgSender()).sendValue(msg.value - gas);

    bytes32 messageId = ITokenBridge(tokenAddr).transferRemote{ value: gas }(
      MITOSIS_DOMAIN_ID, receiver.addressToBytes32(), amount
    );

    emit MitosisHypERC20Transferred(messageId, receiver, tokenAddr, _msgSender(), amount, gas);
  }

  function _buildOperationId(address sender, uint256 nonce) internal view returns (bytes32) {
    return keccak256(abi.encodePacked(block.chainid, sender, nonce));
  }

  function _authorizeUpgrade(address) internal override onlyRole(DEFAULT_ADMIN_ROLE) { }
}
