// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import {IVotingEscrow} from "./IVotingEscrow.sol";
import "../interfaces/external/IPriceSourceAll.sol";
import {graceQiVault} from "./graceQiVault.sol";

contract graceQiVaultPeriphery {
    function calculateCollateralProperties(
        address _collateral,
        address _votingEscrow,
        uint256 _collateralId,
        uint256 _debt
    ) private view returns (uint256, uint256) {
        graceQiVault collateral = graceQiVault(_collateral);
        IVotingEscrow votingEscrow = IVotingEscrow(_votingEscrow);
        require(collateral.getEthPriceSource() != 0);
        require(collateral.getTokenPriceSource() != 0);

        uint256 _collateralAmount = votingEscrow.balanceOfNFT(_collateralId);


        IVotingEscrow.LockedBalance memory bal = votingEscrow.locked(_collateralId);

        uint256 lockDurationInSeconds = bal.end > block.timestamp ? bal.end - block.timestamp : 0;

        // Calculate discount percentage (0 to 75%)
        // Assuming the maximum lock duration for full discount is 4 years (4 * 365 * 24 * 60 * 60 seconds)
        uint256 maxLockDurationForFullDiscount = 4 * 365 * 24 * 60 * 60;
        uint256 discountPercentage = (lockDurationInSeconds * 75) / maxLockDurationForFullDiscount;
        if (discountPercentage > 75) {
            discountPercentage = 75; // Cap at 75%
        }
        // Apply discount to the token price
        uint256 discountedTokenPrice = collateral.getEthPriceSource() * (100 - discountPercentage) / 100;
        uint256 collateralValue = _collateralAmount * discountedTokenPrice * collateral.decimalDifferenceRaisedToTen();
        require(collateralValue >= _collateralAmount);

        uint256 debtValue = _debt * collateral.getTokenPriceSource();
        require(debtValue >= _debt);

        uint256 collateralValueTimes100 = collateralValue * 100;
        require(collateralValue == 0 || collateralValueTimes100 > collateralValue);

        return (collateralValueTimes100, debtValue);
    }

    function getCollateralNftId(address graceQiVaultAddress, uint256 _vaultId) public view returns (uint256) {
        graceQiVault vault = graceQiVault(graceQiVaultAddress);
        return vault.vaultCollateral(_vaultId);
    }

    function getVaultCollateralUnlockTime(address graceQiVaultAddress, uint256 _vaultId)
        public
        view
        returns (uint256)
    {
        graceQiVault vault = graceQiVault(graceQiVaultAddress);
        IVotingEscrow votingEscrow = vault.collateral();
        uint256 _veTokenId = vault.vaultCollateral(_vaultId);
        IVotingEscrow.LockedBalance memory bal = votingEscrow.locked(_veTokenId);
        return bal.end;
    }

    function calculateCollateraValue(address graceQiVaultAddress, uint256 _vaultId) public view returns (uint256) {
        graceQiVault vault = graceQiVault(graceQiVaultAddress);
        IVotingEscrow votingEscrow = vault.collateral();
        uint256 _veTokenId = vault.vaultCollateral(_vaultId);
        if (_veTokenId == 0) {
            return 0;
        }
        uint256 _debt = vault.vaultDebt(_vaultId);
        (uint256 collateralValue,) =
            calculateCollateralProperties(address(vault), address(votingEscrow), _veTokenId, _debt);
        IPriceSource ethPriceSource = IPriceSource(vault.ethPriceSource());
        uint256 ethPriceSourceDecimals = ethPriceSource.decimals();
        uint256 collateralValueWithoutOracleDecimals = collateralValue / 10 ** ethPriceSourceDecimals;
        return collateralValueWithoutOracleDecimals / 100;
    }

    function calculateDebtValue(address graceQiVaultAddress, uint256 _vaultId) public view returns (uint256) {
        graceQiVault vault = graceQiVault(graceQiVaultAddress);
        IVotingEscrow votingEscrow = vault.collateral();
        uint256 _veTokenId = vault.vaultCollateral(_vaultId);
        uint256 _debt = vault.vaultDebt(_vaultId);
        (, uint256 debtValue) = calculateCollateralProperties(address(vault), address(votingEscrow), _veTokenId, _debt);
        //The debt includes the oracle decimals so we remove them here
        IPriceSource ethPriceSource = IPriceSource(vault.ethPriceSource());
        uint256 ethPriceSourceDecimals = ethPriceSource.decimals();
        uint256 debtValueWithoutOracleDecimals = debtValue / 10 ** ethPriceSourceDecimals;
        return debtValueWithoutOracleDecimals;
    }
}
