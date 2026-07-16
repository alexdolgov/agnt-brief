// SPDX-License-Identifier: BUSL-1.1

pragma solidity 0.8.17;

import "./ITimeLock.sol";
import "./MultisigWallet.sol";
import "./IBurnable.sol";
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

/**
 * @title BridgeEndpoint
 * @dev Base contract for bridge operations that handles token transfers and message passing
 * between different chains. This contract provides core functionality for:
 * - Token transfers with fee calculation
 * - Message passing with or without tokens
 * - Unwrapping tokens for recipients
 * - Time-locked transfers for large amounts
 * - Validator signature verification
 * - Access control and security features
 */
contract BridgeEndpoint is
  Ownable,
  EIP712,
  ReentrancyGuard,
  Pausable,
  Allowlistable
{
  using ERC20Fixed for ERC20;
  using FixedPoint for uint256;

  // @dev The registry contract that manages approved tokens, validators, and fees
  BridgeRegistry public immutable registry;

  // @dev The address where tokens are pegged in
  address public pegInAddress;

  // @dev Mapping of order hashes to unwrap order packages
  mapping(bytes32 => OrderPackage) public unwrapSent;

  // @dev The time lock contract for large transfers
  ITimeLock public timeLock;

  // @dev Global threshold for time-locked transfers
  uint256 public timeLockThreshold = 0;

  // @dev Token-specific thresholds for time-locked transfers
  mapping(address => uint256) public timeLockThresholdByToken;

  /**
   * @dev Struct to store unwrap order information
   * @param recipient The address that will receive the tokens
   * @param token The token address to be unwrapped
   * @param amount The amount of tokens to unwrap
   * @param sent Whether the tokens have been sent
   */
  struct OrderPackage {
    address recipient;
    address token;
    uint256 amount;
    bool sent;
  }

  /**
   * @dev Struct to store validator signature information
   * @param orderHash The hash of the order being signed
   * @param signer The address of the validator who signed
   * @param signature The actual signature data
   */
  struct SignaturePackage {
    bytes32 orderHash;
    address signer;
    bytes signature;
  }

  // Events
  event SendMessageEvent(address indexed from, uint256 value, bytes payload);
  event SendMessageWithTokenEvent(
    address indexed from,
    address indexed token,
    uint256 amount,
    uint256 fee,
    bytes payload
  );
  event TransferToUnwrapEvent(
    bytes32 orderHash,
    bytes32 salt,
    address indexed recipient,
    address indexed token,
    uint256 amount
  );
  event FinalizeUnwrapEvent(bytes32 indexed orderHash);
  event SetTimeLockEvent(address timeLock);
  event SetTimeLockThresholdEvent(uint256 timeLockThreshold);
  event SetTimeLockThresholdByTokenEvent(
    address token,
    uint256 timeLockThreshold
  );
  event SetPegInAddressEvent(address pegInAddress);

  /**
   * @dev Modifier to ensure the token is approved in the registry
   * @param token The token address to check
   */
  modifier onlyApprovedToken(address token) {
    _require(
      registry.hasRole(registry.APPROVED_TOKEN(), token),
      Errors.INVALID_TOKEN
    );
    _;
  }

  /**
   * @dev Modifier to ensure the caller is an approved relayer
   */
  modifier onlyApprovedRelayer() {
    _require(
      registry.hasRole(registry.RELAYER_ROLE(), msg.sender),
      Errors.APPROVED_ONLY
    );
    _;
  }

  /**
   * @dev Modifier to ensure the recipient is not on the watchlist
   * @param recipient The address to check
   */
  modifier notWatchlist(address recipient) {
    _require(!registry.watchlist(recipient), Errors.RECIPIENT_ON_WATCHLIST);
    _;
  }

  /**
   * @dev Constructor for BridgeEndpoint
   * @param _owner The owner of the contract
   * @param name The name of the contract
   * @param version The version of the contract
   * @param _registry The address of the registry contract
   * @param _pegInAddress The address for pegging in tokens
   * @param _timeLock The address of the time lock contract
   */
  constructor(
    address _owner,
    string memory name,
    string memory version,
    address _registry,
    address _pegInAddress,
    address _timeLock
  ) EIP712(name, version) {
    _require(_owner != address(0), Errors.ZERO_ADDRESS);
    _require(_registry != address(0), Errors.ZERO_ADDRESS);
    _require(_pegInAddress != address(0), Errors.ZERO_ADDRESS);
    _require(_timeLock != address(0), Errors.ZERO_ADDRESS);
    registry = BridgeRegistry(_registry);
    pegInAddress = _pegInAddress;
    timeLock = ITimeLock(_timeLock);
    _transferOwnership(_owner);
  }

  /**
   * @dev Sends a message without tokens
   * @param payload The message data to send
   * @notice Only callable by allowlisted addresses
   */
  function sendMessage(
    bytes calldata payload
  ) external payable nonReentrant whenNotPaused onlyAllowlisted {
    emit SendMessageEvent(msg.sender, msg.value, payload);
  }

  /**
   * @dev Sends a message with tokens
   * @param token The token address to send
   * @param amount The amount of tokens to send (in 18-digit fixed point)
   * @param payload The message data to send
   * @notice Only callable by allowlisted addresses with approved tokens
   */
  function sendMessageWithToken(
    address token,
    uint256 amount,
    bytes calldata payload
  )
    external
    nonReentrant
    whenNotPaused
    onlyAllowlisted
    onlyApprovedToken(token)
  {
    uint256 feeDeducted = _transfer(token, amount);
    emit SendMessageWithTokenEvent(
      msg.sender,
      token,
      amount.sub(feeDeducted),
      feeDeducted,
      payload
    );

    // payload may be decoded like the below (for cross order)
    // bytes4 selector = bytes4(keccak256("transferToCross(address,uint256,address,uint256)"));
    // bytes memory encodedData = abi.encodeWithSelector(selector, destToken, destChainId, destAddress, amount);
  }

  /**
   * @dev Returns the domain separator for EIP-712
   */
  function domainSeparatorV4() external view returns (bytes32) {
    return _domainSeparatorV4();
  }

  /**
   * @dev Returns the hash of a typed data structure for EIP-712
   * @param structHash The hash of the struct to be signed
   */
  function hashTypedDataV4(bytes32 structHash) external view returns (bytes32) {
    return _hashTypedDataV4(structHash);
  }

  /**
   * @dev Sets the time lock contract address
   * @param _timeLock The new time lock contract address
   * @notice Only callable by the owner
   */
  function setTimeLock(address _timeLock) public virtual onlyOwner {
    timeLock = ITimeLock(_timeLock);
    emit SetTimeLockEvent(_timeLock);
  }

  /**
   * @dev Sets the global time lock threshold
   * @param _timeLockThreshold The new threshold value
   * @notice Only callable by the owner
   */
  function setTimeLockThreshold(uint256 _timeLockThreshold) external onlyOwner {
    timeLockThreshold = _timeLockThreshold;
    emit SetTimeLockThresholdEvent(timeLockThreshold);
  }

  /**
   * @dev Sets the time lock threshold for a specific token
   * @param token The token address
   * @param _timeLockThreshold The new threshold value
   * @notice Only callable by the owner
   */
  function setTimeLockThresholdByToken(
    address token,
    uint256 _timeLockThreshold
  ) external onlyOwner {
    _require(token != address(0), Errors.ZERO_TOKEN_ADDRESS);
    timeLockThresholdByToken[token] = _timeLockThreshold;
    emit SetTimeLockThresholdByTokenEvent(token, timeLockThreshold);
  }

  /**
   * @dev Sets the peg-in address
   * @param _pegInAddress The new peg-in address
   * @notice Only callable by the owner
   */
  function setPegInAddress(address _pegInAddress) external onlyOwner {
    _require(_pegInAddress != address(0), Errors.ZERO_ADDRESS);
    pegInAddress = _pegInAddress;
    emit SetPegInAddressEvent(_pegInAddress);
  }

  /**
   * @dev Transfers tokens to be unwrapped for a recipient
   * @param token The token address
   * @param recipient The recipient address
   * @param amount The amount of tokens (in 18-digit fixed point)
   * @param salt The transaction hash from the source chain
   * @param proofs Array of validator signatures
   * @notice Only callable by approved relayers with approved tokens
   */
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

    if (registry.burnable(token)) {
      IBurnable(token).mint(address(this), amount);
      if (amount >= timeLockThreshold.max(timeLockThresholdByToken[token])) {
        ERC20(token).increaseAllowanceFixed(address(timeLock), amount);
        timeLock.createAgreement(
          token,
          amount,
          recipient,
          "",
          TimeLockDataTypes.AgreementContext.BRIDGE_ENDPOINT
        );
      } else {
        ERC20(token).transferFixed(recipient, amount);
      }
    } else {
      unwrapSent[orderHash] = OrderPackage(recipient, token, amount, false);
    }
    emit TransferToUnwrapEvent(orderHash, salt, recipient, token, amount);
  }

  /**
   * @dev Finalizes multiple unwrap operations
   * @param orderHash Array of order hashes to finalize
   */
  function finalizeUnwrap(
    bytes32[] calldata orderHash
  ) external nonReentrant whenNotPaused {
    for (uint256 i = 0; i < orderHash.length; i++) {
      _finalizeUnwrap(orderHash[i]);
    }
  }

  /**
   * @dev Pauses the contract
   * @notice Only callable by the owner
   */
  function pause() external onlyOwner {
    _pause();
  }

  /**
   * @dev Unpauses the contract
   * @notice Only callable by the owner
   */
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

  // internal functions

  /**
   * @dev Internal function to handle token transfers with fee calculation
   * @param token The token address
   * @param amount The amount of tokens
   * @return feeDeducted The amount of fees deducted
   */
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
    ERC20(token).transferFromFixed(msg.sender, address(registry), feeDeducted);

    if (registry.burnable(token)) {
      IBurnable(token).burnFrom(msg.sender, amount.sub(feeDeducted));
    } else {
      ERC20(token).transferFromFixed(
        msg.sender,
        pegInAddress,
        amount.sub(feeDeducted)
      );
    }
  }

  /**
   * @dev Internal function to validate an order with validator signatures
   * @param orderHash The hash of the order
   * @param proofs Array of validator signatures
   */
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

  /**
   * @dev Internal function to finalize a single unwrap operation
   * @param orderHash The hash of the order to finalize
   */
  function _finalizeUnwrap(bytes32 orderHash) internal {
    OrderPackage memory orderPackage = unwrapSent[orderHash];
    _require(orderPackage.recipient != address(0), Errors.INVALID_ORDER);
    _require(!orderPackage.sent, Errors.ORDER_ALREADY_SENT);

    ERC20(orderPackage.token).transferFromFixed(
      msg.sender,
      orderPackage.recipient,
      orderPackage.amount
    );
    orderPackage.sent = true;
    unwrapSent[orderHash] = orderPackage;

    emit FinalizeUnwrapEvent(orderHash);
  }
}
