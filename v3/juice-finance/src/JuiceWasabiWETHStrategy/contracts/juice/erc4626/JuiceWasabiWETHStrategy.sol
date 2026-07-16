// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.24;

import { SafeERC20, IERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { Errors } from "../../libraries/Errors.sol";
import "../../strategyVault/OmegaSimpleERC4626Strategy.sol";
import "../JuiceModule.sol";
import "../periphery/BlastGas.sol";
import "../periphery/BlastPoints.sol";

contract JuiceWasabiWETHStrategy is OmegaSimpleERC4626Strategy, JuiceModule, BlastPoints, BlastGas {
    address public constant WETH = 0x4300000000000000000000000000000000000004;
    string public constant NAME = "Juice Wasabi WETH Vault";
    string public constant SYMBOL = "jwWETH";
    address public constant WASABI_VAULT = 0x8E2b50413a53F50E2a059142a9be060294961e40;

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
            OmegaSimpleERC4626Strategy.InitParams({ baseAsset: WETH, vault: WASABI_VAULT, name: NAME, symbol: SYMBOL })
        )
    { }
}