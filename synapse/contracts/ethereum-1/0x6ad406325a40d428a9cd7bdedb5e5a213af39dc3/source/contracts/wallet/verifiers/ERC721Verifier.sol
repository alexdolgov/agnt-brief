// SPDX-License-Identifier: MIT
pragma solidity 0.8.14;

import "@openzeppelin/contracts/access/Ownable.sol";

import "../interface/IInvokeSubVerifier.sol";
import "../interface/ILiqdRentalVault.sol";
import "../library/InvokeVerifierLibrary.sol";

contract ERC721Verifier is IInvokeSubVerifier, Ownable {
    using InvokeVerifierLibrary for bytes;

    mapping(address => bool) public approvedContracts;

    function setApprovedContracts(address[] memory targets, bool approved)
        external
        onlyOwner
    {
        for (uint256 i = 0; i < targets.length; ++i) {
            approvedContracts[targets[i]] = approved;
        }
    }

    function verify(
        address target,
        uint256 value,
        bytes calldata data,
        address caller,
        address owner,
        ILiqdRentalVault.Rental memory rental
    ) external view override returns (bool) {
        if (value != 0) return false;

        bool isRentalActive = rental.expireAt > block.timestamp;
        bool isWalletOwner = caller == owner;

        if (rental.collection == target) {
            // target is rented collection
            if (isRentalActive && isWalletOwner) {
                // active rental & called from wallet owner

                bytes4 method = data.getMethod();
                if (method == IERC721.approve.selector) {
                    (address to, ) = abi.decode(
                        data.getParams(),
                        (address, uint256)
                    );

                    return approvedContracts[to]; // // approve target is verified
                }
                if (method == IERC721.setApprovalForAll.selector) {
                    (address to, ) = abi.decode(
                        data.getParams(),
                        (address, bool)
                    );

                    return approvedContracts[to]; // // approve target is verified
                }
            }
            return false;
        }

        // wallet owner has full manage of other collections
        return isWalletOwner;
    }
}
