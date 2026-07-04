// contracts/Messina1155.sol
// SPDX-License-Identifier: Apache 2

pragma solidity ^0.8.0;

import '../interfaces/IMessina1155.sol';
import '@openzeppelin/contracts-upgradeable/token/ERC1155/IERC1155Upgradeable.sol';
import '@openzeppelin/contracts-upgradeable/token/ERC1155/IERC1155ReceiverUpgradeable.sol';
import '@openzeppelin/contracts-upgradeable/token/ERC1155/extensions/IERC1155MetadataURIUpgradeable.sol';
import '@openzeppelin/contracts-upgradeable/utils/ContextUpgradeable.sol';
import '@openzeppelin/contracts-upgradeable/utils/AddressUpgradeable.sol';
import '@openzeppelin/contracts-upgradeable/utils/StringsUpgradeable.sol';
import '@openzeppelin/contracts-upgradeable/utils/introspection/ERC165Upgradeable.sol';
import '@openzeppelin/contracts-upgradeable/token/common/ERC2981Upgradeable.sol';
import '@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol';
import "@openzeppelin/contracts-upgradeable/utils/StringsUpgradeable.sol";
import 'hardhat/console.sol';

// Based on the OpenZepplin ERC1155 implementation, licensed under MIT
contract Messina1155 is
  Initializable,
  ContextUpgradeable,
  IERC1155Upgradeable,
  IERC1155MetadataURIUpgradeable,
  ERC165Upgradeable,
  ERC2981Upgradeable,
  IMessina1155,
  UUPSUpgradeable
{
  struct State {
    // Mapping owner address to token count
    mapping(uint256 => mapping(address => uint256)) balances;
    // Mapping from owner to operator approvals
    mapping(address => mapping(address => bool)) operatorApprovals;
    // Mapping from tokenID to createData
    mapping(uint256 => bytes) tokenData;
    // mapping(uint256 => string) tokenURIs;
    string tokenURIs;
    string contractURI;
    address owner;
    address nftBridge;
    bool initialized;
    uint16 chainId;
    uint16 standardID;
    bytes32 nativeContract;
    bytes data;
  }

  State state;

  using AddressUpgradeable for address;
  using StringsUpgradeable for uint256;

  /// @custom:oz-upgrades-unsafe-allow constructor
  constructor() {
    _disableInitializers();
  }

  function __Messina1155_init(
    string memory uri_,
    address owner_,
    address nftBridge_,
    uint16 chainId_,
    bytes32 nativeContract_,
    address royaltyReceiver_,
    uint96 royaltyFeesInBips_,
    uint16 standardID_,
    bytes memory data_
  ) public initializer {
    __Context_init();
    __ERC165_init();
    __ERC2981_init();
    __UUPSUpgradeable_init();
    state.tokenURIs = uri_;
    state.owner = owner_;
    state.nftBridge = nftBridge_;
    state.chainId = chainId_;
    if (nativeContract_ != bytes32(0)) {
      state.nativeContract = nativeContract_;
    } else {
      state.nativeContract = bytes32(uint256(uint160(address(this))));
    }
    if (royaltyReceiver_ != address(0)) {
      _setDefaultRoyalty(royaltyReceiver_, royaltyFeesInBips_);
    }
    state.standardID = standardID_;
    state.data = data_;
  }

  function supportsInterface(
    bytes4 interfaceId
  ) public view virtual override (ERC165Upgradeable, IERC165Upgradeable, ERC2981Upgradeable) returns (bool) {
    return
      interfaceId == type(IMessina1155).interfaceId || // Before we finalize our own interface
      interfaceId == type(ERC2981Upgradeable).interfaceId ||
      interfaceId == type(IERC1155Upgradeable).interfaceId ||
      interfaceId == type(IERC1155MetadataURIUpgradeable).interfaceId ||
      super.supportsInterface(interfaceId);
  }

  function uri(uint256 CollectionID) public view virtual override returns (string memory) {
    return string(abi.encodePacked(state.tokenURIs, StringsUpgradeable.toString(CollectionID), ".json"));
  }

  function contractURI() public view virtual returns (string memory) {
    return state.contractURI;
  }

  function balanceOf(address owner_, uint256 id_) public view virtual override returns (uint256) {
    require(owner_ != address(0), 'ERC1155: address zero is not a valid owner');
    return state.balances[id_][owner_];
  }

  function balanceOfBatch(
    address[] memory owners_,
    uint256[] memory ids_
  ) public view virtual override returns (uint256[] memory) {
    require(owners_.length == ids_.length, 'ERC1155: accounts and ids length mismatch');

    uint256[] memory batchBalances = new uint256[](owners_.length);

    for (uint256 i = 0; i < owners_.length; ++i) {
      batchBalances[i] = balanceOf(owners_[i], ids_[i]);
    }

    return batchBalances;
  }

  function getChainId() public view virtual override returns (uint16) {
    return state.chainId;
  }

  function getNativeContract() public view virtual override returns (bytes32) {
    return state.nativeContract;
  }

  function getChainIdNNativeContract() public view virtual override returns (uint16, bytes32) {
    return (state.chainId, state.nativeContract);
  }

  function getOwner() public view virtual override returns (address) {
    return state.owner;
  }

  function getNFTBridge() public view virtual override returns (address) {
    return state.nftBridge;
  }

  function getCreateData() public view virtual override returns (bytes memory) {
    return state.data;
  }

  function getStandardID() public view virtual override returns (uint16) {
    return state.standardID;
  }

  function getCreateDataNStandardID() public view virtual override returns (bytes memory, uint16) {
    return (state.data, state.standardID);
  }

  function setApprovalForAll(address operator, bool approved) public virtual override {
    require(operator != _msgSender(), 'ERC1155: setting approval status for self');

    state.operatorApprovals[_msgSender()][operator] = approved;
    emit ApprovalForAll(_msgSender(), operator, approved);
  }

  function isApprovedForAll(
    address owner_,
    address operator
  ) public view virtual override returns (bool) {
    return state.operatorApprovals[owner_][operator];
  }

  function safeTransferFrom(
    address from,
    address to,
    uint256 id,
    uint256 amount,
    bytes memory data
  ) public virtual override {
    require(
      from == _msgSender() || isApprovedForAll(from, _msgSender()),
      'ERC1155: caller is not token owner or approved'
    );
    _safeTransferFrom(from, to, id, amount, data);
  }

  function safeBatchTransferFrom(
    address from,
    address to,
    uint256[] memory ids,
    uint256[] memory amounts,
    bytes memory data
  ) public virtual override {
    require(
      from == _msgSender() || isApprovedForAll(from, _msgSender()),
      'ERC1155: caller is not token owner or approved'
    );
    _safeBatchTransferFrom(from, to, ids, amounts, data);
  }

  function _safeTransferFrom(
    address from,
    address to,
    uint256 id,
    uint256 amount,
    bytes memory data
  ) internal virtual {
    require(to != address(0), 'ERC1155: transfer to the zero address');

    address operator = _msgSender();
    uint256[] memory ids = _asSingletonArray(id);
    uint256[] memory amounts = _asSingletonArray(amount);

    _beforeTokenTransfer(operator, from, to, ids, amounts, data);

    uint256 fromBalance = state.balances[id][from];
    require(fromBalance >= amount, 'ERC1155: insufficient balance for transfer');
    unchecked {
      state.balances[id][from] = fromBalance - amount;
    }
    state.balances[id][to] += amount;

    emit TransferSingle(operator, from, to, id, amount);

    _afterTokenTransfer(operator, from, to, ids, amounts, data);

    _doSafeTransferAcceptanceCheck(operator, from, to, id, amount, data);
  }

  function _safeBatchTransferFrom(
    address from,
    address to,
    uint256[] memory ids,
    uint256[] memory amounts,
    bytes memory data
  ) internal virtual {
    require(ids.length == amounts.length, 'ERC1155: ids and amounts length mismatch');
    require(to != address(0), 'ERC1155: transfer to the zero address');

    address operator = _msgSender();

    _beforeTokenTransfer(operator, from, to, ids, amounts, data);

    for (uint256 i = 0; i < ids.length; ++i) {
      uint256 id = ids[i];
      uint256 amount = amounts[i];

      uint256 fromBalance = state.balances[id][from];
      require(fromBalance >= amount, 'ERC1155: insufficient balance for transfer');
      unchecked {
        state.balances[id][from] = fromBalance - amount;
      }
      state.balances[id][to] += amount;
    }

    emit TransferBatch(operator, from, to, ids, amounts);

    _afterTokenTransfer(operator, from, to, ids, amounts, data);

    _doSafeBatchTransferAcceptanceCheck(operator, from, to, ids, amounts, data);
  }

  function bridgeMint(
    address to,
    uint256 id,
    uint256 amount,
    bytes memory data
  ) public virtual override onlyNFTBridge {
    _mint(to, id, amount, data);
  }

  function _mint(address to, uint256 id, uint256 amount, bytes memory data) internal virtual {
    require(to != address(0), 'ERC1155: mint to the zero address');

    address operator = _msgSender();
    uint256[] memory ids = _asSingletonArray(id);
    uint256[] memory amounts = _asSingletonArray(amount);

    _beforeTokenTransfer(operator, address(0), to, ids, amounts, data);

    state.balances[id][to] += amount;
    emit TransferSingle(operator, address(0), to, id, amount);

    _afterTokenTransfer(operator, address(0), to, ids, amounts, data);

    _doSafeTransferAcceptanceCheck(operator, address(0), to, id, amount, data);
  }

  function bridgeMintBatch(
    address to,
    uint256[] memory ids,
    uint256[] memory amounts,
    bytes memory data
  ) public virtual override onlyNFTBridge {
    _mintBatch(to, ids, amounts, data);
  }

  function _mintBatch(
    address to,
    uint256[] memory ids,
    uint256[] memory amounts,
    bytes memory data
  ) internal virtual {
    require(to != address(0), 'ERC1155: mint to the zero address');
    require(ids.length == amounts.length, 'ERC1155: ids and amounts length mismatch');

    address operator = _msgSender();

    _beforeTokenTransfer(operator, address(0), to, ids, amounts, data);

    for (uint256 i = 0; i < ids.length; i++) {
      state.balances[ids[i]][to] += amounts[i];
    }

    emit TransferBatch(operator, address(0), to, ids, amounts);

    _afterTokenTransfer(operator, address(0), to, ids, amounts, data);

    _doSafeBatchTransferAcceptanceCheck(operator, address(0), to, ids, amounts, data);
  }

  function bridgeBurn(
    address from,
    uint256 tokenId,
    uint256 amount
  ) public virtual override onlyNFTBridge {
    _burn(from, tokenId, amount);
  }

  function _burn(address from, uint256 id, uint256 amount) internal virtual {
    require(from != address(0), 'ERC1155: burn from the zero address');

    address operator = _msgSender();
    uint256[] memory ids = _asSingletonArray(id);
    uint256[] memory amounts = _asSingletonArray(amount);

    _beforeTokenTransfer(operator, from, address(0), ids, amounts, '');

    uint256 fromBalance = state.balances[id][from];
    require(fromBalance >= amount, 'ERC1155: burn amount exceeds balance');
    unchecked {
      state.balances[id][from] = fromBalance - amount;
    }

    emit TransferSingle(operator, from, address(0), id, amount);

    _afterTokenTransfer(operator, from, address(0), ids, amounts, '');
  }

  function bridgeBurnBatch(
    address from,
    uint256[] memory ids,
    uint256[] memory amounts
  ) public virtual override onlyNFTBridge {
    _burnBatch(from, ids, amounts);
  }

  function _burnBatch(
    address from,
    uint256[] memory ids,
    uint256[] memory amounts
  ) internal virtual {
    require(from != address(0), 'ERC1155: burn from the zero address');
    require(ids.length == amounts.length, 'ERC1155: ids and amounts length mismatch');

    address operator = _msgSender();

    _beforeTokenTransfer(operator, from, address(0), ids, amounts, '');

    for (uint256 i = 0; i < ids.length; i++) {
      uint256 id = ids[i];
      uint256 amount = amounts[i];

      uint256 fromBalance = state.balances[id][from];
      require(fromBalance >= amount, 'ERC1155: burn amount exceeds balance');
      unchecked {
        state.balances[id][from] = fromBalance - amount;
      }
    }

    emit TransferBatch(operator, from, address(0), ids, amounts);

    _afterTokenTransfer(operator, from, address(0), ids, amounts, '');
  }

  function _setTokenURI(string memory newuri) internal virtual {
    state.tokenURIs = newuri;
  }

  function _setContractURI(string memory newuri) internal virtual {
    state.contractURI = newuri;
  }

  function setNFTBridge(address newNftBridge) public virtual override onlyNFTBridge {
    require(newNftBridge != address(0), 'its zero address');
    address oldNftBridge = state.nftBridge;
    state.nftBridge = newNftBridge;
    emit NewNftBridgeAddress(oldNftBridge, newNftBridge);
  }

  function transferOwnership(address newOwner) public onlyOwner {
    require(newOwner != address(0), 'its zero address');
    state.owner = newOwner;
  }

  function _beforeTokenTransfer(
    address operator,
    address from,
    address to,
    uint256[] memory ids,
    uint256[] memory amounts,
    bytes memory data
  ) internal virtual {}

  function _afterTokenTransfer(
    address operator,
    address from,
    address to,
    uint256[] memory ids,
    uint256[] memory amounts,
    bytes memory data
  ) internal virtual {}

  function _doSafeTransferAcceptanceCheck(
    address operator,
    address from,
    address to,
    uint256 id,
    uint256 amount,
    bytes memory data
  ) private {
    if (to.isContract()) {
      try
        IERC1155ReceiverUpgradeable(to).onERC1155Received(operator, from, id, amount, data)
      returns (bytes4 response) {
        if (response != IERC1155ReceiverUpgradeable.onERC1155Received.selector) {
          revert('ERC1155: ERC1155Receiver rejected tokens');
        }
      } catch Error(string memory reason) {
        revert(reason);
      } catch {
        revert('ERC1155: transfer to non-ERC1155Receiver implementer');
      }
    }
  }

  function _doSafeBatchTransferAcceptanceCheck(
    address operator,
    address from,
    address to,
    uint256[] memory ids,
    uint256[] memory amounts,
    bytes memory data
  ) private {
    if (to.isContract()) {
      try
        IERC1155ReceiverUpgradeable(to).onERC1155BatchReceived(operator, from, ids, amounts, data)
      returns (bytes4 response) {
        if (response != IERC1155ReceiverUpgradeable.onERC1155BatchReceived.selector) {
          revert('ERC1155: ERC1155Receiver rejected tokens');
        }
      } catch Error(string memory reason) {
        revert(reason);
      } catch {
        revert('ERC1155: transfer to non-ERC1155Receiver implementer');
      }
    }
  }

  function _asSingletonArray(uint256 element) private pure returns (uint256[] memory) {
    uint256[] memory array = new uint256[](1);
    array[0] = element;

    return array;
  }

  // ERC2981 functions

  function setRoyaltyInfo(address _receiver, uint96 _royaltyFeesInBips) public virtual onlyOwner {
    _setDefaultRoyalty(_receiver, _royaltyFeesInBips);
  }

  // Modifier

  modifier onlyOwner() {
    require(getOwner() == _msgSender(), 'caller is not the owner');
    _;
  }

  modifier onlyNFTBridge() {
    require(getNFTBridge() == _msgSender(), 'caller is not the NFTBridge');
    _;
  }

  // Override required by UUPSUpgradeable for upgrade authorization
  function _authorizeUpgrade(address newImplementation) internal override onlyOwner {
    // Implement your authorization logic, e.g., only contract owner can upgrade
  }
}
