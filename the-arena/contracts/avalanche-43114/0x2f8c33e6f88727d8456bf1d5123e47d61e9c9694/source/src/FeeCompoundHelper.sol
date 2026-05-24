// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

import {Ownable} from "lib/uniswap-hooks/lib/openzeppelin-contracts/contracts/access/Ownable.sol";
import {PoolKey} from "@uniswap/v4-core/src/types/PoolKey.sol";
import {Actions} from "@uniswap/v4-periphery/src/libraries/Actions.sol";
import {IERC20Minimal} from "@uniswap/v4-core/src/interfaces/external/IERC20Minimal.sol";
import {Currency} from "@uniswap/v4-core/src/types/Currency.sol";
import {PoolId} from "@uniswap/v4-core/src/types/PoolId.sol";
import {PositionInfo} from "@uniswap/v4-periphery/src/libraries/PositionInfoLibrary.sol";
import {BalanceDelta, toBalanceDelta} from "@uniswap/v4-core/src/types/BalanceDelta.sol";
import {FullMath} from "@uniswap/v4-core/src/libraries/FullMath.sol";
import {FixedPoint128} from "@uniswap/v4-core/src/libraries/FixedPoint128.sol";
import {SafeCast} from "@uniswap/v4-core/src/libraries/SafeCast.sol";
import {TickMath} from "@uniswap/v4-core/src/libraries/TickMath.sol";
import {LiquidityAmounts} from "@uniswap/v4-periphery/src/libraries/LiquidityAmounts.sol";
import {IPositionManager} from "@uniswap/v4-periphery/src/interfaces/IPositionManager.sol";
import {IStateView} from "@uniswap/v4-periphery/src/interfaces/IStateView.sol";
import {IPermit2} from "@uniswap/v4-periphery/lib/permit2/src/interfaces/IPermit2.sol";

