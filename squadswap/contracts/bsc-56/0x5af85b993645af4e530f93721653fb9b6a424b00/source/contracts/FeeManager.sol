// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity 0.7.6;

import './interfaces/ISquadV3Factory.sol';
import './interfaces/ISquadV3Pool.sol';
import './interfaces/ISquadswapPair.sol';
import './interfaces/ISquadswapRouter01.sol';
import './libraries/TransferHelper.sol';
contract FeeManager {
    // wallet lists
    address public treasure1Wallet;
    address public treasure2Wallet;
    address public burn;

    address public owner;
    ISquadV3Factory public factory;
    ISquadswapRouter01 public routerV2;

    uint256 public treasure1Rate;
    uint256 public treasure2Rate;

    // uint256 public burnRate;

    uint256 constant totalRate = 1000;

    constructor() {
        owner = msg.sender;
        treasure1Rate = 500;
        treasure2Rate = 500;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, 'Not owner');
        _;
    }

    // @notice Set factory address.
    /// @param _factory swap factory address.
    function setFactory(address _factory) external onlyOwner {
        factory = ISquadV3Factory(_factory);
    }

    function setRouterV2(address router) external onlyOwner {
        routerV2 = ISquadswapRouter01(router);
    }

    function transferOwnerShip(address _owner) external onlyOwner {
        owner = _owner;
    }

    // @notice Set Wallet addresses.
    /// @param _treasure1Wallet treasure1Wallet wallet.
    /// @param _treasure2Wallet _treasure2Wallet wallet.
    /// @param _burn burn wallet.

    function setWallets(address _treasure1Wallet, address _treasure2Wallet, address _burn) external onlyOwner {
        treasure1Wallet = _treasure1Wallet;
        treasure2Wallet = _treasure2Wallet;
        burn = _burn;
    }

    /// @notice Set fee rates.
    /// @dev the total rate should be 1000 (totalRate). _treasure1Rate + _treasure1Rate  == 1000 (totalRate)
    /// @param _treasure1Rate _treasure1Rate fee reate.
    /// @param _treasure2Rate _treasure2Rate fee reate.
    function setRates(uint256 _treasure1Rate, uint256 _treasure2Rate, uint256 _burnRate) external onlyOwner {
        require(_treasure1Rate + _treasure2Rate + _burnRate == totalRate, 'invalid Rate');
        treasure1Rate = _treasure1Rate;
        treasure2Rate = _treasure2Rate;
    }

    /// @notice Collect fees from given pool.
    /// @param pool pool address.
    /// @param amount0Requested token0 amount. when the amount is more than pool's token0 amount it returns pool's amount.
    /// @param amount1Requested token1 amount. when the amount is more than pool's token1 amount it returns pool's amount.
    function collectFee(address pool, uint128 amount0Requested, uint128 amount1Requested) external onlyOwner {
        (uint128 amount0, uint128 amount1) = factory.collectProtocol(
            pool,
            address(this),
            amount0Requested,
            amount1Requested
        );
        address token0 = ISquadV3Pool(pool).token0();
        address token1 = ISquadV3Pool(pool).token1();

        if (amount0 > 0) {
            uint256 treasure1Amount0 = (amount0 * treasure1Rate) / totalRate;
            uint256 treasure2Amount0 = (amount0 * treasure2Rate) / totalRate;
            uint256 burnAmount0 = amount0 - treasure1Amount0 - treasure2Amount0;
            TransferHelper.safeTransfer(token0, treasure1Wallet, treasure1Amount0);
            TransferHelper.safeTransfer(token0, treasure2Wallet, treasure2Amount0);
            TransferHelper.safeTransfer(token0, burn, burnAmount0);
        }

        if (amount1 > 0) {
            uint256 treasure1Amount1 = (amount1 * treasure1Rate) / totalRate;
            uint256 treasure2Amount1 = (amount1 * treasure2Rate) / totalRate;
            uint256 burnAmount1 = amount1 - treasure1Amount1 - treasure2Amount1;
            TransferHelper.safeTransfer(token1, treasure1Wallet, treasure1Amount1);
            TransferHelper.safeTransfer(token1, treasure2Wallet, treasure2Amount1);
            TransferHelper.safeTransfer(token1, burn, burnAmount1);
        }
    }

    function recoverToken(address lp, uint amountAMin, uint amountBMin, uint deadline) external onlyOwner {
        uint256 liquidity = ISquadswapPair(lp).balanceOf(address(this));
        ISquadswapPair(lp).approve(address(routerV2), liquidity);
        if (liquidity > 0) {
            address token0 = ISquadswapPair(lp).token0();
            address token1 = ISquadswapPair(lp).token1();
            (uint256 amount0, uint256 amount1) = routerV2.removeLiquidity(
                token0,
                token1,
                liquidity,
                amountAMin,
                amountBMin,
                address(this),
                deadline
            );

            uint256 treasure1Amount0 = (amount0 * treasure1Rate) / totalRate;
            uint256 treasure2Amount0 = (amount0 * treasure2Rate) / totalRate;
            uint256 burnAmount0 = amount0 - treasure1Amount0 - treasure2Amount0;
            TransferHelper.safeTransfer(token0, treasure1Wallet, treasure1Amount0);
            TransferHelper.safeTransfer(token0, treasure2Wallet, treasure2Amount0);
            TransferHelper.safeTransfer(token0, burn, burnAmount0);
            uint256 treasure1Amount1 = (amount1 * treasure1Rate) / totalRate;
            uint256 treasure2Amount1 = (amount1 * treasure2Rate) / totalRate;
            uint256 burnAmount1 = amount1 - treasure1Amount1 - treasure2Amount1;
            TransferHelper.safeTransfer(token1, treasure1Wallet, treasure1Amount1);
            TransferHelper.safeTransfer(token1, treasure2Wallet, treasure2Amount1);
            TransferHelper.safeTransfer(token1, burn, burnAmount1);
        }
    }

    function recoverTokenQuote(address lp) external view returns (uint256 amount0, uint256 amount1) {
        uint256 liquidity = ISquadswapPair(lp).balanceOf(address(this));
        if (liquidity > 0) {
            address token0 = ISquadswapPair(lp).token0();
            address token1 = ISquadswapPair(lp).token1();

            bytes memory callData = abi.encodeWithSignature(
                'removeLiquidity(address,address,uint256,uint256,uint256,address,uint256)',
                token0,
                token1,
                liquidity,
                0, // amountAMin
                0, // amountBMin
                address(this),
                type(uint256).max
            );

            (bool success, bytes memory result) = address(routerV2).staticcall{gas: 3000000}(callData);

            if (success && result.length >= 64) {
                (amount0, amount1) = abi.decode(result, (uint256, uint256));
            } else {
                // Fallback to reserves calculation
                uint256 totalSupply = ISquadswapPair(lp).totalSupply();
                (uint112 reserve0, uint112 reserve1, ) = ISquadswapPair(lp).getReserves();
                amount0 = (liquidity * uint256(reserve0)) / totalSupply;
                amount1 = (liquidity * uint256(reserve1)) / totalSupply;
            }
        }
    }
}
