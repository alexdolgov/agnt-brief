// SPDX-License-Identifier: MIT
pragma solidity 0.8.4;

import "@openzeppelin/contracts-upgradeable/token/ERC20/IERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/utils/SafeERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/cryptography/draft-EIP712Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/cryptography/ECDSAUpgradeable.sol";

contract MaviaMarketPool is AccessControlUpgradeable, ReentrancyGuardUpgradeable, EIP712Upgradeable {
  using SafeERC20Upgradeable for IERC20Upgradeable;

  bytes32 public constant EDITOR_ROLE = keccak256("EDITOR_ROLE");
  bytes32 public constant VALIDATOR_ROLE = keccak256("VALIDATOR_ROLE");

  address public token;
  address public presenter;
  mapping(address => uint256) public balanceOf;
  uint256 public totalSupply;

  struct Entry {
    uint256 id;
    address user;
    address token;
    uint256 amount;
    uint256 time;
  }

  mapping(bytes => address) public usedSignature;
  mapping(address => uint256) public validatorWeight;
  mapping(uint256 => Entry) public depositEntries;
  mapping(uint256 => Entry) public withdrawalEntries;
  mapping(address => bool) public isInBlacklist;

  uint256 public depositId;
  uint256 public totalValidator;
  uint256 public totalWeight;

  bool public enableDeposit;
  bool public enableWithdraw;
  uint256 public validatorsRequired;
  uint256 public weightsRequired;
  uint256 public receiveWindow;
  bool public releaseAllMode;

  event Transfer(address indexed src, address indexed dst, uint256 wad);

  modifier onlyPresenter() {
    require(_msgSender() == presenter, "The caller has no rights");
    _;
  }

  /**
   * @dev Upgradable initializer
   */
  function MaviaMarketPoolInit(address _token, address _presenter) external initializer {
    __ReentrancyGuard_init();
    __AccessControl_init();
    __EIP712_init("MaviaMarketPool", "1.0.0");

    address sender_ = _msgSender();
    _setupRole(DEFAULT_ADMIN_ROLE, sender_);
    _setupRole(EDITOR_ROLE, sender_);

    token = _token;
    presenter = _presenter;
    receiveWindow = 15 minutes;
    validatorsRequired = 2;
    weightsRequired = 20;
    enableDeposit = true;
    enableWithdraw = true;
  }

  function name() external pure returns (string memory) {
    return "MaviaMarketPool";
  }

  function symbol() external pure returns (string memory) {
    return "MMP";
  }

  function decimals() external pure returns (uint256) {
    return 18;
  }

  /**
   * @dev Deposit tokens to the pool
   * @param _pAmount Amount to deposit
   */
  function deposit(uint256 _pAmount) external nonReentrant {
    require(enableDeposit, "0x0");
    require(_pAmount > 0, "0x1");

    depositId++;
    require(depositEntries[depositId].amount == 0, "0x2");

    address sender_ = _msgSender();
    require(!isInBlacklist[sender_], "0x3");

    totalSupply += _pAmount;
    balanceOf[sender_] += _pAmount;
    IERC20Upgradeable(token).safeTransferFrom(sender_, address(this), _pAmount);

    // Log
    depositEntries[depositId] = Entry(depositId, sender_, token, _pAmount, block.timestamp);

    emit Transfer(address(0), sender_, _pAmount);
  }

  /**
   * @dev Transfer tokens from one address to another. Trigger by presenter
   * @param _pId Request id
   * @param _pAmount Amount to withdraw
   * @param _pSigTime Signature time in second
   * @param _pSignatures Signatures
   */
  function withdraw(
    uint256 _pId,
    uint256 _pAmount,
    uint256 _pSigTime,
    bytes[] calldata _pSignatures
  ) external nonReentrant {
    require(enableWithdraw, "0x0");
    require(_pAmount > 0, "0x1");

    address sender_ = _msgSender();

    require(!isInBlacklist[sender_], "0x2");
    require(withdrawalEntries[_pId].amount == 0, "0x3");
    require(block.timestamp <= _pSigTime + receiveWindow, "0x4");

    // Authentication
    if (!releaseAllMode) {
      _fAuthenticate(sender_, _pId, token, _pAmount, _pSigTime, _pSignatures);
    }

    require(balanceOf[sender_] >= _pAmount, "0x5");
    balanceOf[sender_] -= _pAmount;
    totalSupply -= _pAmount;
    IERC20Upgradeable(token).safeTransfer(sender_, _pAmount);

    // Log
    withdrawalEntries[_pId] = Entry(_pId, sender_, token, _pAmount, block.timestamp);

    emit Transfer(sender_, address(0), _pAmount);
  }

  /**
   * @dev Transfer tokens from one address to another. Trigger by presenter
   */
  function transferFrom(address _from, address _to, uint256 _amount) external onlyPresenter returns (bool) {
    require(_amount > 0, "0x0");
    require(balanceOf[_from] >= _amount, "0x1");
    balanceOf[_from] -= _amount;
    balanceOf[_to] += _amount;
    emit Transfer(_from, _to, _amount);
    return true;
  }

  /**
   * @dev Enable bridge
   * @param _pDeposit Deposit mode. True means user can deposit
   * @param _pWithdraw Withdraw mode. True means user can withdraw
   */
  function fEnableBridge(bool _pDeposit, bool _pWithdraw) external onlyRole(EDITOR_ROLE) {
    enableDeposit = _pDeposit;
    enableWithdraw = _pWithdraw;
  }

  /**
   * @dev Release all mode
   * @param _pMode True means user can withdraw without signatures
   */
  function fSetReleaseAllMode(bool _pMode) external onlyRole(EDITOR_ROLE) {
    releaseAllMode = _pMode;
  }

  /**
   * @dev Set timeout duration
   * @param _pDuration Duration in seconds
   */
  function fSetReceiveWindow(uint256 _pDuration) external onlyRole(EDITOR_ROLE) {
    receiveWindow = _pDuration;
  }

  /**
   * @dev Set presenter
   */
  function fSetPresenter(address _pPresenter) external onlyRole(EDITOR_ROLE) {
    presenter = _pPresenter;
  }

  /**
   * @dev Function to add a account to blacklist
   */
  function fSetBlacklist(address _pAccount, bool _pStatus) external onlyRole(EDITOR_ROLE) {
    require(isInBlacklist[_pAccount] != _pStatus, "Already");
    isInBlacklist[_pAccount] = _pStatus;
  }

  /**
   * @dev Set validators required
   * @param _pValidators Validators count
   * @param _pWeights Weights count
   */
  function fSetValidatorsRequired(uint256 _pValidators, uint256 _pWeights) external onlyRole(EDITOR_ROLE) {
    validatorsRequired = _pValidators;
    weightsRequired = _pWeights;
  }

  /**
   * @dev Add validator
   * @param _pAccount Validator address
   * @param _pWeight Validator weight
   */
  function fAddValidator(address _pAccount, uint256 _pWeight) external onlyRole(EDITOR_ROLE) {
    require(_pAccount != address(0) && _pWeight > 0 && validatorWeight[_pAccount] == 0, "0x0");
    totalValidator++;
    totalWeight += _pWeight;
    validatorWeight[_pAccount] = _pWeight;
    if (!hasRole(VALIDATOR_ROLE, _pAccount)) {
      grantRole(VALIDATOR_ROLE, _pAccount);
    }
  }

  /**
   * @dev Remove validator
   * @param _pAccount Validator address
   */
  function fRemoveValidator(address _pAccount) external onlyRole(EDITOR_ROLE) {
    uint currentWeight_ = validatorWeight[_pAccount];
    require(currentWeight_ > 0, "0x0");
    totalValidator--;
    totalWeight -= currentWeight_;
    validatorWeight[_pAccount] = 0;
    if (hasRole(VALIDATOR_ROLE, _pAccount)) {
      revokeRole(VALIDATOR_ROLE, _pAccount);
    }
  }

  /**
   * @dev Private authenticate to check the signature
   */
  function _fAuthenticate(
    address _pSender,
    uint256 _pId,
    address _pToken,
    uint256 _pAmount,
    uint256 _pSigTime,
    bytes[] calldata _pSignatures
  ) private {
    uint256 validatorCount_ = 0;
    uint256 weightCount_ = 0;
    for (uint256 i = 0; i < _pSignatures.length; i++) {
      bytes32 digest_ = _hash(_pSender, _pId, _pToken, _pAmount, _pSigTime);
      address validator_ = ECDSAUpgradeable.recover(digest_, _pSignatures[i]);
      require(hasRole(VALIDATOR_ROLE, validator_), "_fAuthenticate_0x1");
      require(usedSignature[_pSignatures[i]] == address(0), "_fAuthenticate_0x2");
      usedSignature[_pSignatures[i]] = validator_;
      validatorCount_++;
      weightCount_ += validatorWeight[validator_];
    }
    require(validatorCount_ >= validatorsRequired, "_fAuthenticate_0x3");
    require(weightCount_ >= weightsRequired, "_fAuthenticate_0x4");
  }

  /**
   * @dev Hash v4
   */
  function _hash(
    address _pSender,
    uint256 _pId,
    address _pToken,
    uint256 _pAmount,
    uint256 _pSigTime
  ) private view returns (bytes32) {
    return
      _hashTypedDataV4(
        keccak256(
          abi.encode(
            keccak256(
              "MaviaMarketPool(address _pSender,uint256 _pId,address _pToken,uint256 _pAmount,uint256 _pSigTime)"
            ),
            _pSender,
            _pId,
            _pToken,
            _pAmount,
            _pSigTime
          )
        )
      );
  }
}
