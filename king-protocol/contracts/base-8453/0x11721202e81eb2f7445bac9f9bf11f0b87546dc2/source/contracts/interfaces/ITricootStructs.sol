// SPDX-License-Identifier: MIT
pragma solidity =0.8.30;

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

interface ITricootStructs {

    /**
     * @notice Data structure for flash loan callback parameters
     * @param debt The amount of debt to be repaid
     * @param fee The fee associated with the flash loan
     * @param snapshot A unique identifier for the flash loan operation
     * @param user The address of the user initiating the flash loan
     * @param flp The address of the flash loan provider
     * @param asset The address of the asset being borrowed
     * @param swapData Encoded data for executing a swap if needed
     * @dev This struct is used to pass necessary information during the flash loan callback
     *      and must be encoded/decoded appropriately.
     */
    struct CallbackData {
        uint256 debt;
        uint256 fee;
        address flp;
        IERC20 asset;
        bytes swapData;
    }

    /**@notice Processing parameters for internal operations
     * @param tricoot The Tricoot market instance
     * @param user The address of the user performing the operation
     * @param supplyAsset The asset to be supplied as collateral
     * @param supplyAmount The amount of the supply asset
     * @param withdrawAsset The asset to be withdrawn as collateral
     * @param withdrawAmount The amount of the withdraw asset
     * @dev This struct is used internally to pass around operation parameters
     *      and avoid stack depth issues.
     */
    struct ProcessParams {
        IERC20 supplyAsset;
        uint256 supplyAmount;
        IERC20 withdrawAsset;
        uint256 withdrawAmount;
    }

    /**
     * @notice Data structure for registered plugins
     * @param endpoint The address of the plugin contract
     * @param config Encoded configuration specific to the plugin
     * @dev Each plugin is identified by a unique key derived from its endpoint and callback selector
     *      and stored in the plugins mapping in the TricootFoundation contract.
     */
    struct Plugin {
        address endpoint;
        bytes config;
    }

    /// @notice Token to pool mapping entry for UniswapV3Plugin
    struct Pool {
        address token;
        address pool;
    }

    /// @notice Operation modes for the multiplier adapter
    enum Mode {
        MULTIPLY,
        COVER,
        EXCHANGE
    }

    /// @notice Parameters for gasless approvals using EIP-2612 signatures
    struct AllowParams {
        uint256 nonce;
        uint256 expiry;
        bytes32 r;
        bytes32 s;
        uint8 v;
    }
}
