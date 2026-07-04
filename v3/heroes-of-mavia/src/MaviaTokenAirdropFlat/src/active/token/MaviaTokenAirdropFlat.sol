// SPDX-License-Identifier: MIT
pragma solidity 0.8.4;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/access/AccessControl.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "@openzeppelin/contracts/utils/cryptography/draft-EIP712.sol";
import "@openzeppelin/contracts/utils/cryptography/ECDSA.sol";

contract MaviaTokenAirdropFlat is AccessControl, ReentrancyGuard, EIP712 {
  using SafeERC20 for IERC20;

  bytes32 internal constant _EDITOR_ROLE = keccak256("_EDITOR_ROLE");
  bytes32 internal constant _EMERGENCY_ROLE = keccak256("_EMERGENCY_ROLE");
  bytes32 internal constant _VALIDATOR_ROLE = keccak256("_VALIDATOR_ROLE");

  /// Blacklist map
  mapping(address => bool) public blacklistSenders;
  /// App nonces
  mapping(uint => bool) public appNonces;
  /// Validating window time
  uint256 public receiveWindow;

  /// Token address
  address public token;
  /// Token rewards
  uint256 public rewards;

  // Pause flag
  bool public isPaused;

  event ECollectTokens(address sender, address token, uint256 amount);
  event ESafeWithdrawRewards(address sender, uint256 amount);
  event EEmerWithdrawRewards(address sender, uint256 amount);
  event EClaimToken(address sender, uint256 amount, uint256 appNonce);

  constructor(address _pToken, string memory _pVersion) EIP712("MaviaTokenAirdrop", _pVersion) {
    address sender_ = _msgSender();
    _setupRole(DEFAULT_ADMIN_ROLE, sender_);
    _setupRole(_EDITOR_ROLE, sender_);

    token = _pToken;
    receiveWindow = 15 minutes;
  }

  /**
   * @dev Emergency withdraw rewards
   */
  function fEmerWithdraw(uint256 _pAmount) external onlyRole(_EMERGENCY_ROLE) {
    IERC20(token).safeTransfer(_msgSender(), _pAmount);
    emit EEmerWithdrawRewards(_msgSender(), _pAmount);
  }

  /**
   * @dev Safety withdraw rewards
   */
  function fCollectRewards(uint256 _pAmount) external onlyRole(_EMERGENCY_ROLE) {
    require(rewards >= _pAmount, "MTA:swr000");
    rewards -= _pAmount;
    IERC20(token).safeTransfer(_msgSender(), _pAmount);
    emit ESafeWithdrawRewards(_msgSender(), _pAmount);
  }

  /**
   * @dev Correct Token
   */
  function fCorrectToken(address _pToken) external onlyRole(_EDITOR_ROLE) {
    require(rewards == 0, "MTA:crt000");
    token = _pToken;
  }

  /**
   * @dev Correct rewards
   */
  function fCorrectRewards(uint256 _pRewards) external onlyRole(_EDITOR_ROLE) {
    rewards = _pRewards;
  }

  /**
   * @dev Deposit rewards
   */
  function fDepositRewards(uint256 _pAmount) external onlyRole(_EDITOR_ROLE) {
    IERC20(token).safeTransferFrom(_msgSender(), address(this), _pAmount);
    rewards += _pAmount;
  }

  /**
   * @dev Set pause flag
   */
  function fSetPause(bool _pIsPaused) external onlyRole(_EDITOR_ROLE) {
    isPaused = _pIsPaused;
  }

  /**
   * @dev Set receive window
   * @param _pReceiveWindow window to update
   */
  function fSetReceiveWindow(uint256 _pReceiveWindow) external onlyRole(_EDITOR_ROLE) {
    receiveWindow = _pReceiveWindow;
  }

  /**
   * @dev Set blacklist to the contract
   * @param _pAddress Address to set blacklist
   */
  function fSetBlacklist(address _pAddress, bool _pStatus) external onlyRole(_EDITOR_ROLE) {
    blacklistSenders[_pAddress] = _pStatus;
  }

  /**
   * @dev Set app nonces
   */
  function fSetAppNonces(uint256[] calldata _appNonces, bool _pStatus) external onlyRole(_EDITOR_ROLE) {
    for (uint256 i = 0; i < _appNonces.length; i++) {
      appNonces[_appNonces[i]] = _pStatus;
    }
  }

  /**
   * @dev Distribute Token
   */
  function fClaimToken(
    uint256 _pAmount,
    uint256 _pAppNonce,
    uint256 _pSigTime,
    bytes calldata _pSignature
  ) external nonReentrant {
    address sender_ = msg.sender;
    require(!isPaused, "MTA:clt000");
    require(rewards > 0, "MTA:clt001");
    require(_pAmount > 0, "MTA:clt002");
    require(!blacklistSenders[sender_], "MTA:clt003");
    require(!appNonces[_pAppNonce], "MTA:clt004");
    appNonces[_pAppNonce] = true;

    // Verify signature
    require(block.timestamp <= _pSigTime + receiveWindow, "MTA:clt010");
    require(_fVerify(_fHash(sender_, token, _pAmount, _pAppNonce, _pSigTime), _pSignature), "MTA:clt011");

    // Transfer token
    rewards -= _pAmount;
    IERC20(token).safeTransfer(sender_, _pAmount);

    emit EClaimToken(sender_, _pAmount, _pAppNonce);
  }

  /**
   * @dev Calculate hash
   */
  function _fHash(
    address _pSender,
    address _pToken,
    uint256 _pAmount,
    uint256 _pAppNonce,
    uint256 _pSigTime
  ) private view returns (bytes32) {
    return
      _hashTypedDataV4(
        keccak256(
          abi.encode(
            keccak256(
              "MaviaTokenAirdrop(address _pSender,address _pToken,uint256 _pAmount,uint256 _pAppNonce,uint256 _pSigTime)"
            ),
            _pSender,
            _pToken,
            _pAmount,
            _pAppNonce,
            _pSigTime
          )
        )
      );
  }

  /**
   * @dev Verify signature
   * @param _pDigest Bytes32 digest
   * @param _pSignature Bytes signature
   */
  function _fVerify(bytes32 _pDigest, bytes memory _pSignature) private view returns (bool) {
    return hasRole(_VALIDATOR_ROLE, ECDSA.recover(_pDigest, _pSignature));
  }
}
