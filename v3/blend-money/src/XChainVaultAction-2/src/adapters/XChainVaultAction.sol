// SPDX-License-Identifier: BSL-1.1
pragma solidity ^0.8.24;

import {IXChainAdapterController} from "../interfaces/controllers/IXChainAdapterController.sol";
import {IERC4626} from "@openzeppelin/contracts/interfaces/IERC4626.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {MorphoVaultLib} from "../libraries/MorphoVaultLib.sol";
import {VaultActionController} from "../libraries/VaultActionController.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

/**
 * @notice Configuration for executing a cross-chain action that remains stable across calls
 * @dev Contains immutable references such as the adapter implementing `IXChainAdapterController`.
 */
struct XChainStrategyData {
    /**
     * @notice Adapter that handles cross-chain messaging and execution
     * @dev Must implement IXChainAdapterController. Will receive assets before execute() is called
     */
    IXChainAdapterController adapter;
}

/**
 * @notice Dynamic parameters needed for each cross-chain vault action
 * @dev Contains call-scoped values including withdrawal amounts, price ratio, chain ID and adapter params.
 */
struct XChainExtraData {
    /**
     * @notice Amount of underlying assets to withdraw for the action
     * @dev If contract balance is insufficient, remainder is withdrawn from vault
     */
    uint256 withdrawAmount;
    /**
     * @notice Price ratio used for share/asset conversion
     * @dev Used as slippage protection when withdrawing from the ERC4626 vault.
     */
    uint256 assetPerShares;
    /**
     * @notice The chain ID of the destination chain
     * @dev Used to validate destination chains before attempting cross-chain actions
     */
    uint256 destinationChainId;
    /**
     * @notice Adapter-specific parameters for cross-chain execution
     * @dev Encoding defined by the concrete `IXChainAdapterController` implementation.
     */
    bytes crossChainData;
}

/**
 * @title XChainVaultAction
 * @notice Executes cross-chain actions using assets withdrawn from ERC4626 vaults.
 * @dev Intended to be invoked via delegatecall by a controller. Integrates with
 *      `IVaultActionController` for strategy management and `IXChainAdapterController`
 *      for cross-chain messaging. Follows CEI and transfers assets to the adapter
 *      before invoking it. All failures are surfaced via custom errors on dependencies.
 * @author Variable Logic Labs, Corp (hello@blend.money)
 * @custom:security-contact security@blend.money
 */
contract XChainVaultAction is VaultActionController {
    using SafeERC20 for IERC20;

    /*//////////////////////////////////////////////////////////////
                                ERRORS
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Thrown when the destination chain ID is invalid
     */
    error InvalidDestinationChain();

    /*//////////////////////////////////////////////////////////////
                                INTERNAL FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Execute a cross-chain action by withdrawing assets and forwarding to the adapter.
     * @dev CEI: validate inputs, withdraw missing assets from the vault using `MorphoVaultLib`,
     *      transfer the total `withdrawAmount` to the adapter, then call `adapter.execute`.
     *      Uses `assetPerShares` as slippage protection when withdrawing from the vault.
     * @param vault The ERC4626 vault to withdraw underlying assets from
     * @param strategyData ABI-encoded `XChainStrategyData` with the adapter reference
     * @param extraData ABI-encoded `XChainExtraData` with amounts, price ratio, chain ID, and adapter params
     * @custom:reverts InvalidDestinationChain when `destinationChainId` mismatches current chain
     * @custom:reverts InvalidDestinationChain when the adapter does not support the destination chain
     */
    function _execute(IERC4626 vault, bytes calldata strategyData, bytes calldata extraData) internal override {
        XChainStrategyData memory xChainStrategyData = abi.decode(strategyData, (XChainStrategyData));
        XChainExtraData memory xChainExtraData = abi.decode(extraData, (XChainExtraData));

        require(xChainExtraData.destinationChainId != block.chainid, InvalidDestinationChain());
        require(
            xChainStrategyData.adapter.isChainSupported(xChainExtraData.destinationChainId), InvalidDestinationChain()
        );

        IERC20 underlyingAsset = IERC20(vault.asset());
        uint256 currentBalance = underlyingAsset.balanceOf(address(this));
        if (currentBalance < xChainExtraData.withdrawAmount) {
            MorphoVaultLib._withdrawAssets(
                vault, xChainExtraData.withdrawAmount - currentBalance, xChainExtraData.assetPerShares
            );
        }
        IERC20(underlyingAsset).safeTransfer(address(xChainStrategyData.adapter), xChainExtraData.withdrawAmount);
        xChainStrategyData.adapter.execute(
            xChainExtraData.destinationChainId,
            address(this),
            address(this),
            underlyingAsset,
            xChainExtraData.crossChainData
        );
    }
}
