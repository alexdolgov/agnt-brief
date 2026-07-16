pragma solidity ^0.8.23;

// ====================================================================
// |     ______                   _______                             |
// |    / _____________ __  __   / ____(_____  ____ _____  ________   |
// |   / /_  / ___/ __ `| |/_/  / /_  / / __ \/ __ `/ __ \/ ___/ _ \  |
// |  / __/ / /  / /_/ _>  <   / __/ / / / / / /_/ / / / / /__/  __/  |
// | /_/   /_/   \__,_/_/|_|  /_/   /_/_/ /_/\__,_/_/ /_/\___/\___/   |
// |                                                                  |
// ====================================================================
// ============================= FraxLoan =============================
// ====================================================================

import { FraxLoanBase, IERC20, SafeERC20, IFraxLoanCallback } from "src/FraxLoanBase.sol";

contract FraxLoan is FraxLoanBase {
    using SafeERC20 for IERC20;
    mapping(address => bool) public isExempt;
    uint256 public fee;
    uint256 public base;
    bool public onlyWhitelist;
    address public whitelistSetter;

    constructor(
        address _timelock,
        uint256 _fee,
        uint256 _base,
        address _whitelistSetter,
        bool _onlyWhitelist,
        address[] memory _exempt
    ) FraxLoanBase(_timelock) {
        fee = _fee;
        base = _base;
        onlyWhitelist = _onlyWhitelist;
        whitelistSetter = _whitelistSetter;
        uint len = _exempt.length;
        for (uint i; i < len; ++i) {
            isExempt[_exempt[i]] = true;
        }
    }

    // ============================= Core =================================

    /// @notice `getFraxloan` function initates the flashloan and triggers the callback
    /// @dev The contract receiving the loan must approve the fraxloan contract the appropriate
    ///      amount owed w/n the `onFraxLoan` callback, or this function will revert
    /// @param asset  The asset that we want to flashloan
    /// @param amount The amount of `asset` to flashloan
    /// @param data   Arbitrary data that may be used w/n the callback function
    function getFraxloan(address asset, uint256 amount, bytes calldata data) public override {
        if (onlyWhitelist)
            if (!isExempt[msg.sender]) revert OnlyWhitelist();

        uint256 assetBalanceBefore = IERC20(asset).balanceOf(address(this));

        IERC20(asset).safeTransfer(msg.sender, amount);

        emit Fraxloan(msg.sender, asset, amount);

        IFraxLoanCallback(msg.sender).onFraxLoan(asset, amount, data);

        if (!isExempt[msg.sender]) assetBalanceBefore += calcFee(amount);

        require(IERC20(asset).balanceOf(address(this)) >= assetBalanceBefore);
    }

    /// @notice `calcFee` function will return the fee associated with a given
    ///         loan amount
    /// @param amount The amount of the token you want to flashloan
    function calcFee(uint256 amount) public view returns (uint256 _fee) {
        _fee = ((amount * fee) / base);
    }

    // ============================= AdminGated ===============================

    /// @notice `setFee` function will change the fee associated with a flashloan
    /// @param _fee  The amount to change in fees per `_base`
    /// @param _base The amount loaned in order to change `_fee`
    function setFee(uint256 _fee, uint256 _base) public onlyTimelock {
        fee = _fee;
        base = _base;
        emit FeesChanged(fee, base);
    }

    /// @notice `setExempt` function will update whether a given caller is exempt from
    ///         paying fees for a flashloan
    /// @param user  The address to modify the `isExempt` status of
    /// @param value The status: `true` -> exempt from fees | `false` -> not exempt
    function setExempt(address user, bool value) public onlyTimelockOrSetter {
        isExempt[user] = value;
        emit FeeStatusChanges(user, value);
    }

    /// @notice `setOnlyWhitelist` function changes the scope of which addresses can take
    ///         a flashloan
    /// @param isOnlyWhitelist True --> only set addresses can take flashloan
    ///                        False --> Everyone can take a flashloan for a fee
    function setOnlyWhitelist(bool isOnlyWhitelist) public onlyTimelock {
        onlyWhitelist = isOnlyWhitelist;
        emit OnlyWhitelistSet(isOnlyWhitelist);
    }

    /// @notice `setOnlySetter` function changes the `whitelistSetter` address
    /// @dev Only callable via `timelock` or `whitelistSetter`
    /// @param newWhitelistSetter The new whitelistSetter address
    function setWhitelistSetter(address newWhitelistSetter) public onlyTimelockOrSetter {
        emit SetterSet(whitelistSetter, newWhitelistSetter);
        whitelistSetter = newWhitelistSetter;
    }

    // ============================== Modifiers ===============================

    modifier onlyTimelockOrSetter() {
        if (msg.sender != timelockAddress && msg.sender != whitelistSetter) revert OnlySetterOrTimelock();
        _;
    }

    // ============================== Events ===================================
    event FeesChanged(uint256 newFee, uint256 newBase);
    event FeeStatusChanges(address user, bool status);
    event OnlyWhitelistSet(bool status);
    event SetterSet(address newSetter, address oldSetter);

    // ============================== Errors ===================================
    error OnlyWhitelist();
    error OnlySetterOrTimelock();
}
