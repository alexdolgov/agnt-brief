// SPDX-License-Identifier: GPLv3
pragma solidity ^0.8.24;

import {AUDITOR, CREDITLINE_ADMIN, TREASURY_MANAGER} from "../Roles.sol";
import {CreditLib} from "../libraries/CreditLib.sol";
import {CreditLineLib} from "../libraries/CreditLineLib.sol";
import {Interest} from "../libraries/Interest.sol";
import {CreditLineTokenManager} from "./CreditLineTokenManager.sol";
import {CreditLineParamsValidator} from "./CreditLineParamsValidator.sol";

/**
 * @title CreditLine
 * @dev This contract manages credit lines, allowing for the creation, modification, and interaction with credit facilities.
 * It handles borrowing, repayment, fee management, and various administrative functions.
 * @author Ethichub
 */
contract CreditLine is CreditLineTokenManager, CreditLineParamsValidator {
    using CreditLib for CreditLib.Credit;
    using CreditLineLib for CreditLineLib.CreditLine;

    /// @custom:storage-location erc7201:ethichub.storage.CreditLine
    struct CreditLineStorage {
        /// CreditLines and Ids
        mapping(uint256 => CreditLineLib.CreditLine) creditLines;
        uint256[] creditLineIDs;
        /// auditor address -> amount of credit open (non fully repaid credits)
        mapping(address => uint256) auditorOpenCredit;
        /// @custom:renamed-from principalToken
        address liquidityReserve;
    }

    bytes32 private constant STORAGE_SLOT =
        keccak256(abi.encode(uint256(keccak256("ethichub.storage.CreditLine")) - 1)) & ~bytes32(uint256(0xff));

    function _getCreditLineStorage() private pure returns (CreditLineStorage storage $) {
        bytes32 slot = STORAGE_SLOT;
        assembly {
            $.slot := slot
        }
    }

    event CreditLineOpened(uint256 indexed id);
    event CreditLineFeesUpdated(uint256 indexed id);
    event CreditLineReservesUpdated(uint256 indexed id);
    event CreditLinePrincipalTokenUpdated(uint256 indexed id, address token);
    event LiquidityReserveSet(address liquidityReserve);
    event CreditOpened(
        uint256 indexed id,
        uint256 indexed creditID,
        uint256 amount,
        uint256 interest,
        uint256 maturity
    );
    event CreditRenewed(
        uint256 indexed id,
        uint256 indexed creditID,
        uint256 amount,
        uint256 interest,
        uint256 maturity
    );
    event CreditExpanded(
        uint256 indexed id,
        uint256 indexed creditID,
        uint256 amount,
        uint256 interest,
        uint256 maturity
    );
    event CreditRemoved(
        uint256 indexed id,
        uint256 indexed creditID
    );

    event Borrowed(
        uint256 indexed id,
        uint256 indexed creditID,
        uint256 amount,
        uint256 available,
        uint256 borrowed
    );
    event Repaid(
        uint256 indexed id,
        uint256 indexed creditID,
        uint256 amount,
        uint256 totalRepaid,
        bool isRepaid
    );
    event CollateralFeesClaimed(uint256 fees);
    event PlatformFeesClaimed(uint256 fees);
    event AuditorFeesClaimed(uint256 fees);

    error MatureNotRepaid();
    error InterestsNotRepaid();
    error PrincipalReductionNotRepaid();
    error Unauthorized();
    error CreditLineHasCredit();
    error NonUnclaimedFees();
    error WithdrawAmountMinorUnclaimedFees();
    error CreditNotAvailable();
    error CreditAvailable();

    modifier onlyCreditLineOwner(uint256 creditLineID) {
        if (msg.sender != ownerOf(creditLineID)) revert Unauthorized();
        _;
    }

    modifier onlyCreditFromAuditor(uint256 creditLineID) {
        CreditLineStorage storage $ = _getCreditLineStorage();
        CreditLineLib.CreditLine memory creditLine = $.creditLines[creditLineID];
        if (creditLine.auditor != msg.sender)
            revert Unauthorized();
        _;
    }

    /**
     * @dev Initializes the CreditLine contract.
     * @param _name Name of the credit line token
     * @param _symbol Symbol of the credit line token
     * @param _accessManager Address of the access manager contract
     * @param _liquidityReserve Address of the liquidity reserve used for transactions
     */
    function initialize(
        string calldata _name,
        string calldata _symbol,
        address _accessManager,
        address _liquidityReserve
    ) external initializer {
        CreditLineStorage storage $ = _getCreditLineStorage();
        if (address(_accessManager) == address(0)) revert ZeroAddress();
        if (address(_liquidityReserve) == address(0)) revert ZeroAddress();
        __CreditLineTokenManager_init(_name, _symbol, _accessManager);
        __CreditLineParamsValidator_init(_accessManager);
        $.liquidityReserve = _liquidityReserve;
    }

    /**
     * @dev Opens a new credit line and mints an NFT representing it.
     * Can only be called by an account with the AUDITOR role and when the contract is not paused.
     * @param originator Address of the originator
     * @param principalToken Address of the principal token
     * @return creditLineID The ID of the newly created credit line
     */
    function openCreditLine(
        address originator,
        address principalToken
    )
        public
        virtual
        onlyRole(AUDITOR)
        whenNotPaused
        returns (uint256 creditLineID)
    {
        CreditLineStorage storage $ = _getCreditLineStorage();
        creditLineID = _mintCreditLine(originator);
        CreditLineLib.CreditLine storage creditLine = $.creditLines[creditLineID];
        $.creditLineIDs.push(creditLineID);
        _defaultCreditLineParameters(creditLine);
        _setCreditLinePrincipalToken(creditLine, principalToken);
        creditLine.auditor = address(msg.sender);
        emit CreditLineOpened(creditLineID);
        return creditLineID;
    }

    /**
     * @dev Opens a new credit in an existing credit line.
     * @param creditLineID ID of the credit line
     * @param amount Amount of credit to open
     * @param yearlyInterest Yearly interest rate (in wei, e.g., 10% = 0.1 = 1e17)
     * @param maturity Duration of the credit in seconds
     */
    function openCreditInCreditLine(
        uint256 creditLineID,
        uint256 amount,
        uint256 yearlyInterest,
        uint256 maturity
    ) public onlyRole(AUDITOR) whenNotPaused {
        CreditLineStorage storage $ = _getCreditLineStorage();
        CreditLineLib.CreditLine storage creditLine = $.creditLines[creditLineID];
        uint256 length = creditLine.credits.length;
        if (length != 0) revert CreditAvailable();
        _openCreditInCreditLine(creditLineID, amount, yearlyInterest, maturity);
        emit CreditOpened(
            creditLineID,
            length,
            amount,
            yearlyInterest,
            maturity
        );
    }

    /**
     * @dev Expand the current credit from a credit line.
     * @param creditLineID ID of the credit line
     * @param amount New amount for the credit
     * @param yearlyInterest New yearly interest rate
     * @param maturity New maturity period in seconds
     */
    function expandCreditInCreditLine(
        uint256 creditLineID,
        uint256 amount,
        uint256 yearlyInterest,
        uint256 maturity
    )
        external
        onlyRole(AUDITOR)
        onlyCreditFromAuditor(creditLineID)
        whenNotPaused
    {
        CreditLineStorage storage $ = _getCreditLineStorage();
        CreditLineLib.CreditLine storage creditLine = $.creditLines[creditLineID];
        uint256 length = creditLine.credits.length;
        if (length == 0) revert CreditNotAvailable();
        CreditLib.Credit memory currentCr = creditLine._currentCredit();
        _openCreditInCreditLine(creditLineID, currentCr.principal + amount, yearlyInterest, maturity);
        emit CreditExpanded(
            creditLineID,
            length,
            amount,
            yearlyInterest,
            maturity
        );
    }

    /**
     * @dev Renews an existing credit in a credit line.
     * @param creditLineID ID of the credit line
     * @param amount New amount for the credit
     * @param yearlyInterest New yearly interest rate
     * @param maturity New maturity period in seconds
     */
    function renewCreditInCreditLine(
        uint256 creditLineID,
        uint256 amount,
        uint256 yearlyInterest,
        uint256 maturity
    )
        external
        onlyRole(AUDITOR)
        onlyCreditFromAuditor(creditLineID)
        whenNotPaused
    {
        CreditLineStorage storage $ = _getCreditLineStorage();
        CreditLineLib.CreditLine storage creditLine = $.creditLines[creditLineID];
        uint256 length = creditLine.credits.length;
        if (length == 0) revert CreditNotAvailable();
        CreditLib.Credit memory currentCr = creditLine._currentCredit();
        if (amount > currentCr.principal) {
            if (!currentCr._isRepaid()) revert MatureNotRepaid();
        } else if (amount == currentCr.principal) {
            if (currentCr.accruedInterest == 0 || currentCr.repaid < currentCr.accruedInterest)
                revert InterestsNotRepaid();
        } else if (amount < currentCr.principal) {
            if (currentCr.repaid < (currentCr.principal - amount) + currentCr.accruedInterest)
                revert PrincipalReductionNotRepaid();
        }
        _openCreditInCreditLine(creditLineID, amount, yearlyInterest, maturity);
        emit CreditRenewed(
            creditLineID,
            length,
            amount,
            yearlyInterest,
            maturity
        );
    }

    /**
     * @dev Removes the current credit from a credit line.
     * @param creditLineID ID of the credit line
     */
    function removeCurrentCredit(
        uint256 creditLineID
    )
        external
        onlyRole(AUDITOR)
        onlyCreditFromAuditor(creditLineID)
        whenNotPaused
    {
        CreditLineStorage storage $ = _getCreditLineStorage();
        CreditLineLib.CreditLine storage creditLine = $.creditLines[creditLineID];
        uint256 length = creditLine.credits.length;
        CreditLib.Credit memory prev = length > 1
            ? creditLine._creditAtIndex(length - 2)
            : CreditLib._emptyCredit();
        CreditLib.Credit memory currentCr = creditLine._currentCredit();
        $.auditorOpenCredit[msg.sender] = ($.auditorOpenCredit[msg.sender] - currentCr.principal) +
            prev.principal;
        creditLine._removeCurrentCredit();
        emit CreditRemoved(
            creditLineID,
            length - 1
        );
    }

    /**
     * @dev Updates principal token for a credit line.
     * @param creditLineID ID of the credit line
     * @param principalToken Address of the principal token
     */
    function updateCreditLinePrincipalToken(
        uint256 creditLineID,
        address principalToken
    ) external onlyRole(AUDITOR) {
        CreditLineStorage storage $ = _getCreditLineStorage();
        CreditLineLib.CreditLine storage creditLine = $.creditLines[creditLineID];
        _setCreditLinePrincipalToken(creditLine, principalToken);
        emit CreditLinePrincipalTokenUpdated(creditLineID, principalToken);
    }

    /**
     * @dev Updates the fees for a credit line.
     * @param creditLineID ID of the credit line
     * @param collateralPercentage New collateral fee percentage
     * @param platformPercentage New platform fee percentage
     * @param auditorPercentage New auditor fee percentage
     */
    function updateCreditLineFees(
        uint256 creditLineID,
        uint256 collateralPercentage,
        uint256 platformPercentage,
        uint256 auditorPercentage
    ) external onlyRole(CREDITLINE_ADMIN) {
        CreditLineStorage storage $ = _getCreditLineStorage();
        CreditLineLib.CreditLine storage creditLine = $.creditLines[creditLineID];
        if (creditLine.credits.length > 0) revert CreditLineHasCredit();
        _setCreditLinePercentages(
            creditLine,
            collateralPercentage,
            platformPercentage,
            auditorPercentage
        );
        emit CreditLineFeesUpdated(creditLineID);
    }

    /**
     * @dev Updates the reserve addresses for a credit line.
     * @param creditLineID ID of the credit line
     * @param collateralReserve New address for collateral reserve
     * @param platformReserve New address for platform reserve
     * @param auditorReserve New address for auditor reserve
     */
    function updateCreditLineReserves(
        uint256 creditLineID,
        address collateralReserve,
        address platformReserve,
        address auditorReserve
    ) external onlyRole(CREDITLINE_ADMIN) {
        CreditLineStorage storage $ = _getCreditLineStorage();
        CreditLineLib.CreditLine storage creditLine = $.creditLines[creditLineID];
        _setCreditLineReserves(
            creditLine,
            collateralReserve,
            platformReserve,
            auditorReserve
        );
        emit CreditLineReservesUpdated(creditLineID);
    }

    /**
     * @dev Updates the liquidity reserve addresses.
     * @param _liquidityReserve New address for liquidity reserve
     */
    function setLiquidityReserve(
        address _liquidityReserve
    ) external onlyRole(CREDITLINE_ADMIN) {
        CreditLineStorage storage $ = _getCreditLineStorage();
        $.liquidityReserve = _liquidityReserve;
        emit LiquidityReserveSet(_liquidityReserve);
    }

    /**
     * @dev Allows borrowing from a credit line.
     * @param creditLineID ID of the credit line
     * @param amount Amount to borrow
     */
    function borrow(
        uint256 creditLineID,
        uint256 amount
    ) external onlyCreditLineOwner(creditLineID) whenNotPaused {
        CreditLineStorage storage $ = _getCreditLineStorage();
        CreditLineLib.CreditLine storage creditLine = $.creditLines[creditLineID];
        uint256 borrowed = creditLine._borrow(amount);
        address principalToken = creditLine.principalToken;
        uint256 length = creditLine.credits.length;
        CreditLib.Credit memory prev = length > 1
            ? creditLine._creditAtIndex(length - 2)
            : CreditLib._emptyCredit();
        CreditLib.Credit storage currentCr = creditLine.credits[length - 1];
        borrowed = currentCr.paidFees ? borrowed : borrowed - currentCr.fees;
        creditLine._payCreditFees(currentCr, prev);
        _sendTokens($.liquidityReserve, principalToken, msg.sender, borrowed);
        emit Borrowed(
            creditLineID,
            length - 1,
            borrowed,
            currentCr.available,
            currentCr.borrowed
        );
    }

    /**
     * @dev Allows repayment to a credit line.
     * @param creditLineID ID of the credit line
     * @param amount Amount to repay
     */
    function repay(
        uint256 creditLineID,
        uint256 amount
    ) external {
        CreditLineStorage storage $ = _getCreditLineStorage();
        CreditLineLib.CreditLine storage creditLine = $.creditLines[creditLineID];
        uint256 repayment = creditLine._repay(amount);
        address principalToken = creditLine.principalToken;
        uint256 length = creditLine.credits.length;
        CreditLib.Credit memory currentCr = creditLine._currentCredit();
        _pullTokens($.liquidityReserve, principalToken, msg.sender, repayment);
        emit Repaid(
            creditLineID,
            length - 1,
            repayment,
            currentCr.repaid,
            currentCr._isRepaid()
        );
    }

    /**
     * @dev Retrieves the total unclaimed protocol fees.
     * @return Total unclaimed fees
     */
    function getUnclaimedProtocolFees() public view returns (uint256) {
        CreditLineStorage storage $ = _getCreditLineStorage();
        uint256 fees = 0;
        for (uint256 i = 0; i < $.creditLineIDs.length; i++) {
            CreditLineLib.CreditLine memory creditLine = $.creditLines[i];
            fees += creditLine._getUnclaimedCreditLineFees();
        }
        return fees;
    }

    /**
     * @dev Claims collateral fees for a credit line.
     */
    function claimCollateralFees(uint256 creditLineID) external onlyRole(TREASURY_MANAGER) {
        CreditLineStorage storage $ = _getCreditLineStorage();
        CreditLineLib.CreditLine storage creditLine = $.creditLines[creditLineID];
        uint256 unclaimed = creditLine.collateralFees.unclaimed;
        address reserve = creditLine.collateralFees.reserve;
        address principalToken = creditLine.principalToken;
        if (unclaimed == 0) revert NonUnclaimedFees();
        creditLine.collateralFees.unclaimed = 0;
        _sendTokens($.liquidityReserve, principalToken, reserve, unclaimed);
        emit CollateralFeesClaimed(unclaimed);
    }

    /**
     * @dev Claims platform fees for a credit line.
     */
    function claimPlatformFees(uint256 creditLineID) external onlyRole(TREASURY_MANAGER) {
        CreditLineStorage storage $ = _getCreditLineStorage();
        CreditLineLib.CreditLine storage creditLine = $.creditLines[creditLineID];
        uint256 unclaimed = creditLine.platformFees.unclaimed;
        address reserve = creditLine.platformFees.reserve;
        address principalToken = creditLine.principalToken;
        if (unclaimed == 0) revert NonUnclaimedFees();
        creditLine.platformFees.unclaimed = 0;
        _sendTokens($.liquidityReserve, principalToken, reserve, unclaimed);
        emit PlatformFeesClaimed(unclaimed);
    }

    /**
     * @dev Claims auditor fees for a credit line.
     */
    function claimAuditorFees(uint256 creditLineID) external onlyRole(TREASURY_MANAGER) {
        CreditLineStorage storage $ = _getCreditLineStorage();
        CreditLineLib.CreditLine storage creditLine = $.creditLines[creditLineID];
        uint256 unclaimed = creditLine.auditorFees.unclaimed;
        address reserve = creditLine.auditorFees.reserve;
        address principalToken = creditLine.principalToken;
        if (unclaimed == 0) revert NonUnclaimedFees();
        creditLine.auditorFees.unclaimed = 0;
        _sendTokens($.liquidityReserve, principalToken, reserve, unclaimed);
        emit AuditorFeesClaimed(unclaimed);
    }

    /**
     * @notice Retrieves the current active credit for a specific credit line
     * @dev This function returns the most recent credit in the credit line
     * @param creditLineID The unique identifier of the credit line (ERC721 token ID)
     * @return A CreditLib.Credit struct representing the current credit
     */
    function currentCredit(
        uint256 creditLineID
    ) external view returns (CreditLib.Credit memory) {
        CreditLineStorage storage $ = _getCreditLineStorage();
        CreditLineLib.CreditLine memory creditLine = $.creditLines[creditLineID];
        return creditLine._currentCredit();
    }

    /**
     * @notice Retrieves all credits associated with a specific credit line
     * @dev This function returns an array of all credits, including historical ones
     * @param creditLineID The unique identifier of the credit line (ERC721 token ID)
     * @return An array of CreditLib.Credit structs representing all credits in the credit line
     */
    function credits(
        uint256 creditLineID
    ) external view returns (CreditLib.Credit[] memory) {
        CreditLineStorage storage $ = _getCreditLineStorage();
        CreditLineLib.CreditLine memory creditLine = $.creditLines[creditLineID];
        return creditLine.credits;
    }

    /**
     * @notice Retrieves the full credit line information for a given credit line ID
     * @dev This function returns the entire CreditLine struct, including all associated data
     * @param creditLineID The unique identifier of the credit line (ERC721 token ID)
     * @return A CreditLineLib.CreditLine struct containing all credit line information
     */
    function creditLines(uint256 creditLineID) external view returns (CreditLineLib.CreditLine memory) {
        CreditLineStorage storage $ = _getCreditLineStorage();
        CreditLineLib.CreditLine memory creditLine = $.creditLines[creditLineID];
        return creditLine;
    }

    /**
     * @notice Retrieves the total amount of open (non-fully repaid) credit for a specific auditor
     * @dev This function is useful for tracking an auditor's outstanding credit
     * @param auditor The address of the credit auditor
     * @return The total amount of open credit for the specified auditor
     */
    function auditorOpenCredit(address auditor) external view returns (uint256) {
        CreditLineStorage storage $ = _getCreditLineStorage();
        return $.auditorOpenCredit[auditor];
    }

    /**
     * @notice Retrieves the address of the liquidity reserve used in this credit line contract
     * @dev The liquidity reserve is the main currency used for borrowing and repayment
     * @return The address of the liquidity reserve contract
     */
    function liquidityReserve() external view returns (address) {
        CreditLineStorage storage $ = _getCreditLineStorage();
        return $.liquidityReserve;
    }

    /**
     * @notice Calculates the non-accrued interest for the current credit
     * @dev This function retrieves the current credit state and calculates the interest
     *      that has not yet been accrued
     * @param creditLineID The unique identifier of the credit line (ERC721 token ID)
     * @return The amount of non-accrued interest as a uint256
     */
    function getNonAccruedInterest(
        uint256 creditLineID
    ) external view returns (uint256) {
        CreditLineStorage storage $ = _getCreditLineStorage();
        CreditLineLib.CreditLine memory creditLine = $.creditLines[creditLineID];
        CreditLib.Credit memory credit = creditLine._currentCredit();
        return credit._nonAccruedInterest();
    }

    /**
     * @dev Open credit in an existing credit line.
     * @param creditLineID ID of the credit line
     * @param amount Amount of credit to open
     * @param yearlyInterest Yearly interest rate (in wei, e.g., 10% = 0.1 = 1e17)
     * @param maturity Duration of the credit in seconds
     */
    function _openCreditInCreditLine(
        uint256 creditLineID,
        uint256 amount,
        uint256 yearlyInterest,
        uint256 maturity
    ) internal {
        CreditLineStorage storage $ = _getCreditLineStorage();
        CreditLineLib.CreditLine storage creditLine = $.creditLines[creditLineID];
        uint256 length = creditLine.credits.length;
        CreditLib.Credit memory prev = length > 0
            ? creditLine._creditAtIndex(length - 1)
            : CreditLib._emptyCredit();
        uint256 fees = creditLine._getCreditFees(amount);
        uint256 yearlyInterestToPerSecond = Interest._yearlyInterestToPerSecond(yearlyInterest);
        CreditLib.Credit memory credit = CreditLib._updateCredit(
            amount,
            yearlyInterestToPerSecond,
            maturity,
            fees,
            prev
        );

        $.auditorOpenCredit[msg.sender] =
            ($.auditorOpenCredit[msg.sender] + credit.principal) -
            prev.principal;
        // Will revert if invalid params
        _validateCreditParameters(
            prev,
            credit,
            $.auditorOpenCredit[msg.sender]
        );
        creditLine._setCredit(credit);
    }
}
