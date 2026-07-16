// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.8.28;

import { IERC20 } from '@oz/token/ERC20/IERC20.sol';
import { SafeERC20 } from '@oz/token/ERC20/utils/SafeERC20.sol';
import { Address } from '@oz/utils/Address.sol';

import { OwnableUpgradeable } from '@ozu/access/OwnableUpgradeable.sol';
import { UUPSUpgradeable } from '@ozu/proxy/utils/UUPSUpgradeable.sol';
import { PausableUpgradeable } from '@ozu/utils/PausableUpgradeable.sol';
import { ReentrancyGuardUpgradeable } from '@ozu/utils/ReentrancyGuardUpgradeable.sol';

import { MerkleProofLib } from '@solady/utils/MerkleProofLib.sol';

import { ERC7201Utils } from '@mitosis/lib/ERC7201Utils.sol';

contract MerkleDistributor is
  OwnableUpgradeable,
  PausableUpgradeable,
  UUPSUpgradeable,
  ReentrancyGuardUpgradeable
{
  using ERC7201Utils for string;
  using SafeERC20 for IERC20;
  using Address for address payable;

  struct DistributionStage {
    address token;
    bool isNative;
    bytes32 merkleRoot;
    uint256 totalAmount;
    uint256 totalClaimed;
  }

  struct MerkleDistributorStorage {
    uint256 lastStage;
    mapping(uint256 stage => DistributionStage) stages;
    mapping(uint256 stage => mapping(address account => uint256 amount)) claimed;
  }

  event StageSet(
    uint256 indexed stage, address token, bool isNative, bytes32 merkleRoot, uint256 totalAmount
  );
  event Claimed(
    uint256 indexed stage, address indexed account, address indexed claimer, uint256 amount
  );

  error AlreadyClaimed();
  error InvalidToken();
  error InvalidMsgValue();
  error InvalidProof();
  error InvalidAmount();
  error InvalidAccount();
  error InvalidMerkleRoot();
  error StageNotExists();
  error TotalAmountExceeded();

  string private constant DISTRIBUTION_NAMESPACE = 'mitosis.storage.MerkleDistributorStorage.v1';
  bytes32 private immutable DISTRIBUTION_SLOT = DISTRIBUTION_NAMESPACE.storageSlot();

  function _getMerkleDistributorStorage()
    internal
    view
    returns (MerkleDistributorStorage storage $)
  {
    bytes32 slot = DISTRIBUTION_SLOT;
    // slither-disable-next-line assembly
    assembly {
      $.slot := slot
    }
  }

  constructor() {
    _disableInitializers();
  }

  function initialize(address initialOwner) public initializer {
    __UUPSUpgradeable_init();
    __ReentrancyGuard_init();

    __Ownable_init(initialOwner);
    __Pausable_init();
  }

  function _authorizeUpgrade(address) internal override onlyOwner { }

  function lastStage() external view returns (uint256) {
    return _getMerkleDistributorStorage().lastStage;
  }

  function getStage(uint256 stage) external view returns (DistributionStage memory) {
    return _getMerkleDistributorStorage().stages[stage];
  }

  function getClaimed(uint256 stage, address account) external view returns (uint256) {
    return _getMerkleDistributorStorage().claimed[stage][account];
  }

  function pause() external onlyOwner {
    _pause();
  }

  function unpause() external onlyOwner {
    _unpause();
  }

  function setStage(address token, bool isNative, bytes32 merkleRoot, uint256 totalAmount)
    external
    payable
    onlyOwner
  {
    // native or token
    require(isNative && token == address(0) || !isNative && token != address(0), InvalidToken());
    require(merkleRoot != bytes32(0), InvalidMerkleRoot());
    require(totalAmount > 0, InvalidAmount());

    MerkleDistributorStorage storage $ = _getMerkleDistributorStorage();

    uint256 stageId = $.lastStage++;

    $.stages[stageId] = DistributionStage({
      token: token,
      isNative: isNative,
      merkleRoot: merkleRoot,
      totalAmount: totalAmount,
      totalClaimed: 0
    });

    if (isNative) {
      require(msg.value == totalAmount, InvalidMsgValue());
    } else {
      require(msg.value == 0, InvalidMsgValue());
      IERC20(token).safeTransferFrom(_msgSender(), address(this), totalAmount);
    }

    emit StageSet(stageId, token, isNative, merkleRoot, totalAmount);
  }

  function claim(uint256 stage, address account, uint256 amount, bytes32[] calldata proof)
    external
    nonReentrant
    whenNotPaused
  {
    require(amount > 0, InvalidAmount());
    require(account != address(0), InvalidAccount());

    MerkleDistributorStorage storage $ = _getMerkleDistributorStorage();
    require(stage < $.lastStage, StageNotExists());
    require($.claimed[stage][account] == 0, AlreadyClaimed());

    bytes32 leaf = _buildLeaf(stage, account, amount);

    DistributionStage memory s = $.stages[stage];
    require(s.totalClaimed + amount <= s.totalAmount, TotalAmountExceeded());
    require(MerkleProofLib.verify(proof, s.merkleRoot, leaf), InvalidProof());

    $.claimed[stage][account] = amount;
    $.stages[stage].totalClaimed += amount;

    if (s.isNative) payable(account).sendValue(amount);
    else IERC20(s.token).safeTransfer(account, amount);

    emit Claimed(stage, account, _msgSender(), amount);
  }

  function _buildLeaf(uint256 stage, address account, uint256 amount)
    internal
    pure
    returns (bytes32 leaf)
  {
    // Double-hashing to prevent second preimage attacks:
    // https://flawed.net.nz/2018/02/21/attacking-merkle-trees-with-a-second-preimage-attack/
    assembly {
      // Get current free memory pointer
      let ptr := mload(0x40)

      // Store data: stage (32) | account (32, left-padded) | amount (32) = 96 bytes
      mstore(ptr, stage)
      mstore(add(ptr, 0x20), account) // address is left-padded with zeros
      mstore(add(ptr, 0x40), amount)

      // First hash: keccak256(data, 96 bytes)
      let innerHash := keccak256(ptr, 0x60)

      // Store inner hash for second hash
      mstore(ptr, innerHash)

      // Second hash: keccak256(innerHash, 32 bytes)
      leaf := keccak256(ptr, 0x20)

      // Update free memory pointer (96 bytes used, but we only need 32 for final result)
      mstore(0x40, add(ptr, 0x20))
    }
  }
}
