// SPDX-License-Identifier: MIT
pragma solidity 0.8.14;

import "../interface/IInvokeSubVerifier.sol";
import "../interface/ILiqdRentalVault.sol";
import "../interface/IParaSpaceProxy.sol";
import "../library/InvokeVerifierLibrary.sol";

contract ParaSpaceProxyVerifier is IInvokeSubVerifier {
    using InvokeVerifierLibrary for bytes;

    address public paraspaceProxy;

    constructor(address _paraspaceProxy) {
        paraspaceProxy = _paraspaceProxy;
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
        if (target != paraspaceProxy) return false;

        bytes4 method = data.getMethod();

        bool isRentalActive = rental.expireAt > block.timestamp;
        bool isWalletOwner = caller == owner;

        if (method == IParaSpaceProxy.supply.selector) {
            (, , address recipient, ) = abi.decode(
                data.getParams(),
                (address, uint256, address, uint16)
            );
            return
                isRentalActive && isWalletOwner && recipient == rental.wallet;
        } else if (method == IParaSpaceProxy.supplyERC721.selector) {
            (, , address recipient, ) = abi.decode(
                data.getParams(),
                (address, IParaSpaceProxy.ERC721SupplyParams[], address, uint16)
            );
            return
                isRentalActive && isWalletOwner && recipient == rental.wallet;
        } else if (method == IParaSpaceProxy.supplyWithPermit.selector) {
            (, , address recipient, , , , , ) = abi.decode(
                data.getParams(),
                (
                    address,
                    uint256,
                    address,
                    uint16,
                    uint256,
                    uint8,
                    bytes32,
                    bytes32
                )
            );
            return
                isRentalActive && isWalletOwner && recipient == rental.wallet;
        } else if (method == IParaSpaceProxy.withdraw.selector) {
            (, , address recipient) = abi.decode(
                data.getParams(),
                (address, uint256, address)
            );
            return
                recipient == rental.wallet &&
                (isWalletOwner || !isRentalActive);
        } else if (method == IParaSpaceProxy.withdrawERC721.selector) {
            (, , address recipient) = abi.decode(
                data.getParams(),
                (address, uint256[], address)
            );
            return
                recipient == rental.wallet &&
                (isWalletOwner || !isRentalActive);
        } else if (method == IParaSpaceProxy.borrowApeAndStake.selector) {
            (IParaSpaceProxy.StakingInfo memory stakingInfo, , ) = abi.decode(
                data.getParams(),
                (
                    IParaSpaceProxy.StakingInfo,
                    IParaSpaceProxy.SingleNft[],
                    IParaSpaceProxy.PairNftDepositWithAmount[]
                )
            );
            return
                isRentalActive &&
                isWalletOwner &&
                stakingInfo.borrowAmount == 0;
        } else if (method == IParaSpaceProxy.withdrawApeCoin.selector) {
            return (isWalletOwner || !isRentalActive);
        } else if (method == IParaSpaceProxy.claimApeCoin.selector) {
            return true;
        } else if (method == IParaSpaceProxy.withdrawBAKC.selector) {
            return (isWalletOwner || !isRentalActive);
        } else if (method == IParaSpaceProxy.claimBAKC.selector) {
            return true;
        }
        return false;
    }
}
