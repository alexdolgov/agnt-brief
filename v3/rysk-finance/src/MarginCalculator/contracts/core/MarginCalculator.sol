/**
 * SPDX-License-Identifier: UNLICENSED
 */
pragma solidity =0.6.10;
pragma experimental ABIEncoderV2;

import {SafeMath} from "../packages/oz/SafeMath.sol";
import {Ownable} from "../packages/oz/Ownable.sol";
import {OtokenInterface} from "../interfaces/OtokenInterface.sol";
import {OracleInterface} from "../interfaces/OracleInterface.sol";
import {AddressBookInterface} from "../interfaces/AddressBookInterface.sol";
import {WhitelistInterface} from "../interfaces/WhitelistInterface.sol";
import {ERC20Interface} from "../interfaces/ERC20Interface.sol";
import {FixedPointInt256 as FPI} from "../libs/FixedPointInt256.sol";
import {MarginVault} from "../libs/MarginVault.sol";

/**
 * @title MarginCalculator
 * @author Opyn
 * @notice Calculator module that checks if a given vault is valid, calculates margin requirements, and settlement proceeds
 */
contract MarginCalculator is Ownable {
    using SafeMath for uint256;
    using FPI for FPI.FixedPointInt;

    /// @dev decimals used by strike price and oracle price
    uint256 internal constant BASE = 8;

    /// @dev struct to store all needed vault details
    struct VaultDetails {
        address shortUnderlyingAsset;
        address shortStrikeAsset;
        address shortCollateralAsset;
        address longUnderlyingAsset;
        address longStrikeAsset;
        address longCollateralAsset;
        uint256 shortStrikePrice;
        uint256 shortExpiryTimestamp;
        uint256 shortCollateralDecimals;
        uint256 longStrikePrice;
        uint256 longExpiryTimestamp;
        uint256 longCollateralDecimals;
        uint256 collateralDecimals;
        uint256 vaultType;
        bool isShortPut;
        bool isLongPut;
        bool hasLong;
        bool hasShort;
        bool hasCollateral;
    }

    /// @dev FixedPoint 0
    FPI.FixedPointInt internal ZERO = FPI.fromScaledUint(0, BASE);

    /// @dev oracle module
    OracleInterface public oracle;
    /// @dev addressbook module
    AddressBookInterface public addressBook;

    /**
     * @notice constructor
     * @param _oracle oracle module address
     * @param _addressBook addressbook module address
     */
    constructor(address _oracle, address _addressBook) public {
        require(_oracle != address(0), "MarginCalculator: invalid oracle address");

        oracle = OracleInterface(_oracle);
        addressBook = AddressBookInterface(_addressBook);
    }

    /**
     * @notice return the collateral payout per oToken after expiry, scaled by 1e8
     * @dev called by ControllerLogic.getPayout() to calculate how much collateral a redeemer receives.
     *
     * for cash-settled options (type 0): returns the cash value of the option in collateral terms.
     *   calls: max(underlyingPrice - strikePrice, 0) converted to collateral denomination.
     *   puts: max(strikePrice - underlyingPrice, 0) converted to collateral denomination.
     *
     * for physically settled options (type 2): returns the delivery obligation amount in collateral terms.
     *   calls: the value of 1 unit of underlying in collateral terms, capped at 1 collateral per oToken
     *          under LST depeg (peg-equivalent cap). the redeemer pays the strike and receives this amount.
     *   puts: the strike price in collateral terms. the redeemer pays the underlying and receives this amount.
     *
     * @param _otoken oToken address
     * @return collateral payout per 1e8 oTokens, denominated in collateral asset decimals
     */
    function getExpiredPayoutRate(address _otoken) external view returns (uint256) {
        require(_otoken != address(0), "MarginCalculator: Invalid token address");

        (
            address collateral,
            address underlying,
            address strikeAsset,
            uint256 strikePrice,
            uint256 expiry,
            bool isPut,
            bool isPhysicallySettled
        ) = _getOtokenDetails(_otoken);
        require(now >= expiry, "MarginCalculator: Otoken not expired yet");

        FPI.FixedPointInt memory cashValueInStrike = _getExpiredCashValue(
            underlying,
            strikeAsset,
            expiry,
            strikePrice,
            isPhysicallySettled,
            isPut
        );
        FPI.FixedPointInt memory cashValueInCollateral = _convertAmountOnExpiryPrice(
            cashValueInStrike,
            strikeAsset,
            collateral,
            expiry
        );


        // Peg-equivalent depeg cap (settlement-type-agnostic): the per-oToken payout in collateral asset is capped
        // at the value the holder would receive if collateral were valued 1:1 with underlying (i.e., at peg).
        // This prevents LST depeg from letting holders extract more collateral than was deposited per oToken.
        //
        // For physically-settled calls: cashValueInStrike = U, peg-equivalent = U / U = 1
        //   (matches the original `> 1` clamp behavior).
        // For cash-settled calls: cashValueInStrike = U-K, peg-equivalent = (U-K) / U
        //   (closes the depeg loophole for type 0 spreads).
        //
        // Puts have strikeAsset == collateralAsset enforced upstream, so depeg is irrelevant.
        if (!isPut) {
            FPI.FixedPointInt memory peggedRateCollateral = _convertAmountOnExpiryPrice(
                cashValueInStrike,
                strikeAsset,
                underlying,
                expiry
            );
            if (cashValueInCollateral.isGreaterThan(peggedRateCollateral)) {
                cashValueInCollateral = peggedRateCollateral;
            }
        }

        // scale exchange rate to collateral asset decimals
        uint256 collateralDecimals = uint256(ERC20Interface(collateral).decimals());
        return cashValueInCollateral.toScaledUint(collateralDecimals, true);
    }

    /**
     * @notice return the quantity of an asset an ITM option buyer needs to pay upfront in order to exercise their option
     * The strike payment for calls is the strike price * amount of options, denoted in strike asset decimals
     * The strike payment for puts is the number of options, denoted in underlying asset decimals.
     * @param _otoken oToken address
     * @param _amount amount of the oTokens to calculate the payment for, always represented in 1e8
     * @return how much strikeAsset/underlyingAsset is needed to exercise the otokens (respective asset decimals)
     */
    function getStrikePaymentAmount(address _otoken, uint256 _amount) external view returns (uint256) {
        OtokenInterface otoken = OtokenInterface(_otoken);
        FPI.FixedPointInt memory strikePrice = FPI.fromScaledUint(otoken.strikePrice(), BASE);
        FPI.FixedPointInt memory scaledAmount = FPI.fromScaledUint(_amount, BASE);


        uint256 strikeDecimals = uint256(ERC20Interface(otoken.strikeAsset()).decimals());
        uint256 underlyingDecimals = uint256(ERC20Interface(otoken.underlyingAsset()).decimals());
        if(otoken.isPut()) {
            // for puts the strike payment is denoted in underlying asset
            return scaledAmount.toScaledUint(underlyingDecimals, false);
        } else {
            // for calls the strike payment is denoted in strike asset
            return strikePrice.mul(scaledAmount).toScaledUint(strikeDecimals, false);
        }
    }

    /**
     * @notice calculate required collateral margin for a vault
     * @param _vault theoretical vault that needs to be checked
     * @param _vaultType vault type
     * @return the vault collateral amount, and marginRequired the minimal amount of collateral needed in a vault, scaled to 1e27
     */
    function getMarginRequired(MarginVault.Vault memory _vault, uint256 _vaultType)
        external
        view
        returns (FPI.FixedPointInt memory, FPI.FixedPointInt memory)
    {
        VaultDetails memory vaultDetail = _getVaultDetails(_vault, _vaultType);
        return _getMarginRequired(_vault, vaultDetail);
    }

    /**
     * @notice returns the collateral surplus or deficit for a vault, and whether the vault is solvent
     * @dev denominated in the collateral asset. used for two purposes:
     *
     * 1. solvency check (bool): called by Controller._verifyFinalState() after vault-modifying actions
     *    to ensure the vault remains properly collateralized.
     *
     * 2. excess amount (uint256): called by Controller.getProceed() to determine how much collateral
     *    can be withdrawn, and by ControllerLogic.handleSettle() as the writer's overcollateralization
     *    payout during settlement.
     *
     * for type 0 (cash-settled spreads): the excess is collateral minus the net spread obligation.
     *    this IS the writer's full settlement payout.
     *
     * for type 2 (physically settled): the excess is collateral minus the delivery obligation
     *    (capped by the peg-equivalent depeg cap). this is only the overcollateralization portion
     *    of the writer's settlement payout — the rest comes from the redemptionBalances distribution
     *    in handleSettle().
     *
     * @param _vault vault to evaluate
     * @param _vaultType vault type (0 for spread/max loss, 2 for physically settled)
     * @return excessCollateral the amount by which collateral is above or below the required amount
     * @return isExcess true if the vault is solvent (collateral >= required), false if undercollateralized
     */
    function getExcessCollateral(MarginVault.Vault memory _vault, uint256 _vaultType)
        public
        view
        returns (uint256, bool)
    {
        VaultDetails memory vaultDetails = _getVaultDetails(_vault, _vaultType);
        // include all the checks for to ensure the vault is valid
        _checkIsValidVault(_vault, vaultDetails);
        // if the vault contains no oTokens, return the amount of collateral
        if (!vaultDetails.hasShort && !vaultDetails.hasLong) {
            uint256 amount = vaultDetails.hasCollateral ? _vault.collateralAmounts[0] : 0;
            return (amount, true);
        }

        // get required margin, denominated in collateral, scaled in 1e27
        (FPI.FixedPointInt memory collateralAmount, FPI.FixedPointInt memory collateralRequired) = _getMarginRequired(
            _vault,
            vaultDetails
        );
        FPI.FixedPointInt memory excessCollateral = collateralAmount.sub(collateralRequired);

        bool isExcess = excessCollateral.isGreaterThanOrEqual(ZERO);
        uint256 collateralDecimals = vaultDetails.hasLong
            ? vaultDetails.longCollateralDecimals
            : vaultDetails.shortCollateralDecimals;
        // if is excess, truncate the tailing digits in excessCollateralExternal calculation
        uint256 excessCollateralExternal = excessCollateral.toScaledUint(collateralDecimals, isExcess);
        return (excessCollateralExternal, isExcess);
    }

    /**
     * @notice return the per-oToken value of an expired option, denominated in strike asset
     * @dev the meaning of "value" depends on settlement type (see _getCashValue):
     *
     * cash-settled:
     *   calls: max(underlyingPrice - strikePrice, 0) — the option's cash profit
     *   puts:  max(strikePrice - underlyingPrice, 0)
     *
     * physically settled:
     *   calls: underlyingPrice if ITM, else 0 — the full delivery value, not just the profit
     *   puts:  strikePrice if ITM, else 0
     *
     * @param _underlying otoken underlying asset
     * @param _strike otoken strike asset
     * @param _expiryTimestamp otoken expiry timestamp
     * @param _strikePrice otoken strike price
     * @param _isPhysicallySettled true for physically settled, false for cash settled
     * @param _isPut true if put, false if call
     * @return per-oToken value denominated in the strike asset (1e27 fixed-point)
     */
    function _getExpiredCashValue(
        address _underlying,
        address _strike,
        uint256 _expiryTimestamp,
        uint256 _strikePrice,
        bool _isPhysicallySettled,
        bool _isPut
    ) internal view returns (FPI.FixedPointInt memory) {
        // strike price is denominated in strike asset
        FPI.FixedPointInt memory strikePrice = FPI.fromScaledUint(_strikePrice, BASE);
        FPI.FixedPointInt memory one = FPI.fromScaledUint(1, 0);

        // calculate the value of the underlying asset in terms of the strike asset
        FPI.FixedPointInt memory underlyingPriceInStrike = _convertAmountOnExpiryPrice(
            one, // underlying price is 1 (1e27) in term of underlying
            _underlying,
            _strike,
            _expiryTimestamp
        );

        return _getCashValue(strikePrice, underlyingPriceInStrike, _isPut, _isPhysicallySettled);
    }

    /// @dev added this struct to avoid stack-too-deep error
    struct OtokenDetails {
        address otokenUnderlyingAsset;
        address otokenCollateralAsset;
        address otokenStrikeAsset;
        uint256 otokenExpiry;
        bool isPut;
    }

    /**
     * @notice calculate the collateral held in a vault and the collateral obligation, both scaled to 1e27
     * @dev vault passed in has already passed the _checkIsValidVault function.
     *
     * pre-expiry: uses the spread margin formulas. for type 2 vaults (no long), longAmount and longStrike
     *   are zero, so the formulas reduce to: shortAmount * shortStrike for puts (strike price per oToken),
     *   and shortAmount for calls (1 collateral per oToken). for type 0 spreads with a long, the obligation
     *   is the spread width: max(shortStrike - longStrike, 0) for puts, or
     *   (longStrike - shortStrike) / longStrike for calls.
     *
     * post-expiry type 0 (cash-settled): the obligation is the net cash value of the short minus the long,
     *   converted to collateral denomination. the peg-equivalent depeg cap is applied.
     *
     * post-expiry type 2 (physically settled): the obligation is the delivery amount — the full value of
     *   the underlying for calls, the full strike price for puts (see _getCashValue). this is larger than
     *   the cash profit because it represents what the holder receives, not just their gain.
     *   the peg-equivalent depeg cap is applied to prevent LST depeg from inflating the obligation.
     *
     * @param _vault vault to evaluate
     * @param _vaultDetails cached vault metadata
     * @return collateralAmount the collateral currently in the vault (1e27)
     * @return collateralRequired the minimum collateral needed to keep the vault solvent (1e27)
     */
    function _getMarginRequired(MarginVault.Vault memory _vault, VaultDetails memory _vaultDetails)
        internal
        view
        returns (FPI.FixedPointInt memory, FPI.FixedPointInt memory)
    {
        FPI.FixedPointInt memory shortAmount = _vaultDetails.hasShort
            ? FPI.fromScaledUint(_vault.shortAmounts[0], BASE)
            : ZERO;
        FPI.FixedPointInt memory longAmount = _vaultDetails.hasLong
            ? FPI.fromScaledUint(_vault.longAmounts[0], BASE)
            : ZERO;
        FPI.FixedPointInt memory collateralAmount = _vaultDetails.hasCollateral
            ? FPI.fromScaledUint(_vault.collateralAmounts[0], _vaultDetails.collateralDecimals)
            : ZERO;
        FPI.FixedPointInt memory shortStrike = _vaultDetails.hasShort
            ? FPI.fromScaledUint(_vaultDetails.shortStrikePrice, BASE)
            : ZERO;

        // struct to avoid stack too deep error
        OtokenDetails memory otokenDetails = OtokenDetails(
            _vaultDetails.hasShort ? _vaultDetails.shortUnderlyingAsset : _vaultDetails.longUnderlyingAsset,
            _vaultDetails.hasShort ? _vaultDetails.shortCollateralAsset : _vaultDetails.longCollateralAsset,
            _vaultDetails.hasShort ? _vaultDetails.shortStrikeAsset : _vaultDetails.longStrikeAsset,
            _vaultDetails.hasShort ? _vaultDetails.shortExpiryTimestamp : _vaultDetails.longExpiryTimestamp,
            _vaultDetails.hasShort ? _vaultDetails.isShortPut : _vaultDetails.isLongPut
        );

        if (now < otokenDetails.otokenExpiry) {
            // it's not expired, return amount of margin required based on vault type
            // we only have fully collateralized vault or spread vaults
            FPI.FixedPointInt memory longStrike = _vaultDetails.hasLong
                ? FPI.fromScaledUint(_vaultDetails.longStrikePrice, BASE)
                : ZERO;

            if (otokenDetails.isPut) {
                // puts must be collateralised with strike asset
                require(
                    otokenDetails.otokenCollateralAsset == otokenDetails.otokenStrikeAsset,
                    "MarginCalculator: put spread vault should be collateralised with strike asset"
                );
                FPI.FixedPointInt memory strikeNeeded = _getPutSpreadMarginRequired(
                    shortAmount,
                    longAmount,
                    shortStrike,
                    longStrike
                );
                return (collateralAmount, strikeNeeded);
            } else {
                FPI.FixedPointInt memory assetNeeded = _getCallSpreadMarginRequired(
                    shortAmount,
                    longAmount,
                    shortStrike,
                    longStrike
                );
                return (collateralAmount, assetNeeded);
            }
        } else {
            // the vault has expired. calculate the cash value of all the minted short options
            FPI.FixedPointInt memory shortCashValue = _vaultDetails.hasShort
                ? _getExpiredCashValue(
                    _vaultDetails.shortUnderlyingAsset,
                    _vaultDetails.shortStrikeAsset,
                    _vaultDetails.shortExpiryTimestamp,
                    _vaultDetails.shortStrikePrice,
                    _vaultDetails.vaultType == 2,
                    otokenDetails.isPut
                )
                : ZERO;
            FPI.FixedPointInt memory longCashValue = _vaultDetails.hasLong
                ? _getExpiredCashValue(
                    _vaultDetails.longUnderlyingAsset,
                    _vaultDetails.longStrikeAsset,
                    _vaultDetails.longExpiryTimestamp,
                    _vaultDetails.longStrikePrice,
                    _vaultDetails.vaultType == 2,
                    otokenDetails.isPut
                )
                : ZERO;

            FPI.FixedPointInt memory valueInStrike = _getExpiredSpreadCashValue(
                shortAmount,
                longAmount,
                shortCashValue,
                longCashValue
            );

            // convert amount to be denominated in collateral
            FPI.FixedPointInt memory collateralRequired = _convertAmountOnExpiryPrice(
                valueInStrike,
                otokenDetails.otokenStrikeAsset,
                otokenDetails.otokenCollateralAsset,
                otokenDetails.otokenExpiry
            );

            // Mirror the holder-side peg-equivalent cap so writer settlement and holder
            // redemption agree on per-oToken value under collateral depeg. Calls only;
            // puts have strikeAsset == collateralAsset enforced before expiry via the require above.
            if (!otokenDetails.isPut) {
                FPI.FixedPointInt memory peggedRateCollateral = _convertAmountOnExpiryPrice(
                    valueInStrike,
                    otokenDetails.otokenStrikeAsset,
                    otokenDetails.otokenUnderlyingAsset,
                    otokenDetails.otokenExpiry
                );
                if (valueInStrike.isGreaterThanOrEqual(ZERO)) {
                    if (collateralRequired.isGreaterThan(peggedRateCollateral)) {
                        collateralRequired = peggedRateCollateral;
                    }
                } else {
                    if (peggedRateCollateral.isGreaterThan(collateralRequired)) {
                        collateralRequired = peggedRateCollateral;
                    }
                }
            }

            return (collateralAmount, collateralRequired);
        }
    }

    /**
     * @dev returns the strike asset amount of margin required for a put or put spread with the given short oTokens, long oTokens and amounts
     *
     * marginRequired = max( (short amount * short strike) - (long strike * min (short amount, long amount)) , 0 )
     *
     * @return margin requirement denominated in the strike asset
     */
    function _getPutSpreadMarginRequired(
        FPI.FixedPointInt memory _shortAmount,
        FPI.FixedPointInt memory _longAmount,
        FPI.FixedPointInt memory _shortStrike,
        FPI.FixedPointInt memory _longStrike
    ) internal view returns (FPI.FixedPointInt memory) {
        return FPI.max(_shortAmount.mul(_shortStrike).sub(_longStrike.mul(FPI.min(_shortAmount, _longAmount))), ZERO);
    }

    /**
     * @dev returns the underlying asset amount required for a call or call spread with the given short oTokens, long oTokens, and amounts
     *
     *                           (long strike - short strike) * short amount
     * marginRequired =  max( ------------------------------------------------- , max (short amount - long amount, 0) )
     *                                           long strike
     *
     * @dev if long strike = 0, return max( short amount - long amount, 0)
     * @return margin requirement denominated in the collateral asset
     */
    function _getCallSpreadMarginRequired(
        FPI.FixedPointInt memory _shortAmount,
        FPI.FixedPointInt memory _longAmount,
        FPI.FixedPointInt memory _shortStrike,
        FPI.FixedPointInt memory _longStrike
    ) internal view returns (FPI.FixedPointInt memory) {
        // if long strike is 0, there is either no long position (long amount = 0) or the long position is a call with 0 strike
        // which fully collateralisees the short call. In either case, the margin required is max( short amount - long amount, 0)
        if (_longStrike.isEqual(ZERO)) {
            return FPI.max(_shortAmount.sub(_longAmount), ZERO);
        }
        /**
         *             (long strike - short strike) * short amount
         * calculate  ----------------------------------------------
         *                             long strike
         */
        FPI.FixedPointInt memory firstPart = _longStrike.sub(_shortStrike).mul(_shortAmount).div(_longStrike);

        /**
         * calculate max ( short amount - long amount , 0)
         */
        FPI.FixedPointInt memory secondPart = FPI.max(_shortAmount.sub(_longAmount), ZERO);

        return FPI.max(firstPart, secondPart);
    }

    /**
     * @notice convert an amount in asset A to equivalent amount of asset B, based on an expiry price
     * @dev function includes the amount and apply .mul() first to increase the accuracy
     * @param _amount amount in asset A
     * @param _assetA asset A
     * @param _assetB asset B
     * @return _amount in asset B
     */
    function _convertAmountOnExpiryPrice(
        FPI.FixedPointInt memory _amount,
        address _assetA,
        address _assetB,
        uint256 _expiry
    ) internal view returns (FPI.FixedPointInt memory) {
        if (_assetA == _assetB) {
            return _amount;
        }
        (uint256 priceA, bool priceAFinalized) = oracle.getExpiryPrice(_assetA, _expiry);
        (uint256 priceB, bool priceBFinalized) = oracle.getExpiryPrice(_assetB, _expiry);
        require(priceAFinalized && priceBFinalized, "MarginCalculator: price at expiry not finalized yet");
        // amount A * price A in USD = amount B * price B in USD
        // amount B = amount A * price A / price B
        return _amount.mul(FPI.fromScaledUint(priceA, BASE)).div(FPI.fromScaledUint(priceB, BASE));
    }

    /**
     * @notice get vault details to save us from making multiple external calls
     * @param _vault vault struct
     * @param _vaultType vault type, 0 for max loss/spreads, 2 for physially settled
     * @return vault details in VaultDetails struct
     */
    function _getVaultDetails(MarginVault.Vault memory _vault, uint256 _vaultType)
        internal
        view
        returns (VaultDetails memory)
    {
        VaultDetails memory vaultDetails = VaultDetails(
            address(0),
            address(0),
            address(0),
            address(0),
            address(0),
            address(0),
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            false,
            false,
            false,
            false,
            false
        );

        // check if vault has long, short otoken and collateral asset
        vaultDetails.hasLong = _isNotEmpty(_vault.longOtokens);
        vaultDetails.hasShort = _isNotEmpty(_vault.shortOtokens);
        vaultDetails.hasCollateral = _isNotEmpty(_vault.collateralAssets);

        vaultDetails.vaultType = _vaultType;

        // get vault long otoken if available
        if (vaultDetails.hasLong) {
            OtokenInterface long = OtokenInterface(_vault.longOtokens[0]);
            (
                vaultDetails.longCollateralAsset,
                vaultDetails.longUnderlyingAsset,
                vaultDetails.longStrikeAsset,
                vaultDetails.longStrikePrice,
                vaultDetails.longExpiryTimestamp,
                vaultDetails.isLongPut,

            ) = _getOtokenDetails(address(long));
            vaultDetails.longCollateralDecimals = uint256(ERC20Interface(vaultDetails.longCollateralAsset).decimals());
        }

        // get vault short otoken if available
        if (vaultDetails.hasShort) {
            OtokenInterface short = OtokenInterface(_vault.shortOtokens[0]);
            (
                vaultDetails.shortCollateralAsset,
                vaultDetails.shortUnderlyingAsset,
                vaultDetails.shortStrikeAsset,
                vaultDetails.shortStrikePrice,
                vaultDetails.shortExpiryTimestamp,
                vaultDetails.isShortPut,

            ) = _getOtokenDetails(address(short));
            vaultDetails.shortCollateralDecimals = uint256(
                ERC20Interface(vaultDetails.shortCollateralAsset).decimals()
            );
        }

        if (vaultDetails.hasCollateral) {
            vaultDetails.collateralDecimals = uint256(ERC20Interface(_vault.collateralAssets[0]).decimals());
        }

        return vaultDetails;
    }

    /**
     * @dev calculate the cash value obligation for an expired vault, where a positive number is an obligation
     *
     * Formula: net = (short cash value * short amount) - ( long cash value * long Amount )
     *
     * @return cash value obligation denominated in the strike asset
     */
    function _getExpiredSpreadCashValue(
        FPI.FixedPointInt memory _shortAmount,
        FPI.FixedPointInt memory _longAmount,
        FPI.FixedPointInt memory _shortCashValue,
        FPI.FixedPointInt memory _longCashValue
    ) internal pure returns (FPI.FixedPointInt memory) {
        return _shortCashValue.mul(_shortAmount).sub(_longCashValue.mul(_longAmount));
    }

    /**
     * @dev check if asset array contain a token address
     * @return True if the array is not empty
     */
    function _isNotEmpty(address[] memory _assets) internal pure returns (bool) {
        return _assets.length > 0 && _assets[0] != address(0);
    }

    /**
     * @dev ensure that:
     * a) at most 1 asset type used as collateral
     * b) at most 1 series of option used as the long option
     * c) at most 1 series of option used as the short option
     * d) asset array lengths match for long, short and collateral
     * e) long option and collateral asset is acceptable for margin with short asset
     * @param _vault the vault to check
     * @param _vaultDetails vault details struct
     */
    function _checkIsValidVault(MarginVault.Vault memory _vault, VaultDetails memory _vaultDetails) internal view {
        // ensure all the arrays in the vault are valid
        require(_vault.shortOtokens.length <= 1, "MarginCalculator: Too many short otokens in the vault");
        require(_vault.longOtokens.length <= 1, "MarginCalculator: Too many long otokens in the vault");
        require(_vault.collateralAssets.length <= 1, "MarginCalculator: Too many collateral assets in the vault");

        require(
            _vault.shortOtokens.length == _vault.shortAmounts.length,
            "MarginCalculator: Short asset and amount mismatch"
        );
        require(
            _vault.longOtokens.length == _vault.longAmounts.length,
            "MarginCalculator: Long asset and amount mismatch"
        );
        require(
            _vault.collateralAssets.length == _vault.collateralAmounts.length,
            "MarginCalculator: Collateral asset and amount mismatch"
        );

        // ensure the long asset is valid for the short asset
        require(
            _isMarginableLong(_vault, _vaultDetails),
            "MarginCalculator: long asset not marginable for short asset"
        );

        // ensure that the collateral asset is valid for the short asset
        require(
            _isMarginableCollateral(_vault, _vaultDetails),
            "MarginCalculator: collateral asset not marginable for short asset"
        );
    }

    /**
     * @dev if there is a short option and a long option in the vault, ensure that the long option is able to be used as collateral for the short option
     * @param _vault the vault to check
     * @param _vaultDetails vault details struct
     * @return true if long is marginable or false if not
     */
    function _isMarginableLong(MarginVault.Vault memory _vault, VaultDetails memory _vaultDetails)
        internal
        pure
        returns (bool)
    {
        // if vault is missing a long or a short, return True
        if (!_vaultDetails.hasLong || !_vaultDetails.hasShort) return true;

        return
            _vault.longOtokens[0] != _vault.shortOtokens[0] &&
            _vaultDetails.longUnderlyingAsset == _vaultDetails.shortUnderlyingAsset &&
            _vaultDetails.longStrikeAsset == _vaultDetails.shortStrikeAsset &&
            _vaultDetails.longCollateralAsset == _vaultDetails.shortCollateralAsset &&
            _vaultDetails.longExpiryTimestamp == _vaultDetails.shortExpiryTimestamp &&
            _vaultDetails.isLongPut == _vaultDetails.isShortPut;
    }

    /**
     * @dev if there is short option and collateral asset in the vault, ensure that the collateral asset is valid for the short option
     * @param _vault the vault to check
     * @param _vaultDetails vault details struct
     * @return true if marginable or false
     */
    function _isMarginableCollateral(MarginVault.Vault memory _vault, VaultDetails memory _vaultDetails)
        internal
        pure
        returns (bool)
    {
        bool isMarginable = true;

        if (!_vaultDetails.hasCollateral) return isMarginable;
        if (_vaultDetails.hasShort) {
            // deposited collateral must match the oToken's collateral asset.
            // the collateral was already validated at oToken creation time via the product whitelist,
            // so no additional whitelist check is needed here.
            isMarginable = _vaultDetails.shortCollateralAsset == _vault.collateralAssets[0];
        } else if (_vaultDetails.hasLong) {
            // long-only vault: deposited collateral must match the long oToken's collateral asset
            // prevents decimal mismatch exploits where mismatched collateral is scaled using the
            // long oToken's collateral decimals during settlement, allowing pool drainage
            isMarginable = _vaultDetails.longCollateralAsset == _vault.collateralAssets[0];
        }

        return isMarginable;
    }

    /**
     * @notice get option cash value
     * @dev this assume that the underlying price is denominated in strike asset
     * @param _strikePrice option strike price
     * @param _underlyingPrice option underlying price
     * @param _isPut option type, true for put and false for call option
     * @param _isPhysicallySettled settlement type, true for physically settled and false for cash settled
     */
    function _getCashValue(
        FPI.FixedPointInt memory _strikePrice,
        FPI.FixedPointInt memory _underlyingPrice,
        bool _isPut,
        bool _isPhysicallySettled
    ) internal view returns (FPI.FixedPointInt memory) {
        if (_isPhysicallySettled) {
            // for physically settled puts, option buyer sells the underlying and receives the strike price, so return strike price
            if (_isPut) return _strikePrice.isGreaterThan(_underlyingPrice) ? _strikePrice : ZERO;
            // for physically settled calls, option buyer buys the underlying and pays the strike price, so return the value of 1 underlying asset
            return _underlyingPrice.isGreaterThan(_strikePrice) ? _underlyingPrice : ZERO;
        } else {
            // for cash puts, value = max(strike price - underlying price, 0)
            if (_isPut) return _strikePrice.isGreaterThan(_underlyingPrice) ? _strikePrice.sub(_underlyingPrice) : ZERO;
            // for cash calls, value = max(underlying price - strike price, 0)
            return _underlyingPrice.isGreaterThan(_strikePrice) ? _underlyingPrice.sub(_strikePrice) : ZERO;
        }
    }

    /**
     * @dev get otoken detail, from both otoken versions
     */
    function _getOtokenDetails(address _otoken)
        internal
        view
        returns (
            address,
            address,
            address,
            uint256,
            uint256,
            bool,
            bool
        )
    {
        OtokenInterface otoken = OtokenInterface(_otoken);
        return otoken.getOtokenDetails();
    }
}
