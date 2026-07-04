// SPDX-License-Identifier: MIT

pragma solidity =0.8.17;

import {AccessControlEnumerable} from "@openzeppelin/contracts/access/AccessControlEnumerable.sol";
import {ERC1155} from "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";
import {ERC1155Supply} from "@openzeppelin/contracts/token/ERC1155/extensions/ERC1155Supply.sol";
import {ERC1155URIStorage} from "@openzeppelin/contracts/token/ERC1155/extensions/ERC1155URIStorage.sol";
import {RBAC} from "./RBAC.sol";

/**
 * @title AliumGreenBtnNFT - NFT token.
 */
contract AliumGreenBtnNFT is ERC1155Supply, ERC1155URIStorage, RBAC {
    bytes32 public MINTER_ROLE = keccak256(abi.encode("MINTER_ROLE"));
    bytes32 public BURNER_ROLE = keccak256(abi.encode("BURNER_ROLE"));

    constructor(address _admin) RBAC(_admin) ERC1155("") {}

    function mint(address _to, uint256 _id, uint256 _amount) external onlyRole(MINTER_ROLE) {
        _mint(_to, _id, _amount, "0x");
    }

    function burn(uint256 _tokenId, uint256 _amount) external onlyRole(BURNER_ROLE) {
        _burn(msg.sender, _tokenId, _amount);
    }

    function setURI(string memory _newuri, uint256 _fromId, uint256 _toId) external onlyRole(DEFAULT_ADMIN_ROLE) {
        require(_fromId <= _toId, "Invalid id values");

        _setURI(_newuri);
        for (uint i = _fromId; _fromId <= _toId; i++) {
            emit URI(_newuri, i);
        }
    }

    function supportsInterface(
        bytes4 interfaceId
    ) public view virtual override(ERC1155, AccessControlEnumerable) returns (bool) {
        return AccessControlEnumerable.supportsInterface(interfaceId) || ERC1155.supportsInterface(interfaceId);
    }

    function uri(uint256 tokenId) public view override(ERC1155URIStorage, ERC1155) returns (string memory) {
        return super.uri(tokenId);
    }

    function _beforeTokenTransfer(
        address operator,
        address from,
        address to,
        uint256[] memory ids,
        uint256[] memory amounts,
        bytes memory data
    ) internal override(ERC1155Supply, ERC1155) {
        super._beforeTokenTransfer(operator, from, to, ids, amounts, data);
    }
}
