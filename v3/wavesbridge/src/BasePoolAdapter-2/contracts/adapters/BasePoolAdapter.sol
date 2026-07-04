// SPDX-License-Identifier: UNLICENSED
// Copyright (c) Eywa.Fi, 2021-2025 - all rights reserved
pragma solidity 0.8.17;

import "@openzeppelin/contracts/access/AccessControlEnumerable.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "../EndPoint.sol";
import {IBasePoolAdapter} from "../interfaces/IBasePoolAdapter.sol";
import {IAddressBook} from "../interfaces/IAddressBook.sol";

abstract contract BasePoolAdapter is IBasePoolAdapter, EndPoint, AccessControlEnumerable {

    /// @notice The operator role id.
    /// @dev Only the operator can set the default fee value.
    bytes32 public constant OPERATOR_ROLE = keccak256("OPERATOR_ROLE");

    /// @notice The accountant role id.
    /// @dev Only the accountant can withdraw fee.
    bytes32 public constant ACCOUNTANT_ROLE = keccak256("ACCOUNTANT_ROLE");

    /// @inheritdoc IBasePoolAdapter
    uint256 public constant FEE_DENOMINATOR = 1000000;

    /// @inheritdoc IBasePoolAdapter
    uint256 public constant MAX_FEE = 100000;

    /// @notice The default fee value.
    /// @dev The value of the fee charged by the adapter for making operations.
    /// Default fee value is used if the fee is not explicitly set.
    uint256 public defaultFee;

    /// @notice The Router contract address.
    /// @dev Only the router contract should call the `add()`, `swap()`, and `remove()` functions of the adapters.
    address public router;

    /// @notice The fee value for specific pool.
    /// @dev The value of the fee charged by the adapter for making operations.
    mapping(address => uint256) public feeByPool;

    /// @notice The modifier to verify that the function is called from the router contract.
    /// @dev This modifier should be used in the `add()`, `swap()`, and `remove()` functions of the adapters.
    modifier onlyRouter() {
        require(msg.sender == router, "BasePoolAdapter: caller isn't Router");
        _;
    }

    /// @notice Contract constructor.
    /// @dev Sets the AddressBook contract address and default administrator role.
    /// @param addressBook_ the AddressBook contract address.
    constructor(address addressBook_) EndPoint(addressBook_) {
        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
        _resetRouter();
    }

    /// @notice Setting the AddressBook contract address.
    /// @dev Only an account with the DEFAULT_ADMIN_ROLE role can set the value.
    /// @param addressBook_ the AddressBook contract address.
    function setAddressBook(address addressBook_) external onlyRole(DEFAULT_ADMIN_ROLE) {
        _setAddressBook(addressBook_);
    }

    /// @notice The function reset the router contract address from the addressbook contract.
    /// @dev Only an account with the DEFAULT_ADMIN_ROLE role can set the value.
    function resetRouter() external onlyRole(DEFAULT_ADMIN_ROLE) {
        _resetRouter();
    }

    /// @notice Setting the default fee value.
    /// @dev Only an account with the OPERATOR_ROLE role can set the value.
    /// @param defaultFee_ the default fee value.
    function setDefaultFee(uint256 defaultFee_) external onlyRole(OPERATOR_ROLE) {
        require(defaultFee_ <= MAX_FEE, "BasePoolAdapter: the value of the fee is too high");
        defaultFee = defaultFee_;
    }

    /// @inheritdoc IBasePoolAdapter
    function setFee(address pool_, uint256 fee_) external {
        require(
            msg.sender == IAddressBook(addressBook).whitelist() || hasRole(OPERATOR_ROLE, msg.sender),
            "BasePoolAdapter: caller isn't a Whitelist contract and does't have the OPERATOR_ROLE"
        );
        _setFee(pool_, fee_);
    } 

    /// @notice Withdrawal of fee from the Adapter contract to the Treasury contract for specific tokens.
    /// @dev The function outputs all the fee accumulated on the Adapter contract to the Treasury contract.
    /// Only an account with the ACCOUNTANT_ROLE role can set the value.
    /// @param tokens_ An array of token addresses.
    function withdraw(address[] calldata tokens_) external onlyRole(ACCOUNTANT_ROLE) {
        address treasury = IAddressBook(addressBook).treasury();
        for (uint256 i = 0; i < tokens_.length; i++) {
            IERC20 token = IERC20(tokens_[i]);
            SafeERC20.safeTransfer(token, treasury, token.balanceOf(address(this)));
        }
    }

    /// @inheritdoc IBasePoolAdapter
    function fee(address pool_) public view returns(uint256) {
        return _fee(pool_);
    }

    /// @notice The function reset the router contract address from the addressbook contract.
    function _resetRouter() internal {
        router = IAddressBook(addressBook).router(uint64(block.chainid));
    }

    /// @notice Setting the fee value for specific pool.
    /// @dev A check is performed that the fee is not greater than the MAX_FEE,
    /// except for the case of setting the fee to an obvious zero (max uint256)
    /// @param pool_ the pool contract address.
    /// @param fee_ the fee value.
    function _setFee(address pool_, uint256 fee_) internal {
        require(fee_ <= MAX_FEE || fee_ == type(uint256).max, "BasePoolAdapter: the value of the fee is too high");
        feeByPool[pool_] = fee_;
    }

    /// @notice Returns the current value of the fee for specific pool.
    /// @dev If the fee is set explicitly, its value is returned.
    /// If the fee is not set explicitly, the default fee value is returned.
    /// If fee value is set to maximum - it is considered as zero fee
    /// @param pool_ the pool address.
    /// @return The the current fee value.
    function _fee(address pool_) internal view returns(uint256) {
        uint256 currentFee = feeByPool[pool_];
        if (currentFee == 0) { 
            currentFee = defaultFee;
        } else if (currentFee == type(uint256).max) {
            currentFee = 0;
        }
        return currentFee;
    }

    /// @notice returns the value of tokens to execute the operations minus the fee for specific pool.
    /// @dev The value of tokens for the operation is calculated based on the current value of the fee.
    /// @param pool_ the pool address.
    /// @param amount_ the value of tokens.
    /// @return result_ the value of tokens minus the fee.
    function _subtractFee(address pool_, uint256 amount_) internal view returns(uint256 result_) {
        result_ = amount_;
        uint256 fee_ = _fee(pool_);
        if (fee_ != 0) {
            result_ = amount_ - amount_ * fee_ / FEE_DENOMINATOR;
        }
    }
}
