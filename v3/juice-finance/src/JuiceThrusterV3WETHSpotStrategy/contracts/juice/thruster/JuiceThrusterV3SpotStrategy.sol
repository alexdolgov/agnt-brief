// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.24;

import { Math } from "@openzeppelin/contracts/utils/math/Math.sol";
import { ERC20 } from "solady/src/tokens/ERC20.sol";
import { IERC20Rebasing } from "../../external/blast/IERC20Rebasing.sol";
import { OmegaUniswapV3SpotStrategy } from "../../strategyVault/uniswap/OmegaUniswapV3SpotStrategy.sol";
import "../JuiceModule.sol";
import "../periphery/BlastGas.sol";
import "../periphery/BlastPoints.sol";

contract JuiceThrusterV3SpotStrategy is OmegaUniswapV3SpotStrategy, JuiceModule, BlastPoints, BlastGas {
    constructor(
        address protocolGovernor_,
        address pointsOperator_,
        VaultParams memory vaultParams_,
        InitParams memory params
    )
        JuiceModule(protocolGovernor_)
        BlastGas(protocolGovernor_)
        BlastPoints(protocolGovernor_, pointsOperator_)
        OmegaUniswapV3SpotStrategy(protocolGovernor_, vaultParams_, params)
    { }
}
