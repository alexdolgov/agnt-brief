// contracts/Pacmoon.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

import {ERC20} from "solmate/tokens/ERC20.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

interface IBlast {
    function configureClaimableGas() external;
    function configureGovernor(address _governor) external;
    function configurePointsOperator(address operator) external;
}

contract Pacmoon is ERC20, Ownable {
    uint256 private constant _tTotal = 1_000_000_000 * 10 ** 18;

    constructor(address treasury) ERC20("PacMoon", "PAC", 18) Ownable(msg.sender) {
        _mint(msg.sender, _tTotal);

        IBlast(0x4300000000000000000000000000000000000002).configureClaimableGas();
        IBlast(0x4300000000000000000000000000000000000002).configureGovernor(treasury);
        IBlast(0x2536FE9ab3F511540F2f9e2eC2A805005C3Dd800).configurePointsOperator(treasury);
    }
}
