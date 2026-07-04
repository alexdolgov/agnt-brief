// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.24;

import { SafeERC20, IERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { Errors } from "../../libraries/Errors.sol";
import "../../strategyVault/OmegaSimpleERC4626Strategy.sol";
import "../JuiceModule.sol";
import "../periphery/BlastGas.sol";
import "../periphery/BlastPoints.sol";

contract JuiceWasabiStrategy is OmegaSimpleERC4626Strategy, JuiceModule, BlastPoints, BlastGas {
    address public constant USDB = 0x4300000000000000000000000000000000000003;
    string public constant NAME = "Juice Wasabi USDB Vault";
    string public constant SYMBOL = "jwUSDB";
    address public constant WASABI_VAULT = 0x4BeD2A922654cAcC2Be974689619768FaBF24855;

    constructor(
        address protocolGovernor_,
        address pointsOperator_,
        VaultParams memory vaultParams_
    )
        JuiceModule(protocolGovernor_)
        BlastGas(protocolGovernor_)
        BlastPoints(protocolGovernor_, pointsOperator_)
        OmegaSimpleERC4626Strategy(
            protocolGovernor_,
            vaultParams_,
            OmegaSimpleERC4626Strategy.InitParams({ baseAsset: USDB, vault: WASABI_VAULT, name: NAME, symbol: SYMBOL })
        )
    { }
}
