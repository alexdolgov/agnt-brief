// SPDX-License-Identifier: MIT
pragma solidity 0.8.14;

import "../interface/IInvokeSubVerifier.sol";
import "../interface/ILiqdRentalVault.sol";
import "../interface/IApeCoinStaking.sol";
import "../library/InvokeVerifierLibrary.sol";

contract ApeCoinStakingVerifier is IInvokeSubVerifier {
    using InvokeVerifierLibrary for bytes;

    address public apeCoinStaking;

    constructor(address _apeCoinStaking) {
        apeCoinStaking = _apeCoinStaking;
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
        if (target != apeCoinStaking) return false;

        bytes4 method = data.getMethod();

        bool isRentalActive = rental.expireAt > block.timestamp;
        bool isWalletOwner = caller == owner;

        if (method == IApeCoinStaking.depositApeCoin.selector) {
            (, address recipient) = abi.decode(
                data.getParams(),
                (uint256, address)
            );
            return isWalletOwner && recipient == rental.wallet;
        } else if (method == IApeCoinStaking.depositSelfApeCoin.selector) {
            return isWalletOwner;
        } else if (method == IApeCoinStaking.depositBAYC.selector) {
            return isRentalActive && isWalletOwner;
        } else if (method == IApeCoinStaking.depositMAYC.selector) {
            return isRentalActive && isWalletOwner;
        } else if (method == IApeCoinStaking.depositBAKC.selector) {
            return isRentalActive && isWalletOwner;
        } else if (method == IApeCoinStaking.claimApeCoin.selector) {
            address recipient = abi.decode(data.getParams(), (address));
            return recipient == rental.wallet;
        } else if (method == IApeCoinStaking.claimSelfApeCoin.selector) {
            return true;
        } else if (method == IApeCoinStaking.claimBAYC.selector) {
            (, address recipient) = abi.decode(
                data.getParams(),
                (uint256[], address)
            );
            return recipient == rental.wallet;
        } else if (method == IApeCoinStaking.claimSelfBAYC.selector) {
            return true;
        } else if (method == IApeCoinStaking.claimMAYC.selector) {
            (, address recipient) = abi.decode(
                data.getParams(),
                (uint256[], address)
            );
            return recipient == rental.wallet;
        } else if (method == IApeCoinStaking.claimSelfMAYC.selector) {
            return true;
        } else if (method == IApeCoinStaking.claimBAKC.selector) {
            (, , address recipient) = abi.decode(
                data.getParams(),
                (IApeCoinStaking.PairNft[], IApeCoinStaking.PairNft[], address)
            );
            return recipient == rental.wallet;
        } else if (method == IApeCoinStaking.claimSelfBAKC.selector) {
            return true;
        } else if (method == IApeCoinStaking.withdrawApeCoin.selector) {
            (, address recipient) = abi.decode(
                data.getParams(),
                (uint256, address)
            );
            return isWalletOwner && recipient == rental.wallet;
        } else if (method == IApeCoinStaking.withdrawSelfApeCoin.selector) {
            return isWalletOwner;
        } else if (method == IApeCoinStaking.withdrawBAYC.selector) {
            (, address recipient) = abi.decode(
                data.getParams(),
                (IApeCoinStaking.SingleNft[], address)
            );
            return
                recipient == rental.wallet &&
                (isWalletOwner || !isRentalActive);
        } else if (method == IApeCoinStaking.withdrawSelfBAYC.selector) {
            return isWalletOwner || !isRentalActive;
        } else if (method == IApeCoinStaking.withdrawMAYC.selector) {
            (, address recipient) = abi.decode(
                data.getParams(),
                (IApeCoinStaking.SingleNft[], address)
            );
            return
                recipient == rental.wallet &&
                (isWalletOwner || !isRentalActive);
        } else if (method == IApeCoinStaking.withdrawSelfMAYC.selector) {
            return isWalletOwner || !isRentalActive;
        } else if (method == IApeCoinStaking.withdrawBAKC.selector) {
            return isWalletOwner || !isRentalActive;
        }
        return false;
    }
}
