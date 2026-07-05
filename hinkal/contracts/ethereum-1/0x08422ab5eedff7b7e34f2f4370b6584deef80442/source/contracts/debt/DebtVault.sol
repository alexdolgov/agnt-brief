// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import "../interfaces/IDebtVault.sol";
import "../interfaces/IDebtToken.sol";
import "../utils/RateLib.sol";

/// @title Synthetics debt vault
/// @notice This contracts allows users to borrow synthetic NFTs, that represent the value of an NFT collection floor price, using a basket of tokens as a collateral.
/// @dev the contract doesn't really enforce any rules regarding if the position is undercollateralised and if the user can perform borrow/repay action. This is done through the Controller contract.
contract DebtVault is AccessControlUpgradeable, IDebtVault {
    using RateLib for RateLib.Rate;

    error DebtCapReached();
    error NoDebt();
    error InvalidFee();
    error ZeroAddress();
    error ZeroBorrowCap();
    error AmountTooSmall(uint256 _amount);

    event Borrowed(
        uint256 indexed _positionId,
        address indexed _positionOwner,
        uint256 debtAmount,
        uint256 fee
    );

    event Repaid(
        uint256 indexed _positionId,
        address indexed _positionOwner,
        uint256 _amount
    );

    event Liquidated(
        uint256 indexed _positionId,
        address indexed liquidator,
        uint256 _amount
    );

    event BorrowCapChanged(uint256 oldBorrowCap, uint256 newBorrowCap);
    event BorrowFeeChanged(
        RateLib.Rate _oldBorrowFee,
        RateLib.Rate _newBorrowFee
    );
    event Accrual(uint256 additionalInterest);
    event FeeCollected(uint256 feeCollected);

    struct VaultSettings {
        RateLib.Rate debtInterestApr; // 2% = [2,100]
        RateLib.Rate borrowFee; // can be 0% .. e.g [0,100]
        uint256 borrowCap;
    }

    struct Position {
        uint256 debtPrincipal;
        uint256 debtPortion;
    }

    bytes32 private constant SETTER_ROLE = keccak256("SETTER_ROLE");
    bytes32 private constant DEBT_AGGREGATOR_ROLE =
        keccak256("DEBT_AGGREGATOR_ROLE");

    IDebtToken public debtToken;

    /// @dev Last time debt was accrued. See {accrue} for more info
    uint256 private totalDebtAccruedAt;
    uint256 private totalDebtPortion;

    uint256 public totalDebtAmount;
    uint256 public totalFeeCollected;

    VaultSettings public settings;
    mapping(uint256 => Position) private debtPositions;

    modifier ensureNonZeroAddress(address someone) {
        if (someone == address(0)) revert ZeroAddress();
        _;
    }

    modifier ensureValidFee(RateLib.Rate calldata fee) {
        if (!fee.isValid() || fee.isAboveOne()) revert InvalidFee();
        _;
    }

    /// @dev Initializes the DebtVault contract.
    /// @param _debtToken Address of the debt token
    /// @param _debtAggregator The address of the debt aggregator contract.
    /// @param _settings The initial settings for the DebtVault.
    function initialize(
        address _debtToken,
        address _debtAggregator,
        VaultSettings calldata _settings
    )
        public
        initializer
        ensureNonZeroAddress(_debtToken)
        ensureNonZeroAddress(_debtAggregator)
        ensureValidFee(_settings.borrowFee)
    {
        if (_settings.borrowCap == 0) revert ZeroBorrowCap();

        if (
            !_settings.debtInterestApr.isValid() ||
            !_settings.debtInterestApr.isBelowOne()
        ) revert RateLib.InvalidRate();

        _setupRole(DEFAULT_ADMIN_ROLE, msg.sender);
        _setupRole(DEBT_AGGREGATOR_ROLE, _debtAggregator);

        totalDebtAmount = 0;
        settings = _settings;
        debtToken = IDebtToken(_debtToken);
    }

    /// @notice Borrow synthetic NFTs using the position owner's collateral.
    /// @dev emits a {Borrowed} event
    /// - Reverts if caller is not DebtAggregator
    /// @param _positionId The ID of the position from which funds will be borrowed.
    /// @param _positionOwner The owner of the position.
    /// @param _amount The amount of synthetic tokens to be borrowed. Note that the user will receive less than the amount requested,
    /// the borrow fee automatically gets removed from the amount borrowed
    function borrow(
        uint256 _positionId,
        address _positionOwner,
        uint256 _amount
    ) external override onlyRole(DEBT_AGGREGATOR_ROLE) {
        accrue();
        _borrow(_positionId, _positionOwner, _amount);
    }

    /// @notice Repay a portion/all of their debt. Note that since interest increases every second,
    /// a user wanting to repay all of their debt should repay for an amount greater than their current debt to account for the
    /// additional interest while the repay transaction is pending, the contract will only take what's necessary to repay all the debt
    /// @dev Emits a {Repaid} event
    /// - Reverts if caller is not DebtAggregator
    /// @param _positionId The ID of the position from which the debt will be repaid.
    /// @param _positionOwner The owner of the position.
    /// @param _amount The amount of debt to repay. If greater than the position's outstanding debt, only the amount necessary to repay all the debt will be taken
    /// @return boolean flag indicating if this is a full debt repayment or not
    /// Note if amount to be repaid is bigger than the token balance of _positionOwner, the transaction reverts on burn.
    function repay(
        uint256 _positionId,
        address _positionOwner,
        uint256 _amount
    ) external override onlyRole(DEBT_AGGREGATOR_ROLE) returns (bool) {
        accrue();
        return _repay(_positionId, _positionOwner, _amount);
    }

    /// @notice Liquidate the whole debt of a position.
    /// @dev Emits a {Liquidated} event
    /// - Reverts if caller is not DebtAggregator, or the _debtAmount to be burnt has insufficient allowance from the liquidator
    /// @param _positionId The ID of the position from which the debt will be liquidated.
    /// @param _liquidator Liquidator address from which the debt will be liquidated
    /// Note Since before liquidation is performed, interest is accrued, so liquidator should take this into account when providing the debtToken allowance for liquidaton
    function liquidate(
        uint256 _positionId,
        address _liquidator
    ) external override onlyRole(DEBT_AGGREGATOR_ROLE) {
        accrue();
        return _liquidate(_positionId, _liquidator);
    }

    /// @notice Allows the DAO (throught debtAggregator.collectFees()) to collect interest and fees before they are repaid
    function collect(
        address _recepient
    ) external onlyRole(DEBT_AGGREGATOR_ROLE) {
        accrue();

        uint256 _totalFeeCollected = totalFeeCollected;
        debtToken.mint(_recepient, _totalFeeCollected);
        totalFeeCollected = 0;

        emit FeeCollected(_totalFeeCollected);
    }

    /// @dev The {accrue} function updates the contract's state by calculating the additional interest accrued since the last state update.
    /// It increases the total debt amount by the additional interest, updates the total fee collected, and records the timestamp of the accrual.
    function accrue() public {
        uint256 additionalInterest = calculateAdditionalInterest();

        totalDebtAccruedAt = block.timestamp;

        totalDebtAmount += additionalInterest;
        totalFeeCollected += additionalInterest;

        emit Accrual(additionalInterest);
    }

    /// @dev VIEW FUNCTIONS
    /// - Functions that provide read-only access to contract state and data.

    /// @dev Calculates the current outstanding debt of a position.
    /// @param _positionId The ID of the position to calculate the outstanding debt of.
    /// @return The outstanding debt value of the position.
    function getPositionDebt(
        uint256 _positionId
    ) external view override returns (uint256) {
        return _getDebtAmount(_positionId);
    }

    /**
    @dev SETTERS
        - Functions for setting and updating contract parameters and properties.
        - These functions can only be called by SETTER_ROLE.
    */

    function setborrowCap(uint256 newBorrowCap) external onlyRole(SETTER_ROLE) {
        uint256 oldBorrowCap = settings.borrowCap;
        settings.borrowCap = newBorrowCap;

        emit BorrowCapChanged(oldBorrowCap, newBorrowCap);
    }

    function setBorrowFee(
        RateLib.Rate calldata _newBorrowFee
    ) external onlyRole(SETTER_ROLE) ensureValidFee(_newBorrowFee) {
        RateLib.Rate memory _oldBorrowFee = settings.borrowFee;
        settings.borrowFee = _newBorrowFee;

        emit BorrowFeeChanged(_oldBorrowFee, _newBorrowFee);
    }

    /// @dev INTERNAL FUNCTIONS
    ///  - Functions that are internal to the contract and are not meant to be accessed externally.
    ///  - These functions are used for internal logic, helper functions, or calculations
    ///    that are utilized within the contract but are not part of the external contract interface.

    /// @dev See {borrow}
    function _borrow(
        uint256 _positionId,
        address _positionOwner,
        uint256 _amount
    ) internal {
        uint256 _totalDebtAmount = totalDebtAmount;
        uint256 _newTotalDebtAmount = _totalDebtAmount + _amount;
        if (_newTotalDebtAmount > settings.borrowCap) revert DebtCapReached();

        Position storage position = debtPositions[_positionId];

        uint256 _fee = _calculateBorrowFee(_amount);
        totalFeeCollected += _fee;

        // update debt portion
        {
            uint256 _totalDebtPortion = totalDebtPortion;
            uint256 _plusPortion = _calculatePortion(
                _totalDebtPortion,
                _amount,
                _totalDebtAmount
            );

            totalDebtPortion = _totalDebtPortion + _plusPortion;
            position.debtPortion += _plusPortion;
            position.debtPrincipal += _amount;
            totalDebtAmount = _newTotalDebtAmount;
        }

        debtToken.mint(_positionOwner, _amount - _fee);

        emit Borrowed(_positionId, _positionOwner, _amount, _fee);
    }

    /// @dev See {repay}
    function _repay(
        uint256 _positionId,
        address _positionOwner,
        uint256 _amount
    ) internal returns (bool) {
        Position storage position = debtPositions[_positionId];

        uint256 _debtAmount = _getDebtAmount(_positionId);
        if (_debtAmount == 0) revert NoDebt();

        uint256 _debtPrincipal = position.debtPrincipal;
        uint256 _debtInterest = _debtAmount - _debtPrincipal;

        _amount = _amount > _debtAmount ? _debtAmount : _amount;

        uint256 _paidPrincipal;

        unchecked {
            _paidPrincipal = _amount > _debtInterest
                ? _amount - _debtInterest
                : 0;
        }

        uint256 _totalDebtPortion = totalDebtPortion;
        uint256 _totalDebtAmount = totalDebtAmount;
        uint256 _debtPortion = position.debtPortion;
        uint256 _minusPortion = _paidPrincipal == _debtPrincipal
            ? _debtPortion
            : _calculatePortion(_totalDebtPortion, _amount, _totalDebtAmount);

        totalDebtPortion = _totalDebtPortion - _minusPortion;
        position.debtPortion = _debtPortion - _minusPortion;
        position.debtPrincipal = _debtPrincipal - _paidPrincipal;
        totalDebtAmount = _totalDebtAmount - _amount;

        debtToken.burnFrom(_positionOwner, _amount);

        emit Repaid(_positionId, _positionOwner, _amount);

        return (_debtPrincipal == _paidPrincipal);
    }

    /// @dev Calculates the borrow fee for a given borrow amount.
    /// - Revert if amount is too small and percent calculation will round down to 0
    /// @param _amount The amount for which to calculate the borrow fee.
    /// @return The calculated borrow fee.
    function _calculateBorrowFee(
        uint256 _amount
    ) internal view returns (uint256) {
        RateLib.Rate memory _borrowFee = settings.borrowFee;
        if (_borrowFee.numerator == 0) {
            return 0;
        } else {
            // checking if the percent calculation will result in rounding down to 0
            uint256 feeBeforeDivisor = _amount * _borrowFee.numerator;
            if (feeBeforeDivisor < _borrowFee.denominator)
                revert AmountTooSmall(_amount);
            return feeBeforeDivisor / _borrowFee.denominator;
        }
    }

    /// @dev See {liquidate}
    function _liquidate(uint256 _positionId, address _liquidator) internal {
        Position storage position = debtPositions[_positionId];
        uint256 _debtAmount = _getDebtAmount(_positionId);

        // burn all debt
        debtToken.burnFrom(_liquidator, _debtAmount);

        // update debt portion
        totalDebtPortion -= position.debtPortion;
        totalDebtAmount -= _debtAmount;
        position.debtPortion = 0;
        position.debtPrincipal = 0;

        emit Liquidated(_positionId, _liquidator, _debtAmount);
    }

    /// @dev Calculates the additional global interest since last time the contract's state was updated by calling {accrue}
    /// @return The additional interest value
    function calculateAdditionalInterest() public view returns (uint256) {
        // Number of seconds since {accrue} was called
        uint256 _elapsedTime = block.timestamp - totalDebtAccruedAt;
        if (_elapsedTime == 0) {
            return 0;
        }

        uint256 _totalDebt = totalDebtAmount;
        if (totalDebtAmount == 0) {
            return 0;
        }

        // Accrue interest
        return
            (_elapsedTime * _totalDebt * settings.debtInterestApr.numerator) /
            settings.debtInterestApr.denominator /
            365 days;
    }

    /// @dev Calculates current outstanding debt of a position
    /// @param _positionId The position ID to calculate the outstanding debt of
    /// @return The outstanding debt value
    function _getDebtAmount(
        uint256 _positionId
    ) internal view returns (uint256) {
        uint256 _calculatedDebt = _calculateDebt(
            totalDebtAmount + calculateAdditionalInterest(),
            debtPositions[_positionId].debtPortion,
            totalDebtPortion
        );
        uint256 _principal = debtPositions[_positionId].debtPrincipal;

        //_calculateDebt is prone to rounding errors that may cause
        //the calculated debt _amount to be 1 or 2 units less than
        //the debt principal when the accrue() function isn't called
        //in between the first borrow and the _calculateDebt call.
        return _principal > _calculatedDebt ? _principal : _calculatedDebt;
    }

    /// @dev Calculates the _total debt of a position given the global debt, the user's portion of the debt and the _total user portions
    /// @param _total The global outstanding debt
    /// @param _userPortion The user's portion of debt
    /// @param _totalPortion The _total user portions of debt
    /// @return The outstanding debt of the position
    function _calculateDebt(
        uint256 _total,
        uint256 _userPortion,
        uint256 _totalPortion
    ) internal pure returns (uint256) {
        return _totalPortion == 0 ? 0 : (_total * _userPortion) / _totalPortion;
    }

    /// @dev Calculates the debt portion of a position given the global debt portion, the debt _amount and the global debt _amount
    /// @param _total The _total user portions of debt
    /// @param _userDebt The user's debt
    /// @param _totalDebt The global outstanding debt
    /// @return _userDebt converted into a debt portion
    function _calculatePortion(
        uint256 _total,
        uint256 _userDebt,
        uint256 _totalDebt
    ) internal pure returns (uint256) {
        return _total == 0 ? _userDebt : (_total * _userDebt) / _totalDebt;
    }
}
