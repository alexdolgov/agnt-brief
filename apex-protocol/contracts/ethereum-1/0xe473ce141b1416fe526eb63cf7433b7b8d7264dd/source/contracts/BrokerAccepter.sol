// SPDX-License-Identifier: MIT OR Apache-2.0

pragma solidity ^0.8.0;

import '@openzeppelin/contracts/access/AccessControlDefaultAdminRules.sol';
import '@openzeppelin/contracts/token/ERC20/IERC20.sol';
import '@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol';
import '@openzeppelin/contracts/security/ReentrancyGuard.sol';
import '@openzeppelin/contracts/utils/cryptography/ECDSA.sol';

import './interfaces/IZkLink.sol';

contract BrokerAccepter is AccessControlDefaultAdminRules, ReentrancyGuard {
  bytes32 public constant WITNESS_ROLE = keccak256('WITNESS_ROLE');
  bytes32 public constant BROKER_ROLE = keccak256('BROKER_ROLE');
  bytes32 public constant FUND_ROLE = keccak256('FUND_ROLE');
  bytes32 public constant CONFIG_ROLE = keccak256('CONFIG_ROLE');

  bytes4 public constant ACCEPT_ERC20 =
    bytes4(
      keccak256(
        bytes('acceptERC20(address,address,uint128,uint16,uint32,uint8,uint32)')
      )
    );
  bytes4 public constant ACCEPT_ETH =
    bytes4(
      keccak256(bytes('acceptETH(address,uint128,uint16,uint32,uint8,uint32)'))
    );

  event AcceptStatus(bool success, bytes errorInfo);
  event CallStatus(bool success, bytes errorInfo);

  modifier onlyFundRole() {
    require(
      hasRole(DEFAULT_ADMIN_ROLE, _msgSender()) ||
        hasRole(FUND_ROLE, _msgSender()),
      'must fund role'
    );
    _;
  }

  modifier onlyConfigRole() {
    require(
      hasRole(DEFAULT_ADMIN_ROLE, _msgSender()) ||
        hasRole(CONFIG_ROLE, _msgSender()),
      'only config role'
    );
    _;
  }

  using SafeERC20 for IERC20;

  constructor(
    uint48 initialDelay
  ) AccessControlDefaultAdminRules(initialDelay, msg.sender) {}

  function batchAccept(
    address[] calldata zkLinks,
    bytes[] calldata data,
    uint128[] calldata amounts,
    bytes calldata signature
  ) external onlyRole(BROKER_ROLE) {
    bool success;
    bytes memory errorInfo;
    bytes memory digest = data[0];
    (success, errorInfo) = zkLinks[0].call{value: amounts[0]}(data[0]);
    emit AcceptStatus(success, errorInfo);
    bytes4 funcSig = bytes4(data[0]);
    require(funcSig == ACCEPT_ETH || funcSig == ACCEPT_ERC20, 'func error eth');
    for (uint i = 1; i < data.length; i++) {
      digest = abi.encodePacked(digest, data[i]);
      (success, errorInfo) = zkLinks[i].call{value: amounts[i]}(data[i]);
      emit AcceptStatus(success, errorInfo);
      funcSig = bytes4(data[i]);
      require(
        funcSig == ACCEPT_ETH || funcSig == ACCEPT_ERC20,
        'func error eth'
      );
    }
    address witnessAddress = ECDSA.recover(keccak256(digest), signature);
    _checkRole(WITNESS_ROLE, witnessAddress);
  }

  // Dynamic call function
  function dynamicCall(
    address payable contractAddress,
    bytes calldata data
  ) external payable nonReentrant onlyRole(DEFAULT_ADMIN_ROLE) {
    (bool success, bytes memory errorInfo) = contractAddress.call{
      value: msg.value
    }(data);
    emit CallStatus(success, errorInfo);
  }

  function approve(
    IERC20 token,
    address spender,
    uint256 amount
  ) external onlyConfigRole {
    token.safeApprove(spender, amount);
  }

  function withdraw(
    IERC20 token, // Token address
    address to, // Address to withdraw to
    uint256 amount // Amount to withdraw
  ) external nonReentrant onlyFundRole returns (bool) {
    token.safeTransfer(to, amount);
    return true;
  }

  function withdrawETH(
    address to,
    uint256 amount
  ) external nonReentrant onlyFundRole returns (bool res) {
    (res, ) = to.call{value: amount}(new bytes(0));
  }

  receive() external payable {}
}
