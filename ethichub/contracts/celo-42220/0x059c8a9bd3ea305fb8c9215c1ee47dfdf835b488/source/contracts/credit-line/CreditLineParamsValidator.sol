// SPDX-License-Identifier: GPLv3
pragma solidity ^0.8.24;

import {CreditLib} from "../libraries/CreditLib.sol";
import {CreditLineLib} from "../libraries/CreditLineLib.sol";
import {AccessManagedUpgradeable} from "../access/AccessManagedUpgradeable.sol";

/**
 * @title CreditLineParamsValidator
 * @dev Manages credit line creation parameters
 * @author EthicHub
 */
abstract contract CreditLineParamsValidator is AccessManagedUpgradeable {
    using CreditLib for CreditLib.Credit;
    using CreditLineLib for CreditLineLib.CreditLine;

    uint256 public constant MIN_CREDIT_DURATION = 3 * 30 days;
    uint256 public constant MAX_INTEREST_PS = 9512937595; // 30% (0.1 in ether) / 365 in seconds
    uint256 public constant DEFAULT_MAX_FIRST_CREDIT = 1_000_000 ether; // in FIAT
    uint256 public constant MAX_OPEN_CREDIT_PER_AUDITOR = 10_000_000 ether; // in FIAT

    // Protocol params
    uint256 public constant COLLATERAL_PERCENTAGE = 4*10**16; // In wei, for example 4% = 0.04 = 4*10**16 
    uint256 public constant PLATFORM_PERCENTAGE = 4*10**16; // In wei, for example 4% = 0.04 = 4*10**16
    uint256 public constant AUDITOR_PERCENTAGE = 0;

    error InterestPsOverBounds();
    error ZeroPrincipal();
    error WrongDuration();
    error CreditTooLarge();
    error OpenCreditTooLarge();
    error CreditFeesChanged();

    /**
     * @dev Initializes the contract
     */
    function __CreditLineParamsValidator_init(
        address _accessManager
    ) public initializer {
        __AccessManaged_init(_accessManager);
    }

    /**
     * @dev Validates credit creation parameters
     * @param prev Previous credit line
     * @param next New credit line
     * @param auditorOpenCredit Amount of credit provided by the auditor
     */
    function _validateCreditParameters(
        CreditLib.Credit memory prev,
        CreditLib.Credit memory next,
        uint256 auditorOpenCredit
    ) internal view {
        if (auditorOpenCredit > MAX_OPEN_CREDIT_PER_AUDITOR)
            revert OpenCreditTooLarge();
        if (next.interestPs > MAX_INTEREST_PS || next.interestPs == 0)
            revert InterestPsOverBounds();
        if (next.principal == 0) revert ZeroPrincipal();
        if (next.endTimestamp < block.timestamp) {
            revert WrongDuration();
        } else if (next.endTimestamp - block.timestamp < MIN_CREDIT_DURATION) {
            revert WrongDuration();
        }
        if (CreditLib._isEmptyCredit(prev)) {
            // First credit line iteration
            if (next.available > DEFAULT_MAX_FIRST_CREDIT)
                revert CreditTooLarge();
        }
    }

    /**
     * @dev Sets default credit line parameters
     * @param creditLine Credit line to set defaults for
     */
    function _defaultCreditLineParameters(
        CreditLineLib.CreditLine storage creditLine
    ) internal {
        creditLine._setPercentages(
            COLLATERAL_PERCENTAGE,
            PLATFORM_PERCENTAGE,
            AUDITOR_PERCENTAGE
        );
        creditLine._setReserves(
            address(0),
            address(0),
            address(0)
        );
    }

    /**
     * @dev Sets credit line percentages
     * @param creditLine Credit line to update
     * @param collateralPercentage Collateral percentage (in wei)
     * @param platformPercentage Platform percentage (in wei)
     * @param auditorPercentage Auditor percentage (in wei)
     */
    function _setCreditLinePercentages(
        CreditLineLib.CreditLine storage creditLine,
        uint256 collateralPercentage,
        uint256 platformPercentage,
        uint256 auditorPercentage
    ) internal {
        creditLine._setPercentages(
            collateralPercentage,
            platformPercentage,
            auditorPercentage
        );
    }

    /**
     * @dev Sets credit line reserves
     * @param creditLine Credit line to update
     * @param collateralReserve Address of the collateral reserve
     * @param platformReserve Address of the platform reserve
     * @param auditorReserve Address of the auditor reserve
     */
    function _setCreditLineReserves(
        CreditLineLib.CreditLine storage creditLine,
        address collateralReserve,
        address platformReserve,
        address auditorReserve
    ) internal {
        creditLine._setReserves(
            collateralReserve,
            platformReserve,
            auditorReserve
        );
    }

    /**
     * @dev Sets credit line principal token
     * @param creditLine Credit line to update
     * @param principalToken Address of the principal token
     */
    function _setCreditLinePrincipalToken(
        CreditLineLib.CreditLine storage creditLine,
        address principalToken
    ) internal {
        creditLine._setPrincipalToken(principalToken);
    }
}
