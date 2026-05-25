// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import { ECDSA } from "@openzeppelin/contracts/utils/cryptography/ECDSA.sol";

import { IDomfiVerifier } from "./interfaces/IDomfiVerifier.sol";
import { IDomfiRegistry } from "./interfaces/IDomfiRegistry.sol";

contract DomfiVerifier is IDomfiVerifier {
    IDomfiRegistry public immutable registry;
    mapping(address signer => bool) public isAuthorizedSigner;

    modifier onlyGov() {
        _onlyGov();
        _;
    }

    function _onlyGov() private view {
        if (msg.sender != registry.gov()) {
            revert NotGov(msg.sender);
        }
    }

    constructor(IDomfiRegistry registryAddress) {
        if (address(registryAddress) == address(0)) revert WrongParams();
        registry = registryAddress;
    }

    function registerAuthorizedSigner(address signerAddress) public onlyGov {
        if (isAuthorizedSigner[signerAddress]) revert AlreadyAuthorizedSigner(signerAddress);
        isAuthorizedSigner[signerAddress] = true;
        emit AuthorizedSignerAdded(signerAddress);
    }

    function registerAuthorizedSignersArray(address[] calldata signerAddresses) external onlyGov {
        for (uint256 i = 0; i < signerAddresses.length; i++) {
            registerAuthorizedSigner(signerAddresses[i]);
        }
    }

    function unregisterAuthorizedSigner(address signerAddress) public onlyGov {
        if (!isAuthorizedSigner[signerAddress]) revert NotAuthorizedSigner(signerAddress);
        // slither-disable-next-line costly-loop
        delete isAuthorizedSigner[signerAddress];
        emit AuthorizedSignerRemoved(signerAddress);
    }

    function unregisterAuthorizedSignersArray(address[] calldata signerAddresses) external onlyGov {
        for (uint256 i = 0; i < signerAddresses.length; i++) {
            unregisterAuthorizedSigner(signerAddresses[i]);
        }
    }

    function verify(bytes calldata signedReport)
        external
        view
        returns (VerifierResponse memory verifierResponse)
    {
        (bytes memory reportData, bytes32 r, bytes32 s, uint8 v) =
            abi.decode(signedReport, (bytes, bytes32, bytes32, uint8));

        bytes32 reportHash = keccak256(reportData);
        address signer = ECDSA.recover(reportHash, v, r, s);

        if (!isAuthorizedSigner[signer]) {
            revert NotAuthorizedSigner(signer);
        }

        verifierResponse = abi.decode(reportData, (VerifierResponse));
    }
}
