// SPDX-License-Identifier: MIT
pragma solidity 0.8.29;

import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import {IFeePolicy} from "../interfaces/IFeePolicy.sol";

/// @title Default Fee Policy
abstract contract FeePolicy is IFeePolicy, Initializable {
    error AddressIsNull();
    error InvalidFee();

    uint256 constant MAX_FEE = 0.2e18;

    uint256 public depositFee; // 18 decimals percent (e.g. 0.05 == 5%)
    uint256 public withdrawFee; // 18 decimals percent (e.g. 0.05 == 5%)

    constructor() {
        _disableInitializers();
    }

    function __FeePolicy_init(uint256 depositFee_, uint256 withdrawFee_) internal onlyInitializing {
        if (depositFee_ > MAX_FEE || withdrawFee_ > MAX_FEE) revert InvalidFee();
        depositFee = depositFee_;
        withdrawFee = withdrawFee_;
    }

    /// @notice Quote fee to pay when increasing position's allocated amount
    /// Note:
    /// - This function is called *AFTER* the allocated amount change
    ///
    /// @param amount_ The total allocated delta amount
    /// @return _fee The fee amount
    function quoteAllocatedInFee(uint256 amount_) external view virtual returns (uint256 _fee) {
        return _calculateDepositFee(amount_);
    }

    /// @notice Quote fee to pay when decreasing position's allocated amount
    /// Note:
    /// - This function is called *AFTER* the allocated amount change
    ///
    /// @param amount_ The total allocated delta amount
    /// @return _fee The fee amount
    function quoteAllocatedOutFee(uint256 amount_) external view virtual returns (uint256 _fee) {
        return _calculateWithdrawFee(amount_);
    }

    /// @notice Quote fee to pay based on time
    /// This function is mostly useful for APY-based policies (e.g., calculating fee to pay based on the profit APY rate since the latest snapshot)
    //
    /// @return The fee amount
    function quoteTimeBasedFee() external view virtual returns (uint256 /*_fee*/) {}

    /// @notice Internal function to calculate deposit fee
    /// @param amount_ The total allocated delta amount
    /// @return _fee The fee amount
    function _calculateDepositFee(uint256 amount_) internal view returns (uint256 _fee) {
        uint256 _depositFee = depositFee;
        if (_depositFee > 0) {
            _fee = (amount_ * _depositFee) / 1e18;
        }
    }

    /// @notice Internal function to calculate withdraw fee
    /// @param amount_ The total allocated delta amount
    /// @return _fee The fee amount
    function _calculateWithdrawFee(uint256 amount_) internal view returns (uint256 _fee) {
        uint256 _withdrawFee = withdrawFee;
        if (_withdrawFee > 0) {
            _fee = (amount_ * _withdrawFee) / 1e18;
        }
    }
}
