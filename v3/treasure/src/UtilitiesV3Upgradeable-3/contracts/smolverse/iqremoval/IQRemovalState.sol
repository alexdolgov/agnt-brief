//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts-upgradeable/token/ERC1155/extensions/ERC1155BurnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";

import "./IIQRemoval.sol";
import "../../shared/UtilitiesV3Upgradable.sol";

abstract contract IQRemovalState is Initializable, IIQRemoval, UtilitiesV3Upgradeable, ERC1155BurnableUpgradeable {

    string public baseURI;
    
    address public smolsAddress;
    address public schoolAddress;

    mapping(address => bool) public whitelistedTransferAddress;

    bool removingAllowed;

    function __IQRemovalState_init() internal initializer {
        UtilitiesV3Upgradeable.__Utilities_init();
        ERC1155BurnableUpgradeable.__ERC1155Burnable_init();
        ERC1155Upgradeable.__ERC1155_init_unchained("");
    }

    function supportsInterface(bytes4 interfaceId)
        public
        view
        override(AccessControlEnumerableUpgradeable, ERC1155Upgradeable)
        returns (bool)
    {
        return super.supportsInterface(interfaceId);
    }

    function setRemovingAllowed(bool _removingAllowed) public requiresEitherRole(ADMIN_ROLE, OWNER_ROLE) {
        removingAllowed = _removingAllowed;
    }

    function setBaseURI(string calldata _baseURI) public requiresEitherRole(ADMIN_ROLE, OWNER_ROLE) {
        baseURI = _baseURI;
        emit BaseUriChanged(_baseURI);
    }

    function setWhitelistedTransferAddress(address _address, bool _allowed) public requiresEitherRole(ADMIN_ROLE, OWNER_ROLE) {
        whitelistedTransferAddress[_address] = _allowed;
    }

}