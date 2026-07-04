// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "../../libraries/FeesLib.sol";
import "../../interfaces/external/IWETH.sol";

import "./DelegateModule.sol";

address constant ETH = 0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE;

contract FeesModule is DelegateModule {
    FeesLib public immutable feesLib;
    address public immutable wrappedNativeAddress;

    constructor(FeesLib feesLib_, address wrappedNativeAddress_) {
        feesLib = feesLib_;
        wrappedNativeAddress = wrappedNativeAddress_;
    }

    /// INTERNALS ///

    function _chargeFees(
        bytes32 feeHash,
        address tokenToCharge,
        uint256 baseAmount
    ) internal returns (uint256 remainingAmount) {
        (remainingAmount) = abi.decode(
            _delegateTo(
                address(feesLib),
                abi.encodeCall(
                    FeesLib.chargeFees, (feeHash, tokenToCharge, baseAmount)
                )
            ),
            (uint256)
        );
    }

    function _sickle_charge_fees(
        address strategy,
        bytes4 feeDescriptor,
        address tokenOut
    ) external {
        IWETH9 weth = IWETH9(wrappedNativeAddress);

        // charge fees
        uint256 feeBasis;
        if (tokenOut == ETH) {
            weth.withdraw(weth.balanceOf(address(this)));
            feeBasis = address(this).balance;
        } else {
            feeBasis = IERC20(tokenOut).balanceOf(address(this));
        }

        _chargeFees(
            keccak256(abi.encodePacked(strategy, feeDescriptor)),
            tokenOut,
            feeBasis
        );
    }

    function _sickle_chargeTransactionCost(
        address recipient,
        address wrappedNative,
        uint256 amountToCharge
    ) external {
        _delegateTo(
            address(feesLib),
            abi.encodeCall(
                FeesLib.chargeTransactionCost,
                (recipient, wrappedNative, amountToCharge)
            )
        );
    }
}
