// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.24;

import { Math } from "@openzeppelin/contracts/utils/math/Math.sol";
import { ERC20 } from "solady/src/tokens/ERC20.sol";
import { IERC20Rebasing } from "../../external/blast/IERC20Rebasing.sol";
import { OmegaUniswapV2Strategy } from "../../strategyVault/uniswap/OmegaUniswapV2Strategy.sol";
import "../JuiceModule.sol";
import "../periphery/BlastGas.sol";
import "../periphery/BlastPoints.sol";

contract JuiceThrusterV2Strategy is OmegaUniswapV2Strategy, JuiceModule, BlastGas, BlastPoints {
    constructor(
        address protocolGovernor_,
        address pointsOperator_,
        VaultParams memory vaultParams_,
        InitParams memory params
    )
        BlastGas(protocolGovernor_)
        BlastPoints(protocolGovernor_, pointsOperator_)
        JuiceModule(protocolGovernor_)
        OmegaUniswapV2Strategy(protocolGovernor_, vaultParams_, params)
    { }
}
