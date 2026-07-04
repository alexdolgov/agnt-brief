// SPDX-License-Identifier: MIT

pragma solidity 0.8.9;

import "../../interfaces/IController.sol";
import "../../openzeppelin/IERC20.sol";
import "../../openzeppelin/SafeERC20.sol";
import "./PaymentsManagerStorage.sol";

/// @notice Contract to pay salary to workers
/// @author dvpublic
contract PaymentsManager is PaymentsManagerStorage {
    using SafeERC20 for IERC20;

    function initialize(address controller_) external initializer {
        Controllable.__Controllable_init(controller_);
    }

    /// @notice Pay specified amount of salary tokens to the wallet
    /// @param amountST_ Amount of salary tokens, decimals 10^18
    function pay(address wallet_, uint amountST_, address salaryToken_) external override {
        if (msg.sender != address(IController(_controller()).debtsManager())) {
            revert ErrorAccessDenied();
        }

        if (amountST_ > IERC20(salaryToken_).balanceOf(address(this))) {
            revert ErrorNotEnoughFund();
        }

        if (amountST_ == 0) {
            revert ErrorIncorrectAmount();
        }

        if (wallet_ == address(0)) {
            revert ErrorZeroAddress(0);
        }

        IERC20(salaryToken_).safeTransfer(wallet_, amountST_);
        emit OnPayment(wallet_, amountST_, salaryToken_);
    }

    /// @notice Return available amount of salary token on balance of the payment manager
    function balance(address salaryToken_) external view returns (uint) {
        return IERC20(salaryToken_).balanceOf(address(this));
    }

    /// @dev Move tokens to governance
    ///      This contract should contain only governance funds
    function moveTokensToGovernance(address token_, uint amount) external {
        onlyGovernance();

        uint tokenBalance = IERC20(token_).balanceOf(address(this));
        if (tokenBalance < amount) {
            revert ErrorNotEnoughFund();
        }
        IERC20(token_).safeTransfer(IController(_controller()).governance(), amount);

        emit OnTokenMoved(token_, amount);
    }
}


