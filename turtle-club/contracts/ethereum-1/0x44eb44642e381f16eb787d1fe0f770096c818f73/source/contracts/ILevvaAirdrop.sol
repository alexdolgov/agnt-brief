// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity 0.8.27;

import '@openzeppelin/contracts/utils/cryptography/MerkleProof.sol';
import '@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol';

interface ILevvaAirdrop {
  event Claimed(address indexed user, uint256 amount);
  event Locked(address indexed user, uint64 lockedTill, uint256 amountWithBonus);
  event Released(address indexed user, uint256 amount);

  enum LockPeriod {
    None,
    OneMonth,
    HalfYear,
    OneYear
  }

  function token() external view returns (address);

  function tokenHolder() external view returns (address);

  function merkleRoot() external view returns (bytes32);

  function claimed(address user) external view returns (uint256 amount);

  function locked(address user) external view returns (uint256 amount, uint64 lockedTill, bool released);

  function verifyClaim(address claimer, uint256 amount, bytes32[] calldata proofs) external view returns (bool success);

  function getLockTime(LockPeriod lockPeriod) external pure returns (uint64);

  function getBonusAmount(LockPeriod lockPeriod, uint256 amount) external pure returns (uint256);

  function claim(LockPeriod lockPeriod, uint256 amount, bytes32[] calldata proofs) external;

  function release() external;
}
