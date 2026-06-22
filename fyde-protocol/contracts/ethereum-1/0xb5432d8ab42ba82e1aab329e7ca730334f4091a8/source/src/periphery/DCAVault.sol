// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.19;

/// Utils /////
import {Ownable} from "src/utils/Ownable.sol";

import {IERC20} from "openzeppelin-contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "openzeppelin-contracts/token/ERC20/utils/SafeERC20.sol";

/// @title DCA Vault Contract
/// @notice Manages deposits and withdrawals of assets for users and swaps for stables and WETH
contract DCAVault is Ownable {
  using SafeERC20 for IERC20;

  event Deposit(address indexed user, address indexed asset, uint256 amount);
  event Withdraw(address indexed user, address indexed asset, uint256 amount);
  event Swap(
    address indexed user, address indexed asset, address indexed targetAsset, uint256 amount
  );

  /// @notice WETH token address
  address public constant WETH = 0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2;
  /// @notice DAI token address
  address public constant DAI = 0x6B175474E89094C44Da98b954EedeAC495271d0F;
  /// @notice USDC token address
  address public constant USDC = 0xA0b86991c6218b36c1d19D4a2e9Eb0cE3606eB48;
  /// @notice USDT token address
  address public constant USDT = 0xdAC17F958D2ee523a2206206994597C13D831ec7;

  /// @notice Mapping of asset and depositor addresses to their balances
  mapping(address => mapping(address => uint256)) public tokenBalance;

  /// @notice Mapping of targe asset to depositor addresses to their token balances
  mapping(address => mapping(address => uint256)) public targetBalance;

  /// @notice List of all assets currently held in the vault
  address[] public assetList;

  /// @notice List of all users who have deposited
  address[] public userList;

  /// @notice Mapping to check if an asset is in the vault
  mapping(address => bool) public isInVault;

  /// @notice Mapping to check if address is user
  mapping(address => bool) public isUser;

  /// @notice Mapping to check if address is a swapper
  mapping(address => bool) public isSwapper;

  /// @notice Fee percentage for swaps
  uint256 public feePercentage = 1e18; // Fee percentage (1e18 == 1%)

  constructor(address _owner) Ownable(_owner) {
    // Add WETH, DAI, USDC, and USDT to the asset list for TVL calculation
    assetList.push(WETH);
    assetList.push(DAI);
    assetList.push(USDC);
    assetList.push(USDT);
  }

  /// @notice Deposits tokens into the vault
  /// @param _asset The address of the asset to deposit
  /// @param _amount The amount of the asset to deposit
  function deposit(address _asset, uint256 _amount) external {
    require(
      _asset != WETH && _asset != DAI && _asset != USDC && _asset != USDT,
      "Asset cannot be WETH, DAI, USDC, or USDT"
    );
    _addAsset(_asset);
    _addUser(msg.sender);
    IERC20(_asset).safeTransferFrom(msg.sender, address(this), _amount);
    tokenBalance[_asset][msg.sender] += _amount;
    emit Deposit(msg.sender, _asset, _amount);
  }

  /// @notice Withdraws tokens from the vault
  /// @param _asset The address of the asset to withdraw
  /// @param _amount The amount of the asset to withdraw
  function withdraw(address _asset, uint256 _amount) external {
    require(tokenBalance[_asset][msg.sender] >= _amount, "Insufficient balance");
    tokenBalance[_asset][msg.sender] -= _amount;
    IERC20(_asset).safeTransfer(msg.sender, _amount);
    emit Withdraw(msg.sender, _asset, _amount);
  }

  /// @notice Swaps an asset for a target asset via a swapper contract, updating the user's balance.
  /// @dev This function should be called by an approved swapper only.
  /// @param _user The user whose token is swapped.
  /// @param _asset The address of the asset to be swapped.
  /// @param _amount The amount of the asset to be swapped.
  /// @param _targetAsset The address of the target asset for the swap.
  /// @param _encodedData Additional data required for the swap, encoded in bytes.
  function swap(
    address _user,
    address _asset,
    uint256 _amount,
    address _targetAsset,
    bytes calldata _encodedData
  ) external onlySwapper {
    require(
      _targetAsset == WETH || _targetAsset == DAI || _targetAsset == USDC || _targetAsset == USDT,
      "Target asset must be WETH, DAI, USDC, or USDT"
    );
    require(tokenBalance[_asset][_user] >= _amount, "Insufficient asset balance");
    tokenBalance[_asset][_user] -= _amount;
    IERC20(_asset).safeTransfer(msg.sender, _amount);
    uint256 targetBalanceBefore = IERC20(_targetAsset).balanceOf(address(this));
    ISwapCallback(msg.sender).swapCallback(_encodedData);
    uint256 targetBalanceAfter = IERC20(_targetAsset).balanceOf(address(this));
    uint256 receivedAmount = targetBalanceAfter - targetBalanceBefore;
    (uint256 netAmount, uint256 feeAmount) = _deductPercentageFee(receivedAmount);
    targetBalance[_targetAsset][_user] += netAmount;
    targetBalance[_targetAsset][owner] += feeAmount;

    emit Swap(_user, _asset, _targetAsset, _amount);
  }

  /// @notice Claims all target tokens from the user's balance
  /// @param _recipient The recipient of the tokens
  function claim(address _recipient) external {
    if (msg.sender != owner) _recipient = msg.sender;
    address[4] memory targetAssets = [WETH, DAI, USDC, USDT];
    for (uint256 i = 0; i < targetAssets.length; i++) {
      uint256 _amount = targetBalance[targetAssets[i]][_recipient];
      if (_amount > 0) {
        targetBalance[targetAssets[i]][_recipient] = 0;
        IERC20(targetAssets[i]).transfer(_recipient, _amount);
      }
    }
  }

  /// @notice Allows the owner to set the address of the swapper contract
  /// @param _swapper The address of the new swapper contract
  function setSwapper(address _swapper, bool _isSwapper) external onlyOwner {
    isSwapper[_swapper] = _isSwapper;
  }

  ///@notice Recovers funds in case something goes wrong
  function returnStuckFunds(address _asset, address _to, uint256 _amount) external onlyOwner {
    IERC20(_asset).safeTransfer(_to, _amount);
  }

  /// @notice Sets the fee percentage
  /// @param _feePercentage The new fee percentage in basis points
  function setFeePercentage(uint256 _feePercentage) external onlyOwner {
    feePercentage = _feePercentage;
  }

  /// @notice Returns the number of assets currently managed by the vault
  /// @return The number of assets
  function getAssetListLength() public view returns (uint256) {
    return assetList.length;
  }

  /// @notice Returns the number of assets currently managed by the vault
  /// @return The number of assets
  function getUserListLength() public view returns (uint256) {
    return userList.length;
  }
  /// @notice Retrieves the balances of all assets held by the vault.
  /// @return assets The list of asset addresses.
  /// @return balances The corresponding list of balances for each asset.

  function getAllAssetBalances()
    public
    view
    returns (address[] memory assets, uint256[] memory balances)
  {
    assets = assetList;
    balances = new uint256[](assetList.length);
    for (uint256 i = 0; i < assetList.length; i++) {
      balances[i] = IERC20(assetList[i]).balanceOf(address(this));
    }
    return (assets, balances);
  }

  /// @notice Retrieves the list of users and their balances for a specific asset where balances are
  /// non-zero
  /// @param _asset The address of the asset
  /// @return users An array of users with non-zero balances for the specified asset
  /// @return balances An array of non-zero balances corresponding to the users array
  function getBalanceListForAsset(address _asset)
    public
    view
    returns (address[] memory users, uint256[] memory balances)
  {
    uint256 count = 0;
    users = new address[](userList.length);
    balances = new uint256[](userList.length);

    for (uint256 i = 0; i < userList.length; i++) {
      uint256 balance = tokenBalance[_asset][userList[i]];
      if (balance > 0) {
        users[count] = userList[i];
        balances[count] = balance;
        count++;
      }
    }

    assembly {
      mstore(users, count)
      mstore(balances, count)
    }

    return (users, balances);
  }

  /// @notice Calculates the net amount after deducting the fee and the fee amount itself
  /// @param _amount The initial amount before fee deduction
  /// @return netAmount The amount after fee deduction
  /// @return feeAmount The calculated fee amount
  function _deductPercentageFee(uint256 _amount)
    internal
    view
    returns (uint256 netAmount, uint256 feeAmount)
  {
    feeAmount = (_amount * feePercentage) / 1e20;
    netAmount = _amount - feeAmount;
    return (netAmount, feeAmount);
  }

  /// @dev Adds an asset to the asset list and mapping if it is not already present
  /// @param _asset The address of the asset to add
  function _addAsset(address _asset) internal {
    if (!isInVault[_asset]) {
      assetList.push(_asset);
      isInVault[_asset] = true;
    }
  }

  /// @dev Adds a user to the user list and mapping if not already present
  /// @param _user The address of the user to add
  function _addUser(address _user) internal {
    if (!isUser[_user]) {
      userList.push(_user);
      isUser[_user] = true;
    }
  }

  modifier onlySwapper() {
    require(isSwapper[msg.sender], "Caller is not authorized as swapper");
    _;
  }
}

interface ISwapCallback {
  function swapCallback(bytes calldata encodedData) external;
}
