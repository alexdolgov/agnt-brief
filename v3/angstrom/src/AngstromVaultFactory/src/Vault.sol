// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.10;

import { ERC20 } from "solady/tokens/ERC20.sol";
import { Multicallable } from "solady/utils/Multicallable.sol";
import { SafeTransferLib } from "solady/utils/SafeTransferLib.sol";
import { EnumerableSetLib } from "solady/utils/EnumerableSetLib.sol";
import { IPoolManager } from "@uniswap/v4-core/src/interfaces/IPoolManager.sol";
import { IUnlockCallback } from "@uniswap/v4-core/src/interfaces/callback/IUnlockCallback.sol";
import { Currency } from "@uniswap/v4-core/src/types/Currency.sol";
import { PoolKey } from "@uniswap/v4-core/src/types/PoolKey.sol";
import { TransientStateLibrary } from "@uniswap/v4-core/src/libraries/TransientStateLibrary.sol";
import { BalanceDelta, toBalanceDelta } from "@uniswap/v4-core/src/types/BalanceDelta.sol";
import { StateLibrary } from "@uniswap/v4-core/src/libraries/StateLibrary.sol";
import { Position } from "@uniswap/v4-core/src/libraries/Position.sol";

import { IVaultSpecificFunctions } from "./interfaces/IVaultSpecificFunctions.sol";
import { VaultBase } from "./VaultBase.sol";

using SafeTransferLib for address;
using EnumerableSetLib for EnumerableSetLib.Bytes32Set;
using StateLibrary for IPoolManager;

