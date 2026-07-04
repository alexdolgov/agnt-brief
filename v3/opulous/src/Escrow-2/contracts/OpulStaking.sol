// SPDX-License-Identifier: Apache2.0
pragma solidity ^0.8.18;

import '@openzeppelin/contracts/token/ERC20/IERC20.sol';
import '@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol';
import '@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol';
import '@openzeppelin/contracts-upgradeable/utils/cryptography/EIP712Upgradeable.sol';
import '@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol';
import '@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol';
import './Escrow.sol';
import 'hardhat/console.sol';

contract OpulStaking is
  Initializable,
  AccessControlUpgradeable,
  ReentrancyGuardUpgradeable,
  EIP712Upgradeable,
  UUPSUpgradeable
{
  enum StakingStatus {
    Locked,
    Unstaked
  }
  using SafeERC20 for IERC20;
  address public opulToken;
  struct UserStakingData {
    uint256 id;
    address user;
    uint256 stakedAmount;
    uint256 lockupPeriod;
    uint256 stakingDate;
    StakingStatus status;
    uint256 TicketsGenerated;
    uint256 rewards;
    uint256 penalty;
  }
  struct StakingContractState {
    uint256 totalStakedAmount;
    uint256 totalStakers;
  }
  struct StakeTokensInputs {
    address user;
    uint256 amount;
    uint256 lockupPeriod;
    uint256 ticketsAmount;
    address signer;
    uint256 nonce;
    uint256 deadline;
  }
  struct IncreaseLockupPeriodInputs {
    uint256 id;
    uint256 newLockupPeriod;
    uint256 ticketsAmount;
    address signer;
    uint256 nonce;
    uint256 deadline;
  }
  struct UnstakeTokensInputs {
    uint256 id;
    uint256 reward;
    uint256 Penalty;
    address signer;
    uint256 nonce;
    uint256 deadline;
  }
  struct UserStakingIds {
    uint256 balance;
    uint256 counter;
    mapping(uint256 => uint256) ids;
  }

  bytes32 public constant OPERATION_ROLE = keccak256('OPERATION_ROLE');
  mapping(uint256 => bool) public usedNonces;
  mapping(uint256 => UserStakingData) private usersStakingData;
  mapping(address => UserStakingIds) private userStakingIds;
  mapping(uint256 => uint256) private nonceToId;
  StakingContractState private stakingContractState;
  uint256 public stakesCounter;
  address public ticketsEscrowAddress;
  address public opulEscrowAddress;

  event NonceUsed(uint256 nonce);
  event TokensStaked(
    uint256 id,
    address user,
    uint256 amount,
    uint256 lockupPeriod,
    uint256 ticketsAmount
  );
  event LockupPeriodIncreased(uint256 id, uint256 newLockupPeriod, uint256 ticketsAmount);
  event TokensUnstaked(uint256 id, uint256 reward, uint256 Penalty);

  modifier onlyAdmin() {
    require(hasRole(DEFAULT_ADMIN_ROLE, msg.sender), 'Caller is not an admin');
    _;
  }

  /// @custom:oz-upgrades-unsafe-allow constructor
  constructor() initializer {}

  function initialize(
    address _opulToken,
    address _ticketsEscrow,
    address _opulEscrow
  ) public initializer {
    require(_opulToken != address(0), 'Invalid Opul Token Address');
    require(_ticketsEscrow != address(0), 'Invalid Tickets Escrow Address');
    require(_opulEscrow != address(0), 'Invalid Opul Escrow Address');
    __AccessControl_init();
    __UUPSUpgradeable_init();
    __EIP712_init_unchained('OPULOUS', '1');
    _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
    _grantRole(OPERATION_ROLE, msg.sender);
    opulToken = _opulToken;
    ticketsEscrowAddress = _ticketsEscrow;
    opulEscrowAddress = _opulEscrow;
  }

  /**
   * @dev stakeTokens function is used to stake tokens in the staking contract
   * @param _Input the data that is sent by the user
   * @param _signature the signature of the user that is used to verify that the user is the one who signed the message
   */
  function stakeTokens(
    StakeTokensInputs calldata _Input,
    bytes calldata _signature
  ) external nonReentrant {
    // if (usedNonces[Input.nonce]) revert InvalidSignature();
    // if (block.timestamp > Input.deadline) revert InvalidSignature();
    require(usedNonces[_Input.nonce] == false, 'Nonce already used');
    require(block.timestamp <= _Input.deadline, 'Deadline has passed');
    require(_Input.amount > 0, 'Amount should be greater than 0');
    require(_Input.lockupPeriod > 0, 'Lockup period should be greater than 0');
    require(_Input.user == msg.sender, 'User is not the owner of the stake');
    verifyStakeTokensSignature(_Input, _signature);
    safeTransferFrom(opulToken, _Input.user, address(this), _Input.amount);
    Escrow(payable(ticketsEscrowAddress)).mintTo(_Input.user, _Input.ticketsAmount);
    uint256 id = stakesCounter + 1;
    usersStakingData[id] = UserStakingData(
      id,
      _Input.user,
      _Input.amount,
      _Input.lockupPeriod,
      block.timestamp,
      StakingStatus.Locked,
      _Input.ticketsAmount,
      0,
      0
    );
    userStakingIds[_Input.user].ids[userStakingIds[_Input.user].counter] = id;
    userStakingIds[_Input.user].counter += 1;
    userStakingIds[_Input.user].balance += 1;
    stakesCounter += 1;
    stakingContractState.totalStakedAmount += _Input.amount;
    if (userStakingIds[_Input.user].balance == 1) {
      stakingContractState.totalStakers += 1;
    }
    nonceToId[_Input.nonce] = id;
    emit TokensStaked(id, _Input.user, _Input.amount, _Input.lockupPeriod, _Input.ticketsAmount);
  }

  /**
   * @dev increaseLockupPeriod function is used to increase the lockup period of the user
   * @param _Input the data that is sent by the user
   * @param _signature the signature of the user that is used to verify that the user is the one who signed the message
   */
  function increaseLockupPeriod(
    IncreaseLockupPeriodInputs calldata _Input,
    bytes calldata _signature
  ) external {
    require(!usedNonces[_Input.nonce], 'Nonce already used');
    require(block.timestamp <= _Input.deadline, 'Deadline has passed');
    require(_Input.newLockupPeriod > 0, 'Lockup period should be greater than 0');
    require(
      usersStakingData[_Input.id].stakingDate + usersStakingData[_Input.id].lockupPeriod >
        block.timestamp,
      'Lockup period has already ended'
    );
    require(usersStakingData[_Input.id].user == msg.sender, 'User is not the owner of the stake');
    verifyIncreaseLockupPeriodSignature(_Input, _signature);
    usersStakingData[_Input.id].lockupPeriod = _Input.newLockupPeriod;
    Escrow(payable(ticketsEscrowAddress)).mintTo(
      usersStakingData[_Input.id].user,
      _Input.ticketsAmount
    );
    usersStakingData[_Input.id].TicketsGenerated += _Input.ticketsAmount;
  }

  /**
   * @dev unstakeTokens function is used to unstake tokens from the staking contract
   * @param _Input the data that is sent by the user
   * @param _signature the signature of the user that is used to verify that the user is the one who signed the message
   */
  function unstakeTokens(
    UnstakeTokensInputs calldata _Input,
    bytes calldata _signature
  ) external nonReentrant {
    require(!usedNonces[_Input.nonce], 'Nonce already used');
    require(block.timestamp <= _Input.deadline, 'Deadline has passed');
    require(usersStakingData[_Input.id].user == msg.sender, 'User is not the owner of the stake');
    require(
      _Input.Penalty <= usersStakingData[_Input.id].stakedAmount,
      'Penalty should be less than or equal to the staked amount'
    );
    require(
      usersStakingData[_Input.id].status == StakingStatus.Locked,
      'Staking status should be locked'
    );
    verifyUnstakeTokensSignature(_Input, _signature);
    usersStakingData[_Input.id].rewards = _Input.reward;
    usersStakingData[_Input.id].penalty = _Input.Penalty;
    usersStakingData[_Input.id].status = StakingStatus.Unstaked;
    userStakingIds[usersStakingData[_Input.id].user].balance -= 1;
    stakingContractState.totalStakedAmount -= usersStakingData[_Input.id].stakedAmount;
    if (userStakingIds[usersStakingData[_Input.id].user].balance == 0) {
      stakingContractState.totalStakers -= 1;
    }
    uint256 amountToSendBack = usersStakingData[_Input.id].stakedAmount +
      _Input.reward -
      _Input.Penalty;
    uint256 neededAmount = 0;
    if (amountToSendBack > usersStakingData[_Input.id].stakedAmount) {
      neededAmount = amountToSendBack - usersStakingData[_Input.id].stakedAmount;
      Escrow(payable(opulEscrowAddress)).withdraw(neededAmount);
    }
    safeTransfer(opulToken, usersStakingData[_Input.id].user, amountToSendBack);
    emit TokensUnstaked(_Input.id, _Input.reward, _Input.Penalty);
  }

  /**
   * @dev get the staking data for a list of users
   * @param _user The address of the user to get the staking data for
   */
  function getUserStakingData(
    address _user,
    uint256 _page,
    uint256 _pageSize
  ) external view returns (UserStakingData[] memory results) {
    require(_page > 0, 'Page should start from 1');
    uint256 start = (_page - 1) * _pageSize;
    uint256 end = start + _pageSize > userStakingIds[_user].counter
      ? userStakingIds[_user].counter
      : start + _pageSize;
    results = new UserStakingData[](end - start);
    for (uint256 i = start; i < end; i++) {
      results[i - start] = usersStakingData[userStakingIds[_user].ids[i]];
    }
  }

  /**
   * @dev get the staking contract state
   */
  function getStakingContractState() external view returns (StakingContractState memory) {
    return stakingContractState;
  }

  function getStakingDataByID(uint256 _id) external view returns (UserStakingData memory) {
    return usersStakingData[_id];
  }

  function getStakingDataByNonce(uint256 _nonce) external view returns (UserStakingData memory) {
    return usersStakingData[nonceToId[_nonce]];
  }

  /**
   * @dev verifyStakeTokensSignature function is used to verify that the data is signed by the signer
   * @param _Input the data that is going to be verified
   * @param _signature the signature that is going to be used to verify the data
   */
  function verifyStakeTokensSignature(
    StakeTokensInputs calldata _Input,
    bytes calldata _signature
  ) internal {
    bytes32 encodedStakeTokensInputs = keccak256(
      abi.encode(
        keccak256(
          'StakeTokensInputs(address user,uint256 amount,uint256 lockupPeriod,uint256 ticketsAmount,address signer,uint256 nonce,uint256 deadline)'
        ),
        _Input.user,
        _Input.amount,
        _Input.lockupPeriod,
        _Input.ticketsAmount,
        _Input.signer,
        _Input.nonce,
        _Input.deadline
      )
    );
    bytes32 digest = _hashTypedDataV4(encodedStakeTokensInputs);
    address signer = ECDSAUpgradeable.recover(digest, _signature);
    require(signer == _Input.signer, 'Invalid signature');
    require(hasRole(OPERATION_ROLE, _Input.signer), 'Invalid signature');
    usedNonces[_Input.nonce] = true;
    emit NonceUsed(_Input.nonce);
  }

  /**
   * @dev verifyIncreaseLockupPeriodSignature function is used to verify that the data is signed by the signer
   * @param _Input the data that is going to be verified
   * @param _signature the signature that is going to be used to verify the data
   */
  function verifyIncreaseLockupPeriodSignature(
    IncreaseLockupPeriodInputs calldata _Input,
    bytes calldata _signature
  ) internal {
    bytes32 encodedIncreaseLockupPeriodInputs = keccak256(
      abi.encode(
        keccak256(
          'IncreaseLockupPeriodInputs(uint256 id,uint256 newLockupPeriod,uint256 ticketsAmount,address signer,uint256 nonce,uint256 deadline)'
        ),
        _Input.id,
        _Input.newLockupPeriod,
        _Input.ticketsAmount,
        _Input.signer,
        _Input.nonce,
        _Input.deadline
      )
    );
    bytes32 digest = _hashTypedDataV4(encodedIncreaseLockupPeriodInputs);
    address signer = ECDSAUpgradeable.recover(digest, _signature);
    require(signer == _Input.signer, 'Invalid signature');
    require(hasRole(OPERATION_ROLE, _Input.signer), 'Invalid signature');
    usedNonces[_Input.nonce] = true;
    emit NonceUsed(_Input.nonce);
  }

  /**
   * @dev verifyUnstakeTokensSignature function is used to verify that the data is signed by the signer
   * @param _Input the data that is going to be verified
   * @param _signature the signature that is going to be used to verify the data
   */
  function verifyUnstakeTokensSignature(
    UnstakeTokensInputs calldata _Input,
    bytes calldata _signature
  ) internal {
    bytes32 encodedUnstakeTokensInputs = keccak256(
      abi.encode(
        keccak256(
          'UnstakeTokensInputs(uint256 id,uint256 reward,uint256 Penalty,address signer,uint256 nonce,uint256 deadline)'
        ),
        _Input.id,
        _Input.reward,
        _Input.Penalty,
        _Input.signer,
        _Input.nonce,
        _Input.deadline
      )
    );
    bytes32 digest = _hashTypedDataV4(encodedUnstakeTokensInputs);
    address signer = ECDSAUpgradeable.recover(digest, _signature);
    require(signer == _Input.signer, 'Invalid signature');
    require(hasRole(OPERATION_ROLE, _Input.signer), 'Invalid signature');
    usedNonces[_Input.nonce] = true;
    emit NonceUsed(_Input.nonce);
  }

  /**
   * @dev safeTransferFrom function is used to transfer tokens from one address to another
   * @param _Token the address of the ERC20 token that is going to be transferred
   * @param _from the address that the ERC20 token is going to be transferred from
   * @param _to the address that the ERC20 token is going to be transferred to
   * @param _amount the amount of the ERC20 token that is going to be transferred
   */
  function safeTransferFrom(address _Token, address _from, address _to, uint256 _amount) internal {
    require(IERC20(_Token).balanceOf(_from) >= _amount, 'Not enough balance');
    IERC20(_Token).safeTransferFrom(_from, _to, _amount);
  }

  /**
   * @dev safeTransfer function is used to transfer tokens from the contract to another address
   * @param _Token the address of the ERC20 token that is going to be transferred
   * @param _to the address that the ERC20 token is going to be transferred to
   * @param _amount the amount of the ERC20 token that is going to be transferred
   */
  function safeTransfer(address _Token, address _to, uint256 _amount) internal {
    require(IERC20(_Token).balanceOf(address(this)) >= _amount, 'Not enough balance');
    IERC20(_Token).safeTransfer(_to, _amount);
  }

  /**
   * @dev transfer ownership of the contract to a new address
   * @param _newOwner The new owner of the contract
   */
  function transferOwnership(address _newOwner) public onlyRole(DEFAULT_ADMIN_ROLE) {
    require(_newOwner != address(0), 'Ownable: new owner is the zero address');
    require(_newOwner != msg.sender, 'Ownable: new owner is the current owner');
    _grantRole(DEFAULT_ADMIN_ROLE, _newOwner);
    revokeRole(DEFAULT_ADMIN_ROLE, msg.sender);
  }

  function _authorizeUpgrade(
    address newImplementation
  ) internal override onlyRole(DEFAULT_ADMIN_ROLE) {}

  uint256[50] private __gap;
}
