// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.17;

import "./MultisigWallet.sol";
import "./IBurnable.sol";
import "./ITimeLock.sol";
import "./BridgeRegistry.sol";
import "./utils/Errors.sol";
import "./utils/ERC20Fixed.sol";
import "./utils/Allowlistable.sol";
import "./utils/math/FixedPoint.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/cryptography/ECDSA.sol";
import "@openzeppelin/contracts/utils/cryptography/EIP712.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "@openzeppelin/contracts/security/Pausable.sol";

contract BridgeEndpoint is
  Ownable,
  EIP712,
  ReentrancyGuard,
  Pausable,
  Allowlistable
{
  using ERC20Fixed for ERC20;
  using FixedPoint for uint256;

  BridgeRegistry public immutable registry;

  ITimeLock public timeLock;
  uint256 public timeLockThreshold = 0;
  mapping(address => uint256) public timeLockThresholdByToken;

  struct SignaturePackage {
    bytes32 orderHash;
    address signer;
    bytes signature;
  }

  event TransferToWrapEvent(
    address indexed from,
    address indexed token,
    string settle,
    uint256 amount,
    uint256 fee
  );
  event TransferToLaunchpadEvent(
    address indexed from,
    address indexed token,
    string settle,
    uint256 launchId,
    uint256 amount,
    uint256 fee
  );
  event TransferToSwapEvent(
    address indexed from,
    address indexed token,
    string settle,
    uint256 indexed poolId,
    uint256 amount,
    uint256 minAmountOut,
    uint256 fee
  );
  event TransferToCrossEvent(
    address indexed from,
    address indexed token,
    string settle,
    uint256 amount,
    uint256 destChainId,
    uint256 fee
  );
  event TransferToCrossSwapEvent(
    address indexed from,
    address indexed token,
    string settle,
    uint256 indexed poolId,
    uint256 amount,
    uint256 minAmountOut,
    uint256 destChainId,
    uint256 fee
  );
  event TransferToUnwrapEvent(
    bytes32 orderHash,
    bytes32 salt,
    address indexed recipient,
    address indexed token,
    uint256 amount
  );
  event SetTimeLockEvent(address timeLock);
  event SetTimeLockThresholdEvent(uint256 timeLockThreshold);
  event SetTimeLockThresholdByTokenEvent(
    address token,
    uint256 timeLockThreshold
  );

  modifier onlyApprovedToken(address token) {
    _require(
      registry.hasRole(registry.APPROVED_TOKEN(), token),
      Errors.INVALID_TOKEN
    );
    _;
  }

  modifier onlyApprovedRelayer() {
    _require(
      registry.hasRole(registry.RELAYER_ROLE(), msg.sender),
      Errors.APPROVED_ONLY
    );
    _;
  }

  modifier notContract() {
    _require(
      tx.origin == msg.sender ||
        MultisigWallet(payable(owner())).isApproved(msg.sender),
      Errors.NOT_CONTRACT
    );
    _;
  }

  modifier notWatchlist(address recipient) {
    _require(!registry.watchlist(recipient), Errors.RECIPIENT_ON_WATCHLIST);
    _;
  }

  constructor(
    MultisigWallet owner,
    string memory name,
    string memory version,
    address _registry,
    address _timeLock
  ) EIP712(name, version) {
    _require(_registry != address(0), Errors.ZERO_ADDRESS);
    registry = BridgeRegistry(_registry);
    timeLock = ITimeLock(_timeLock);
    _transferOwnership(address(owner));
  }

  // external functions

  // @dev amount must be in 18-digit fixed
  function transferToWrap(
    address token,
    uint256 amount,
    string calldata settleData
  )
    external
    nonReentrant
    whenNotPaused
    onlyAllowlisted
    onlyApprovedToken(token)
    notContract
  {
    uint256 feeDeducted = _transfer(token, amount);
    emit TransferToWrapEvent(
      msg.sender,
      token,
      settleData,
      amount.sub(feeDeducted),
      feeDeducted
    );
  }

  function transferToLaunchpad(
    address token,
    uint256 amount,
    string calldata settleData,
    uint256 launchId
  )
    external
    nonReentrant
    whenNotPaused
    onlyAllowlisted
    onlyApprovedToken(token)
    notContract
  {
    uint256 feeDeducted = _transfer(token, amount);
    emit TransferToLaunchpadEvent(
      msg.sender,
      token,
      settleData,
      launchId,
      amount.sub(feeDeducted),
      feeDeducted
    );
  }

  function transferToSwap(
    address token,
    uint256 amount,
    string calldata settleData,
    uint256 poolId,
    uint256 minAmountOut
  )
    external
    nonReentrant
    whenNotPaused
    onlyAllowlisted
    onlyApprovedToken(token)
    notContract
  {
    uint256 feeDeducted = _transfer(token, amount);
    emit TransferToSwapEvent(
      msg.sender,
      token,
      settleData,
      poolId,
      amount.sub(feeDeducted),
      minAmountOut,
      feeDeducted
    );
  }

  function transferToCross(
    address token,
    uint256 amount,
    string calldata settleData,
    uint256 destChainId
  )
    external
    nonReentrant
    whenNotPaused
    onlyAllowlisted
    onlyApprovedToken(token)
    notContract
  {
    uint256 feeDeducted = _transfer(token, amount);
    emit TransferToCrossEvent(
      msg.sender,
      token,
      settleData,
      amount.sub(feeDeducted),
      destChainId,
      feeDeducted
    );
  }

  function transferToCrossSwap(
    address token,
    uint256 amount,
    string calldata settleData,
    uint256 poolId,
    uint256 minAmountOut,
    uint256 destChainId
  )
    external
    nonReentrant
    whenNotPaused
    onlyAllowlisted
    onlyApprovedToken(token)
    notContract
  {
    uint256 feeDeducted = _transfer(token, amount);
    emit TransferToCrossSwapEvent(
      msg.sender,
      token,
      settleData,
      poolId,
      amount.sub(feeDeducted),
      minAmountOut,
      destChainId,
      feeDeducted
    );
  }

  // read-only functions

  function domainSeparatorV4() external view returns (bytes32) {
    return _domainSeparatorV4();
  }

  function hashTypedDataV4(bytes32 structHash) external view returns (bytes32) {
    return _hashTypedDataV4(structHash);
  }

  // priviledged functions

  // send unwrapped tokens to user
  // @dev salt should be tx hash of source chain
  // @dev amount must be in 18-digit fixed
  function transferToUnwrap(
    address token,
    address recipient,
    uint256 amount,
    bytes32 salt,
    SignaturePackage[] calldata proofs
  )
    external
    onlyApprovedRelayer
    nonReentrant
    whenNotPaused
    onlyApprovedToken(token)
    notContract
    notWatchlist(recipient)
  {
    bytes32 orderHash = _hashTypedDataV4(
      keccak256(
        abi.encode(
          keccak256(
            "Order(address recipient,address token,uint256 amountInFixed,bytes32 salt)"
          ),
          recipient,
          token,
          amount,
          salt
        )
      )
    );

    _validateOrder(orderHash, proofs);

    if (amount >= timeLockThreshold.max(timeLockThresholdByToken[token])) {
      if (registry.burnable(token)) {
        IBurnable(token).mint(address(this), amount);
      }
      ERC20(token).increaseAllowanceFixed(address(timeLock), amount);
      timeLock.createAgreement(
        token,
        amount,
        recipient,
        "",
        TimeLockDataTypes.AgreementContext.BRIDGE_ENDPOINT
      );
    } else {
      if (registry.burnable(token)) {
        IBurnable(token).mint(recipient, amount);
      } else {
        registry.transferFixed(token, amount);
        ERC20(token).transferFixed(recipient, amount);
      }
    }

    emit TransferToUnwrapEvent(orderHash, salt, recipient, token, amount);
  }

  function pause() external onlyOwner {
    _pause();
  }

  function unpause() external onlyOwner {
    _unpause();
  }

  function onAllowlist() external onlyOwner {
    _onAllowlist();
  }

  function offAllowlist() external onlyOwner {
    _offAllowlist();
  }

  function addAllowlist(address[] memory _allowed) external onlyOwner {
    _addAllowlist(_allowed);
  }

  function removeAllowlist(address[] memory _removed) external onlyOwner {
    _removeAllowlist(_removed);
  }

  function setTimeLock(address _timeLock) external virtual onlyOwner {
    timeLock = ITimeLock(_timeLock);
    emit SetTimeLockEvent(_timeLock);
  }

  function setTimeLockThreshold(uint256 _timeLockThreshold) external onlyOwner {
    timeLockThreshold = _timeLockThreshold;
    emit SetTimeLockThresholdEvent(timeLockThreshold);
  }

  function setTimeLockThresholdByToken(
    address token,
    uint256 _timeLockThreshold
  ) external onlyOwner {
    _require(token != address(0), Errors.ZERO_TOKEN_ADDRESS);
    timeLockThresholdByToken[token] = _timeLockThreshold;
    emit SetTimeLockThresholdByTokenEvent(token, timeLockThreshold);
  }

  // internal functions

  function _transfer(
    address token,
    uint256 amount
  ) internal returns (uint256 feeDeducted) {
    _require(
      amount <= registry.maxAmountPerToken(token) &&
        amount >= registry.minAmountPerToken(token),
      Errors.INVALID_AMOUNT
    );
    _require(
      amount > registry.minFeePerToken(token),
      Errors.AMOUNT_SMALLER_THAN_FEE
    );

    feeDeducted = amount.mulDown(registry.feePctPerToken(token)).max(
      registry.minFeePerToken(token)
    );
    registry.addAccruedFee(token, feeDeducted);

    if (registry.burnable(token)) {
      IBurnable(token).burnFrom(msg.sender, amount.sub(feeDeducted));
      ERC20(token).transferFromFixed(
        msg.sender,
        address(registry),
        feeDeducted
      );
    } else {
      ERC20(token).transferFromFixed(msg.sender, address(registry), amount);
    }
  }

  function _validateOrder(
    bytes32 orderHash,
    SignaturePackage[] calldata proofs
  ) internal {
    _require(
      proofs.length >= registry.requiredValidators(),
      Errors.INSUFFICIENT_PROOFS
    );
    _require(!registry.orderSent(orderHash), Errors.ORDER_ALREADY_SENT);

    for (uint256 i = 0; i < proofs.length; i++) {
      _require(
        !registry.orderValidatedBy(orderHash, proofs[i].signer),
        Errors.DUPLICATE_SIGNATURE
      );
      _require(proofs[i].orderHash == orderHash, Errors.ORDER_HASH_MISMATCH);
      _require(
        registry.hasRole(registry.VALIDATOR_ROLE(), proofs[i].signer),
        Errors.SIGNER_VALIDATOR_MISMATCH
      );
      _require(
        proofs[i].signer ==
          ECDSA.recover(proofs[i].orderHash, proofs[i].signature),
        Errors.INVALID_SIGNATURE
      );

      registry.setOrderValidatedBy(orderHash, proofs[i].signer, true);
    }
    registry.setOrderSent(orderHash, true);
  }
}
