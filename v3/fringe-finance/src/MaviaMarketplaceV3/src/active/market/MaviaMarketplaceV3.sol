// SPDX-License-Identifier: MIT
pragma solidity 0.8.4;

import "@openzeppelin/contracts-upgradeable/token/ERC20/IERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/utils/SafeERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/cryptography/draft-EIP712Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/cryptography/ECDSAUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC721/ERC721Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC1155/ERC1155Upgradeable.sol";

contract MaviaMarketplaceV3 is AccessControlUpgradeable, ReentrancyGuardUpgradeable, EIP712Upgradeable {
  using SafeERC20Upgradeable for IERC20Upgradeable;

  // Roles
  bytes32 private constant _EDITOR_ROLE = keccak256("_EDITOR_ROLE");
  bytes32 private constant _EMERGENCY_ROLE = keccak256("_EMERGENCY_ROLE");
  bytes32 private constant _VALIDATOR_ROLE = keccak256("_VALIDATOR_ROLE");
  bytes32 private constant _FULFILL_TRANSFER_ROLE = keccak256("_FULFILL_TRANSFER_ROLE");

  // Type hashes
  //    keccak256(
  //      "OrderDetails(uint16 orderType,address nft,address seller,uint256 tokenId,uint256 amount,uint256 maxAmount,uint256 appNonce,uint256 pkgId,address buyer,uint256 sigTime)"
  //    );
  bytes32 public constant ORDER_DETAILS_TYPEHASH = 0xcfc6e1d97cd46e4d3f3056df2613a6f416e3249f38631749057d73a41bf935c8;
  //    keccak256("PriceDetails(address token,uint256 amount,uint256 fee)");
  bytes32 public constant PRICE_DETAILS_TYPEHASH = 0xdf48c8e9dc422cacb989e86cf91dbe9bd13517600627b5ee8eda37d9b58036bb;
  //    keccak256(
  //      "FullOrder(OrderDetails order,PriceDetails price)"
  //      "OrderDetails(uint16 orderType,address nft,address seller,uint256 tokenId,uint256 amount,uint256 maxAmount,uint256 appNonce,uint256 pkgId,address buyer,uint256 sigTime)"
  //      "PriceDetails(address token,uint256 amount,uint256 fee)"
  //    );
  bytes32 public constant FULL_ORDER_TYPEHASH = 0x4ddb824b82ab6a9b351dc62910e80baeae9b58bfd57c51597d916d315f1d4766;

  // NFT types
  uint16 private constant _NT_UNSET = 0;
  uint16 private constant _NT_ERC721 = 1;
  uint16 private constant _NT_ERC1155 = 2;

  // Order types
  uint16 private constant _OT_LISTING = 0;
  uint16 private constant _OT_OFFER = 1;

  // Pause flag
  bool public isPaused;
  // Blacklist sender
  mapping(address => bool) public blacklistSenders;
  // Whitelist NFT => return type
  mapping(address => uint16) public whitelistNFTs;
  // Whitelist Token => return bool
  mapping(address => bool) public whitelistTokens;
  // App nonces
  mapping(uint => bool) public appNonces;
  // Package Ids counter
  mapping(uint => uint) public pkgIds;
  // Validating window time
  uint256 public receiveWindow;
  // Fee holder
  address public feeHolder;

  struct OrderDetails {
    uint16 orderType;
    address nft;
    address seller;
    uint256 tokenId;
    uint256 amount;
    uint256 maxAmount;
    uint256 appNonce;
    uint256 pkgId;
    address buyer;
    uint256 sigTime;
  }

  struct PriceDetails {
    address token;
    uint256 amount;
    uint256 fee;
  }

  event ESetPause(bool isPaused);
  event ESetWhitelistNFT(address nft, uint16 nftType);
  event ESetWhitelistToken(address token, bool status);
  event ESetBlacklist(address account, bool status);
  event ESetReceiveWindow(uint256 receiveWindow);
  event ESetFeeHolder(address feeHolder);
  event ECollectTokens(address sender, address token, uint256 amount);

  /**
   * @dev Upgradable initializer
   */
  function MaviaMarketplaceV3Init() external initializer {
    __ReentrancyGuard_init();
    __AccessControl_init();
    __EIP712_init("MaviaMarketplaceV3", "1.0.0");

    address sender_ = _msgSender();
    _setupRole(DEFAULT_ADMIN_ROLE, sender_);
    _setupRole(_EDITOR_ROLE, sender_);

    receiveWindow = 15 minutes;
    feeHolder = sender_;
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
    emit ESetPause(_pIsPaused);
  }

  /**
   * @dev Set whitelist nft and type
   * @param _pNFT Address of NFT
   * @param _pType Type of NFT { 0: unset, 1: ERC721, 2: ERC1155 }
   */
  function fSetWhitelistNFTs(address _pNFT, uint16 _pType) external onlyRole(_EDITOR_ROLE) {
    whitelistNFTs[_pNFT] = _pType;
    emit ESetWhitelistNFT(_pNFT, _pType);
  }

  /**
   * @dev Set whitelist pay token
   */
  function fSetWhitelistTokens(address _pPayToken, bool _pStatus) external onlyRole(_EDITOR_ROLE) {
    whitelistTokens[_pPayToken] = _pStatus;
    emit ESetWhitelistToken(_pPayToken, _pStatus);
  }

  /**
   * @dev Set receive window
   * @param _pReceiveWindow window to update
   */
  function fSetReceiveWindow(uint256 _pReceiveWindow) external onlyRole(_EDITOR_ROLE) {
    receiveWindow = _pReceiveWindow;
    emit ESetReceiveWindow(_pReceiveWindow);
  }

  /**
   * @dev Set fee holder
   */
  function fSetFeeHolder(address _pFeeHolder) external onlyRole(_EDITOR_ROLE) {
    feeHolder = _pFeeHolder;
    emit ESetFeeHolder(_pFeeHolder);
  }

  /**
   * @dev Set blacklist to the contract
   * @param _pAddress Address to set blacklist
   */
  function fSetBlacklist(address _pAddress, bool _pStatus) external onlyRole(_EDITOR_ROLE) {
    blacklistSenders[_pAddress] = _pStatus;
    emit ESetBlacklist(_pAddress, _pStatus);
  }

  // solhint-disable no-empty-blocks
  function Ox00000000() external {}

  /**
   * @dev Fulfill orders
   */
  function fFulfillOrders(
    OrderDetails[] calldata orders,
    PriceDetails[] calldata prices,
    bytes[] calldata signatures
  ) external nonReentrant {
    require(hasRole(_FULFILL_TRANSFER_ROLE, _msgSender()), "Whitelist call");
    for (uint i = 0; i < orders.length; i++) {
      _fFulfillOrder(orders[i], prices[i], signatures[i]);
    }
  }

  /**
   * @dev Fulfill order public call
   */
  function fFulfillOrder(
    OrderDetails calldata order,
    PriceDetails calldata price,
    bytes calldata signature
  ) external nonReentrant {
    _fFulfillOrder(order, price, signature);
  }

  /**
   * @dev Fulfill order
   */
  function _fFulfillOrder(OrderDetails calldata order, PriceDetails calldata price, bytes calldata signature) private {
    address sender_ = msg.sender;
    require(!isPaused, "MM2:ffo000");
    require(order.amount > 0, "MM2:ffo001");
    // Verify app nonce
    require(!appNonces[order.appNonce], "MM2:ffo002");
    appNonces[order.appNonce] = true;
    // Verify pkgId
    uint256 newPkgIdAmount = pkgIds[order.pkgId] + order.amount;
    require(newPkgIdAmount <= order.maxAmount, "MM2:ffo003");
    pkgIds[order.pkgId] = newPkgIdAmount;

    // Fulfill role is for off-chain payment. Else, make payment to seller
    bytes32 digest_;
    if (hasRole(_FULFILL_TRANSFER_ROLE, sender_)) {
      digest_ = _fOrderHash(order);
    } else {
      require(!blacklistSenders[sender_], "MM2:ffo011");
      digest_ = _fFullHash(order, price);
      // Verify order type
      require(
        // Listing order: Buyer trigger
        (order.orderType == _OT_LISTING && sender_ == order.buyer) ||
          // Offer order: Seller trigger
          (order.orderType == _OT_OFFER && sender_ == order.seller),
        "MM2:ffo013"
      );
    }
    // Make payment to seller
    if (price.token != address(0)) {
      require(whitelistTokens[price.token], "MM2:ffo014");
      if (price.fee > 0) {
        IERC20Upgradeable(price.token).safeTransferFrom(order.buyer, feeHolder, price.fee);
      }
      if (price.amount > 0) {
        IERC20Upgradeable(price.token).safeTransferFrom(order.buyer, order.seller, price.amount);
      }
    }

    // Verify signature & time
    require(block.timestamp <= order.sigTime + receiveWindow, "MM2:ffo004");
    require(hasRole(_VALIDATOR_ROLE, ECDSAUpgradeable.recover(digest_, signature)), "MM2:ffo005");

    // Verify nft type and transfer assets to buyer
    uint16 nftType_ = whitelistNFTs[order.nft];
    require(nftType_ > _NT_UNSET, "MM2:ffo020");
    if (nftType_ == _NT_ERC1155) {
      uint256 _balance = ERC1155Upgradeable(order.nft).balanceOf(order.seller, order.tokenId);
      require(_balance >= order.amount, "MM2:ffo021");

      ERC1155Upgradeable(order.nft).safeTransferFrom(order.seller, order.buyer, order.tokenId, order.amount, "");
    } else if (nftType_ == _NT_ERC721) {
      require(ERC721Upgradeable(order.nft).ownerOf(order.tokenId) == order.seller, "MM2:ffo022");
      require(order.amount == 1, "MM2:ffo023");

      ERC721Upgradeable(order.nft).safeTransferFrom(order.seller, order.buyer, order.tokenId);
    } else {
      revert("MM2:ffo024");
    }
  }

  /**
   * @dev Calculate full order hash
   */
  function _fFullHash(OrderDetails calldata order, PriceDetails calldata price) private view returns (bytes32) {
    bytes32 orderStructHash = keccak256(
      abi.encode(
        ORDER_DETAILS_TYPEHASH,
        order.orderType,
        order.nft,
        order.seller,
        order.tokenId,
        order.amount,
        order.maxAmount,
        order.appNonce,
        order.pkgId,
        order.buyer,
        order.sigTime
      )
    );

    bytes32 priceStructHash = keccak256(abi.encode(PRICE_DETAILS_TYPEHASH, price.token, price.amount, price.fee));

    return _hashTypedDataV4(keccak256(abi.encode(FULL_ORDER_TYPEHASH, orderStructHash, priceStructHash)));
  }

  /**
   * @dev Calculate light order hash which is used for fulfill role
   */
  function _fOrderHash(OrderDetails calldata order) private view returns (bytes32) {
    return
      _hashTypedDataV4(
        keccak256(
          abi.encode(
            ORDER_DETAILS_TYPEHASH,
            order.orderType,
            order.nft,
            order.seller,
            order.tokenId,
            order.amount,
            order.maxAmount,
            order.appNonce,
            order.pkgId,
            order.buyer,
            order.sigTime
          )
        )
      );
  }
}
