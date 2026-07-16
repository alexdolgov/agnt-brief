// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.24;

import { Math } from "@openzeppelin/contracts/utils/math/Math.sol";
import { ERC20 } from "solady/src/tokens/ERC20.sol";
import { IERC20Rebasing } from "../../external/blast/IERC20Rebasing.sol";
import { OmegaUniswapV3SpotStrategy } from "../../strategyVault/uniswap/OmegaUniswapV3SpotStrategy.sol";
import "../periphery/BlastGas.sol";
import "../periphery/BlastPoints.sol";
import "./JuiceThrusterV3SpotStrategy.sol";

contract JuiceThrusterV3WETHSpotStrategy is JuiceThrusterV3SpotStrategy {
    event NativeYieldAccrued(address indexed account, uint256 amount);

    IERC20Rebasing public immutable weth;

    constructor(
        address protocolGovernor_,
        address pointsOperator_,
        VaultParams memory vaultParams_,
        InitParams memory params
    )
        JuiceThrusterV3SpotStrategy(protocolGovernor_, pointsOperator_, vaultParams_, params)
    {
        weth = IERC20Rebasing(params.asset);
        weth.configure(YieldMode.CLAIMABLE);
    }

    /// We send yield to the protocol to be redistributed among lenders.
    function claimBlastYield() external {
        uint256 earned = weth.getClaimableAmount(address(this));
        address _feeCollector = _getFeeCollector();
        weth.claim(_feeCollector, earned);
        emit NativeYieldAccrued(_feeCollector, earned);
    }
}
