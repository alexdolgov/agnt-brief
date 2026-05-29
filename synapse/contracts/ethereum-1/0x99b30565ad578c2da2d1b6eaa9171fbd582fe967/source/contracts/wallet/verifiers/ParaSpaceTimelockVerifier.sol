// SPDX-License-Identifier: MIT
pragma solidity 0.8.14;

import "../interface/IInvokeSubVerifier.sol";
import "../interface/ILiqdRentalVault.sol";
import "../interface/IParaSpaceTimelock.sol";
import "../library/InvokeVerifierLibrary.sol";

contract ParaSpaceTimelockVerifier is IInvokeSubVerifier {
    using InvokeVerifierLibrary for bytes;

    constructor() {}

    function verify(
        address, // target,
        uint256 value,
        bytes calldata data,
        address, // caller,
        address, // owner,
        ILiqdRentalVault.Rental memory // rental
    ) external pure override returns (bool) {
        if (value != 0) return false;

        bytes4 method = data.getMethod();
        if (
            method == IParaSpaceTimelock.claim.selector ||
            method == IParaSpaceTimelock.claimETH.selector ||
            method == IParaSpaceTimelock.claimMoonBirds.selector ||
            method == IParaSpaceTimelock.claimPunk.selector
        ) {
            return true;
        }
        return false;
    }
}
