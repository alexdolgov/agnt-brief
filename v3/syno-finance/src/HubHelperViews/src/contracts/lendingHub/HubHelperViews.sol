// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

import "../HubSpokeStructs.sol";
import "../../interfaces/IInterestRateCalculator.sol";
import "../../interfaces/IHubPriceUtilities.sol";
import "../../interfaces/IHub.sol";
import "../../interfaces/IAssetRegistry.sol";

contract HubHelperViews {

    IHub hub;

    constructor(address _hub) {
        hub = IHub(_hub);
    }

    /**
     * @dev Get the maximum amount of an asset that can be borrowed by a vault owner
     *
     * @param vaultOwner - The address of the owner of the vault
     * @param assetAddress - The address of the relevant asset
     * @param minHealth - The minimum health of the vault after the borrow
     * @param minHealthPrecision - The precision of the minimum health
     * @return maxBorrowableAmount - The maximum amount of the asset that can be borrowed by the vault owner
     */
    function getMaxBorrowableAmount(address vaultOwner, address assetAddress, uint256 minHealth, uint256 minHealthPrecision) external view returns (uint256) {
        // calculate max borrowable amount without a preceding deposit change (0 for amount and whatever for deposit/withdrawal boolean)
        return calculateMaxBorrowableAmount(0, assetAddress, vaultOwner, true, minHealth, minHealthPrecision);
    }

    /**
     * @notice Get the maximum amount of an asset that can be borrowed by a vault owner after a deposit or withdrawal
     *
     * @param assetAmount - The amount of the asset that is being deposited or withdrawn
     * @param assetAddress - The address of the relevant asset
     * @param vaultOwner - The address of the owner of the vault
     * @param deposit - Whether or not the transaction is a deposit or withdrawal
     * @param minHealth - The minimum health of the vault after the borrow
     * @param minHealthPrecision - The precision of the minimum health
     * @return maxBorrowableAmount - The maximum amount of the asset that can be borrowed by the vault owner
     */
    function calculateMaxBorrowableAmount(uint256 assetAmount, address assetAddress, address vaultOwner, bool deposit, uint256 minHealth, uint256 minHealthPrecision)
        public
        view
        returns (uint256 maxBorrowableAmount)
    {
        IHubPriceUtilities hubPriceUtilities = IHubPriceUtilities(address(hub.getPriceUtilities()));
        (, maxBorrowableAmount) = hubPriceUtilities.calculateMaxWithdrawableAndBorrowableAmounts(
            assetAmount, assetAddress, vaultOwner, deposit
        );
        if (minHealth > minHealthPrecision) {
            maxBorrowableAmount = _limitToMinHealth(
                hubPriceUtilities,
                HubSpokeStructs.DenormalizedVaultAmount(0, maxBorrowableAmount),
                assetAddress,
                vaultOwner,
                minHealth,
                minHealthPrecision
            ).borrowed;
        }
    }

    /**
     *
     * @param hubPriceUtilities HubPriceUtilities contract
     * @param _amounts max withdrawable and borrowable amounts from hubPriceUtilities.calculateMaxWithdrawableAndBorrowableAmounts
     * @param _assetAddress the address of the asset
     * @param _vaultOwner the owner of the vault
     * @param _minHealth minimum target health of the vault after withdrawal/borrow
     * @param _minHealthPrecision the precision with which _minHealth is expressed
     */
    function _limitToMinHealth(
        IHubPriceUtilities hubPriceUtilities,
        HubSpokeStructs.DenormalizedVaultAmount memory _amounts,
        address _assetAddress,
        address _vaultOwner,
        uint256 _minHealth,
        uint256 _minHealthPrecision
    ) internal view returns (HubSpokeStructs.DenormalizedVaultAmount memory _amountsLimited) {
        require(_minHealth >= _minHealthPrecision, "HubHelperViews: minHealth must be greater than or equal to minHealthPrecision");

        // get the notionals of the whole account
        HubSpokeStructs.NotionalVaultAmount memory notionals = hubPriceUtilities.getVaultEffectiveNotionals(_vaultOwner, true);
        if (notionals.deposited * _minHealthPrecision <= notionals.borrowed * _minHealth) {
            // if the vault is already below the target health, return zero amounts
            return _amountsLimited;
        }

        // start with the given amounts
        _amountsLimited = _amounts;
        // get the notional value of passed amounts
        HubSpokeStructs.NotionalVaultAmount memory amountNotionals = hubPriceUtilities.calculateEffectiveNotionals(_assetAddress, _amounts);
        // this will not underflow beacause of the previous check
        // get the maximum notional value that is withdrawable or borrowable given the minHealth
        uint256 maxNotionalWithdrawRetainingHealth = notionals.deposited - (notionals.borrowed * _minHealth / _minHealthPrecision);

        // notionals.deposited >= (notionals.borrowed + maxNotionalBorrowRetainingHealth) * _minHealth / _minHealthPrecision
        // notionals.deposited * _minHealthPrecision / _minHealth - notionals.borrowed >= maxNotionalBorrowRetainingHealth
        uint256 maxNotionalBorrowRetainingHealth = notionals.deposited * _minHealthPrecision / _minHealth - notionals.borrowed;
        if (notionals.borrowed == 0) {
            // no debt. leave withdrawal as is.
            // set borrow to max that would retain health
            _amountsLimited = hubPriceUtilities.invertNotionals(_assetAddress, hubPriceUtilities.removeCollateralizationRatios(
                _assetAddress, HubSpokeStructs.NotionalVaultAmount(notionals.deposited, notionals.deposited * _minHealthPrecision / _minHealth)
            ));
        } else if (amountNotionals.deposited > maxNotionalWithdrawRetainingHealth || amountNotionals.borrowed > maxNotionalBorrowRetainingHealth) {
            // at least one of the amounts is too high
            // get the max amounts that would retain health
            HubSpokeStructs.DenormalizedVaultAmount memory maxAmounts = hubPriceUtilities.invertNotionals(_assetAddress, hubPriceUtilities.removeCollateralizationRatios(
                _assetAddress, HubSpokeStructs.NotionalVaultAmount(maxNotionalWithdrawRetainingHealth, maxNotionalBorrowRetainingHealth)
            ));
            if (amountNotionals.deposited > maxNotionalWithdrawRetainingHealth) {
                _amountsLimited.deposited = maxAmounts.deposited;
            }
            if (amountNotionals.borrowed > maxNotionalBorrowRetainingHealth) {
                _amountsLimited.borrowed = maxAmounts.borrowed;
            }
        }
    }

    /**
     * @notice Get the maximum amount of an asset that can be withdrawn by a vault owner
     *
     * @param vaultOwner - The address of the owner of the vault
     * @param assetAddress - The address of the relevant asset
     * @param minHealth - The minimum health of the vault after the withdrawal
     * @param minHealthPrecision - The precision of the minimum health
     * @return maxWithdrawableAmount - The maximum amount of the asset that can be withdrawn by the vault owner
     */
    function getMaxWithdrawableAmount(address vaultOwner, address assetAddress, uint256 minHealth, uint256 minHealthPrecision)
        external
        view
        returns (uint256 maxWithdrawableAmount)
    {
        IHubPriceUtilities hubPriceUtilities = IHubPriceUtilities(address(hub.getPriceUtilities()));
        // calculate max withdrawable amount without a preceding deposit change (0 for amount and whatever for deposit/withdrawal boolean)
        (maxWithdrawableAmount,) = hubPriceUtilities.calculateMaxWithdrawableAndBorrowableAmounts(0, assetAddress, vaultOwner, true);
        if (minHealth > minHealthPrecision) {
            maxWithdrawableAmount = _limitToMinHealth(
                hubPriceUtilities,
                HubSpokeStructs.DenormalizedVaultAmount(maxWithdrawableAmount, 0),
                assetAddress,
                vaultOwner,
                minHealth,
                minHealthPrecision
            ).deposited;
        }
    }

    /**
     * @notice Get the current interest rate for an asset
     *
     * @param assetAddress - the address of the asset
     * @return IInterestRateCalculator.InterestRates The current deposit interest rate for the asset, multiplied by rate precision
     */
    function getCurrentInterestRate(address assetAddress) external view returns (IInterestRateCalculator.InterestRates memory) {
        IAssetRegistry assetRegistry = IAssetRegistry(hub.getAssetRegistry());
        HubSpokeStructs.AssetInfo memory assetInfo = assetRegistry.getAssetInfo(assetAddress);
        IInterestRateCalculator assetCalculator = IInterestRateCalculator(assetInfo.interestRateCalculator);
        HubSpokeStructs.DenormalizedVaultAmount memory denormalizedGlobals = hub.getGlobalAmounts(assetAddress);
        return assetCalculator.currentInterestRate(denormalizedGlobals);
    }

    /**
     * @notice Get the reserve factor and precision for a given asset
     *
     * @param asset - The address of the asset
     * @return reserveFactor - The reserve factor for the asset
     * @return reservePrecision - The precision of the reserve factor
     */
    function getReserveFactor(address asset) external view returns (uint256, uint256) {
        IAssetRegistry assetRegistry = IAssetRegistry(hub.getAssetRegistry());
        HubSpokeStructs.AssetInfo memory assetInfo = assetRegistry.getAssetInfo(asset);
        address assetCalculator = assetInfo.interestRateCalculator;
        return IInterestRateCalculator(assetCalculator).getReserveFactorAndPrecision();
    }

    /**
     * @notice Get a user's account balance in an asset
     *
     * @param vaultOwner - the address of the user
     * @param assetAddress - the address of the asset
     * @return VaultAmount a struct with 'deposited' field and 'borrowed' field for the amount deposited and borrowed of the asset
     * multiplied by 10^decimal for that asset. Values are denormalized.
     */
    function getUserBalance(address vaultOwner, address assetAddress)
        public
        view
        returns (HubSpokeStructs.DenormalizedVaultAmount memory)
    {
        return hub.getVaultAmounts(vaultOwner, assetAddress);
    }

    /**
     * @notice Get the protocol's global balance in an asset
     *
     * @param assetAddress - the address of the asset
     * @return VaultAmount a struct with 'deposited' field and 'borrowed' field for the amount deposited and borrowed of the asset
     * multiplied by 10^decimal for that asset. Values are denormalized.
     */
    function getGlobalBalance(address assetAddress) public view returns (HubSpokeStructs.DenormalizedVaultAmount memory) {
        return hub.getGlobalAmounts(assetAddress);
    }

    /**
     * @notice Get the protocol's global reserve amount in an asset
     *
     * @param assetAddress - the address of the asset
     * @return uint256 The amount of the asset in the protocol's reserve
     */
    function getReserveAmount(address assetAddress) external view returns (uint256) {
        return hub.getReserveAmount(assetAddress);
    }
}
