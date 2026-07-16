// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.24;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import "@openzeppelin/contracts/utils/math/Math.sol";
import "./interfaces/IVault.sol";
import "./interfaces/IRedeemOperator.sol";
import "./common/Constants.sol";
import "./common/Errors.sol";

contract RedeemOperator is Constants, Ownable, IRedeemOperator {
    using SafeERC20 for IERC20;
    using Math for uint256;
    using EnumerableSet for EnumerableSet.AddressSet;

    uint256 public constant MAX_GAS_LIMIT = 300_000_000;

    // Address of the vault contract (immutable)
    address public immutable vault;

    event UpdateOperator(address oldOperator, address newOperator);
    event UpdateFeeReceiver(address oldFeeReceiver, address newFeeReceiver);

    modifier onlyVault() {
        if (msg.sender != vault) revert Errors.CallerNotVault();
        _;
    }

    modifier onlyOperator() {
        if (msg.sender != operator) revert Errors.CallerNotOperator();
        _;
    }

    /**
     * @dev Initializes the contract with the vault, operator, fee receiver, and gas parameters.
     * @param _vault Address of the vault contract.
     * @param _operator Address of the operator.
     * @param _feeReceiver Address to receive fees.
     */
    constructor(address _admin, address _vault, address _operator, address _feeReceiver) Ownable(_admin) {
        if (_vault == address(0)) revert Errors.InvalidVault();
        if (_operator == address(0)) revert Errors.InvalidNewOperator();
        if (_feeReceiver == address(0)) revert Errors.InvalidFeeReceiver();
        vault = _vault;
        operator = _operator;
        feeReceiver = _feeReceiver;
    }

    // Address of the operator managing withdrawals
    address public operator;

    // Address to receive fees
    address public feeReceiver;

    // Mapping to track withdrawal requests
    mapping(address => uint256) private _withdrawalRequest;

    // Set to keep track of pending withdrawers
    EnumerableSet.AddressSet private _pendingWithdrawers;

    /**
     * @dev Updates the operator address.
     * @param _newOperator New operator address.
     */
    function updateOperator(address _newOperator) external onlyOwner {
        if (_newOperator == address(0)) revert Errors.InvalidNewOperator();
        emit UpdateOperator(operator, _newOperator);
        operator = _newOperator;
    }

    /**
     * @dev Update the address of the recipient for management fees.
     * @param _newFeeReceiver The new address of the recipient for management fees.
     */
    function updateFeeReceiver(address _newFeeReceiver) external onlyOwner {
        if (_newFeeReceiver == address(0)) revert Errors.InvalidFeeReceiver();
        emit UpdateFeeReceiver(feeReceiver, _newFeeReceiver);
        feeReceiver = _newFeeReceiver;
    }

    /**
     * @dev Registers a withdrawal request for a user.
     * @param _user Address of the user requesting withdrawal.
     * @param _shares Amount of shares to withdraw.
     */
    function registerWithdrawal(address _user, uint256 _shares) external onlyVault {
        if (_shares == 0) revert Errors.InvalidShares();
        if (_pendingWithdrawers.contains(_user)) {
            revert Errors.IncorrectState();
        } else {
            // Register new withdrawal request
            _pendingWithdrawers.add(_user);
            _withdrawalRequest[_user] = _shares;
        }
    }

    /**
     * @dev Returns the withdrawal request details for a user.
     * @param _user Address of the user.
     * @return WithdrawalRequest struct containing the token address and shares amount.
     */
    function withdrawalRequest(address _user) external view returns (uint256) {
        return _withdrawalRequest[_user];
    }

    /**
     * @dev Returns the withdrawal request details for multiple users.
     * @param _users Array of user addresses.
     * @return shares_ Array of shares requested for withdrawal.
     */
    function withdrawalRequests(address[] calldata _users) external view returns (uint256[] memory shares_) {
        shares_ = new uint256[](_users.length);
        for (uint256 i = 0; i < _users.length; i++) {
            shares_[i] = _withdrawalRequest[_users[i]];
        }
    }

    function pendingWithdrawersCount() external view returns (uint256) {
        return _pendingWithdrawers.length();
    }

    /**
     * @dev Returns a paginated list of pending withdrawers.
     * @param _limit Maximum number of addresses to return.
     * @param _offset Offset for pagination.
     * @return result_ Array of addresses of pending withdrawers.
     */
    function pendingWithdrawers(uint256 _limit, uint256 _offset) external view returns (address[] memory result_) {
        uint256 count_ = _pendingWithdrawers.length();
        if (_offset >= count_ || _limit == 0) return result_;

        count_ -= _offset;
        if (count_ > _limit) count_ = _limit;

        result_ = new address[](count_);
        for (uint256 i = 0; i < count_; ++i) {
            result_[i] = _pendingWithdrawers.at(_offset + i);
        }
        return result_;
    }

    function allPendingWithdrawers() external view returns (address[] memory) {
        return _pendingWithdrawers.values();
    }

    function _getTotalShares(address[] calldata _users) internal view returns (uint256 totalShares_) {
        if (_users.length == 0) return 0;
        for (uint256 i = 0; i < _users.length; ++i) {
            if (!_pendingWithdrawers.contains(_users[i])) revert Errors.InvalidWithdrawalUser();
            totalShares_ += _withdrawalRequest[_users[i]];
        }
    }

    /**
     * @dev Confirms withdrawals for a list of users.
     * @param _users Array of user addresses to confirm withdrawals for.
     */
    function _confirmWithdrawal(address[] calldata _users, uint256 _totalShares, uint256 _gasPerUser) internal {
        uint256 tokenBalanceBefore_ = IERC20(YieldLayerStETH).balanceOf(address(this));
        IVault(vault).redeemFromOperator(_totalShares);
        uint256 tokenBalanceGet_ = IERC20(YieldLayerStETH).balanceOf(address(this)) - tokenBalanceBefore_;
        uint256 assetPerShare_ = tokenBalanceGet_.mulDiv(PRECISION, _totalShares, Math.Rounding.Floor);
        address thisUser_;
        uint256 thisUserGet_;
        for (uint256 i = 0; i < _users.length; ++i) {
            thisUser_ = _users[i];
            thisUserGet_ = _withdrawalRequest[thisUser_].mulDiv(assetPerShare_, PRECISION, Math.Rounding.Floor);
            // If the user's share is not enough to cover the gas, it will fail.
            IERC20(YieldLayerStETH).safeTransfer(thisUser_, thisUserGet_ - _gasPerUser);
            _pendingWithdrawers.remove(thisUser_);
            delete _withdrawalRequest[thisUser_];
        }
        uint256 totalGas_ = _gasPerUser * _users.length;
        if (totalGas_ > 0) {
            IERC20(YieldLayerStETH).safeTransfer(feeReceiver, totalGas_);
        }
    }

    function confirmWithdrawal(address[] calldata _users, uint256 _totalGasLimit) external onlyOperator {
        uint256 totalShares_ = _getTotalShares(_users);
        uint256 gasPerUser_ = _totalGasLimit * tx.gasprice / (_users.length);
        _confirmWithdrawal(_users, totalShares_, gasPerUser_);
    }

    function _refundWithdrawal(address _user) internal {
        if (!_pendingWithdrawers.contains(_user)) revert Errors.InvalidWithdrawalUser();
        uint256 shares_ = _withdrawalRequest[_user];
        delete _withdrawalRequest[_user];
        _pendingWithdrawers.remove(_user);
        IERC20(vault).safeTransfer(_user, shares_);
    }

    function refundWithdrawals(address[] calldata _users) external onlyOperator {
        for (uint256 i = 0; i < _users.length; ++i) {
            _refundWithdrawal(_users[i]);
        }
    }
}
