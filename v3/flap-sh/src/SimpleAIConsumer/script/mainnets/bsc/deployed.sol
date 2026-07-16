// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

import {IPortal} from "src/interfaces/IPortal.sol";
import {ProxyAdmin} from "@openzeppelin/proxy/transparent/ProxyAdmin.sol";
import {ClonesUpgradeable} from "@openzeppelin-contracts-upgradeable/proxy/ClonesUpgradeable.sol";
import {VaultPortal} from "src/VaultPortal.sol";

/// @notice A Deployed Contract
contract Deployed {
    //
    //  The Portal on BSC mainnet
    //
    IPortal internal constant portal = IPortal(0xe2cE6ab80874Fa9Fa2aAE65D277Dd6B8e65C9De0);

    // The proxy admin for Staking
    address internal constant tokenImpl = 0x524EA1De5929d5d0165E425Bfce8D9750d65C6c7;
    address internal constant tokenImplV2 = address(0x8B4329947e34B6d56D71A3385caC122BaDe7d78D);

    // Tax token related

    // v1 tax token
    address internal constant taxTokenImpl = 0x29e6383F0ce68507b5A72a53c2B118a118332aA8;
    address internal constant taxSplitter = 0x988Eb559dFbDE2Cc25e7C33c56153aC13a036F24;

    // tax token v2 related
    address internal constant tokenImplTaxedV2 = 0xae562c6A05b798499507c6276C6Ed796027807BA;
    address internal constant taxProcessorImpl = 0x6b3B28b98DFac7DA169c6C5f51bF960a254861E9;
    address internal constant dividendImpl = 0x4cC79dFc70F6EbCdd22E074C66De6a640aFAFC16;

    // misc
    address internal constant taxSplitterHelper = 0x3044435AdDeff858e7E760474e30AC982C6fb9cA;
    address internal constant flapBlackHole = 0x00576E4Fb32296Cd973A0d413D0379609400DEad;

    //
    //  VaultPortal related (to be filled after deployment)
    //
    // proxy admin for VaultPortal
    ProxyAdmin internal constant proxyAdmin = ProxyAdmin(0xc8215c1f9c8aAEac02dbEb7fb5D14e5BB77D607f); // Update this after deployment

    // tmp proxy admin for initial deployment, then transfer the admin of its managed proxy to the above proxyAdmin 
    ProxyAdmin internal constant tmpProxyAdmin = ProxyAdmin(0x830C709805612ab460C3C1e249cfC058CB049d95); // Update this after deployment

    // Vault Portal
    VaultPortal internal constant vaultPortal = VaultPortal(payable(0x90497450f2a706f1951b5bdda52B4E5d16f34C06)); // Update this after deployment

    // Flap General Oracle
    address internal constant flapOracle = 0x6C88a672086f4A5dD8D73A93193c78a68cE4bDbe;

    // FlapAIProvider (to be filled after deployment)
    address internal constant flapAIProvider = 0xaEe3a7Ca6fe6b53f6c32a3e8407eC5A9dF8B7E39;

    // FlapGuardian
    address internal constant flapGuardian = 0x9e27098dcD8844bcc6287a557E0b4D09C86B8a4b;

    // Split Vault
    // SplitVaultFactory (to be filled after deployment)
    address internal constant splitVaultFactory = 0xfab75Dc774cB9B38b91749B8833360B46a52345F;

    // FlapXVault related

    // Current KMS key address for X Oracle
    address internal constant X_ORACLE_KMS_KEY_ADDRESS = 0x8EE6732Ada452ff14Ee42C952B6e149A00604734;
    address internal constant flapXVaultFactory = 0x025549F52B03cF36f9e1a337c02d3AA7Af66ab32;

    // Shared helper

    // SnowBallHelper (to be filled after deployment)
    address internal constant snowBallHelperAddr = 0x726FA88B0949a9122f75CD284300d8276dea363F;
    address internal constant snowBallFactoryAddr = 0x036BEAA74113B7A03Bf9Fe09812fB7C9De9198b4;

    // FLAP multisig addresses
    address internal constant FLAP_MULTISIG_MKT = 0xCD561eB3828232d3eC174Fb5e321586209FBF535;
    address internal constant FLAP_TREASURY = 0x8a08D98CBB218fceB318Ecf3aBc1BA43D8A7aB0E;
    address internal constant FLAP_UPGRADER = 0xF5b72a706fE0c5B2D4f52238BfCe5cF7F068C9eE;
}
