// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.10;

import { ECDSA } from "solady/utils/ECDSA.sol";
import { ERC20 } from "solady/tokens/ERC20.sol";
import { SafeTransferLib } from "solady/utils/SafeTransferLib.sol";
import { EnumerableSetLib } from "solady/utils/EnumerableSetLib.sol";
import { SafeCastLib } from "solady/utils/SafeCastLib.sol";
import { IPoolManager } from "@uniswap/v4-core/src/interfaces/IPoolManager.sol";
import { IHooks } from "@uniswap/v4-core/src/interfaces/IHooks.sol";
import { Currency } from "@uniswap/v4-core/src/types/Currency.sol";
import { PoolKey } from "@uniswap/v4-core/src/types/PoolKey.sol";
import { PoolId } from "@uniswap/v4-core/src/types/PoolId.sol";
import { StateLibrary } from "@uniswap/v4-core/src/libraries/StateLibrary.sol";

import { IPerpsOracle } from "./interfaces/IPerpsOracle.sol";
import { IPriceOracle } from "./interfaces/IPriceOracle.sol";
import { ITransferPolicy } from "./interfaces/ITransferPolicy.sol";
import { ISwapper } from "./interfaces/ISwapper.sol";
import { IVaultExtension, IGPv2Settlement } from "./interfaces/IVaultExtension.sol";
import { IVestibule } from "./interfaces/IVestibule.sol";
import { OrderSig } from "./types/OrderSig.sol";
import { VaultBase } from "./VaultBase.sol";

using EnumerableSetLib for EnumerableSetLib.Bytes32Set;
using StateLibrary for IPoolManager;
using SafeCastLib for uint256;

