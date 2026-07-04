// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.19;

/// Core /////
import {UserRequest} from "src/core/Structs.sol";

/// Utils /////
import {Ownable} from "src/utils/Ownable.sol";

/// Interfaces /////
import {IRelayerV2} from "src/interfaces/IRelayerV2.sol";
import {IFyde} from "src/interfaces/IFyde.sol";

import {IERC20} from "openzeppelin-contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "openzeppelin-contracts/token/ERC20/utils/SafeERC20.sol";

/// @title Deposit Escrow Contract
/// @notice Manages deposits and withdrawals of assets for users, and interacts with a liquid vault.
contract DepositEscrow is Ownable {
  using SafeERC20 for IERC20;

  /// @notice Relayer contract interface
  IRelayerV2 public relayer;

  /// @notice TRSY token interface
  IERC20 public trsy;

  /// @notice Mapping of depositor addresses to their asset balances
  mapping(address => mapping(address => uint256)) public tokenBalance;

  /// @notice Mapping of depositor addresses to their TRSY token balances
  mapping(address => uint256) public trsyBalance;

  /// @notice List of all assets currently held in the escrow
  address[] public assetList;

  /// @notice Mapping to check if an asset is in the escrow
  mapping(address => bool) public isAssetInEscrow;

  /// @dev Initializes the contract with specified addresses
  /// @param _trsy Address of the TRSY token
  /// @param _relayer Address of the Relayer contract
  /// @param _owner Address of the owner
  constructor(address _trsy, address _relayer, address _owner) Ownable(_owner) {
    relayer = IRelayerV2(_relayer);
    trsy = IERC20(_trsy);
  }

  /// @notice Deposits tokens into the escrow
  /// @param _asset The address of the asset to deposit
  /// @param _amount The amount of the asset to deposit
  function deposit(address _asset, uint256 _amount) external {
    _addAsset(_asset);
    IERC20(_asset).safeTransferFrom(msg.sender, address(this), _amount);
    tokenBalance[msg.sender][_asset] += _amount;
  }

  /// @notice Withdraws tokens from the escrow
  /// @param _asset The address of the asset to withdraw
  /// @param _amount The amount of the asset to withdraw
  function withdraw(address _asset, uint256 _amount) external {
    require(tokenBalance[msg.sender][_asset] >= _amount, "Insufficient balance");
    tokenBalance[msg.sender][_asset] -= _amount;
    IERC20(_asset).safeTransfer(msg.sender, _amount);
  }

  /// @notice Deposits an asset to the liquid vault and credits TRSY tokens
  /// @param _user The user whose TRSY balance will be incremented
  /// @param _asset The address of the asset to deposit
  /// @param _amount The amount of the asset to deposit
  function depositToLiquidVault(address _user, address _asset, uint256 _amount) external onlyOwner {
    require(tokenBalance[_user][_asset] >= _amount, "Insufficient asset balance");
    tokenBalance[_user][_asset] -= _amount;
    IERC20(_asset).safeApprove(address(relayer), _amount);
    uint256 trsyBefore = trsy.balanceOf(address(this));
    UserRequest[] memory requests = new UserRequest[](1);
    requests[0] = UserRequest({asset: _asset, amount: _amount});
    relayer.deposit(requests, false, 0);
    uint256 trsyAfter = trsy.balanceOf(address(this));
    uint256 receivedAmount = trsyAfter - trsyBefore;
    trsyBalance[_user] += receivedAmount;
  }

  /// @notice Claims all TRSY tokens from the user's balance
  /// @param _recipient The recipient of the TRSY tokens
  function claimTRSY(address _recipient) external {
    if (msg.sender != owner) _recipient = msg.sender;
    uint256 _amount = trsyBalance[_recipient];
    trsyBalance[_recipient] = 0;
    trsy.transfer(_recipient, _amount);
  }

  /// @notice Computes the total value locked (TVL) in the escrow by summing the USD value of all
  /// assets
  /// @return totalValueLocked The total USD value of all assets in the escrow
  /// @return assetsWithNoPrice List of assets for which the price is not available
  function computeEscrowTVL()
    public
    view
    returns (uint256 totalValueLocked, address[] memory assetsWithNoPrice)
  {
    uint256 count = 0;
    assetsWithNoPrice = new address[](assetList.length);
    for (uint256 i = 0; i < assetList.length; i++) {
      address asset = assetList[i];
      uint256 assetBalance = IERC20(asset).balanceOf(address(this));
      if (assetBalance == 0) continue;
      bool isWhitelisted = IFyde(address(trsy)).assetInfo(asset).isSupported;
      uint256 assetValueInUSD = IFyde(address(trsy)).getQuote(asset, assetBalance);
      if (assetValueInUSD == 0 || !isWhitelisted) {
        assetsWithNoPrice[count] = asset;
        count++;
        continue;
      }
      totalValueLocked += assetValueInUSD;
    }
    // Resize the array to include only the assets with no available price
    assembly {
      mstore(assetsWithNoPrice, count)
    }
  }

  ///@notice Recovers funds in case something goes wrong
  function returnStuckFunds(address _asset, address _to, uint256 _amount) external onlyOwner {
    IERC20(_asset).safeTransfer(_to, _amount);
  }

  /// @notice Returns the number of assets currently managed by the escrow
  /// @return The number of assets
  function getAssetListLength() public view returns (uint256) {
    return assetList.length;
  }

  /// @dev Adds an asset to the asset list and mapping if it is not already present
  /// @param _asset The address of the asset to add
  function _addAsset(address _asset) internal {
    if (!isAssetInEscrow[_asset]) {
      assetList.push(_asset);
      isAssetInEscrow[_asset] = true;
    }
  }
}
