// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "solady/src/utils/SafeTransferLib.sol";
import "./interfaces/IWETH.sol";
import "./interfaces/IRouter.sol";

using SafeERC20 for IERC20;

/// @title Router
/// @notice Executes token operations during deposit unlocks
/// @dev The Router temporarily holds tokens transferred from Depository and executes arbitrary
/// external calls. Key features:
/// - Lazy approval: Only approves tokens when allowance is insufficient
/// - Amount patching: Can dynamically insert amounts into calldata at runtime
/// - Native transfers: Can unwrap WETH and send native ETH
///
/// Security: This contract is stateless and should only hold tokens transiently during unlock operations.
contract Router is IRouter {
    /// @notice Emitted when native ETH is transferred after unwrapping WETH
    /// @param to The recipient address
    /// @param amount The amount of ETH transferred
    event TransferNative(address to, uint256 amount);

    /**
     * @notice Approves token, patches-in amount into calldata and makes an external call on the receiveSide. Reverts if call reverts.
     * @dev called by Depository in withdraw() method
     * @param token address of token
     * @param amount amount of _token
     * @param receiveSide contract on which call will take place
     * @param _calldata encoded method to call
     * @param offset offset to patch the amount to calldata
     */
    function externalCall(
        address token,
        uint256 amount,
        address receiveSide,
        bytes calldata _calldata,
        uint256 offset
    ) external {
        (bool success,) = _externalCall(token, amount, receiveSide, _calldata, offset);
        if (!success) {
            // Revert with the same reason.
            assembly {
                returndatacopy(0, 0, returndatasize())
                revert(0, returndatasize())
            }
        }
    }

    /// @dev Allows receiving native ETH (required for WETH unwrapping)
    receive() external payable {}

    /// @inheritdoc IRouter
    function transferNative(IWETH token, address to, uint256 amount) external {
        emit TransferNative(to, amount);
        token.withdraw(amount);
        SafeTransferLib.safeTransferETH(to, amount);
    }

    /**
     * @notice Implements call of some operation with token
     * @dev Internal function used in metaMintSwap() and externalCall()
     * @param token token address
     * @param amount amount of _token
     * @param receiveSide address of contract on which method will be called
     * @param _calldata encoded method call
     * @param offset shift to patch the _amount to calldata
     */
    function _externalCall(
        address token,
        uint256 amount,
        address receiveSide,
        bytes memory _calldata,
        uint256 offset
    ) internal returns (bool success, bytes memory data) {
        _lazyApprove(IERC20(token), receiveSide, amount);

        if(offset != 0) {
            assembly {
                mstore(add(_calldata, offset), amount)
            }
        }

        {
            uint256 size;
            address toCheck = receiveSide;

            assembly {
                size := extcodesize(toCheck)
            }
            require(size != 0, CallToNonContract(receiveSide));
        }

        (success, data) = receiveSide.call(_calldata);
    }

    /**
     * @notice Implements approve
     * @dev Internal function used to approve the token spending
     * @param token token address
     * @param to address to approve
     * @param amount amount for which approve will be given
     */
    function _lazyApprove(IERC20 token, address to, uint256 amount) internal {
        if (token.allowance(address(this), to) < amount) {
            token.forceApprove(to, type(uint256).max);
        }
    }
}
