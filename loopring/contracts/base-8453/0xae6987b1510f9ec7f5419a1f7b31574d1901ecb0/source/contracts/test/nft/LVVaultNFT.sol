// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.8.2;
import "@openzeppelin/contracts/utils/introspection/IERC165.sol";
import "@openzeppelin/contracts/utils/Address.sol";
import "@openzeppelin/contracts/utils/Strings.sol";
import "@openzeppelin/contracts/token/ERC1155/IERC1155.sol";
import "@openzeppelin/contracts/token/ERC1155/IERC1155Receiver.sol";
import "@openzeppelin/contracts/token/ERC1155/extensions/IERC1155MetadataURI.sol";
import {ERC1155} from "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

interface IL2MintableNFT {
    /// @dev This function is called when an NFT minted on L2 is withdrawn from Loopring.
    ///      That means the NFTs were burned on L2 and now need to be minted on L1.
    ///
    ///      This function can only be called by the Loopring exchange.
    ///
    /// @param to The owner of the NFT
    /// @param tokenId The token type 'id`
    /// @param amount The amount of NFTs to mint
    /// @param minter The minter on L2, which can be used to decide if the NFT is authentic
    /// @param data Opaque data that can be used by the contract
    function mintFromL2(
        address to,
        uint256 tokenId,
        uint amount,
        address minter,
        bytes calldata data
    ) external;

    /// @dev Returns a list of all address that are authorized to mint NFTs on L2.
    /// @return The list of authorized minter on L2
    function minters() external view returns (address[] memory);
}

// File: contracts/AddressSet.sol

// Copyright 2017 Loopring Technology Limited.

/// @title AddressSet
/// @author Daniel Wang - <daniel@loopring.org>
contract AddressSet {
    struct Set {
        address[] addresses;
        mapping(address => uint) positions;
        uint count;
    }
    mapping(bytes32 => Set) private sets;

    function addAddressToSet(
        bytes32 key,
        address addr,
        bool maintainList
    ) internal {
        Set storage set = sets[key];
        require(set.positions[addr] == 0, "ALREADY_IN_SET");

        if (maintainList) {
            require(
                set.addresses.length == set.count,
                "PREVIOUSLY_NOT_MAINTAILED"
            );
            set.addresses.push(addr);
        } else {
            require(set.addresses.length == 0, "MUST_MAINTAIN");
        }

        set.count += 1;
        set.positions[addr] = set.count;
    }

    function removeAddressFromSet(bytes32 key, address addr) internal {
        Set storage set = sets[key];
        uint pos = set.positions[addr];
        require(pos != 0, "NOT_IN_SET");

        delete set.positions[addr];
        set.count -= 1;

        if (set.addresses.length > 0) {
            address lastAddr = set.addresses[set.count];
            if (lastAddr != addr) {
                set.addresses[pos - 1] = lastAddr;
                set.positions[lastAddr] = pos;
            }
            set.addresses.pop();
        }
    }

    function removeSet(bytes32 key) internal {
        delete sets[key];
    }

    function isAddressInSet(
        bytes32 key,
        address addr
    ) internal view returns (bool) {
        return sets[key].positions[addr] != 0;
    }

    function numAddressesInSet(bytes32 key) internal view returns (uint) {
        Set storage set = sets[key];
        return set.count;
    }

    function addressesInSet(
        bytes32 key
    ) internal view returns (address[] memory) {
        Set storage set = sets[key];
        require(set.count == set.addresses.length, "NOT_MAINTAINED");
        return sets[key].addresses;
    }
}

/**
 * @title LVVaultNFT
 */

contract LVVaultNFT is ERC1155, Ownable, IL2MintableNFT, AddressSet {
    using Strings for uint;

    event MintFromL2(address owner, uint256 id, uint amount, address minter);

    bytes32 internal constant MINTERS = keccak256("__MINTERS__");
    bytes32 internal constant DEPRECATED_MINTERS =
        keccak256("__DEPRECATED_MINTERS__");

    address public immutable layer2Address;
    string baseUri;

    modifier onlyFromLayer2() {
        require(msg.sender == layer2Address, "not authorized");
        _;
    }

    modifier onlyFromMinter() {
        require(isMinter(msg.sender), "not authorized");
        _;
    }

    constructor(address _layer2Address) ERC1155("") {
        layer2Address = _layer2Address;
    }

    function mint(
        address account,
        uint256 id,
        uint256 amount,
        bytes memory data
    ) external onlyFromMinter {
        _mint(account, id, amount, data);
    }

    function mintBatch(
        address to,
        uint256[] memory ids,
        uint256[] memory amounts,
        bytes memory data
    ) external onlyFromMinter {
        _mintBatch(to, ids, amounts, data);
    }

    function setMinter(address minter, bool enabled) external onlyOwner {
        if (enabled) {
            addAddressToSet(MINTERS, minter, true);
            if (isAddressInSet(DEPRECATED_MINTERS, minter)) {
                removeAddressFromSet(DEPRECATED_MINTERS, minter);
            }
        } else {
            removeAddressFromSet(MINTERS, minter);
            addAddressToSet(DEPRECATED_MINTERS, minter, true);
        }
    }

    function setBaseUri(string memory _baseUri) external onlyFromMinter {
        baseUri = _baseUri;
    }

    function uri(
        uint256 tokenId
    ) public view virtual override returns (string memory) {
        return string(abi.encodePacked(baseUri, tokenId.toString()));
    }

    // Layer 2 logic

    function mintFromL2(
        address to,
        uint256 id,
        uint amount,
        address minter,
        bytes calldata data
    ) external override onlyFromLayer2 {
        require(isMinter(minter), "invalid minter");

        _mint(to, id, amount, data);
        emit MintFromL2(to, id, amount, minter);
    }

    function minters() public view override returns (address[] memory) {
        return addressesInSet(MINTERS);
    }

    function isMinter(address addr) public view returns (bool) {
        return
            isAddressInSet(MINTERS, addr) ||
            isAddressInSet(DEPRECATED_MINTERS, addr);
    }
}
