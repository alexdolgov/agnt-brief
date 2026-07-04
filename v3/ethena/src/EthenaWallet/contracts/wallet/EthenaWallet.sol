// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.26;

/* solhint-disable private-vars-leading-underscore */
/* solhint-disable var-name-mixedcase */

import "../SingleAdminAccessControl.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";

import "../interfaces/IWETH9.sol";
import "../interfaces/IEthenaWallet.sol";

/**
 * @title Ethena Wallet
 * @notice A simple, secure contract wallet for managing and transferring assets
 */
contract EthenaWallet is IEthenaWallet, SingleAdminAccessControl, ReentrancyGuard {
  using SafeERC20 for IERC20;
  using EnumerableSet for EnumerableSet.AddressSet;

  /* --------------- CONSTANTS --------------- */

  /// @notice role enables account to transfer collateral to whitelisted destination wallets
  bytes32 public constant COLLATERAL_MANAGER_ROLE = keccak256("COLLATERAL_MANAGER_ROLE");

  /// @notice address denoting native ether
  address private constant NATIVE_TOKEN = 0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE;

  /* --------------- STATE VARIABLES --------------- */

  /// @notice usde stable coin
  address private usde;

  /// @notice supported assets
  EnumerableSet.AddressSet private _supportedAssets;

  // @notice whitelisted destination addresses
  EnumerableSet.AddressSet private _whitelistedDestinations;

  /* --------------- CONSTRUCTOR --------------- */

  constructor(
    address _usde,
    address[] memory _assets,
    address[] memory _destinations,
    address _admin
  ) {
    if (address(_usde) == address(0)) revert InvalidUSDeAddress();
    if (_assets.length == 0) revert NoAssetsProvided();
    if (_admin == address(0)) revert InvalidAdminAddress();
    usde = _usde;

    _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
    _grantRole(COLLATERAL_MANAGER_ROLE, msg.sender);

    for (uint8 j = 0; j < _destinations.length;) {
      addWhitelistedDestinationAddress(_destinations[j]);
      unchecked {
        ++j;
      }
    }

    // Register asset configs
    for (uint8 k = 0; k < _assets.length;) {
      _addSupportedAsset(_assets[k]);
      unchecked {
        ++k;
      }
    }

    if (msg.sender != _admin) {
      _grantRole(DEFAULT_ADMIN_ROLE, _admin);
      _grantRole(COLLATERAL_MANAGER_ROLE, _admin);
    }

    emit USDeSet(address(_usde));
  }

  /* --------------- EXTERNAL --------------- */

  /**
   * @notice Fallback function to receive ether
   */
  receive() external payable {
    emit Received(msg.sender, msg.value);
  }

  /// @notice transfers an asset to a whitelisted destination wallet
  function transferToWhitelistedDestination(address destination, address asset, uint128 amount)
    external
    nonReentrant
    onlyRole(COLLATERAL_MANAGER_ROLE)
  {
    if (destination == address(0) || !_whitelistedDestinations.contains(destination)) {
      revert InvalidDestinationAddress();
    }
    if (!_supportedAssets.contains(asset)) revert UnsupportedAsset();
    if (asset == NATIVE_TOKEN) {
      (bool success,) = destination.call{value: amount}("");
      if (!success) revert TransferNativeFailed();
    } else {
      IERC20(asset).safeTransfer(destination, amount);
    }
    emit WhitelistedDestinationTransfer(destination, asset, amount);
  }

  /// @notice Removes an asset from the supported assets list
  function removeSupportedAsset(address asset) external onlyRole(DEFAULT_ADMIN_ROLE) {
    if (!_supportedAssets.remove(asset)) revert InvalidAssetAddressRemoval();
    emit AssetRemoved(asset);
  }

  /// @notice Checks if an asset is supported.
  function isSupportedAsset(address asset) external view returns (bool) {
    return _supportedAssets.contains(asset);
  }

  /// @notice Removes an whitelisted destination from the whitelisted destination address list
  function removeWhitelistedDestinationAddress(address destination) external onlyRole(DEFAULT_ADMIN_ROLE) {
    if (!_whitelistedDestinations.remove(destination)) revert InvalidDestinationAddress();
    emit WhitelistedDestinationAddressRemoved(destination);
  }

  // @notice Add transferable asset configuration
  function addSupportedAsset(address _asset) external onlyRole(DEFAULT_ADMIN_ROLE) {
    _addSupportedAsset(_asset);
  }

  /* --------------- PUBLIC --------------- */

  /// @notice Adds an whitelisted destination to the supported whitelisted destinations list.
  function addWhitelistedDestinationAddress(address destination) public onlyRole(DEFAULT_ADMIN_ROLE) {
    if (destination == address(0) || destination == address(usde) || !_whitelistedDestinations.add(destination)) {
      revert InvalidDestinationAddress();
    }
    emit WhitelistedDestinationAddressAdded(destination);
  }

  /* --------------- INTERNAL --------------- */

  function _addSupportedAsset(address asset) internal {
    if (asset == address(0) || !_supportedAssets.add(asset)) {
      revert InvalidAssetAddressAddition();
    }
    emit AssetAdded(asset);
  }

  /* --------------- GETTERS --------------- */

  /// @notice returns whether an address is a whitelisted destination
  function isWhitelistedDestinationAddress(address destination) public view returns (bool) {
    return _whitelistedDestinations.contains(destination);
  }

  /// @notice returns the whitelisted destination addresses
  function getWhitelistedDestinations() public view returns (bytes32[] memory) {
    return _whitelistedDestinations._inner._values;
  }

  // @notice returns the supported assets
  function getSupportedAssets() public view returns (bytes32[] memory) {
    return _supportedAssets._inner._values;
  }
}
