// SPDX-License-Identifier: BUSL-1.1

pragma solidity 0.8.17;

import "../IBurnable.sol";
import "../MultisigWallet.sol";
import "./Errors.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MigrateTokenBOBFusionS1 is Ownable, ReentrancyGuard {
  address public immutable token;

  mapping(address => uint256) public distribution;

  event SetDistributionEvent(address[] recipients, uint256[] amounts);
  event ClaimEvent(address indexed sender, uint256 amount);

  constructor(address _owner, address _token) {
    _require(_owner != address(0), Errors.ZERO_ADDRESS);
    _require(_token != address(0), Errors.ZERO_ADDRESS);
    token = _token;
    _transferOwnership(_owner);
  }

  function setDistribution(
    address[] calldata recipients,
    uint256[] calldata amounts
  ) external onlyOwner {
    _require(recipients.length == amounts.length, Errors.INPUT_LENGTH_MISMATCH);
    for (uint256 i = 0; i < recipients.length; i++) {
      distribution[recipients[i]] = amounts[i];
    }
    emit SetDistributionEvent(recipients, amounts);
  }

  function claim() external nonReentrant {
    uint256 amount = distribution[msg.sender];
    _require(amount > 0, Errors.INVALID_SENDER);
    IBurnable(token).mint(msg.sender, amount);
    distribution[msg.sender] = 0;
    emit ClaimEvent(msg.sender, amount);
  }
}
