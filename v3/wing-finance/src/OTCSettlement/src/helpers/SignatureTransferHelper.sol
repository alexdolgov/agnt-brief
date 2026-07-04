// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import {IPermit2, ISignatureTransfer} from "permit2/src/interfaces/IPermit2.sol";

library SignatureTransferHelper {
    function permitTransferFromHelper(
        IPermit2 permit2,
        address token,
        address from,
        address to,
        uint256 amount,
        bytes memory signature,
        uint256 nonce,
        uint256 deadline
    ) internal {
        ISignatureTransfer.TokenPermissions memory tokenPermission =
            ISignatureTransfer.TokenPermissions({token: token, amount: amount});
        ISignatureTransfer.PermitTransferFrom memory permitTransferFrom =
            ISignatureTransfer.PermitTransferFrom({permitted: tokenPermission, nonce: nonce, deadline: deadline});
        permit2.permitTransferFrom(
            permitTransferFrom,
            ISignatureTransfer.SignatureTransferDetails({to: to, requestedAmount: amount}),
            from,
            signature
        );
    }

    function permitWitnessTransferFromHelper(
        IPermit2 permit2,
        address token,
        address from,
        address to,
        uint256 amount,
        bytes memory signature,
        uint256 nonce,
        uint256 deadline,
        bytes32 witness,
        string memory witnessTypeString
    ) internal {
        ISignatureTransfer.TokenPermissions memory tokenPermission =
            ISignatureTransfer.TokenPermissions({token: token, amount: amount});
        ISignatureTransfer.PermitTransferFrom memory permitTransferFrom =
            ISignatureTransfer.PermitTransferFrom({permitted: tokenPermission, nonce: nonce, deadline: deadline});
        permit2.permitWitnessTransferFrom(
            permitTransferFrom,
            ISignatureTransfer.SignatureTransferDetails({to: to, requestedAmount: amount}),
            from,
            witness,
            witnessTypeString,
            signature
        );
    }
}
