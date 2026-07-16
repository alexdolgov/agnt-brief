// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

import {PoolKey} from "infinity-core/src/types/PoolKey.sol";
import {PoolId, PoolIdLibrary} from "infinity-core/src/types/PoolId.sol";
import {Currency} from "infinity-core/src/types/Currency.sol";
import {IHooks} from "infinity-core/src/interfaces/IHooks.sol";
import {ICLHooks} from "infinity-core/src/pool-cl/interfaces/ICLHooks.sol";
import {ICLPoolManager} from "infinity-core/src/pool-cl/interfaces/ICLPoolManager.sol";
import {CLPoolManager} from "infinity-core/src/pool-cl/CLPoolManager.sol";
import {CLPoolParametersHelper} from "infinity-core/src/pool-cl/libraries/CLPoolParametersHelper.sol";
import {Constants} from "infinity-core/test/pool-cl/helpers/Constants.sol";
import {IERC20} from "openzeppelin-contracts/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "openzeppelin-contracts/contracts/token/ERC20/utils/SafeERC20.sol";

import {ICLStableSwapPoolFactory} from "./interfaces/ICLStableSwapPoolFactory.sol";
import {ICLStableSwapHookFactory} from "./interfaces/ICLStableSwapHookFactory.sol";
import {ICLStableSwapHook} from "./interfaces/ICLStableSwapHook.sol";

/// @notice CLStableSwapPoolFactory contract for CL stableswap pool creations
contract CLStableSwapPoolFactory is ICLStableSwapPoolFactory {
    using CLPoolParametersHelper for bytes32;
    using PoolIdLibrary for PoolKey;
    using SafeERC20 for IERC20;

    /// @notice The address of the pool manager
    ICLPoolManager public immutable poolManager;

    /// @notice The address of the hook factory
    ICLStableSwapHookFactory public immutable hookFactory;

    error NameTooLong();
    error SymbolTooLong();

    event PoolCreated(address[] coins, uint256 A, uint256 fee, address indexed creator, PoolId indexed poolId);

    event PoolCreatedAndLiquidityAdded(
        address[] coins,
        uint256 A,
        uint256 fee,
        address indexed creator,
        PoolId indexed poolId,
        uint256 amount0,
        uint256 amount1,
        uint256 lpMinted,
        address receiver
    );

    constructor(address _hookFactory) {
        hookFactory = ICLStableSwapHookFactory(_hookFactory);
        poolManager = ICLPoolManager(hookFactory.pool_manager());
    }

    function createPool(ICLStableSwapPoolFactory.CreatePoolParam calldata param) external returns (PoolKey memory) {
        PoolKey memory key = _createPool(
            param.name,
            param.symbol,
            param.coins,
            param.A,
            param.fee,
            param.offpegFeeMultiplier,
            param.maExpTime,
            param.implementationIdx,
            param.assetTypes,
            param.methodIds,
            param.oracles
        );

        emit PoolCreated(param.coins, param.A, param.fee, msg.sender, key.toId());

        return key;
    }

    function createPoolAndAddLiquidity(
        ICLStableSwapPoolFactory.CreatePoolParam calldata createPoolParam,
        ICLStableSwapPoolFactory.AddLiquidityParam calldata addLiquidityParam
    ) external returns (PoolKey memory, uint256) {
        PoolKey memory key = _createPool(
            createPoolParam.name,
            createPoolParam.symbol,
            createPoolParam.coins,
            createPoolParam.A,
            createPoolParam.fee,
            createPoolParam.offpegFeeMultiplier,
            createPoolParam.maExpTime,
            createPoolParam.implementationIdx,
            createPoolParam.assetTypes,
            createPoolParam.methodIds,
            createPoolParam.oracles
        );

        IERC20(createPoolParam.coins[0]).safeTransferFrom(msg.sender, address(this), addLiquidityParam.amount0);
        IERC20(createPoolParam.coins[1]).safeTransferFrom(msg.sender, address(this), addLiquidityParam.amount1);

        IERC20(createPoolParam.coins[0]).forceApprove(address(key.hooks), addLiquidityParam.amount0);
        IERC20(createPoolParam.coins[1]).forceApprove(address(key.hooks), addLiquidityParam.amount1);

        uint256 lpMinted = ICLStableSwapHook(address(key.hooks)).add_liquidity(
            addLiquidityParam.amount0,
            addLiquidityParam.amount1,
            addLiquidityParam.minMintAmount,
            addLiquidityParam.receiver
        );

        emit PoolCreatedAndLiquidityAdded(
            createPoolParam.coins,
            createPoolParam.A,
            createPoolParam.fee,
            msg.sender,
            key.toId(),
            addLiquidityParam.amount0,
            addLiquidityParam.amount1,
            lpMinted,
            addLiquidityParam.receiver
        );

        return (key, lpMinted);
    }

    function _createPool(
        string memory _name,
        string memory _symbol,
        address[] memory _coins,
        uint256 _A,
        uint256 _fee,
        uint256 _offpegFeeMultiplier,
        uint256 _maExpTime,
        uint256 _implementationIdx,
        uint8[] memory _assetTypes,
        bytes4[] memory _methodIds,
        address[] memory _oracles
    ) internal returns (PoolKey memory) {
        if (bytes(_name).length > 32) {
            revert NameTooLong();
        }
        if (bytes(_symbol).length > 10) {
            revert SymbolTooLong();
        }

        ICLStableSwapHook hook = ICLStableSwapHook(
            hookFactory.deploy_plain_pool(
                _name,
                _symbol,
                _coins,
                _A,
                _fee,
                _offpegFeeMultiplier,
                _maExpTime,
                _implementationIdx,
                _assetTypes,
                _methodIds,
                _oracles
            )
        );

        // fee and tickSpacing will not be used
        bytes32 parameters = bytes32(uint256(IHooks(address(hook)).getHooksRegistrationBitmap()));
        parameters = parameters.setTickSpacing(1);
        Currency currency0 = Currency.wrap(_coins[0]);
        Currency currency1 = Currency.wrap(_coins[1]);
        PoolKey memory key = PoolKey({
            currency0: currency0,
            currency1: currency1,
            hooks: IHooks(address(hook)),
            poolManager: poolManager,
            fee: uint24(0),
            parameters: parameters
        });

        // sqrtPriceX96 will not be used
        poolManager.initialize(key, Constants.SQRT_RATIO_1_1);

        return key;
    }
}