/// @notice Singleton extension contract shared by all Vaults.
/// Called via delegatecall from Vault's fallback function.
/// Contains admin setters, timelock admin, pause functions, and view/getter functions.
/// @dev IMPORTANT: Must NOT declare any state variables. Storage layout must match VaultBase exactly.
/// @dev This contract's own storage is never used — delegatecall reads from the calling Vault's storage.
contract VaultExtension is IVaultExtension, VaultBase {
    constructor()
        VaultBase(
            ERC20(address(0)),
            IPoolManager(address(0)),
            PoolKey({
                currency0: Currency.wrap(address(0)),
                currency1: Currency.wrap(address(0)),
                fee: 0,
                tickSpacing: 0,
                hooks: IHooks(address(0))
            })
        )
    { }

    ///////////////////////////////////////////////////////////////////////////////////////////////
    //                   IMMUTABLE CALLBACK OVERRIDES (delegatecall safety)                       //
    ///////////////////////////////////////////////////////////////////////////////////////////////
    /// @dev During delegatecall, `this` refers to the calling Vault. These external calls
    /// route back to the Vault's own bytecode, reading the correct immutable values.

    function asset() public view override returns (ERC20) {
        // slither-disable-next-line var-read-using-this
        return this.asset();
    }

    // forge-lint: disable-next-line(mixed-case-function)
    function POOL() public view override returns (PoolId) {
        // slither-disable-next-line var-read-using-this
        return this.POOL();
    }

    // forge-lint: disable-next-line(mixed-case-function)
    function POOL_MANAGER() public view override returns (IPoolManager) {
        // slither-disable-next-line var-read-using-this
        return this.POOL_MANAGER();
    }

    // forge-lint: disable-next-line(mixed-case-function)
    function CURRENCY0() public view override returns (Currency) {
        // slither-disable-next-line var-read-using-this
        return this.CURRENCY0();
    }

    // forge-lint: disable-next-line(mixed-case-function)
    function CURRENCY1() public view override returns (Currency) {
        // slither-disable-next-line var-read-using-this
        return this.CURRENCY1();
    }

    ///////////////////////////////////////////////////////////////////////////////////////////////
    //                                      TIMELOCK FUNCTIONS                                   //
    ///////////////////////////////////////////////////////////////////////////////////////////////

    /// @inheritdoc IVaultExtension
    function queueTimelockedAction(
        bytes calldata action
    ) external onlyOwner {
        _queueTimelockedAction(action);
    }

    /// @inheritdoc IVaultExtension
    function cancelTimelockedAction(
        bytes calldata action
    ) external onlyTimelockCancelerOrOwner {
        _cancelTimelockedAction(action);
    }

    /// @inheritdoc IVaultExtension
    function decreaseTimelockDelay(
        bytes4 functionSelector,
        uint256 newDelay
    ) external onlyOwner timelocked {
        _decreaseTimelockDelay(functionSelector, newDelay);
    }

    /// @inheritdoc IVaultExtension
    function increaseTimelockDelay(
        bytes4 functionSelector,
        uint256 newDelay
    ) external onlyOwner timelocked {
        _increaseTimelockDelay(functionSelector, newDelay);
    }

    ///////////////////////////////////////////////////////////////////////////////////////////////
    //                      SETTINGS-ADJUSTMENT & ROLE ADMIN FUNCTIONS                           //
    ///////////////////////////////////////////////////////////////////////////////////////////////

    function setAllocator(
        address account,
        bool newStatus
    ) external onlyOwner timelocked {
        _setAllocator(account, newStatus);
    }

    function setPauser(
        address account,
        bool newStatus
    ) external onlyOwner timelocked {
        _setPauser(account, newStatus);
    }

    function setTimelockCanceler(
        address account,
        bool newStatus
    ) external onlyOwner timelocked {
        _setTimelockCanceler(account, newStatus);
    }

    function setDepositAmountLimits(
        uint128 minAmount,
        uint128 maxAmount
    ) external onlyOwner timelocked {
        IVestibule(vaultBaseStorage.vestibule).setDepositAmountLimits(minAmount, maxAmount);
    }

    function setRedemptionAmountLimits(
        uint128 minAmount,
        uint128 maxAmount
    ) external onlyOwner timelocked {
        IVestibule(vaultBaseStorage.vestibule).setRedemptionAmountLimits(minAmount, maxAmount);
    }

    function setSwapper(
        ISwapper _swapper
    ) external onlyOwner timelocked {
        require(address(_swapper) != address(0), ZeroAddressDisallowed());
        vaultBaseStorage.targetDisallowed[address(vaultBaseStorage.swapper)] = false;
        vaultBaseStorage.targetDisallowed[address(_swapper)] = true;
        vaultBaseStorage.swapper = _swapper;
    }

    function setPerpsOracle(
        IPerpsOracle oracle
    ) external onlyOwner timelocked {
        require(address(oracle) != address(0), ZeroAddressDisallowed());
        require(oracle.ASSET() == asset(), OracleAssetMismatch());
        vaultBaseStorage.perpsOracle = oracle;
        emit PerpsOracleSet(oracle);
    }

    function setPriceOracle(
        IPriceOracle _priceOracle
    ) external onlyOwner timelocked {
        require(address(_priceOracle) != address(0), ZeroAddressDisallowed());
        vaultBaseStorage.priceOracle = _priceOracle;
        emit PriceOracleSet(_priceOracle);
    }

    function setPerpsWallet(
        address wallet
    ) external onlyOwner timelocked {
        require(wallet != address(0), ZeroAddressDisallowed());
        vaultBaseStorage.perpsWallet = wallet;
        emit PerpsWalletSet(wallet);
    }

    function setPerformanceFeeRecipient(
        address newPerformanceFeeRecipient
    ) external onlyOwner timelocked {
        _setPerformanceFeeRecipient(newPerformanceFeeRecipient);
    }

    function setManagementFeeRecipient(
        address newManagementFeeRecipient
    ) external onlyOwner timelocked {
        _setManagementFeeRecipient(newManagementFeeRecipient);
    }

    /// @dev Setting transferPolicy to `address(0)` is explicitly *allowed*; in this case, no transfer restrictions will
    /// be enforced.
    function setTransferPolicy(
        ITransferPolicy _transferPolicy
    ) external onlyOwner timelocked {
        vaultBaseStorage.transferPolicy = _transferPolicy;
        emit TransferPolicySet(_transferPolicy);
    }

    function setIntentsRouter(
        address router
    ) external onlyOwner timelocked {
        require(router != address(0), ZeroAddressDisallowed());
        vaultBaseStorage.intentsRouter = router;
        emit IntentsRouterSet(router);
    }

    function setPerformanceFee(
        uint256 newPerformanceFeeE6
    ) external onlyOwner timelocked {
        // update accrued fees prior to changing the value
        accrueFees();
        _setPerformanceFee(newPerformanceFeeE6);
    }

    function setEpochLength(
        uint256 newEpochLengthSeconds
    ) external onlyOwner timelocked {
        _setEpochLength(newEpochLengthSeconds);
    }

    function setManagementFee(
        uint256 newManagementFeeAccrualBaseE18
    ) external onlyOwner timelocked {
        // update accrued fees prior to changing the value
        accrueFees();
        _setManagementFee(newManagementFeeAccrualBaseE18);
    }

    ///////////////////////////////////////////////////////////////////////////////////////////////
    //                                      PAUSE FUNCTIONS                                      //
    ///////////////////////////////////////////////////////////////////////////////////////////////

    function pause(
        uint256 newPausedStatus
    ) external onlyPauser {
        _pause(newPausedStatus);
    }

    function pauseAll() external onlyPauser {
        _pause(type(uint256).max);
    }

    function unpause(
        uint256 newPausedStatus
    ) external onlyPauser {
        _unpause(newPausedStatus);
    }

    function unpauseAll() external onlyPauser {
        _unpause(0);
    }

    ///////////////////////////////////////////////////////////////////////////////////////////////
    //                              FACTORY-CALLED FUNCTIONS                                     //
    ///////////////////////////////////////////////////////////////////////////////////////////////

    function setPerformanceFeeProtocolFractionE6(
        uint24 newPerformanceFeeProtocolFractionE6
    ) external onlyFactory {
        _setPerformanceFeeProtocolFractionE6(newPerformanceFeeProtocolFractionE6);
    }

    function setManagementFeeProtocolFractionE6(
        uint24 newManagementFeeProtocolFractionE6
    ) external onlyFactory {
        _setManagementFeeProtocolFractionE6(newManagementFeeProtocolFractionE6);
    }

    ///////////////////////////////////////////////////////////////////////////////////////////////
    //                          SWAPPING & AIRDROP-CLAIMING FUNCTIONS                            //
    ///////////////////////////////////////////////////////////////////////////////////////////////

    function swap(
        ERC20 assetIn,
        uint256 amountIn,
        ERC20 assetOut,
        bytes calldata params,
        uint256 maxLossFromSwap
    ) external whenNotPaused(SWAPS_PAUSED) onlyAllocator nonReentrant {
        require(address(assetIn) != address(this), CannotTransferOutVaultShares());
        _ensureRelevantTokens(assetOut);
        // @dev this implicitly relies on the oracle being able to price assetIn (+ assetOut)
        uint256 valueIn = convertCurrencyToAsset(address(assetIn), amountIn);

        SafeTransferLib.safeTransfer({
            token: address(assetIn), to: address(vaultBaseStorage.swapper), amount: amountIn
        });
        // slither-disable-next-line reentrancy-balance,reentrancy-benign,reentrancy-events
        uint256 amountOut = vaultBaseStorage.swapper.executeSwap(assetIn, amountIn, assetOut, params);

        uint256 valueOut = convertCurrencyToAsset(address(assetOut), amountOut);
        // we only care about tracking apparent losses
        if (valueOut < valueIn) {
            uint96 lossAmount = (valueIn - valueOut).toUint96();
            emit SwapLossRealized(lossAmount);
            require(lossAmount <= maxLossFromSwap, SlippageExceeded());
        }
    }

    function approveIntentsRouter(
        ERC20 token,
        uint256 amount
    ) external whenNotPaused(SWAPS_PAUSED) onlyAllocator {
        require(address(token) != address(this), CannotTransferOutVaultShares());
        SafeTransferLib.safeApprove(address(token), vaultBaseStorage.intentsRouter, amount);
    }

    /// @notice Allows an allocator to perform an external call, as long as neither the `target` nor the 4-byte
    ///         function signature at the start of `callContents` is disallowed
    /// @dev Useful for claiming incentives earned by the vault
    function performRestrictedExternalCall(
        address target,
        bytes calldata callContents
    ) external onlyAllocator returns (bytes memory) {
        require(!vaultBaseStorage.targetDisallowed[target], CallTargetDisallowed());
        require(!vaultBaseStorage.functionSelectorDisallowed[bytes4(callContents[0:4])], CallSignatureDisallowed());
        (bool success, bytes memory returndata) = target.call(callContents);
        require(success, RestrictedCallFailed());
        return returndata;
    }

    ///////////////////////////////////////////////////////////////////////////////////////////////
    //                                    ERC1271                                                //
    ///////////////////////////////////////////////////////////////////////////////////////////////

    /// @notice ERC1271 signature validation. Recovers the signer and checks if they are an allocator.
    /// Meant to be used with intent based swap routers such as CoWSwap.
    /// @param orderDigest The hash that was signed.
    /// @param data The data array of the relevant order params, as well as the signature of the curator.
    /// @return magicValue `0x1626ba7e` if the signer is an allocator, `0xffffffff` otherwise.
    /// @dev This function enforces the same checks as `swap` above, except for checking for the actual swap results and
    /// emitting the `SwapLossRealized` event as that is not possible because this function is called before the swap
    /// happens.
    /// @dev Uses solady's ECDSA::recover function which doesn't check for sig malleability. This is fine as we are
    /// only using the signature to recover the signer, and not as a unique identifier for anything. Also works for the
    /// newer EIP-2098 signatures
    function isValidSignature(
        bytes32 orderDigest,
        bytes calldata data
    ) external view whenNotPaused(SWAPS_PAUSED) returns (bytes4 magicValue) {
        // Decode the curator-signed order params + ECDSA sig from the single `OrderSig` struct.
        // The on-wire layout starts with a 32-byte offset since `OrderSig` is a dynamic struct.
        OrderSig memory orderSig = abi.decode(data, (OrderSig));

        // Check swap params
        _ensureRelevantTokens(ERC20(orderSig.buyToken));
        require(orderSig.receiver == address(this), SwapReceiverNotVault());

        {
            uint256 valueIn = convertCurrencyToAsset(orderSig.sellToken, orderSig.sellAmount);
            uint256 minValueOut = convertCurrencyToAsset(orderSig.buyToken, orderSig.minBuyAmount);
            if (minValueOut < valueIn) {
                require(valueIn - minValueOut <= orderSig.maxLossFromSwap, SlippageExceeded());
            }
        }

        // In the original CoWSwap protocol the order digest is computed from GPv2Order.Data.
        // However in order to facilitate order validation and enforce invariants, the order params are passed as bytes
        // into the argument of this function. To ensure that these order params were not tampered with, the curator
        // will sign on the compoundedOrderDigest instead of the original digest.
        // The following assembly block is equivalent to:
        // keccak256(
        //   abi.encodePacked(orderDigest, sellToken, buyToken, receiver, sellAmount, minBuyAmount, maxLossFromSwap)
        // );
        // Field offsets within the in-memory `OrderSig` are 0x00..0xa0 (head only, ecdsaSig tail unused here).
        bytes32 compoundedOrderDigest;
        assembly ("memory-safe") {
            let ptr := mload(0x40)
            mstore(ptr, orderDigest)
            mstore(add(ptr, 0x20), shl(0x60, mload(orderSig)))
            mstore(add(ptr, 0x34), shl(0x60, mload(add(orderSig, 0x20))))
            mstore(add(ptr, 0x48), shl(0x60, mload(add(orderSig, 0x40))))
            mstore(add(ptr, 0x5c), mload(add(orderSig, 0x60)))
            mstore(add(ptr, 0x7c), mload(add(orderSig, 0x80)))
            mstore(add(ptr, 0x9c), mload(add(orderSig, 0xa0)))
            compoundedOrderDigest := keccak256(ptr, 0xbc)
        }

        address signer = ECDSA.recover(compoundedOrderDigest, orderSig.ecdsaSig);
        if (isAllocator(signer)) {
            return 0x1626ba7e;
        }

        return 0xffffffff;
    }

    /// @inheritdoc IVaultExtension
    function cancelIntentsOrders(
        IGPv2Settlement settler,
        bytes[] calldata orderUids
    ) external onlyAllocator {
        for (uint256 i = 0; i < orderUids.length; ++i) {
            settler.invalidateOrder(orderUids[i]);
        }
    }

    ///////////////////////////////////////////////////////////////////////////////////////////////
    //                              POSITION GETTERS                                             //
    ///////////////////////////////////////////////////////////////////////////////////////////////

    function getPositions() external view returns (bytes32[] memory) {
        return vaultBaseStorage.positions.values();
    }

    function getPositionAt(
        uint256 index
    ) external view returns (bytes32) {
        return vaultBaseStorage.positions.at(index);
    }

    function positionsLength() external view returns (uint256) {
        return vaultBaseStorage.positions.length();
    }

    function hasPosition(
        bytes32 positionKey
    ) external view returns (bool) {
        return vaultBaseStorage.positions.contains(positionKey);
    }

    /// @param positionId The UniV4 position ID of the liquidity position.
    /// @return value The value of this specific position denominated in asset.
    function positionValue(
        bytes32 positionId
    ) public view returns (uint256 value) {
        // slither-disable-next-line unused-return
        (uint160 sqrtPriceX96,,,) = POOL_MANAGER().getSlot0(POOL());
        (uint256 amount0, uint256 amount1) = _getPositionAmounts(positionId, sqrtPriceX96);
        value = convertCurrencyToAsset(Currency.unwrap(CURRENCY0()), amount0)
            + convertCurrencyToAsset(Currency.unwrap(CURRENCY1()), amount1);
    }

    function totalPositionsValue() public view returns (uint256 total) {
        (uint256 amount0, uint256 amount1) = convertLiquidityPositionsToConstituentTokens();
        total = convertCurrencyToAsset(Currency.unwrap(CURRENCY0()), amount0)
            + convertCurrencyToAsset(Currency.unwrap(CURRENCY1()), amount1);
    }

    ///////////////////////////////////////////////////////////////////////////////////////////////
    //                              INTERNAL FUNCTIONS                                           //
    ///////////////////////////////////////////////////////////////////////////////////////////////

    function _ensureRelevantTokens(
        ERC20 token
    ) internal view {
        require(
            token == asset() || address(token) == Currency.unwrap(CURRENCY0())
                || address(token) == Currency.unwrap(CURRENCY1()),
            SwappingToIrrelevantToken()
        );
    }
}
