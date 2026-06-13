// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.17;

import "./MultisigWallet.sol";
import "./utils/Errors.sol";
import "./utils/ERC20Fixed.sol";
import "./utils/math/FixedPoint.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/AccessControlEnumerable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract BridgeRegistry is Ownable, AccessControlEnumerable {
  using ERC20Fixed for ERC20;
  using FixedPoint for uint256;

  bytes32 public constant VALIDATOR_ROLE = keccak256("VALIDATOR_ROLE");
  bytes32 public constant RELAYER_ROLE = keccak256("RELAYER_ROLE");
  bytes32 public constant APPROVED_TOKEN = keccak256("APPROVED_TOKEN");
  uint256 public constant MAX_REQUIRED_VALIDATORS = 100;

  uint256 public requiredValidators;

  // constant, subject to governance
  mapping(bytes32 => bool) public orderSent;
  mapping(bytes32 => mapping(address => bool)) public orderValidatedBy;
  mapping(address => uint256) public minAmountPerToken;
  mapping(address => uint256) public maxAmountPerToken;
  mapping(address => bool) public burnable;

  // variable
  mapping(address => uint256) public accruedFeePerToken;
  mapping(address => uint256) public feePctPerToken;
  mapping(address => uint256) public minFeePerToken;

  mapping(address => bool) public watchlist;

  event SetRequiredValidatorsEvent(uint256 requiredValidators);
  event SetApprovedTokenEvent(
    address indexed token,
    bool approved,
    bool burnable,
    uint256 feePct,
    uint256 minFee,
    uint256 minAmount,
    uint256 maxAmount
  );
  event CollectAccruedFeeEvent(address indexed token, uint256 collectAmount);
  event SetMinFeePerTokenEvent(address indexed token, uint256 minFee);
  event SetWatchlist(address indexed recipient, bool on);
  event AddAccruedFee(address token, uint256 amount);

  modifier onlyApproved() {
    _require(
      MultisigWallet(payable(owner())).isApproved(msg.sender),
      Errors.NOT_AUTHORIZED
    );
    _;
  }

  modifier onlyApprovedToken(address token) {
    _require(hasRole(APPROVED_TOKEN, token), Errors.INVALID_TOKEN);
    _;
  }

  constructor(MultisigWallet owner, uint256 _requiredValidators) {
    _require(
      _requiredValidators < MAX_REQUIRED_VALIDATORS,
      Errors.INVALID_REQUIRED_VALIDATORS
    );
    _transferOwnership(address(owner));
    _grantRole(DEFAULT_ADMIN_ROLE, address(owner));
    requiredValidators = _requiredValidators;
  }

  // external functions

  // read-only functions

  function getReserveFixed(address token) external view returns (uint256) {
    return ERC20(token).balanceOfFixed(address(this));
  }

  // priviledged functions

  function setMinFeePerToken(
    address _token,
    uint256 _minFee
  ) external onlyOwner {
    minFeePerToken[_token] = _minFee;
    emit SetMinFeePerTokenEvent(_token, _minFee);
  }

  function setRequiredValidators(
    uint256 _requiredValidators
  ) external onlyOwner {
    _require(
      _requiredValidators < MAX_REQUIRED_VALIDATORS,
      Errors.INVALID_REQUIRED_VALIDATORS
    );
    requiredValidators = _requiredValidators;
    emit SetRequiredValidatorsEvent(requiredValidators);
  }

  function setWatchlist(address recipient, bool on) external onlyOwner {
    watchlist[recipient] = on;
    emit SetWatchlist(recipient, on);
  }

  function setApprovedToken(
    address token,
    bool approved,
    bool isBurnable,
    uint256 feePct,
    uint256 minFee,
    uint256 minAmount,
    uint256 maxAmount
  ) external onlyOwner {
    _require(token != address(0), Errors.ZERO_TOKEN_ADDRESS);
    _require(ERC20(token).decimals() <= 18, Errors.INVALID_TOKEN_DECIMALS);
    if (approved) {
      _grantRole(APPROVED_TOKEN, token);
    } else {
      _revokeRole(APPROVED_TOKEN, token);
    }
    feePctPerToken[token] = feePct;
    minFeePerToken[token] = minFee;
    minAmountPerToken[token] = minAmount;
    maxAmountPerToken[token] = maxAmount;
    burnable[token] = isBurnable;
    emit SetApprovedTokenEvent(
      token,
      approved,
      isBurnable,
      feePct,
      minFee,
      minAmount,
      maxAmount
    );
  }

  function collectAccruedFee(
    address token
  ) external onlyOwner onlyApprovedToken(token) {
    uint256 collectAmount = 0;
    if (accruedFeePerToken[token] > 0) {
      collectAmount = accruedFeePerToken[token];
      accruedFeePerToken[token] = 0;
      ERC20(token).transferFixed(msg.sender, collectAmount);
    }
    emit CollectAccruedFeeEvent(token, collectAmount);
  }

  function grantValidators(address[] calldata added) external onlyOwner {
    for (uint256 i = 0; i < added.length; i++) {
      _grantRole(VALIDATOR_ROLE, added[i]);
    }
  }

  function revokeValidators(address[] calldata removed) external onlyOwner {
    for (uint256 i = 0; i < removed.length; i++) {
      _revokeRole(VALIDATOR_ROLE, removed[i]);
    }
  }

  function addAccruedFee(address token, uint256 amount) external onlyApproved {
    accruedFeePerToken[token] = accruedFeePerToken[token].add(amount);
    emit AddAccruedFee(token, amount);
  }

  function transferFixed(
    address token,
    uint256 amount
  ) external onlyApproved onlyApprovedToken(token) {
    ERC20(token).transferFixed(msg.sender, amount);
  }

  function setOrderSent(bytes32 orderHash, bool sent) external onlyApproved {
    orderSent[orderHash] = sent;
  }

  function setOrderValidatedBy(
    bytes32 orderHash,
    address signer,
    bool validated
  ) external onlyApproved {
    orderValidatedBy[orderHash][signer] = validated;
  }
}