/// @dev We inherit from Multicallable but do not support ERC2771, avoiding potential pitfalls with the interaction of
/// these two functionalities.
contract Vault is IVaultSpecificFunctions, VaultBase, Multicallable {
    address public immutable EXTENSION;

    constructor(
        ERC20 asset_,
        IPoolManager poolManager_,
        PoolKey memory poolKey_,
        address _factory,
        address _owner,
        uint256 initialEpochLength,
        uint256 initialPerformanceFeeE6,
        uint256 initialManagementFeeAccrualBaseE18,
        address initialPerformanceFeeRecipient,
        address initialMangementFeeRecipient,
        address _extension
    ) VaultBase(asset_, poolManager_, poolKey_) {
        require(_extension != address(0), ZeroAddressDisallowed());
        _initVaultBase(
            _factory,
            _owner,
            initialEpochLength,
            initialPerformanceFeeE6,
            initialManagementFeeAccrualBaseE18,
            initialPerformanceFeeRecipient,
            initialMangementFeeRecipient
        );
        EXTENSION = _extension;
        _setupExternalCallRestrictions();
    }

    ///////////////////////////////////////////////////////////////////////////////////////////////
    //                                      VESTIBULE HOOKS                                      //
    ///////////////////////////////////////////////////////////////////////////////////////////////

    function setVestibule(
        address newVestibule
    ) external onlyFactory {
        require(vaultBaseStorage.vestibule == address(0), VestibuleAlreadySet());
        require(newVestibule != address(0), ZeroAddressDisallowed());
        vaultBaseStorage.vestibule = newVestibule;
        emit VestibuleSet(newVestibule);
    }

    /// @inheritdoc IVaultSpecificFunctions
    function fulfillDepositFromVestibule(
        address receiver,
        uint256 assets,
        uint256 shares
    ) external onlyVestibule nonReentrant {
        address(asset()).safeTransferFrom(msg.sender, address(this), assets);
        _mint(receiver, shares);
    }

    /// @inheritdoc IVaultSpecificFunctions
    function fulfillRedemptionFromVestibule(
        address receiver,
        uint256 shares,
        uint256 assets
    ) external onlyVestibule nonReentrant {
        _burn(msg.sender, shares);
        address(asset()).safeTransfer(receiver, assets);
    }

    /// @inheritdoc IVaultSpecificFunctions
    function transferSharesFromVestibule(
        address from,
        address to,
        uint256 shares
    ) external onlyVestibule nonReentrant {
        address _vestibule = vaultBaseStorage.vestibule;
        require(from == _vestibule || to == _vestibule, OnlyVestibule());
        _transfer(from, to, shares);
    }

    ///////////////////////////////////////////////////////////////////////////////////////////////
    //                                      REPORTING FUNCTIONS                                  //
    ///////////////////////////////////////////////////////////////////////////////////////////////
    /// @inheritdoc IVaultSpecificFunctions
    function adjustPerpsCollateral(
        int256 delta
    ) external onlyAllocator nonReentrant {
        require(delta <= MAX_PERPS_DELTA && delta >= MIN_PERPS_DELTA, PerpsCollateralAdjustmentTooLarge());
        if (delta > 0) {
            _requireNotPaused(PERPS_WITHDRAWALS_PAUSED);
            // SAFETY: delta is positive and within range as checked, so this cast is safe
            unchecked {
                // forge-lint: disable-next-line(unsafe-typecast)
                uint256 amount = uint256(delta);
                address(asset()).safeTransfer(vaultBaseStorage.perpsWallet, amount);
            }
        } else if (delta < 0) {
            // SAFETY: delta is negative and within range as checked, so this cast is safe
            unchecked {
                // forge-lint: disable-next-line(unsafe-typecast)
                uint256 amount = uint256(-delta);
                // slither-disable-next-line arbitrary-send-erc20
                address(asset()).safeTransferFrom(vaultBaseStorage.perpsWallet, address(this), amount);
            }
        }
        vaultBaseStorage.perpsOracle.informOfPerpsTransfer(delta);
        emit PerpsCollateralAdjusted(delta, vaultBaseStorage.perpsWallet);
    }

    ///////////////////////////////////////////////////////////////////////////////////////////////
    //                       ANGSTROM POOL LIQUIDITY FUNCTIONS                                   //
    ///////////////////////////////////////////////////////////////////////////////////////////////

    /// @inheritdoc IVaultSpecificFunctions
    function modifyLiquidity(
        int24 tickLower,
        int24 tickUpper,
        int256 liquidityDelta,
        bytes32 salt
    ) external onlyAllocator nonReentrant {
        // always allow removing liquidity
        if (liquidityDelta >= 0) {
            _requireNotPaused(LIQUIDITY_ADDITIONS_PAUSED);
        }

        bytes memory data = abi.encode(tickLower, tickUpper, liquidityDelta, salt);
        // slither-disable-next-line unused-return
        POOL_MANAGER().unlock(data);
    }

    /// @inheritdoc IUnlockCallback
    /// @dev This function does not return any data.
    function unlockCallback(
        bytes calldata data
    ) external override returns (bytes memory) {
        // SECURITY: only PoolManager can call this
        require(msg.sender == address(POOL_MANAGER()), NotPoolManager());

        (int24 tickLower, int24 tickUpper, int256 liquidityDelta, bytes32 salt) =
            abi.decode(data, (int24, int24, int256, bytes32));

        PoolKey memory poolKey = _getPoolKey();
        IPoolManager.ModifyLiquidityParams memory params = IPoolManager.ModifyLiquidityParams({
            tickLower: tickLower, tickUpper: tickUpper, liquidityDelta: liquidityDelta, salt: salt
        });

        // Angstrom hook does not use any custom hookData bytes
        /* (BalanceDelta callerDelta, BalanceDelta feesAccrued) = */
        // slither-disable-next-line unused-return,reentrancy-benign
        POOL_MANAGER().modifyLiquidity(poolKey, params, "");

        bytes32 positionKey = _computePositionKey(tickLower, tickUpper, salt);

        if (liquidityDelta > 0) {
            bool notInSet = vaultBaseStorage.positions.add(positionKey);
            if (notInSet) {
                vaultBaseStorage.positionParams[positionKey] =
                    PositionParams({ tickLower: tickLower, tickUpper: tickUpper });
            }
        } else if (liquidityDelta < 0) {
            // slither-disable-next-line unused-return
            (uint128 remainingLiquidity,,) =
                POOL_MANAGER().getPositionInfo(POOL(), address(this), tickLower, tickUpper, salt);
            if (remainingLiquidity == 0) {
                // ignore return value; we already know the `positionKey` was in `_positions`
                // slither-disable-next-line unused-return
                vaultBaseStorage.positions.remove(positionKey);
                delete vaultBaseStorage.positionParams[positionKey];
            }
        }

        int128 delta0 = int128(TransientStateLibrary.currencyDelta(POOL_MANAGER(), address(this), CURRENCY0()));
        int128 delta1 = int128(TransientStateLibrary.currencyDelta(POOL_MANAGER(), address(this), CURRENCY1()));
        BalanceDelta finalDelta = toBalanceDelta(delta0, delta1);
        _settleDeltas(poolKey, finalDelta);
    }

    ///////////////////////////////////////////////////////////////////////////////////////////////
    //                        INTERNAL / PRIVATE FUNCTIONS                                       //
    ///////////////////////////////////////////////////////////////////////////////////////////////

    function _getPoolKey() internal view returns (PoolKey memory) {
        return PoolKey({
            currency0: CURRENCY0(), currency1: CURRENCY1(), fee: FEE(), tickSpacing: TICK_SPACING(), hooks: HOOKS()
        });
    }

    function _computePositionKey(
        int24 tickLower,
        int24 tickUpper,
        bytes32 salt
    ) internal view returns (bytes32) {
        return Position.calculatePositionKey(address(this), tickLower, tickUpper, salt);
    }

    /// @dev Settle balance deltas with the pool manager
    /// Negative delta = we owe the pool (settle), Positive delta = pool owes us (take)
    function _settleDeltas(
        PoolKey memory poolKey,
        BalanceDelta delta
    ) internal {
        int128 delta0 = delta.amount0();
        int128 delta1 = delta.amount1();

        if (delta0 < 0) {
            // forge-lint: disable-next-line(unsafe-typecast)
            _settle(poolKey.currency0, uint128(-delta0));
        } else if (delta0 > 0) {
            // forge-lint: disable-next-line(unsafe-typecast)
            _take(poolKey.currency0, uint128(delta0));
        }

        if (delta1 < 0) {
            // forge-lint: disable-next-line(unsafe-typecast)
            _settle(poolKey.currency1, uint128(-delta1));
        } else if (delta1 > 0) {
            // forge-lint: disable-next-line(unsafe-typecast)
            _take(poolKey.currency1, uint128(delta1));
        }
    }

    /// @dev Pay tokens to the pool manager
    function _settle(
        Currency currency,
        uint256 amount
    ) internal {
        address token = Currency.unwrap(currency);
        if (token == address(0)) {
            // slither-disable-next-line unused-return
            POOL_MANAGER().settle{ value: amount }();
        } else {
            POOL_MANAGER().sync(currency);
            token.safeTransfer(address(POOL_MANAGER()), amount);
            // slither-disable-next-line unused-return
            POOL_MANAGER().settle();
        }
    }

    /// @dev Withdraw tokens from the pool manager
    function _take(
        Currency currency,
        uint256 amount
    ) internal {
        POOL_MANAGER().take(currency, address(this), amount);
    }

    /// @dev Initialize storage for restricted external calls. Run once in constructor
    function _setupExternalCallRestrictions() internal {
        vaultBaseStorage.targetDisallowed[address(asset())] = true;
        vaultBaseStorage.targetDisallowed[Currency.unwrap(CURRENCY0())] = true;
        vaultBaseStorage.targetDisallowed[Currency.unwrap(CURRENCY1())] = true;
        vaultBaseStorage.targetDisallowed[address(POOL_MANAGER())] = true;
        vaultBaseStorage.functionSelectorDisallowed[ERC20.transfer.selector] = true;
        vaultBaseStorage.functionSelectorDisallowed[ERC20.transferFrom.selector] = true;
        vaultBaseStorage.functionSelectorDisallowed[ERC20.approve.selector] = true;
        // optional ERC20 extension -- increaseAllowance(address,uint256)
        vaultBaseStorage.functionSelectorDisallowed[0x39509351] = true;
        // ERC6909 functions, relevant for UniV4 positions
        // transfer(address,uint256,uint256)
        vaultBaseStorage.functionSelectorDisallowed[0x095bcdb6] = true;
        // transferFrom(address,address,uint256,uint256)
        vaultBaseStorage.functionSelectorDisallowed[0xfe99049a] = true;
        // approve(address,uint256,uint256)
        vaultBaseStorage.functionSelectorDisallowed[0x426a8493] = true;
        // setOperator(address,bool)
        vaultBaseStorage.functionSelectorDisallowed[0x558a7297] = true;
    }

    /// @dev Routes unmatched function selectors to the VaultExtension via delegatecall
    // solhint-disable-next-line no-complex-fallback
    fallback() external payable {
        address ext = EXTENSION;
        assembly {
            calldatacopy(0, 0, calldatasize())
            let result := delegatecall(gas(), ext, 0, calldatasize(), 0, 0)
            returndatacopy(0, 0, returndatasize())
            switch result
            case 0 { revert(0, returndatasize()) }
            default { return(0, returndatasize()) }
        }
    }
}