contract FeeCompoundHelper is Ownable {

    IPositionManager constant POSITION_MANAGER = IPositionManager(0xB74b1F14d2754AcfcbBe1a221023a5cf50Ab8ACD);
    IStateView constant STATE_VIEW = IStateView(0xc3c9e198C735a4b97e3e683f391cCBDD60B69286);
    IPermit2 constant PERMIT2 = IPermit2(0x000000000022D473030F116dDEE9F6B43aC78BA3);
    struct PositionTokenBalances {
        uint256 token0Balance;
        uint256 token1Balance;
    }
    error InsufficientToken0Balance(uint256 tokenId, uint256 stored0, uint256 token0BalanceChange);
    error InsufficientToken1Balance(uint256 tokenId, uint256 stored1, uint256 token1BalanceChange);
    error NotAllowedToCompound();

    // keeps track of the claimed fee balances for each position
    mapping(uint256 => PositionTokenBalances) public positionTokenBalances;
    mapping(address => bool) public isAllowedToCompound;

    constructor(address _owner) Ownable(_owner) {
        isAllowedToCompound[_owner] = true;
    }

    using SafeCast for uint256;

    function setAllowedToCompound(address _address, bool _allowed) public onlyOwner {
        isAllowedToCompound[_address] = _allowed;
    }

    function compoundFeesIntoPosition(uint256 tokenId, uint256 token0Amount, uint256 token1Amount, uint128 liquidityIncrease) external {
        if (!isAllowedToCompound[msg.sender]) revert NotAllowedToCompound();
        (PoolKey memory key,) = POSITION_MANAGER.getPoolAndPositionInfo(tokenId);
        handleApprovals(Currency.unwrap(key.currency0), Currency.unwrap(key.currency1), token0Amount, token1Amount);
        uint256 token0TotalBalance = key.currency0.balanceOf(address(this));
        uint256 token1TotalBalance = key.currency1.balanceOf(address(this));
         bytes memory actions = abi.encodePacked(
             uint8(Actions.INCREASE_LIQUIDITY),
             uint8(Actions.CLOSE_CURRENCY), // token0: pull shortfall or pay leftover
             uint8(Actions.CLOSE_CURRENCY)  // token1
         );
         
         bytes[] memory params = new bytes[](3);
         
         params[0] = abi.encode(
             tokenId,
             liquidityIncrease,
             uint128(token0Amount + 1),   // caps how much can ever be pulled
             uint128(token1Amount + 1),
             bytes("")
         );
         
         params[1] = abi.encode(key.currency0); // key.currency0
         params[2] = abi.encode(key.currency1); // key.currency1
        

        POSITION_MANAGER.modifyLiquidities(
            abi.encode(actions, params),
            block.timestamp + 60 // 60 second deadline
        );

        _updatePositionTokenBalances(tokenId, key, token0TotalBalance, token1TotalBalance); // will revert if the token balances are not enough
    }


    function getAvailableFeeCompoundData(uint256 tokenId) public view returns (uint256 token0Amount, uint256 token1Amount, uint128 liquidity) {
        BalanceDelta uncollectedFees = getUncollectedFees(tokenId);
        (PoolKey memory key, PositionInfo positionInfo) = POSITION_MANAGER.getPoolAndPositionInfo(tokenId);
        (uint160 sqrtPriceX96,,,) = STATE_VIEW.getSlot0(key.toId());
        PositionTokenBalances memory positionTokenBalancesLocal = positionTokenBalances[tokenId];
        token0Amount = uint256(int256(uncollectedFees.amount0())) + positionTokenBalancesLocal.token0Balance;
        token1Amount = uint256(int256(uncollectedFees.amount1())) + positionTokenBalancesLocal.token1Balance;
        liquidity = LiquidityAmounts.getLiquidityForAmounts(sqrtPriceX96, TickMath.getSqrtPriceAtTick(positionInfo.tickLower()), TickMath.getSqrtPriceAtTick(positionInfo.tickUpper()), token0Amount, token1Amount);
        return (token0Amount, token1Amount, liquidity);
    }

    function _updatePositionTokenBalances(
        uint256 tokenId,
        PoolKey memory key,
        uint256 token0BalanceBefore,
        uint256 token1BalanceBefore
    ) internal {
        uint256 token0BalanceChange;
        uint256 token1BalanceChange;

        uint256 token0TotalAfter = key.currency0.balanceOf(address(this));
        uint256 token1TotalAfter = key.currency1.balanceOf(address(this));

        // Token0
        if (token0TotalAfter > token0BalanceBefore) {
            token0BalanceChange = token0TotalAfter - token0BalanceBefore;
            positionTokenBalances[tokenId].token0Balance += token0BalanceChange;
        } else {
            // Pulled from vault
            token0BalanceChange = token0BalanceBefore - token0TotalAfter;
            uint256 stored0 = positionTokenBalances[tokenId].token0Balance;
            if (token0BalanceChange > stored0) revert InsufficientToken0Balance(tokenId, stored0, token0BalanceChange);
            positionTokenBalances[tokenId].token0Balance = stored0 - token0BalanceChange;
        }

        // Token1
        if (token1TotalAfter > token1BalanceBefore) {
            // Returned
            token1BalanceChange = token1TotalAfter - token1BalanceBefore;
            positionTokenBalances[tokenId].token1Balance += token1BalanceChange;
        } else {
            // Pulled
            token1BalanceChange = token1BalanceBefore - token1TotalAfter;
            uint256 stored1 = positionTokenBalances[tokenId].token1Balance;
            if (token1BalanceChange > stored1) revert InsufficientToken1Balance(tokenId, stored1, token1BalanceChange);
            positionTokenBalances[tokenId].token1Balance = stored1 - token1BalanceChange;
        }
    }


    function getPositionTokenBalances(uint256 tokenId) public view returns (uint256 token0Balance, uint256 token1Balance) {
        return (positionTokenBalances[tokenId].token0Balance, positionTokenBalances[tokenId].token1Balance);
    }

    function handleApprovals(address token0, address token1, uint256 token0Amount, uint256 token1Amount) internal {
       (uint160 allowedAmount0,,) = PERMIT2.allowance(address(this), token0, address(POSITION_MANAGER));
        if(allowedAmount0 < uint160(token0Amount)) {
            PERMIT2.approve(token0, address(POSITION_MANAGER), type(uint160).max, type(uint48).max);
            IERC20Minimal(token0).approve(address(PERMIT2), type(uint256).max); 
        }
        (uint160 allowedAmount1,,) = PERMIT2.allowance(address(this), token1, address(POSITION_MANAGER));
        if(allowedAmount1 < uint160(token1Amount)) {
            PERMIT2.approve(token1, address(POSITION_MANAGER), type(uint160).max, type(uint48).max);
            IERC20Minimal(token1).approve(address(PERMIT2), type(uint256).max);
        }
    }

    function getUncollectedFees(uint256 tokenId)
        public
        view
        returns (BalanceDelta uncollectedFees) {
        (PoolKey memory key, PositionInfo positionInfo) = POSITION_MANAGER.getPoolAndPositionInfo(tokenId);
        int24 tickLower = positionInfo.tickLower();
        int24 tickUpper = positionInfo.tickUpper();

        PoolId poolId = key.toId();

        (uint128 liquidity, uint256 feeGrowthInside0LastX128, uint256 feeGrowthInside1LastX128) =
            STATE_VIEW.getPositionInfo(poolId, address(POSITION_MANAGER), tickLower, tickUpper, bytes32(tokenId));
        (uint256 feeGrowthInside0X128, uint256 feeGrowthInside1X128) =
            STATE_VIEW.getFeeGrowthInside(poolId, tickLower, tickUpper);

        uncollectedFees = _convertFeesToBalanceDelta(
            feeGrowthInside0X128 - feeGrowthInside0LastX128, feeGrowthInside1X128 - feeGrowthInside1LastX128, liquidity);
    }


    function _convertFeesToBalanceDelta(uint256 feeGrowthInside0X128, uint256 feeGrowthInside1X128, uint256 liquidity) 
        internal
        pure 
        returns (BalanceDelta feesInBalanceDelta) {
            
        uint128 token0Amount = (FullMath.mulDiv(feeGrowthInside0X128, liquidity, FixedPoint128.Q128)).toUint128();
        uint128 token1Amount = (FullMath.mulDiv(feeGrowthInside1X128, liquidity, FixedPoint128.Q128)).toUint128();
        feesInBalanceDelta = toBalanceDelta(uint256(token0Amount).toInt128(), uint256(token1Amount).toInt128());
    }


}