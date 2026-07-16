// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/token/ERC721/IERC721.sol";
import "@openzeppelin/contracts/utils/cryptography/draft-EIP712.sol";

import "./ISettingsStore.sol";
import "./IAcceptTreasure.sol";
import "./GameNft.sol";
import "./GoldERC20.sol";

contract GeneralStore is EIP712 {
  using SafeERC20 for IERC20;

  struct ERC20Cost {
    address token;
    string tokenId;
    uint256 amountWei;
    string usdTarget;
  }

  struct ERC721Cost {
    address token;
    uint256 tokenId;
  }

  struct Order {
    bool purchased;

    uint256 id;
    uint256 expiresAt;

    address purchaser;

    ERC20Cost[] erc20Cost;
    ERC721Cost[] erc721Cost;

    string metadata;
  }

  struct NftValue {
    uint256 nftId;
    uint32 nftVersion;
    uint256 goldValue;
  }

  event OrderProcessed(uint256 indexed id, address purchasedBy, uint256 expiresAt, string metadata, ERC20Cost[] erc20, ERC721Cost[] erc721);
  event ItemsSold(address indexed seller, address nftAddress, NftValue[] values);

  uint256 public immutable blockDeployed = block.number;

  mapping(uint256 => Order) public orders;

  ISettingsStore public settings;

  constructor(ISettingsStore _settings, string memory _signerDomainName)
    EIP712(_signerDomainName, "1")
  {
    settings = _settings;
  }

  ////////////////
  // Purhcasing //
  ////////////////

  bytes32 constant public ERC20_SIG_HASH = keccak256("ERC20Cost(address token,string tokenId,uint256 amountWei,string usdTarget)");
  function hashErc20(ERC20Cost calldata erc20) private pure returns (bytes32) {
    return keccak256(abi.encode(
      ERC20_SIG_HASH,
      erc20.token,
      keccak256(bytes(erc20.tokenId)),
      erc20.amountWei,
      keccak256(bytes(erc20.usdTarget))
    ));
  }

  bytes32 constant public ERC721_SIG_HASH = keccak256("ERC721Cost(address token,uint256 tokenId)");
  function hashErc721(ERC721Cost calldata erc721) private pure returns (bytes32) {
    return keccak256(abi.encode(
      ERC721_SIG_HASH,
      erc721.token,
      erc721.tokenId
    ));
  }

  bytes32 constant public NFT_VALUE_SIG_HASH = keccak256("NftValue(uint256 nftId,uint32 nftVersion,uint256 goldValue)");
  function hashNftValue(NftValue calldata value) private pure returns (bytes32) {
    return keccak256(abi.encode(
      NFT_VALUE_SIG_HASH,
      value.nftId,
      value.nftVersion,
      value.goldValue
    ));
  }

  bytes32 constant public SUBMIT_ORDER_SIG_HASH = keccak256("SubmitOrder(address purchaser,uint256 id,uint256 expiresAt,string metadata,ERC20Cost[] erc20,ERC721Cost[] erc721)ERC20Cost(address token,string tokenId,uint256 amountWei,string usdTarget)ERC721Cost(address token,uint256 tokenId)");
  function __verifySubmitOrderSigner(address purchaser, uint256 id, uint256 expiresAt, string calldata metadata, ERC20Cost[] calldata erc20, ERC721Cost[] calldata erc721, bytes calldata signature) private view {
    
    bytes memory erc20Bytes;
    for(uint8 i = 0; i < erc20.length; i++) {
      erc20Bytes = bytes.concat(erc20Bytes, hashErc20(erc20[i]));
    }

    bytes memory erc721Bytes;
    for(uint8 i = 0; i < erc721.length; i++) {
      erc721Bytes = bytes.concat(erc721Bytes, hashErc721(erc721[i]));
    }

    bytes32 digest = _hashTypedDataV4(keccak256(abi.encode(
      SUBMIT_ORDER_SIG_HASH,
      purchaser,
      id,
      expiresAt,
      keccak256(bytes(metadata)),
      keccak256(erc20Bytes),
      keccak256(erc721Bytes)
    )));

    address signer = ECDSA.recover(digest, signature);
    require(settings.isPermittedTo(signer, "GeneralStore", "SubmitOrder"), "403");
  }
  function submitOrder(uint256 id, uint256 expiresAt, string calldata metadata, ERC20Cost[] calldata erc20, ERC721Cost[] calldata erc721, bytes calldata signature) external {

    require(expiresAt >= block.timestamp, "410");
    require(orders[id].purchased == false, "400");

    __verifySubmitOrderSigner(msg.sender, id, expiresAt, metadata, erc20, erc721, signature);

    orders[id].purchased = true;
    orders[id].id = id;
    orders[id].expiresAt = expiresAt;
    orders[id].purchaser = msg.sender;
    orders[id].metadata = metadata;

    IAcceptTreasure treasury = IAcceptTreasure(settings.resolve("treasury.playeternity.io"));
    for(uint8 i = 0; i < erc20.length; i++) {
      IERC20 token = IERC20(erc20[i].token);
      token.transferFrom(msg.sender, address(this), erc20[i].amountWei);

      if(treasury.acceptedTokens(address(token))) {
        token.approve(address(treasury), erc20[i].amountWei);
        treasury.accept(token, erc20[i].amountWei);
      }
    }

    for(uint8 i = 0; i < erc721.length; i++) {
      IERC721(erc721[i].token).safeTransferFrom(msg.sender, address(treasury), erc721[i].tokenId);
      orders[id].erc721Cost.push(erc721[i]);
    }

    emit OrderProcessed(id, msg.sender, expiresAt, metadata, erc20, erc721);
  }

  bytes32 constant public SELL_ITEMS_SIG_HASH = keccak256("SellItems(address seller,address nftAddress,NftValue[] values)NftValue(uint256 nftId,uint32 nftVersion,uint256 goldValue)");
  function __verifySellItems(address seller, address nftAddress, NftValue[] calldata values, bytes calldata signature) private view {

    bytes memory valueBytes;
    for(uint8 i = 0; i < values.length; i++) {
      valueBytes = bytes.concat(valueBytes, hashNftValue(values[i]));
    }

    bytes32 digest = _hashTypedDataV4(keccak256(abi.encode(
      SELL_ITEMS_SIG_HASH,
      seller,
      nftAddress,
      keccak256(valueBytes)
    )));

    address signer = ECDSA.recover(digest, signature);
    require(settings.isPermittedTo(signer, "GeneralStore", "SellItems"), "403");
  }
  function sellItems(GameNft nft, NftValue[] calldata values, bytes calldata signature) external {

    __verifySellItems(msg.sender, address(nft), values, signature);

    uint256 totalGold = 0;

    for(uint8 i = 0; i < values.length; i++) {
      totalGold += values[i].goldValue;

      require(nft.ownerOf(values[i].nftId) == msg.sender, "403");

      nft.trustedDestroy(values[i].nftId, values[i].nftVersion);
    }

    require(totalGold > 0, "400 - insufficient gold");
    GoldERC20(settings.resolve("gold-erc20.playeternity.io")).trustedMint(msg.sender, totalGold);

    emit ItemsSold(msg.sender, address(nft), values);
  }
}
