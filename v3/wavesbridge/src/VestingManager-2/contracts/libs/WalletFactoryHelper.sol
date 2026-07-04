// SPDX-License-Identifier: UNLICENSED
// Copyright (c) Eywa.Fi, 2021-2023 - all rights reserved
pragma solidity ^0.8.17;

import "../interfaces/IWalletFactory.sol";
import { IVestingWallet } from "../interfaces/IManagedVestingWallet.sol";


library WalletFactoryHelper {

    /**
     * @dev Returns wallet for given beneficiary, vestingManager, type and index.
     *
     * If type 'Transferable' or 'TransferableByApprove' it also iterate index while beneficiary not the same.
     *
     * @param walletFactory The wallet factory;
     * @param beneficiary The beneficiary who claim vesting wallet;
     * @param vestingManager The vesting manager.
     */
    function getWallet(
        address walletFactory,
        address beneficiary,
        address vestingManager
    ) internal returns (address wallet) {
        IWalletFactory walletFactoryImpl = IWalletFactory(walletFactory);
        for (uint256 i; i < 255; ++i) {
            wallet = walletFactoryImpl.walletFor(beneficiary, vestingManager, i, true);
            if (wallet == address(0)) {
                wallet = walletFactoryImpl.createWallet(beneficiary, address(this), i);
                return wallet;
            } else {
                IVestingWallet walletImpl = IVestingWallet(wallet);
                if (walletImpl.beneficiary() == beneficiary) {
                    return wallet;
                } // else - increases i and tries to check next wallet
            }
        }
        revert("WalletFactoryHelper: can't return wallet");
    }

    /**
     * @dev Returns wallet for given beneficiary, vestingManager, type and index.
     * 
     * Always return new wallet
     * 
     * @param walletFactory The wallet factory;
     * @param beneficiary The beneficiary who claim vesting wallet;
     * @param vestingManager The vesting manager.
     */
    function getNewWallet(
        address walletFactory,
        address beneficiary,
        address vestingManager
    ) internal returns (address wallet) {
        IWalletFactory walletFactoryImpl = IWalletFactory(walletFactory);
        for (uint256 i; i < 255; ++i) {
            wallet = walletFactoryImpl.walletFor(beneficiary, vestingManager, i, true);
            if (wallet == address(0)) {
                wallet = walletFactoryImpl.createWallet(beneficiary, address(this), i);
                return wallet;
            } 
        }
        revert("WalletFactoryHelper: can't create wallet");
    }

    /**
     * @dev Returns true, if verifiableWallet was created by walletFactory.
     *
     * If type 'Transferable' or 'TransferableByApprove' it also iterate index while beneficiary not the same.
     *
     * @param walletFactory The wallet factory;
     * @param beneficiary The beneficiary who claim vesting wallet;
     * @param vestingManager The vesting manager;
     * @param verifiableWallet The wallet address for verify.
     */
    function verifyWallet(
        address walletFactory,
        address beneficiary,
        address vestingManager,
        address verifiableWallet
    ) view internal  returns (bool status) {

        IWalletFactory walletFactoryImpl = IWalletFactory(walletFactory);
        address wallet;
        for (uint256 i; i < 255; ++i) {
            wallet = walletFactoryImpl.walletFor(beneficiary, vestingManager, i, true);
            if (wallet == verifiableWallet) {
                return true;
            } else if (wallet == address(0)) {
                return false;
            }
        }
        revert("WalletFactoryHelper: can't verify wallet");
    }
}