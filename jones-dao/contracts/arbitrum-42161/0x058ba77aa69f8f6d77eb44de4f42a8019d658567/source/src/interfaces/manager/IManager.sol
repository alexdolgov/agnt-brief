// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.7.6;
pragma abicoder v2;

import {IERC20} from "@openzeppelin/token/ERC20/IERC20.sol";

import {IERC20Upgradeable} from "@openzeppelin-upgrades/token/ERC20/IERC20Upgradeable.sol";

interface IManager is IERC20Upgradeable {
    //Concentarte liquidity range
    struct Range {
        int24 tickLower;
        int24 tickUpper;
    }

    // Swap Input
    struct Swap {
        address tokenIn;
        uint256 amountIn;
        address tokenOut;
        uint256 minAmountOut;
        bytes externalData;
    }

    struct NewRange {
        int24 tickLower;
        int24 tickUpper;
        uint256 amount0;
        uint256 amount1;
    }

    struct ExistingRange {
        uint256 index;
        bool burn;
        bool remove;
        uint256 amount0;
        uint256 amount1;
    }

    function aumWithoutCollect() external view returns (uint256 amount0, uint256 amount1);

    function aum() external returns (uint256 amount0, uint256 amount1);

    function getRanges() external returns (Range[] memory);

    function mintLiquidity(address _user, uint256 _index, uint256 _amount0, uint256 _amount1)
        external
        returns (uint256 amount0, uint256 amount1);

    function redeemLiquidity(uint256 _position, address _receiver)
        external
        returns (uint256 amount0, uint256 amount1, uint256 amount0AfterRetention, uint256 amount1AfterRetention);

    function mint(address to, uint256 amount) external;
    function burn(address from, uint256 amount) external;

    function transferAssets(address from, uint256 amount0, uint256 amount1) external;

    function previewRedeemLiquidity(uint256 _position)
        external
        view
        returns (uint256 amount0, uint256 amount1, uint256 amount0AfterRetention, uint256 amount1AfterRetention);

    function defaultRange() external view returns (int24, int24);

    function token0() external view returns (IERC20);

    function token1() external view returns (IERC20);

    function getPool() external view returns (address);

    function burnLiquidity(uint128 _liquidity, uint256 _index, bool _notional)
        external
        returns (uint256 amount0, uint256 amount1);

    function rebalance(Swap memory _swap, ExistingRange[] calldata _existingRanges, NewRange[] calldata _newRange)
        external;

    function lpPosition(int24 tickLower, int24 tickUpper)
        external
        view
        returns (uint128 liquidity, uint128 rewards0, uint128 rewards1);

    function swapDefaultRange(uint256 _index) external;

    function toggleWithdrawalRate() external;

    function emergencyTransfer(address _to, address _asset) external;

    function setIncentives(address _incentiveReceiver, uint256 _yieldRate, uint256 _withdrawalRate) external;

    event Rewards(uint256 rewards0, uint256 rewards1);
    event RewardsPerRange(Range indexed, uint256 rewards0, uint256 rewards1);
    event Position(uint256 amount0, uint256 amount1);
    event Retention(
        address indexed receiver,
        uint256 amount0AfterRetention,
        uint256 amount1AfterRetention,
        uint256 retention0,
        uint256 retention1,
        string typeOf
    );
    event ExistingRangesRebalance(ExistingRange[]);
    event NewRangesRebalance(NewRange[]);
}
