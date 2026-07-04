// SPDX-License-Identifier: MIT
pragma solidity 0.8.4;

import "@openzeppelin/contracts-upgradeable/token/ERC20/IERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/utils/SafeERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/cryptography/draft-EIP712Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/cryptography/ECDSAUpgradeable.sol";
import "./IMaviaNFTMintable.sol";

contract MaviaNFTAirdrop is AccessControlUpgradeable, ReentrancyGuardUpgradeable, EIP712Upgradeable {
  using SafeERC20Upgradeable for IERC20Upgradeable;

  bytes32 internal constant _EDITOR_ROLE = keccak256("_EDITOR_ROLE");
  bytes32 internal constant _EMERGENCY_ROLE = keccak256("_EMERGENCY_ROLE");
  bytes32 internal constant _VALIDATOR_ROLE = keccak256("_VALIDATOR_ROLE");
  bytes32 internal constant _DISTRIBUTE_NFT_ROLE = keccak256("_DISTRIBUTE_NFT_ROLE");

  // NFT types
  uint16 private constant _NT_UNSET = 0;
  uint16 private constant _NT_ERC721 = 1;
  uint16 private constant _NT_ERC1155 = 2;

  // Whitelist NFT => return type
  mapping(address => uint16) public whitelistNFTs;
  // Blacklist map
  mapping(address => bool) public blacklistSenders;
  // App nonces
  mapping(uint => bool) public appNonces;
  // Validating window time
  uint256 public receiveWindow;

  // WETH address
  address public WETH;
  // Pause flag
  bool public isPaused;

  event ECollectETHs(address sender, uint256 amount);
  event ECollectTokens(address sender, address token, uint256 amount);
  event EDistributeNFT(address sender, uint16 nftType, uint256 appNonce);

  /**
   * @dev Allow contract to receive ethers
   */
  // solhint-disable-next-line no-empty-blocks
  receive() external payable {}

  /**
   * @dev Upgradable initializer
   */
  function MaviaNFTAirdropInit() external initializer {
    __ReentrancyGuard_init();
    __AccessControl_init();
    __EIP712_init("MaviaNFTAirdrop", "1.0.0");

    address sender_ = _msgSender();
    _setupRole(DEFAULT_ADMIN_ROLE, sender_);
    _setupRole(_EDITOR_ROLE, sender_);

    receiveWindow = 15 minutes;
  }

  /**
   * @dev Set roles
   */
  function setRoles(bytes32 role, address[] calldata accounts, bool enable) external onlyRole(getRoleAdmin(role)) {
    for (uint256 i = 0; i < accounts.length; i++) {
      if (enable) grantRole(role, accounts[i]);
      else revokeRole(role, accounts[i]);
    }
  }

  /**
   * @dev Collect eth balance
   * @param _pAmount token amount
   */
  function fCollectETHs(uint256 _pAmount) external onlyRole(_EMERGENCY_ROLE) {
    payable(_msgSender()).transfer(_pAmount);
    emit ECollectETHs(_msgSender(), _pAmount);
  }

  /**
   * @dev Collect token balance
   * @param _pToken token address
   * @param _pAmount token amount
   */
  function fCollectTokens(address _pToken, uint256 _pAmount) external onlyRole(_EMERGENCY_ROLE) {
    IERC20Upgradeable(_pToken).safeTransfer(_msgSender(), _pAmount);
    emit ECollectTokens(_msgSender(), _pToken, _pAmount);
  }

  /**
   * @dev Set pause flag
   */
  function fSetPause(bool _pIsPaused) external onlyRole(_EDITOR_ROLE) {
    isPaused = _pIsPaused;
  }

  /**
   * @dev Set whitelist to the contract
   * @param _pNFT Address of NFT
   * @param _pType Type of NFT { 0: unset, 1: ERC721, 2: ERC1155 }
   */
  function fSetWhitelistNFTs(address _pNFT, uint16 _pType) external onlyRole(_EDITOR_ROLE) {
    whitelistNFTs[_pNFT] = _pType;
  }

  /**
   * @dev Set WETH
   */
  function fSetWETHAddress(address _pWETH) external onlyRole(_EDITOR_ROLE) {
    WETH = _pWETH;
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
   * @dev Distribute NFT
   * @param _pNFTId NFT Id
   * @param _pNFTAmount NFT Amount
   * @param _pAppNonce Nonce of the app
   * @param _pReceiver Buyer address
   * @param _pPayToken address(0) mean RUBY -> value is 0; WETH address is ETH -> value = msg.value; otherwise ERC20 tokens
   * @param _pPayValue Paid value of the payment will be sent to the contract
   * @param _pSigTime Signature time of the user
   * @param _pSignature Bytes value
   */
  function fDistributeNFT(
    address _pNFT,
    uint256 _pNFTId,
    uint256 _pNFTAmount,
    uint256 _pAppNonce,
    address _pReceiver,
    address _pPayToken,
    uint256 _pPayValue,
    uint256 _pSigTime,
    bytes calldata _pSignature
  ) external payable nonReentrant {
    // Avoid stack too deep
    address[3] memory pAddrs_ = [_pNFT, _pReceiver, _pPayToken];
    uint256[5] memory pUints_ = [_pNFTId, _pNFTAmount, _pAppNonce, _pPayValue, _pSigTime];

    address sender_ = msg.sender;
    uint256 value_ = msg.value;
    uint16 nftType_ = whitelistNFTs[pAddrs_[0]];
    require(!isPaused, "MNA:dnft000");
    require(pUints_[1] > 0, "MNA:dnft001");
    require(nftType_ > _NT_UNSET, "MNA:dnft002");
    require(!blacklistSenders[sender_], "MNA:dnft003");
    require(!appNonces[pUints_[2]], "MNA:dnft004");
    appNonces[pUints_[2]] = true;

    // Verify signature
    require(block.timestamp <= pUints_[4] + receiveWindow, "MNA:dnft010");
    require(
      _fVerify(
        _fHash(sender_, pAddrs_[0], pUints_[0], pUints_[1], pUints_[2], pAddrs_[1], pAddrs_[2], pUints_[3], pUints_[4]),
        _pSignature
      ),
      "MNA:dnft011"
    );

    // Verify sender and payment
    if (sender_ != pAddrs_[1]) {
      require(hasRole(_DISTRIBUTE_NFT_ROLE, sender_), "MNA:dnft020");
    } else if (pAddrs_[2] == WETH) {
      require(pUints_[3] == value_, "MNA:dnft021");
    } else {
      require(value_ == 0, "MNA:dnft022");
      if (pAddrs_[2] != address(0) && pUints_[3] > 0) {
        IERC20Upgradeable(pAddrs_[2]).safeTransferFrom(sender_, address(this), pUints_[3]);
      }
    }

    // Verify nft type and transfer
    if (nftType_ == _NT_ERC721) {
      IERC721Mintable(pAddrs_[0]).fMint(pAddrs_[1], pUints_[0]);
    } else if (nftType_ == _NT_ERC1155) {
      IERC1155Mintable(pAddrs_[0]).fMint(pAddrs_[1], pUints_[0], pUints_[1]);
    } else {
      revert("MNA:dnft030");
    }

    emit EDistributeNFT(sender_, nftType_, pUints_[2]);
  }

  /**
   * @dev Calculate hash
   */
  function _fHash(
    address _pSender,
    address _pNFT,
    uint256 _pNFTId,
    uint256 _pNFTAmount,
    uint256 _pAppNonce,
    address _pReceiver,
    address _pPayToken,
    uint256 _pPayValue,
    uint256 _pSigTime
  ) private view returns (bytes32) {
    return
      _hashTypedDataV4(
        keccak256(
          abi.encode(
            keccak256(
              "MaviaNFTAirdrop(address _pSender,address _pNFT,uint256 _pNFTId,uint256 _pNFTAmount,uint256 _pAppNonce,address _pReceiver,address _pPayToken,uint256 _pPayValue,uint256 _pSigTime)"
            ),
            _pSender,
            _pNFT,
            _pNFTId,
            _pNFTAmount,
            _pAppNonce,
            _pReceiver,
            _pPayToken,
            _pPayValue,
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
  function _fVerify(bytes32 _pDigest, bytes memory _pSignature) internal view returns (bool) {
    return hasRole(_VALIDATOR_ROLE, ECDSAUpgradeable.recover(_pDigest, _pSignature));
  }
}
