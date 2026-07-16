pragma solidity ^0.8.23;

// ====================================================================
// |     ______                   _______                             |
// |    / _____________ __  __   / ____(_____  ____ _____  ________   |
// |   / /_  / ___/ __ `| |/_/  / /_  / / __ \/ __ `/ __ \/ ___/ _ \  |
// |  / __/ / /  / /_/ _>  <   / __/ / / / / / /_/ / / / / /__/  __/  |
// | /_/   /_/   \__,_/_/|_|  /_/   /_/_/ /_/\__,_/_/ /_/\___/\___/   |
// |                                                                  |
// ====================================================================
// =========================== FraxLoanBase ===========================
// ====================================================================

import { Timelock2Step } from "frax-std/access-control/v2/Timelock2Step.sol";
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { IFraxLoanCallback } from "src/interfaces/IFraxLoanCallback.sol";

contract FraxLoanBase is Timelock2Step {
    using SafeERC20 for IERC20;

    constructor(address timelock) Timelock2Step(timelock) {}

    // ============================= Core =================================

    /// @notice `getFraxloan` function initates the flashloan and triggers the callback
    /// @dev The contract receiving the loan must approve the fraxloan contract the appropriate
    ///      amount owed w/n the `onFraxLoan` callback, or this function will revert
    /// @param asset  The asset that we want to flashloan
    /// @param amount The amount of `asset` to flashloan
    /// @param data   Arbitrary data that may be used w/n the callback function
    function getFraxloan(address asset, uint256 amount, bytes calldata data) public virtual {
        uint256 assetBalanceBefore = IERC20(asset).balanceOf(address(this));

        IERC20(asset).safeTransfer(msg.sender, amount);

        emit Fraxloan(msg.sender, asset, amount);

        IFraxLoanCallback(msg.sender).onFraxLoan(asset, amount, data);

        require(IERC20(asset).balanceOf(address(this)) >= assetBalanceBefore);
    }

    // ============================= AdminGated ===============================

    /// @dev Override in child if undesired functionality
    function withdrawERC20(address asset, uint256 amount) external virtual onlyTimelock {
        IERC20(asset).safeTransfer(msg.sender, amount);
    }

    // ============================== Modifiers ===============================

    modifier onlyTimelock() {
        _requireSenderIsTimelock();
        _;
    }

    // ============================== Overrides ===============================

    function renounceTimelock() external pure override {
        revert();
    }

    // ============================== Events ===================================

    event Fraxloan(address recipient, address asset, uint256 loaned);
}
