// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.21;

import {Auth} from "./modules/Auth.sol";
import {Crosschain} from "./modules/Crosschain.sol";
import {Fee} from "./modules/Fee.sol";
import {Valuation} from "./modules/Valuation.sol";

contract ModuleFactory {
    event NewModuleCreated(
        address module,
        uint256 moduleType,
        uint256 timestamp
    );

    address public immutable go;
    address public immutable gateway;
    address public immutable gasService;

    constructor(address _go, address _gateway, address _gasService) {
        go = _go;
        gateway = _gateway;
        gasService = _gasService;
    }

    function newModule(address vault, uint256[] memory modules) external {
        for (uint i = 0; i < modules.length; i++) {
            uint256 moduleType = modules[i];
            address moduleAddress;
            if (moduleType == 1) {
                moduleAddress = address(new Valuation(vault));
            }
            if (moduleType == 2) {
                moduleAddress = address(new Auth(go));
            }
            if (moduleType == 3) {
                moduleAddress = address(new Fee(vault));
            }
            if (moduleType == 4) {
                moduleAddress = address(
                    new Crosschain(vault, gateway, gasService)
                );
            }
            emit NewModuleCreated(moduleAddress, moduleType, block.timestamp);
        }
    }
}
