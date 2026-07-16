// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { Math } from "@openzeppelin/contracts/utils/math/Math.sol";
import { Address } from "@openzeppelin/contracts/utils/Address.sol";
import { ReentrancyGuardTransient } from "@openzeppelin/contracts/utils/ReentrancyGuardTransient.sol";

import { IPoolManager } from "@uniswap/v4-core/src/interfaces/IPoolManager.sol";
import { IHooks } from "@uniswap/v4-core/src/interfaces/IHooks.sol";
import { Currency } from "@uniswap/v4-core/src/types/Currency.sol";
import { PoolKey } from "@uniswap/v4-core/src/types/PoolKey.sol";
import { PoolId } from "@uniswap/v4-core/src/types/PoolId.sol";
import { TickMath } from "@uniswap/v4-core/src/libraries/TickMath.sol";
import { LPFeeLibrary } from "@uniswap/v4-core/src/libraries/LPFeeLibrary.sol";
import { LiquidityAmounts } from "@uniswap/v4-periphery/src/libraries/LiquidityAmounts.sol";
import { IPositionManager } from "@uniswap/v4-periphery/src/interfaces/IPositionManager.sol";
import { Actions } from "@uniswap/v4-periphery/src/libraries/Actions.sol";
import { IAllowanceTransfer } from "permit2/src/interfaces/IAllowanceTransfer.sol";

import { IFactory } from "../interfaces/IFactory.sol";
import { IMigrator } from "../interfaces/IMigrator.sol";
import { IV4Migrator } from "../interfaces/IV4Migrator.sol";

