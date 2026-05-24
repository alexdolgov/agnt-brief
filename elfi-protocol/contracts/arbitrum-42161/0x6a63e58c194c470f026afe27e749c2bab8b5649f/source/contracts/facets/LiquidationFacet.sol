// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "../interfaces/ILiquidation.sol";
import "../process/LiquidationProcess.sol";
import "../process/GasProcess.sol";
import "../process/AssetsProcess.sol";
import "../storage/InsuranceFund.sol";
import "../storage/RoleAccessControl.sol";
import "../storage/CommonData.sol";
import "../utils/ReentrancyGuard.sol";

contract LiquidationFacet is ILiquidation, ReentrancyGuard {
    using InsuranceFund for InsuranceFund.Props;
    using CommonData for CommonData.Props;

    function liquidationPosition(bytes32 positionKey, OracleProcess.OracleParam[] calldata oracles) external override nonReentrant {
        RoleAccessControl.checkRole(RoleAccessControl.ROLE_KEEPER);
        uint256 startGas = gasleft();
        OracleProcess.setOraclePrice(oracles);
        LiquidationProcess.liquidationIsolatePosition(positionKey);
        OracleProcess.clearOraclePrice();
        GasProcess.addLossExecutionFee(startGas);
    }

    function liquidationAccount(address account, OracleProcess.OracleParam[] calldata oracles) external override nonReentrant {
        RoleAccessControl.checkRole(RoleAccessControl.ROLE_KEEPER);
        uint256 startGas = gasleft();
        OracleProcess.setOraclePrice(oracles);
        LiquidationProcess.liquidationCrossPositions(account);
        OracleProcess.clearOraclePrice();
        GasProcess.addLossExecutionFee(startGas);
    }

    function batchLiquidationPositions(
        bytes32[] memory positionKeys,
        OracleProcess.OracleParam[] calldata oracles
    ) external override nonReentrant {
        RoleAccessControl.checkRole(RoleAccessControl.ROLE_KEEPER);
        uint256 startGas = gasleft();
        OracleProcess.setOraclePrice(oracles);
        for (uint256 i; i < positionKeys.length; i++) {
            LiquidationProcess.liquidationIsolatePosition(positionKeys[i]);
        }
        OracleProcess.clearOraclePrice();
        GasProcess.addLossExecutionFee(startGas);
    }

    function batchLiquidationAccounts(
        address[] memory accounts,
        OracleProcess.OracleParam[] calldata oracles
    ) external override nonReentrant {
        RoleAccessControl.checkRole(RoleAccessControl.ROLE_KEEPER);
        uint256 startGas = gasleft();
        OracleProcess.setOraclePrice(oracles);
        for (uint256 i; i < accounts.length; i++) {
            LiquidationProcess.liquidationCrossPositions(accounts[i]);
        }
        OracleProcess.clearOraclePrice();
        GasProcess.addLossExecutionFee(startGas);
    }

    function callLiabilityClean(uint256 cleanId) external override nonReentrant {
        LiabilityClean.LiabilityCleanInfo memory cleanInfo = LiabilityClean.getCleanInfo(cleanId);
        if (cleanInfo.account == address(0)) {
            revert Errors.CallLiabilityCleanNotExists(cleanId);
        }
        for (uint256 i; i < cleanInfo.liabilityTokens.length; i++) {
            AssetsProcess.depositToVault(
                AssetsProcess.DepositParams(
                    msg.sender,
                    cleanInfo.liabilityTokens[i],
                    cleanInfo.liabilities[i],
                    AssetsProcess.DepositFrom.MANUAL,
                    false
                )
            );
            CommonData.load().subTradeTokenLiability(cleanInfo.liabilityTokens[i], cleanInfo.liabilities[i]);
        }
        for (uint256 i; i < cleanInfo.collaterals.length; i++) {
            VaultProcess.transferOut(
                IVault(address(this)).getPortfolioVaultAddress(),
                cleanInfo.collaterals[i],
                msg.sender,
                cleanInfo.collateralsAmount[i]
            );
        }
        LiabilityClean.removeClean(cleanId);
        emit LiabilityCleanSuccessful(cleanId);
    }

    function getInsuranceFunds(address stakeToken, address token) external view override returns (uint256) {
        return InsuranceFund.load(stakeToken).getTokenFunds(token);
    }

    function getInsuranceUnsettleFunds(address stakeToken, address token) external view override returns (uint256) {
        return InsuranceFund.load(stakeToken).getTokenUnsettleFunds(token);
    }

    function getCleanInfo(uint256 cleanId) external view override returns (LiabilityClean.LiabilityCleanInfo memory) {
        return LiabilityClean.getCleanInfo(cleanId);
    }

    function getAllCleanInfos() external view override returns (LiabilityClean.LiabilityCleanInfo[] memory) {
        return LiabilityClean.getAllCleanInfo();
    }
}
