// SPDX-License-Identifier: AGPL-3.0
pragma solidity >=0.8.18;

import { IVault } from "src/adapters/interfaces/IVault.sol";
import { IDefaultStakerRewards } from "src/adapters/interfaces/IDefaultStakerRewards.sol";
import { ReentrancyGuardUpgradeable } from "@openzeppelin-upgradeable/contracts/security/ReentrancyGuardUpgradeable.sol";
import { AccessControlUpgradeable } from "@openzeppelin-upgradeable/contracts/access/AccessControlUpgradeable.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { IERC20Metadata } from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";

/// @title SymbioticAdapter
/// @notice This contract serves as an adapter for interacting with the Symbiotic Protocol
contract SymbioticAdapter is ReentrancyGuardUpgradeable, AccessControlUpgradeable {
  using SafeERC20 for IERC20;

  address public symbioticVault;
  address public collateral;
  uint8 public decimals;

  // Mutable state variables
  address public aeraVault; // Guantlet Vault
  address public rewardsReceiver; // Reward Receiver Address
  uint256[] public withdrawalEpochs;
  mapping(address => bool) public whitelistedStakerRewards;
  uint256 public MAX_WITHDRAWAL;
  uint256[50] private _gap; // storage gaps to reserve space for new state variables in the future without compromising storage compatibility with existing deployments

  // Constants
  bytes32 public constant OWNER = keccak256("OWNER");
  bytes32 public constant VAULT_ROLE = keccak256("VAULT_ROLE");
  string public name;
  string public symbol;

  // Events
  event Deposited(address indexed user, uint256 amount, uint256 depositedAmount, uint256 mintedShares);
  event Withdrawn(address indexed user, uint256 amount, uint256 burnedShares, uint256 mintedShares, uint256 epoch);
  event Claimed(address indexed user, uint256 indexed epoch, uint256 amount);
  event ClaimedBatch(address indexed user, uint256[] indexed epochs, uint256 amount);
  event RewardsClaimed(address indexed token, bytes data, uint256 amount);
  event AeraVaultSet(address indexed newAddress);
  event RewardReceiverSet(address indexed newAddress);
  event StakerRewardWhitelisted(address indexed stakerRewards, bool status);
  event MaxWithdrawalUpdated(uint256 newValue);

  constructor() {
    _disableInitializers();
  }

  /// @notice Initializes the contract with necessary addresses and roles
  /// @param _name name of the adapter
  /// @param _symbol symbol of the adapter
  /// @param _symbioticVault Address of the Symbiotic Vault
  /// @param _aeraVault Address of the Guantlet Vault
  /// @param _rewardsReceiver Address of rewards recipient
  /// @param _owner Address of the initial owner
  function initialize(
    string memory _name,
    string memory _symbol,
    address _symbioticVault,
    address _aeraVault,
    address _rewardsReceiver,
    address _owner
  ) external initializer {
    require(
      _rewardsReceiver != address(0) &&
        _aeraVault != address(0) &&
        _owner != address(0) &&
        _symbioticVault != address(0),
      "nullAddress"
    );
    __ReentrancyGuard_init();
    __AccessControl_init();

    name = _name;
    symbol = _symbol;

    symbioticVault = _symbioticVault;
    aeraVault = _aeraVault;
    rewardsReceiver = _rewardsReceiver;
    collateral = IVault(symbioticVault).collateral();
    require(collateral != address(0), "nullAddress");
    IERC20(collateral).safeIncreaseAllowance(symbioticVault, type(uint256).max);
    decimals = IERC20Metadata(collateral).decimals();
    _setRoleAdmin(OWNER, OWNER);
    _grantRole(OWNER, _owner);
    _grantRole(VAULT_ROLE, _aeraVault);
    MAX_WITHDRAWAL = 5;
    emit RewardReceiverSet(_rewardsReceiver);
    emit AeraVaultSet(_aeraVault);
    emit MaxWithdrawalUpdated(MAX_WITHDRAWAL);
  }

  /// @notice Returns the total balance of the contract including active and unclaimed assets
  /// @return Total balance
  function balanceOf(address account) external view returns (uint256) {
    if (account != aeraVault) return 0;
    uint256 curActiveBalance = IVault(symbioticVault).activeBalanceOf(address(this));
    uint256 unclaimedAsset = 0;
    uint256 lenWithdrawals = withdrawalEpochs.length;
    for (uint256 i; i < lenWithdrawals; ++i) {
      uint256 curEpoch = withdrawalEpochs[i];
      unclaimedAsset += IVault(symbioticVault).withdrawalsOf(curEpoch, address(this));
    }
    return curActiveBalance + unclaimedAsset;
  }

  /// @notice Deposits tokens into the Symbiotic Vault
  /// @param amount Amount of tokens to deposit
  /// @return depositedAmount Actual amount deposited
  /// @return mintedShares Number of shares minted
  function deposit(
    uint256 amount
  ) external nonReentrant onlyRole(VAULT_ROLE) returns (uint256 depositedAmount, uint256 mintedShares) {
    require(amount != 0, "amount=0");
    uint256 balanceBefore = IERC20(collateral).balanceOf(address(this));
    IERC20(collateral).safeTransferFrom(aeraVault, address(this), amount);
    uint256 balanceAfter = IERC20(collateral).balanceOf(address(this));
    (depositedAmount, mintedShares) = IVault(symbioticVault).deposit(address(this), balanceAfter - balanceBefore);
    emit Deposited(msg.sender, amount, depositedAmount, mintedShares);
  }

  /// @notice Withdraws tokens from the Symbiotic Vault
  /// @param amount Amount of tokens to withdraw
  /// @return burnedShares Number of shares burned
  /// @return mintedShares Number of shares minted
  function withdraw(
    uint256 amount
  ) external nonReentrant onlyRole(VAULT_ROLE) returns (uint256 burnedShares, uint256 mintedShares) {
    (burnedShares, mintedShares) = IVault(symbioticVault).withdraw(address(this), amount);

    uint256 epoch = IVault(symbioticVault).currentEpoch() + 1;
    (bool indexExists, ) = _findEpochIndex(epoch, withdrawalEpochs);
    if (!indexExists) {
      require(withdrawalEpochs.length < MAX_WITHDRAWAL, "claimBeforeWithdraw");
      withdrawalEpochs.push(epoch);
    }
    emit Withdrawn(msg.sender, amount, burnedShares, mintedShares, epoch);
  }

  /// @notice Claims tokens for a specific epoch
  /// @param epoch Epoch to claim for
  /// @return amount Amount claimed
  function claim(uint256 epoch) external nonReentrant onlyRole(VAULT_ROLE) returns (uint256 amount) {
    require(epoch < IVault(symbioticVault).currentEpoch(), "!NotClaimable");
    uint256[] memory _withdrawalEpochs = withdrawalEpochs;
    (bool indexExists, uint256 index) = _findEpochIndex(epoch, _withdrawalEpochs);
    require(indexExists, "!WithdrawalEpoch");
    if (IVault(symbioticVault).withdrawalsOf(epoch, address(this)) != 0)
      amount = IVault(symbioticVault).claim(aeraVault, epoch);
    _processQueuedClaim(index, _withdrawalEpochs);
    emit Claimed(msg.sender, epoch, amount);
  }

  /// @notice Accept Donation for a specific epoch
  /// @param epoch Epoch to claim for
  /// @return amount Amount claimed
  function acceptDonation(uint256 epoch) external nonReentrant onlyRole(VAULT_ROLE) returns (uint256 amount) {
    require(epoch < IVault(symbioticVault).currentEpoch(), "!NotClaimable");
    (bool indexExists, ) = _findEpochIndex(epoch, withdrawalEpochs);
    require(!indexExists, "!Donation");
    amount = IVault(symbioticVault).claim(aeraVault, epoch);
    emit Claimed(msg.sender, epoch, amount);
  }

  /// @notice Claims tokens for multiple epochs
  /// @param epochs Array of epochs to claim for
  /// @return amount Total amount claimed
  function claimBatch(uint256[] calldata epochs) external nonReentrant onlyRole(VAULT_ROLE) returns (uint256 amount) {
    amount = _claimBatch(epochs, epochs);
  }

  /// @notice Claims tokens for all elligible epochs
  function claimAll() external nonReentrant onlyRole(VAULT_ROLE) returns (uint256 totalAmount) {
    uint256[] memory _withdrawalEpochs = withdrawalEpochs;
    uint256 lenWithdraw = _withdrawalEpochs.length;
    uint256 currentEpoch = IVault(symbioticVault).currentEpoch();
    uint256[] memory epochsToProcess = new uint256[](lenWithdraw);
    uint256[] memory epochsToClaim = new uint256[](lenWithdraw);

    uint256 processCount = 0;
    uint256 claimCount = 0;

    // Identify eligible epochs
    for (uint256 i = 0; i < lenWithdraw; ++i) {
      uint256 _wEpoch = _withdrawalEpochs[i];
      if (_wEpoch < currentEpoch) {
        epochsToProcess[processCount] = _wEpoch;
        ++processCount;
        if (IVault(symbioticVault).withdrawalsOf(_wEpoch, address(this)) != 0) {
          epochsToClaim[claimCount] = _wEpoch;
          ++claimCount;
        }
      }
    }

    if (processCount == 0) return 0;

    // Create a new array with only the eligible epochs
    uint256[] memory claimEpochs = new uint256[](claimCount);
    uint256[] memory processEpochs = new uint256[](processCount);

    for (uint256 i = 0; i < claimCount; i++) {
      claimEpochs[i] = epochsToClaim[i];
    }

    for (uint256 i = 0; i < processCount; i++) {
      processEpochs[i] = epochsToProcess[i];
    }

    totalAmount = _claimBatch(claimEpochs, processEpochs);
  }

  /// @notice Claims rewards from the DefaultStakerRewards contract
  /// @param stakerRewards Address of the staker reward contract
  /// @param token Address of the reward token
  /// @param data Additional data for claiming rewards
  function claimRewards(
    address stakerRewards,
    address token,
    bytes calldata data
  ) external nonReentrant onlyRole(VAULT_ROLE) {
    require(whitelistedStakerRewards[stakerRewards], "!whitelisted");
    address _rewardsReceiver = rewardsReceiver;
    uint256 balanceBefore = IERC20(token).balanceOf(_rewardsReceiver);
    IDefaultStakerRewards(stakerRewards).claimRewards(_rewardsReceiver, token, data);
    uint256 balanceAfter = IERC20(token).balanceOf(_rewardsReceiver);
    emit RewardsClaimed(token, data, balanceAfter - balanceBefore);
  }

  function execute(
    address to,
    uint256 value,
    bytes calldata data
  ) external payable nonReentrant onlyRole(OWNER) returns (bool, bytes memory) {
    (bool success, bytes memory result) = to.call{ value: value }(data);
    return (success, result);
  }

  /// @notice Sets a new aeraVault address
  /// @param _newAeraVault New AeraVault address
  function setAeraVault(address _newAeraVault) external onlyRole(VAULT_ROLE) {
    require(_newAeraVault != address(0), "nullAddress");
    _revokeRole(VAULT_ROLE, aeraVault);
    aeraVault = _newAeraVault;
    _grantRole(VAULT_ROLE, _newAeraVault);
    emit AeraVaultSet(_newAeraVault);
  }

  /// @notice Sets a new reward receiver address
  /// @param _newRewardsReceiver New Reward Receiver address
  function setRewardReceiver(address _newRewardsReceiver) external onlyRole(VAULT_ROLE) {
    require(_newRewardsReceiver != address(0), "nullAddress");
    rewardsReceiver = _newRewardsReceiver;
    emit RewardReceiverSet(_newRewardsReceiver);
  }

  /// @notice Sets a new value for MAX_WITHDRAWAL
  /// @param _newMaxWithdrawal New value for MAX_WITHDRAWAL
  function setMaxWithdrawal(uint256 _newMaxWithdrawal) external onlyRole(VAULT_ROLE) {
    require(_newMaxWithdrawal > 0, ">0");
    MAX_WITHDRAWAL = _newMaxWithdrawal;
    emit MaxWithdrawalUpdated(_newMaxWithdrawal);
  }

  /// @notice Toggles the whitelist status of a staker reward address
  /// @param stakerRewards Address of the staker reward contract
  /// @param status True to whitelist, false to remove from whitelist
  function toggleStakerRewardWhitelist(address stakerRewards, bool status) external onlyRole(VAULT_ROLE) {
    require(stakerRewards != address(0), "nullAddress");
    whitelistedStakerRewards[stakerRewards] = status;
    emit StakerRewardWhitelisted(stakerRewards, status);
  }

  /// @notice get withdrawal epochs
  function getWithdrawalEpochs() external view returns (uint256[] memory) {
    return withdrawalEpochs;
  }

  /// @notice Finds the index of a given epoch in the withdrawalEpochs array
  /// @param epoch Epoch to find
  /// @param _withdrawalEpochs Array of withdrawal epochs
  /// @return bool Indicates if the epoch was found
  /// @return uint256 Index of the epoch if found
  function _findEpochIndex(uint256 epoch, uint256[] memory _withdrawalEpochs) internal pure returns (bool, uint256) {
    uint256 curEpoch;
    uint256 lenWithdrawals = _withdrawalEpochs.length;
    for (uint256 i = 0; i < lenWithdrawals; ++i) {
      curEpoch = _withdrawalEpochs[i];
      if (epoch == curEpoch) {
        return (true, i);
      }
    }
    return (false, 0);
  }

  /// @notice Claims tokens for multiple epochs and processes queued claims for specified epochs
  /// @param epochsToClaim Array of epochs for which to claim tokens
  /// @param epochsToProcess Array of epochs for which to process queued claims
  /// @return amount The total amount of tokens claimed
  function _claimBatch(
    uint256[] memory epochsToClaim,
    uint256[] memory epochsToProcess
  ) internal returns (uint256 amount) {
    if (epochsToClaim.length != 0) amount = IVault(symbioticVault).claimBatch(aeraVault, epochsToClaim);
    uint256 lenEpochs = epochsToProcess.length;
    for (uint256 i; i < lenEpochs; i++) {
      uint256[] memory _withdrawalEpochs = withdrawalEpochs;
      (bool indexExists, uint256 index) = _findEpochIndex(epochsToProcess[i], _withdrawalEpochs);
      require(indexExists, "!WithdrawalEpoch");
      _processQueuedClaim(index, _withdrawalEpochs);
    }
    emit ClaimedBatch(msg.sender, epochsToProcess, amount);
  }

  /// @notice Processes a claimed epoch by removing it from the withdrawalEpochs array
  /// @param epochClaimedIdx Index of the claimed epoch
  /// @param _withdrawalEpochs Array of withdrawal epochs
  function _processQueuedClaim(uint256 epochClaimedIdx, uint256[] memory _withdrawalEpochs) internal {
    uint256 length = _withdrawalEpochs.length;
    if (epochClaimedIdx != length - 1) {
      withdrawalEpochs[epochClaimedIdx] = _withdrawalEpochs[length - 1];
    }
    withdrawalEpochs.pop();
  }
}
