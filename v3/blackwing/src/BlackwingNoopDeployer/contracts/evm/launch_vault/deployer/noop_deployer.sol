// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

import {AccessControl} from "@openzeppelin/contracts/access/AccessControl.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {IDeployer} from "./deployer_interface.sol";

contract BlackwingNoopDeployer is AccessControl, IDeployer {
    string public constant NOOP_ERR = '1'; // Function shouldn't be called

    bytes32 public constant OWNER_ROLE = keccak256("OWNER_ROLE");

    constructor() AccessControl() {
        AccessControl._grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
        AccessControl._grantRole(OWNER_ROLE, msg.sender);
    }

    function deploy(IERC20 asset, uint amount) public {
        revert(NOOP_ERR);
    }

    function remove(IERC20 asset, uint amount) public {
        revert(NOOP_ERR);
    }

    function poolToken(IERC20 asset) public view override returns (address) {
        revert(NOOP_ERR);
    }

    function totalDeployedAmount(IERC20 asset) public view returns (uint) {
        return 0;
    }
}