/// @title  V4Migrator
/// @notice Seeds a Uniswap v4 TOKEN/ETH pool for a graduated launcher token. Mints a
///         full-range LP position directly to {LP_LOCK_SINK} so the LP NFT is unrecoverable
///         from mint time onward.
/// @dev    Only callable by a curve registered with the factory. The contract holds no
///         standing approvals between calls and exposes no withdrawal path.
contract V4Migrator is IV4Migrator, ReentrancyGuardTransient {
    using SafeERC20 for IERC20;
    using Address for address payable;

    /* -------------------------------------------------------------------------- */
    /*                                   ERRORS                                   */
    /* -------------------------------------------------------------------------- */

    error NotBondingCurve(address caller);
    error ZeroAmount();
    error ZeroAddress();
    error LiquidityTooLow();
    error SqrtPriceOverflow();

    /* -------------------------------------------------------------------------- */
    /*                                 IMMUTABLES                                 */
    /* -------------------------------------------------------------------------- */

    IFactory public immutable FACTORY;
    IPoolManager public immutable POOL_MANAGER;
    IPositionManager public immutable POSITION_MANAGER;
    IAllowanceTransfer public immutable PERMIT2;
    IHooks public immutable FEE_HOOK;
    uint24 public constant POOL_FEE = LPFeeLibrary.DYNAMIC_FEE_FLAG;
    int24 public constant TICK_SPACING = 60;

    /// @notice Where LP NFTs get burned-to-sink. `0x...dEaD` by default.
    /// @inheritdoc IV4Migrator
    address public immutable override LP_LOCK_SINK;

    /* -------------------------------------------------------------------------- */
    /*                             TRANSIENT CONTEXT                              */
    /* -------------------------------------------------------------------------- */

    /// @dev Transient slot for the curve currently driving a {migrate} call. Non-zero only
    ///      between `POOL_MANAGER.initialize` and the cleanup at end of {migrate}. Read by
    ///      the fee hook in `afterInitialize` to authenticate the caller.
    bytes32 private constant _CURRENT_CURVE_TSLOT =
        keccak256("imf-v3-contracts.V4Migrator.currentGraduatingCurve.transient");

    /// @inheritdoc IV4Migrator
    function currentGraduatingCurve() external view override returns (address curve) {
        bytes32 slot = _CURRENT_CURVE_TSLOT;
        assembly ("memory-safe") {
            curve := tload(slot)
        }
    }

    function _setCurrentGraduatingCurve(address curve) private {
        bytes32 slot = _CURRENT_CURVE_TSLOT;
        assembly ("memory-safe") {
            tstore(slot, curve)
        }
    }

    /* -------------------------------------------------------------------------- */
    /*                                CONSTRUCTOR                                 */
    /* -------------------------------------------------------------------------- */

    constructor(
        IFactory factory_,
        IPoolManager poolManager_,
        IPositionManager positionManager_,
        IAllowanceTransfer permit2_,
        IHooks feeHook_,
        address lpLockSink_
    ) {
        if (
            address(factory_) == address(0) || address(poolManager_) == address(0)
                || address(positionManager_) == address(0) || address(permit2_) == address(0)
                || lpLockSink_ == address(0)
        ) revert ZeroAddress();
        FACTORY = factory_;
        POOL_MANAGER = poolManager_;
        POSITION_MANAGER = positionManager_;
        PERMIT2 = permit2_;
        FEE_HOOK = feeHook_;
        LP_LOCK_SINK = lpLockSink_;
    }

    /* -------------------------------------------------------------------------- */
    /*                                 MIGRATE                                    */
    /* -------------------------------------------------------------------------- */

    /// @inheritdoc IMigrator
    function migrate(
        address token,
        address, /*creator*/
        uint256 tokenAmount,
        uint96, /*creatorFeeBps*/
        uint96 /*protocolFeeBps*/
    )
        external
        payable
        override
        nonReentrant
        returns (bytes32 poolId, uint256 lpTokenId)
    {
        if (!FACTORY.isBondingCurve(msg.sender)) revert NotBondingCurve(msg.sender);
        if (tokenAmount == 0 || msg.value == 0) revert ZeroAmount();

        IERC20(token).safeTransferFrom(msg.sender, address(this), tokenAmount);

        // Native ETH (`address(0)`) is always numerically less than any token, so it sits
        // in `currency0` by v4's ordering rule.
        PoolKey memory key = PoolKey({
            currency0: Currency.wrap(address(0)),
            currency1: Currency.wrap(token),
            fee: POOL_FEE,
            tickSpacing: TICK_SPACING,
            hooks: FEE_HOOK
        });

        uint160 sqrtPriceX96 = _encodeSqrtPriceX96(msg.value, tokenAmount);

        _setCurrentGraduatingCurve(msg.sender);
        POOL_MANAGER.initialize(key, sqrtPriceX96);
        _setCurrentGraduatingCurve(address(0));

        int24 tickLower = TickMath.minUsableTick(TICK_SPACING);
        int24 tickUpper = TickMath.maxUsableTick(TICK_SPACING);
        uint128 liquidity = LiquidityAmounts.getLiquidityForAmounts(
            sqrtPriceX96,
            TickMath.getSqrtPriceAtTick(tickLower),
            TickMath.getSqrtPriceAtTick(tickUpper),
            msg.value,
            tokenAmount
        );
        if (liquidity == 0) revert LiquidityTooLow();

        // PositionManager pulls tokens through Permit2: ERC-20 approve Permit2, then have
        // Permit2 authorize PositionManager. Both allowances are revoked immediately after
        // the mint so this contract holds no standing approvals between calls.
        IERC20(token).forceApprove(address(PERMIT2), tokenAmount);
        PERMIT2.approve(token, address(POSITION_MANAGER), uint160(tokenAmount), type(uint48).max);

        lpTokenId = POSITION_MANAGER.nextTokenId();
        _mintPosition(key, tickLower, tickUpper, liquidity, msg.value, tokenAmount);

        IERC20(token).forceApprove(address(PERMIT2), 0);
        PERMIT2.approve(token, address(POSITION_MANAGER), 0, 0);

        poolId = PoolId.unwrap(key.toId());
    }

    /* -------------------------------------------------------------------------- */
    /*                              INTERNAL HELPERS                              */
    /* -------------------------------------------------------------------------- */

    function _mintPosition(
        PoolKey memory key,
        int24 tickLower,
        int24 tickUpper,
        uint128 liquidity,
        uint256 amount0Max,
        uint256 amount1Max
    ) private {
        bytes memory actions = abi.encodePacked(uint8(Actions.MINT_POSITION), uint8(Actions.SETTLE_PAIR));

        bytes[] memory params = new bytes[](2);
        params[0] = abi.encode(key, tickLower, tickUpper, liquidity, amount0Max, amount1Max, LP_LOCK_SINK, bytes(""));
        params[1] = abi.encode(key.currency0, key.currency1);

        POSITION_MANAGER.modifyLiquidities{ value: amount0Max }(abi.encode(actions, params), block.timestamp);
    }

    /// @dev `sqrtPriceX96 = sqrt(token1 / token0) · 2^96`. currency0 is ETH, currency1 is
    ///      the launched token; both raw 18-decimal amounts.
    function _encodeSqrtPriceX96(uint256 ethAmount, uint256 tokenAmount) internal pure returns (uint160) {
        uint256 ratio = Math.mulDiv(tokenAmount, 1 << 192, ethAmount);
        uint256 sp = Math.sqrt(ratio);
        if (sp > type(uint160).max) revert SqrtPriceOverflow();
        // Cast is safe: bound checked on the line above.
        // forge-lint: disable-next-line(unsafe-typecast)
        return uint160(sp);
    }

    /// @dev Accept residual ETH that PositionManager may return. No withdrawal path —
    ///      anything left here is permanently locked.
    receive() external payable { }
}
