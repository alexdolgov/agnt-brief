// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.28;

import {Address} from "@openzeppelin/contracts/utils/Address.sol";
import {RouterModuleBase} from "src/router/modules/RouterModuleBase.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

/// @title RouterModuleEnso
/// @notice A minimalist module that allows for the zapping of tokens using the Enso router
contract RouterModuleEnso is RouterModuleBase {
    using SafeERC20 for IERC20;

    string public constant name = type(RouterModuleEnso).name;
    string public constant version = "1.2.0";
    address public immutable ENSO;

    error InvalidAddress();

    constructor(address ensoRouter) {
        require(ensoRouter != address(0), InvalidAddress());
        ENSO = ensoRouter;
    }

    /// @notice Zaps from one token to another using the Enso router
    /// @param tokenIn The address of the token to zap from
    /// @param amountIn The amount of tokenIn to zap
    /// @param value The amount of native token to send to the Enso router. Filled in the case of the tokenIn is the native token.
    /// @param data The data to call the Enso router with. This is the data returned by the Enso API.
    /// @return response The response from the Enso router
    /// @dev The router must own the tokens to zap when this function is called.
    ///      For doing so, the caller must have signed a permit2 authorization and used it by
    ///      calling the function `transferFromPermit2` of the RouterModuleERC20Manager module
    ///      in the **SAME TRANSACTION**. The composition ability of the router allows for this.
    function zap(address tokenIn, uint256 amountIn, uint256 value, bytes calldata data)
        external
        payable
        onlyDelegateCall
        returns (bytes memory response)
    {
        // value == 0 means the tokenIn isn't the native token
        if (value == 0) IERC20(tokenIn).forceApprove(ENSO, amountIn);
        response = Address.functionCallWithValue(ENSO, data, value);
    }
}
