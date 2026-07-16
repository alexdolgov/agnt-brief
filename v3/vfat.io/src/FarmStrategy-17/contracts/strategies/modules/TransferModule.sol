// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "./AccessControlModule.sol";
import "./FeesModule.sol";
import "./MsgValueModule.sol";

contract TransferModule is AccessControlModule, FeesModule, MsgValueModule {
    constructor(
        SickleFactory factory_,
        FeesLib feesLib_,
        address wrappedNativeAddress_
    )
        FeesModule(feesLib_, wrappedNativeAddress_)
        AccessControlModule(factory_)
    { }

    /// @dev Sweeps all the balance of {tokens} and/or ETH from the contract and
    /// send them to {recipient}
    /// @param tokens An array of token addresses
    function _sickle_transfer_to_user(address[] memory tokens)
        external
        payable
        onlyRegisteredSickle
    {
        address recipient = Sickle(payable(address(this))).owner();
        for (uint256 i = 0; i != tokens.length; i++) {
            if (tokens[i] == address(0)) continue;
            if (tokens[i] == ETH) {
                uint256 wethBalance =
                    IWETH9(wrappedNativeAddress).balanceOf(address(this));
                if (wethBalance > 0) {
                    IWETH9(wrappedNativeAddress).withdraw(wethBalance);
                }
                SafeTransferLib.safeTransferETH(
                    recipient, address(this).balance
                );
            } else if (IERC20(tokens[i]).balanceOf(address(this)) > 0) {
                if (tokens[i] == wrappedNativeAddress) {
                    IWETH9(wrappedNativeAddress).withdraw(
                        IWETH9(wrappedNativeAddress).balanceOf(address(this))
                    );
                    SafeTransferLib.safeTransferETH(
                        recipient, address(this).balance
                    );
                } else {
                    SafeTransferLib.safeTransfer(
                        tokens[i],
                        recipient,
                        IERC20(tokens[i]).balanceOf(address(this))
                    );
                }
            }
        }
    }

    /// @dev Transfers {amountIn} of {tokenIn} from the user to the Sickle
    /// contract, charging the fees and converting the amount to WETH if
    /// necessary
    /// @param tokenIn Address of the token to transfer
    /// @param amountIn Amount of {tokenIn} to transfer
    /// @param strategy Address of the caller strategy
    /// @param feeSelector Selector of the caller function
    function _sickle_transfer_from_user(
        address tokenIn,
        uint256 amountIn,
        address strategy,
        bytes4 feeSelector
    ) external payable onlyRegisteredSickle {
        _checkMsgValue(amountIn, tokenIn == ETH);

        if (tokenIn != ETH) {
            SafeTransferLib.safeTransferFrom(
                tokenIn,
                Sickle(payable(address(this))).owner(),
                address(this),
                amountIn
            );
        }

        amountIn = _chargeFees(
            keccak256(abi.encodePacked(strategy, feeSelector)),
            tokenIn,
            amountIn
        );

        if (tokenIn == ETH) {
            IWETH9 weth = IWETH9(wrappedNativeAddress);
            weth.deposit{ value: amountIn }();
        }
    }
}
