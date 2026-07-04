// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

import {PoolKey} from "@uniswap/v4-core/src/types/PoolKey.sol";
import {Currency} from "@uniswap/v4-core/src/types/Currency.sol";
import {IPoolManager} from "@uniswap/v4-core/src/interfaces/IPoolManager.sol";
import {IPositionManager} from "@uniswap/v4-periphery/src/interfaces/IPositionManager.sol";
import {IPermit2} from "permit2/src/interfaces/IPermit2.sol";
import {IERC20Minimal} from "@uniswap/v4-core/src/interfaces/external/IERC20Minimal.sol";

import {Actions} from "@uniswap/v4-periphery/src/libraries/Actions.sol";
import {TickMath} from "@uniswap/v4-core/src/libraries/TickMath.sol";
import {LiquidityAmounts} from "@uniswap/v4-core/test/utils/LiquidityAmounts.sol";
import {Ownable} from "lib/uniswap-hooks/lib/openzeppelin-contracts/contracts/access/Ownable.sol";
import {IArenaFeeHelperMinimal} from "./intefaces/IArenaFeeHelperMinimal.sol";
import {IArenaPoolDeployer} from "./intefaces/IArenaPoolDeployer.sol";
import {IHooks} from "@uniswap/v4-core/src/interfaces/IHooks.sol";


