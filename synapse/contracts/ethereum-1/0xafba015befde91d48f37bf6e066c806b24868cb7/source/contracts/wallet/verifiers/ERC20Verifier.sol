// SPDX-License-Identifier: MIT
pragma solidity 0.8.14;

import "../interface/IInvokeSubVerifier.sol";
import "../interface/ILiqdRentalVault.sol";

contract ERC20Verifier is IInvokeSubVerifier {
    function verify(
        address, // target,
        uint256 value,
        bytes calldata, // data,
        address caller,
        address owner,
        ILiqdRentalVault.Rental memory // rental
    ) external pure override returns (bool) {
        if (value != 0) return false;
        // wallet owner has full manage of ERC20 tokens
        return caller == owner;
    }
}
