// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { IUniswapV3Pool } from "@uniswap/v3-core/contracts/interfaces/IUniswapV3Pool.sol";
import { IUniswapV3Factory } from "@uniswap/v3-core/contracts/interfaces/IUniswapV3Factory.sol";
import { IERC4626 } from "@openzeppelin/contracts/interfaces/IERC4626.sol";
import { FeeFlowController } from "fee-flow/src/FeeFlowController.sol";

contract SwapFeeCollector is Ownable {
    using SafeERC20 for IERC20;

    IERC20 public immutable cusd;
    IERC4626 public immutable scusd;

    IUniswapV3Factory public immutable factory;
    FeeFlowController public immutable feeFlowController;

    constructor(address _cusd, address _scusd, address _factory, address _evc) {
        cusd = IERC20(_cusd);
        scusd = IERC4626(_scusd);
        factory = IUniswapV3Factory(_factory);
        feeFlowController = new FeeFlowController(
            _evc,
            10e18,
            _cusd,
            _scusd,
            7 days,
            2e18,
            1e6
        );
    }


    function collectFees(address pool) external {

        (uint128 amount0, uint128 amount1) = IUniswapV3Pool(pool).collectProtocol(
            address(this), 
            type(uint128).max, 
            type(uint128).max
        );

        address token0 = IUniswapV3Pool(pool).token0();
        address token1 = IUniswapV3Pool(pool).token1();


        if(token0 == address(cusd)) {
            cusd.safeTransfer(address(scusd), amount0);
        } else if(token0 == address(scusd)) {
            scusd.redeem(amount0, address(scusd), address(this));
        }else{
            IERC20(token0).safeTransfer(address(feeFlowController), amount0);
        }

        if(token1 == address(cusd)) {
            cusd.safeTransfer(address(scusd), amount1);
        } else if(token1 == address(scusd)) {
            scusd.redeem(amount1, address(scusd), address(this));
        }else{
            IERC20(token1).safeTransfer(address(feeFlowController), amount1);
        }

    }

    function changeFactoryOwner(address newOwner) external onlyOwner {
        factory.setOwner(newOwner);
    }

    function rescueToken(address recipient, address token) external onlyOwner {
        IERC20(token).safeTransfer(recipient, IERC20(token).balanceOf(address(this)));
    }

}