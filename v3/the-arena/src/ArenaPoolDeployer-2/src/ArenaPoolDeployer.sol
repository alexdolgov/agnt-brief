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
import {Ownable2Step} from "@uniswap/openzeppelin-contracts/contracts/access/Ownable2Step.sol";
import {Ownable} from "@uniswap/openzeppelin-contracts/contracts/access/Ownable.sol";
import {IArenaFeeHelperMinimal} from "./intefaces/IArenaFeeHelperMinimal.sol";
import {IArenaPoolDeployer} from "./intefaces/IArenaPoolDeployer.sol";
import {IHooks} from "@uniswap/v4-core/src/interfaces/IHooks.sol";


contract ArenaPoolDeployer is Ownable2Step, IArenaPoolDeployer {

    IPositionManager constant POSITION_MANAGER = IPositionManager(0xB74b1F14d2754AcfcbBe1a221023a5cf50Ab8ACD);
    IPoolManager constant POOL_MANAGER = IPoolManager(0x06380C0e0912312B5150364B9DC4542BA0DbBc85);
    IPermit2 constant PERMIT2 = IPermit2(0x000000000022D473030F116dDEE9F6B43aC78BA3);

    error IdenticalAddresses();
    error Token1MustBeGreaterThanToken0();

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
        IERC20Minimal(params.token0).transferFrom(msg.sender,address(this), params.token0Amount);
        /// forge-lint: disable-next-line(erc20-unchecked-transfer)
        IERC20Minimal(params.token1).transferFrom(msg.sender,address(this), params.token1Amount);
        _handleTokenApprovals(params.token0, params.token1, params.token0Amount, params.token1Amount);
        (uint256 tokenId, PoolKey memory poolKey) = _initPoolAndIncreaseLiquidity(params);
        arenaFeeHelper.initializeFeesForPool(poolKey.toId(), _fees);
        return tokenId;
    }


    function _handleTokenApprovals(address token0, address token1, uint256 token0Amount, uint256 token1Amount) internal {
        (uint160 allowedAmount0,,) = PERMIT2.allowance(address(this), token0 ,address(POSITION_MANAGER)); // permit2 allowance is smaller compared to ERC20 allowance
        if(allowedAmount0 < uint160(token0Amount)) {
            IERC20Minimal(token0).approve(address(PERMIT2), type(uint256).max);
            PERMIT2.approve(address(token0), address(POSITION_MANAGER), type(uint160).max, type(uint48).max);
        }
        (uint160 allowedAmount1,,) = PERMIT2.allowance(address(this), token1 ,address(POSITION_MANAGER));
        if(allowedAmount1 < uint160(token1Amount)) {
            IERC20Minimal(token1).approve(address(PERMIT2), type(uint256).max);
            PERMIT2.approve(address(token1), address(POSITION_MANAGER), type(uint160).max, type(uint48).max);
        }
    }

    function _initPoolAndIncreaseLiquidity(PoolInitParams memory params) internal returns (uint256 tokenId, PoolKey memory poolKey) {
        require(params.token0 != params.token1, IdenticalAddresses());
        require(params.token1 > params.token0, Token1MustBeGreaterThanToken0());
        poolKey = PoolKey({
            currency0: Currency.wrap(params.token0),
            currency1: Currency.wrap(params.token1),
            fee: params.fee,
            tickSpacing: params.tickSpacing,
            hooks: IHooks(params.hookContract)
        });

        POOL_MANAGER.initialize(poolKey, params.startingPrice);

        (bytes memory actions, bytes[] memory modifyLiquiditiesParams) = _getActionsAndModifyLiquiditiesParams(params, poolKey);
        POSITION_MANAGER.modifyLiquidities(abi.encode(actions, modifyLiquiditiesParams), block.timestamp);
        return (POSITION_MANAGER.nextTokenId() - 1, poolKey);
        
    }

    function _getActionsAndModifyLiquiditiesParams(PoolInitParams memory params, PoolKey memory poolKey) internal pure returns (bytes memory actions, bytes[] memory modifyLiquiditiesParams) {
            modifyLiquiditiesParams = new bytes[](4);
            int24 tickLower = snapToTickSpacing(params.tickLower, params.tickSpacing);
            int24 tickUpper = snapToTickSpacing(params.tickUpper, params.tickSpacing);
            uint128 liquidity = LiquidityAmounts.getLiquidityForAmounts(params.startingPrice, TickMath.getSqrtPriceAtTick(tickLower), TickMath.getSqrtPriceAtTick(tickUpper), params.token0Amount, params.token1Amount);
            actions = abi.encodePacked(uint8(Actions.MINT_POSITION), uint8(Actions.SETTLE_PAIR), uint8(Actions.SWEEP), uint8(Actions.SWEEP));
            modifyLiquiditiesParams[0] = abi.encode(poolKey, tickLower, tickUpper, liquidity, params.token0Amount +1 , params.token1Amount +1 , params.recipient, params.hookData);
            modifyLiquiditiesParams[1] = abi.encode(poolKey.currency0, poolKey.currency1);
            modifyLiquiditiesParams[2] = abi.encode(poolKey.currency0, params.recipient);
            modifyLiquiditiesParams[3] = abi.encode(poolKey.currency1, params.recipient);
            return (actions, modifyLiquiditiesParams);
    }

    function snapToTickSpacing(int24 tick, int24 tickSpacing) internal pure returns (int24) {
        /// forge-lint: disable-next-line(divide-before-multiply)
        return (tick / tickSpacing) * tickSpacing;
    }


    function emergencyWithdraw(address[] calldata tokens, uint256[] calldata amounts, address recipient) external onlyOwner {
        for (uint256 i = 0; i < tokens.length; i++) {
            /// forge-lint: disable-next-line(erc20-unchecked-transfer)
            IERC20Minimal(tokens[i]).transfer(recipient, amounts[i]);
        }
    }
}