// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

import { OFTUpgradeable } from "@layerzerolabs/oft-evm-upgradeable/contracts/oft/OFTUpgradeable.sol";
import { ContractBaseUpgradeable } from "../commons/ContractBaseUpgradeable.sol";
import {Errors} from "../commons/Errors.sol";

contract OFTBaseUpgradeable is ContractBaseUpgradeable, OFTUpgradeable {
    constructor(address _lzEndpoint) OFTUpgradeable(_lzEndpoint) {
        _disableInitializers();
    }

    function initialize(address manager, string memory name, string memory symbol) public initializer {
        if (manager == address(0)) revert Errors.ZeroAddress();
        address delegate = _msgSender();

        _initContractBaseUpgradeable();
        __OFT_init(name, symbol, delegate);
        __Ownable_init(delegate);

        accessManager = manager;
    }
}