// SPDX-License-Identifier: MIT
pragma solidity 0.8.14;

import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";

import "./interface/IInvokeVerifier.sol";
import "./interface/IInvokeSubVerifier.sol";
import "./interface/ILiqdRentalVault.sol";

contract InvokeVerifier is IInvokeVerifier, OwnableUpgradeable {
    mapping(address => address) public verifiers;

    function initialize() public initializer {
        __Ownable_init();
    }

    function setVerifier(address target, address verifier) external onlyOwner {
        verifiers[target] = verifier;
    }

    function verify(
        address target,
        uint256 value,
        bytes calldata data,
        address caller,
        address owner,
        ILiqdRentalVault.Rental memory rental
    ) external override returns (bool) {
        return
            IInvokeSubVerifier(verifiers[target]).verify(
                target,
                value,
                data,
                caller,
                owner,
                rental
            );
    }
}
