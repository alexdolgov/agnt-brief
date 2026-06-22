// SPDX-License-Identifier: MIT
pragma solidity 0.8.25;

import "./HourglassLockDepositorBase.sol";

/**
 *  @notice Each timelocked token will be responsible for managing it's own types of deposits & withdrawals.
 *      This may include different numbers of receipt tokens.
 */
contract HourglassLockDepositor is HourglassLockDepositorBase {
    constructor() {
        _disableInitializers();
    }

    /// @notice Initialize the depositor
    /// @param _underlying The underlying token address
    /// @param _maturity The maturity timestamp
    /// @param _nameSuffix The suffix to append to the name
    /// @param _symbolSuffix The suffix to append to the symbol
    /// @param _receiptImpl The receipt implementation address
    /// @param _decimals The number of decimals of the deposit token
    function initialize(
        address _underlying,
        uint256 _maturity,
        string memory _nameSuffix,
        string memory _symbolSuffix,
        address _receiptImpl,
        uint256 _decimals
    ) external initializer {
        __Depositor_Init(_underlying, _maturity, _nameSuffix, _symbolSuffix, _receiptImpl, _decimals);
    }
}