contract ArenaPoolDeployer is Ownable, IArenaPoolDeployer {

    IPositionManager constant POSITION_MANAGER = IPositionManager(0xB74b1F14d2754AcfcbBe1a221023a5cf50Ab8ACD);
    IPoolManager constant POOL_MANAGER = IPoolManager(0x06380C0e0912312B5150364B9DC4542BA0DbBc85);
    IPermit2 constant PERMIT2 = IPermit2(0x000000000022D473030F116dDEE9F6B43aC78BA3);

    IArenaFeeHelperMinimal public arenaFeeHelper;
    mapping(address => bool) public isDeployer;


    constructor(address _owner, IArenaFeeHelperMinimal _arenaFeeHelper) Ownable(_owner) {
        arenaFeeHelper = _arenaFeeHelper;
    }

    function setDeployer(address _deployer, bool _isDeployer) external onlyOwner {
        isDeployer[_deployer] = _isDeployer;
    }

    function initPoolAndSetFees(PoolInitParams memory params, IArenaFeeHelperMinimal.Fee[] calldata _fees) external returns (uint256) {
        require(isDeployer[msg.sender], "Not deployer");
        /// forge-lint: disable-next-line(erc20-unchecked-transfer)
        IERC20Minimal(params.tokenA).transferFrom(msg.sender,address(this), params.tokenAAmount);
        /// forge-lint: disable-next-line(erc20-unchecked-transfer)
        IERC20Minimal(params.tokenB).transferFrom(msg.sender,address(this), params.tokenBAmount);
        _handleTokenApprovals(params.tokenA, params.tokenB, params.tokenAAmount, params.tokenBAmount);
        (uint256 tokenId, PoolKey memory poolKey) = _initPoolAndIncreaseLiquidity(params);
        arenaFeeHelper.initializeFeesForPool(poolKey.toId(), _fees);
        return tokenId;
    }


    function _handleTokenApprovals(address tokenA, address tokenB, uint256 tokenAAmount, uint256 tokenBAmount) internal {
        (uint160 allowedAmountA,,) = PERMIT2.allowance(address(this), tokenA ,address(POSITION_MANAGER)); // permit2 allowance is smaller compared to ERC20 allowance
        if(allowedAmountA < uint160(tokenAAmount)) { 
            IERC20Minimal(tokenA).approve(address(PERMIT2), type(uint256).max);
            PERMIT2.approve(address(tokenA), address(POSITION_MANAGER), type(uint160).max, type(uint48).max);
        }
        (uint160 allowedAmountB,,) = PERMIT2.allowance(address(this), tokenB ,address(POSITION_MANAGER));
        if(allowedAmountB < uint160(tokenBAmount)) { 
            IERC20Minimal(tokenB).approve(address(PERMIT2), type(uint256).max);
            PERMIT2.approve(address(tokenB), address(POSITION_MANAGER), type(uint160).max, type(uint48).max);
        }
    }

    function _initPoolAndIncreaseLiquidity(PoolInitParams memory params) internal returns (uint256 tokenId, PoolKey memory poolKey) {
        {
            (address token0, address token1) = _sort(params.tokenA, params.tokenB);
            poolKey = PoolKey({
                currency0: Currency.wrap(token0),
                currency1: Currency.wrap(token1),
                fee: params.fee,
                tickSpacing: params.tickSpacing,
                hooks: IHooks(params.hookContract)
            });
        }

        POOL_MANAGER.initialize(poolKey, params.startingPrice);

        (bytes memory actions, bytes[] memory modifyLiquiditiesParams) = _getActionsAndModifyLiquiditiesParams(params, poolKey);
        POSITION_MANAGER.modifyLiquidities(abi.encode(actions, modifyLiquiditiesParams), block.timestamp + 60);
        return (POSITION_MANAGER.nextTokenId() - 1, poolKey);
        
    }

    function _getActionsAndModifyLiquiditiesParams(PoolInitParams memory params, PoolKey memory poolKey) internal pure returns (bytes memory actions, bytes[] memory modifyLiquiditiesParams) {

            uint256 token0Amount;
            uint256 token1Amount;
            if (params.tokenA == Currency.unwrap(poolKey.currency0)) {
                token0Amount = params.tokenAAmount;
                token1Amount = params.tokenBAmount;
            }
            else {
                token0Amount = params.tokenBAmount;
                token1Amount = params.tokenAAmount;
            }
            modifyLiquiditiesParams = new bytes[](4);
            int24 tickLower = snapToTickSpacing(params.tickLower, params.tickSpacing);
            int24 tickUpper = snapToTickSpacing(params.tickUpper, params.tickSpacing);
            uint128 liquidity = LiquidityAmounts.getLiquidityForAmounts(params.startingPrice, TickMath.getSqrtPriceAtTick(tickLower), TickMath.getSqrtPriceAtTick(tickUpper), token0Amount, token1Amount);
            actions = abi.encodePacked(uint8(Actions.MINT_POSITION), uint8(Actions.SETTLE_PAIR), uint8(Actions.SWEEP), uint8(Actions.SWEEP));
            modifyLiquiditiesParams[0] = abi.encode(poolKey, tickLower, tickUpper, liquidity, token0Amount +1 , token1Amount +1 , params.recipient, params.hookData);
            modifyLiquiditiesParams[1] = abi.encode(poolKey.currency0, poolKey.currency1);
            modifyLiquiditiesParams[2] = abi.encode(poolKey.currency0, params.recipient);
            modifyLiquiditiesParams[3] = abi.encode(poolKey.currency1, params.recipient);
            return (actions, modifyLiquiditiesParams);
    }

    function snapToTickSpacing(int24 tick, int24 tickSpacing) internal pure returns (int24) {
        /// forge-lint: disable-next-line(divide-before-multiply)
        return (tick / tickSpacing) * tickSpacing;
    }

    function _sort(address tokenA, address tokenB)
        internal
        pure
        returns (address token0, address token1)
    {
        require(tokenA != tokenB, "identical addresses");
        (token0, token1) = tokenA < tokenB
            ? (tokenA, tokenB)
            : (tokenB, tokenA);
    }

    function emergencyWithdraw(address[] calldata tokens, uint256[] calldata amounts, address recipient) external onlyOwner {
        for (uint256 i = 0; i < tokens.length; i++) {
            /// forge-lint: disable-next-line(erc20-unchecked-transfer)
            IERC20Minimal(tokens[i]).transfer(recipient, amounts[i]);
        }
    }
}