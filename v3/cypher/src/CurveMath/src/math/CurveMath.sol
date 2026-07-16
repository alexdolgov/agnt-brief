// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/**
 * @title CurveMath
 * @author Camelot
 * @notice Constant-product (x * y = k) bonding curve math library used to compute
 * token purchase costs, purchase target amounts, and sale target amounts.
 */
contract CurveMath {
    /// @dev Requested amount is zero or otherwise invalid.
    error InvalidAmount();

    /// @dev Reserve balance must be greater than zero.
    error InvalidReserveBalance();

    /// @dev Token supply must be greater than zero.
    error InvalidSupply();

    /// @dev The k-invariant (supply * reserve) was violated after the operation.
    error InvalidKInvariant();

    /**
     * @notice Calculates the reserve tokens required to purchase `_amount` pool tokens.
     * @param _supply Current liquid token supply.
     * @param _reserveBalance Current reserve balance.
     * @param _amount Requested amount of pool tokens to purchase.
     * @return Reserve token amount required.
     */
    function purchaseCost(
        uint256 _supply,
        uint256 _reserveBalance,
        uint256 _amount
    ) public view virtual returns (uint256) {
        if (_supply == 0) revert InvalidSupply();
        if (_reserveBalance == 0) revert InvalidReserveBalance();
        if (_amount == 0) return 0;

        uint256 k = _getK(_supply, _reserveBalance);
        uint256 _newSupply = _supply - _amount;
        uint256 _newReserve = k / _newSupply + 1;

        if (k > _getK(_newSupply, _newReserve)) revert InvalidKInvariant();

        return _newReserve - _reserveBalance;
    }

    /**
     * @notice Calculates the target amount of pool tokens received for a given reserve deposit.
     * @param _supply Current liquid token supply.
     * @param _reserveBalance Current reserve balance.
     * @param _amount Amount of reserve tokens deposited.
     * @return Target amount of pool tokens received.
     */
    function purchaseTargetAmount(
        uint256 _supply,
        uint256 _reserveBalance,
        uint256 _amount
    ) public view virtual returns (uint256) {
        if (_supply == 0) revert InvalidSupply();
        if (_reserveBalance == 0) revert InvalidReserveBalance();
        if (_amount == 0) return 0;

        uint256 k = _getK(_supply, _reserveBalance);
        uint256 _newReserve = _reserveBalance + _amount;
        uint256 _newSupply = k / _newReserve + 1;

        if (k > _getK(_newSupply, _newReserve)) revert InvalidKInvariant();

        return _supply - _newSupply;
    }

    /**
     * @notice Calculates the reserve tokens received for selling `_amount` pool tokens.
     * @param _supply Current liquid token supply.
     * @param _reserveBalance Current reserve balance.
     * @param _amount Amount of pool tokens to sell.
     * @return Reserve token amount received.
     */
    function saleTargetAmount(
        uint256 _supply,
        uint256 _reserveBalance,
        uint256 _amount
    ) public view virtual returns (uint256) {
        if (_supply == 0) revert InvalidSupply();
        if (_reserveBalance == 0) revert InvalidReserveBalance();
        if (_amount == 0) return 0;

        uint256 k = _getK(_supply, _reserveBalance);
        uint256 _newSupply = _supply + _amount;
        uint256 _newReserve = (k / _newSupply) + 1;

        if (k > _getK(_newSupply, _newReserve)) revert InvalidKInvariant();

        return _reserveBalance - _newReserve;
    }

    /**
     * @notice Returns the constant product invariant k = supply * reserveBalance.
     * @return The constant product invariant.
     */
    function _getK(uint256 _supply, uint256 _reserveBalance) internal pure returns (uint256) {
        return _supply * _reserveBalance;
    }
}
