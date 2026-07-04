//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC1155/ERC1155Upgradeable.sol";

import "./ISoLItem.sol";
import "../../shared/AdminableUpgradeable.sol";

abstract contract SoLItemState is Initializable, ISoLItem, ERC1155Upgradeable, AdminableUpgradeable {

    function __SoLItemState_init() internal initializer {
        AdminableUpgradeable.__Adminable_init();
        ERC1155Upgradeable.__ERC1155_init("");
    }
}