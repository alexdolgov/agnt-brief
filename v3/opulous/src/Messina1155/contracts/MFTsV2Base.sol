// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import './ERC-1155/Messina1155.sol';
import './ERC-1155/REC1155Snapshot.sol';
import './interfaces/IMFTv2.sol';
import '@openzeppelin/contracts-upgradeable/token/ERC20/utils/SafeERC20Upgradeable.sol';
import '@openzeppelin/contracts-upgradeable/utils/math/MathUpgradeable.sol';
import "@uniswap/v2-periphery/contracts/interfaces/IUniswapV2Router02.sol";
import 'hardhat/console.sol';

abstract contract MFTsV2Base is REC1155Snapshot, IMFTv2 {
  uint256 public constant MULTIPLIER = 10 ** 18;
  uint96 public constant FEE_DENOMINATOR = 10000;

  error ZeroAddress();
  error MerkleRootAlreadySet();
  error MerkleRootNotSet();
  error RewardsNotSet();
  error AlreadyClaimed();
  error NoBalance();
  error InvalidTokenPath();
  error InvalidProof();
  error CollectionAndAmountArrayLengthMismatch();
  error InvalidRewardsAmount();
  error RewardsAlreadySet();
  error NoSupply();
  error NotAConnector();

  using SafeERC20Upgradeable for IERC20Upgradeable;
  using MathUpgradeable for uint256;
  struct RoundRewards {
    address token;
    uint256 totalAmount;
    uint256 claimedAmount;
  }
  struct FeeDetailsInit {
    address treasuryAddress;
    uint96 defaultFee;
    uint96 opulFee;
  }
  struct UniswapInit {
    address uniswapRouter;
    address opulToken;
  }
  mapping(uint256 => mapping(uint256 => bytes32)) public MerkleRoots;
  mapping(bytes32 => bool) _claimed;
  mapping(uint256 => mapping(uint256 => RoundRewards)) _roundRewards;
  mapping(uint256 => mapping(uint256 => mapping(address => bool))) _roundClaimed;
  mapping(address => bool) public isConnector;
  address public uniswapRouter;
  address public opulToken;
  uint96 public defaultFee;
  uint96 public opulFee;
  address public treasuryAddress;

  modifier onlyConnector() {
    if (!isConnector[_msgSender()]) revert NotAConnector();
    _;
  }
}