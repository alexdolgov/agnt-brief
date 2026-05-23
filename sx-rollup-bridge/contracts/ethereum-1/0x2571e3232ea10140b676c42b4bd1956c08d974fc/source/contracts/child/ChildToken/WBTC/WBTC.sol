// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import {ERC20PresetMinterPauserUpgradeable} from "@openzeppelin/contracts-upgradeable/token/ERC20/presets/ERC20PresetMinterPauserUpgradeable.sol";

import {NativeMetaTransaction} from "../../../common/NativeMetaTransaction.sol";
import {ContextMixin} from "../../../common/ContextMixin.sol";

import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import {UUPSUpgradeable} from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import {OwnableUpgradeable} from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";

contract WBTC is Initializable, UUPSUpgradeable, OwnableUpgradeable, ERC20PresetMinterPauserUpgradeable, NativeMetaTransaction, ContextMixin {

    function initialize() initializer public {
        ERC20PresetMinterPauserUpgradeable.initialize("Wrapped BTC", "WBTC");
        __Ownable_init();
        _initializeEIP712("Wrapped BTC");
        __UUPSUpgradeable_init();
    }

    function _authorizeUpgrade(address) internal override onlyOwner {}

    // This is to support Native meta transactions
    // never use msg.sender directly, use _msgSender() instead
    function _msgSender() internal view override returns (address) {
        return ContextMixin.msgSender();
    }

    function decimals() public view virtual override returns (uint8) {
        return 8;
    }

    function burn(address account, uint256 amount) public virtual {
        burnFrom(account, amount);
    }

    function getVersion() pure public virtual returns (string memory) {
      return "V1";
    }

}
