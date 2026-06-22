// SPDX-License-Identifier: MIT

pragma solidity 0.8.21;

interface ITierStorage {

    enum UserType {
        LP,
        FUTURES_TRADER
    }
    

    /**
     * @notice Get the fee rate and maximum leverage for a given user.
     * @param user User address.
     * @param userType The type of the user.
     * @return _feeDiscountRate The fee rate for the given tier.
     * @return _maxLeverage The maximum leverage for the given tier.
     */
    function getTierConfigs(address user, UserType userType)
        external
        view
        returns (uint32 _feeDiscountRate, uint32 _maxLeverage);
}
