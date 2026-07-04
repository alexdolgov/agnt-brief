// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.17;

import { IFCNProduct } from "../interfaces/IFCNProduct.sol";
import { IFCNVault } from "../interfaces/IFCNVault.sol";
import { FCNVaultMetadata, OptionBarrier, VaultStatus } from "../Structs.sol";

contract FCNProductViewer {
    struct FCNProductInfo {
        address asset;
        string name;
        uint256 managementFeeBps; // basis points
        uint256 yieldFeeBps; // basis points
        bool isDepositQueueOpen;
        uint256 maxDepositAmountLimit;
        uint256 sumVaultUnderlyingAmounts;
        uint256 queuedDepositsTotalAmount;
        uint256 queuedDepositsCount;
    }

    struct FCNVaultAssetInfo {
        address vaultAddress;
        uint256 totalAssets;
        uint256 totalSupply;
        uint256 inputAssets;
        uint256 outputShares;
        uint256 inputShares;
        uint256 outputAssets;
    }

    function getFCNProductInfo(address fcnProductAddress) external view returns (FCNProductInfo memory) {
        IFCNProduct fcnProduct = IFCNProduct(fcnProductAddress);
        return
            FCNProductInfo({
                asset: fcnProduct.asset(),
                name: fcnProduct.name(),
                managementFeeBps: fcnProduct.managementFeeBps(),
                yieldFeeBps: fcnProduct.yieldFeeBps(),
                isDepositQueueOpen: fcnProduct.isDepositQueueOpen(),
                maxDepositAmountLimit: fcnProduct.maxDepositAmountLimit(),
                sumVaultUnderlyingAmounts: fcnProduct.sumVaultUnderlyingAmounts(),
                queuedDepositsTotalAmount: fcnProduct.queuedDepositsTotalAmount(),
                queuedDepositsCount: fcnProduct.queuedDepositsCount()
            });
    }

    function getFCNVaultMetadata(address fcnProductAddress) external view returns (FCNVaultMetadata[] memory) {
        IFCNProduct fcnProduct = IFCNProduct(fcnProductAddress);

        address[] memory vaultAddresses = fcnProduct.getVaultAddresses();

        FCNVaultMetadata[] memory vaultMetadata = new FCNVaultMetadata[](vaultAddresses.length);

        for (uint256 i = 0; i < vaultAddresses.length; i++) {
            vaultMetadata[i] = fcnProduct.getVaultMetadata(vaultAddresses[i]);
        }

        return vaultMetadata;
    }

    function getFCNVaultAssetInfo(
        address fcnProductAddress,
        uint256 inputAssets,
        uint256 inputShares
    ) external view returns (FCNVaultAssetInfo[] memory) {
        IFCNProduct fcnProduct = IFCNProduct(fcnProductAddress);

        address[] memory vaultAddresses = fcnProduct.getVaultAddresses();

        FCNVaultAssetInfo[] memory assetInfo = new FCNVaultAssetInfo[](vaultAddresses.length);

        for (uint256 i = 0; i < vaultAddresses.length; i++) {
            IFCNVault vault = IFCNVault(vaultAddresses[i]);

            assetInfo[i] = FCNVaultAssetInfo({
                vaultAddress: address(vault),
                totalAssets: vault.totalAssets(),
                totalSupply: vault.totalSupply(),
                inputAssets: inputAssets,
                outputShares: vault.convertToShares(inputAssets),
                inputShares: inputShares,
                outputAssets: vault.convertToAssets(inputShares)
            });
        }

        return assetInfo;
    }
}
