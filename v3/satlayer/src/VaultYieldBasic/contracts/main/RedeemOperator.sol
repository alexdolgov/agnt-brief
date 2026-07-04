// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.25;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import "@openzeppelin/contracts/utils/Address.sol";
import "../interfaces/IRedeemOperator.sol";
import "../interfaces/IVault.sol";
import {Errors as CustomErrors} from "./libraries/Errors.sol";
import "./common/Constants.sol";
import {console as cc} from "hardhat/console.sol";

/**
 * @title RedeemOperator contract
 * @author Naturelab
 * @notice Manages temporary storage of share tokens and facilitates redemption operations.
 * @dev Implements the IRedeemOperator interface and uses OpenZeppelin libraries for safety and utility functions.
 */
contract RedeemOperator is IRedeemOperator, Constants, Ownable {
    using SafeERC20 for IERC20;
    using Math for uint256;
    using EnumerableSet for EnumerableSet.AddressSet;

    // Used for precise calculations
    uint256 public immutable PRECISION;

    // Address of the vault contract (immutable)
    address public immutable vault;

    // Address of the core token contract (immutable)
    address public immutable asset;

    // Address of the operator managing withdrawals
    address public operator;

    // Address to receive fees
    address public feeReceiver;

    // Mapping to track withdrawal requests
    mapping(uint256 => mapping(address => uint256)) private _withdrawalRequest;

    // Set to keep track of pending withdrawers
    mapping(uint256 => EnumerableSet.AddressSet) private _pendingWithdrawers;

    // Mapping to track instant withdrawal requests
    mapping(uint256 => mapping(address => uint256)) private _withdrawalRequestInstant;

    // Set to keep track of pending instant withdrawers
    mapping(uint256 => EnumerableSet.AddressSet) private _pendingWithdrawersInstant;

    // Check vault's exchange price and input exchange price; 300 / 10000 = 3%
    uint256 public exchangePriceRate;

    modifier onlyVault() {
        if (msg.sender != vault) revert CustomErrors.CallerNotVault();
        _;
    }

    modifier onlyOperator() {
        if (msg.sender != operator) revert CustomErrors.CallerNotOperator();
        _;
    }

    /**
     * @dev Initializes the contract with the vault, operator, fee receiver, and gas parameters.
     * @param _admin Address of the admin.
     * @param _vault Address of the vault contract.
     * @param _asset Address of the core token contract.
     * @param _operator Address of the operator.
     * @param _feeReceiver Address to receive fees.
     */
    constructor(address _admin, address _vault, address _asset, address _operator, address _feeReceiver)
        Ownable(_admin)
    {
        if (_vault == address(0)) revert CustomErrors.InvalidVault();
        if (_asset == address(0)) revert CustomErrors.InvalidAsset();
        if (_operator == address(0)) revert CustomErrors.InvalidNewOperator();
        if (_feeReceiver == address(0)) revert CustomErrors.InvalidFeeReceiver();
        vault = _vault;
        operator = _operator;
        feeReceiver = _feeReceiver;
        asset = _asset;
        PRECISION = IVault(_vault).getPrecison();
        exchangePriceRate = 300;
    }

    /**
     * @dev Updates the operator address.
     * @param _newOperator New operator address.
     */
    function updateOperator(address _newOperator) external onlyOwner {
        if (_newOperator == address(0)) revert CustomErrors.InvalidNewOperator();
        emit UpdateOperator(operator, _newOperator);
        operator = _newOperator;
    }

    /**
     * @dev Update the address of the recipient for management fees.
     * @param _newFeeReceiver The new address of the recipient for management fees.
     */
    function updateFeeReceiver(address _newFeeReceiver) external onlyOwner {
        if (_newFeeReceiver == address(0)) revert CustomErrors.InvalidFeeReceiver();
        emit UpdateFeeReceiver(feeReceiver, _newFeeReceiver);
        feeReceiver = _newFeeReceiver;
    }

    /**
     * @dev Registers a withdrawal request for a user.
     * @param _user Address of the user requesting withdrawal.
     * @param _shares Amount of shares to withdraw.
     * @param _isRapid Is rapid withdraw.
     */
    function registerWithdrawal(address _user, uint256 _shares, bool _isRapid, uint256 _epoch) external onlyVault {
        if (_shares == 0) revert CustomErrors.InvalidShares();

        // Handle existing pending withdrawal

        if (_isRapid) {
            if (_pendingWithdrawersInstant[_epoch].contains(_user)) revert CustomErrors.IncorrectState();

            _pendingWithdrawersInstant[_epoch].add(_user);
            _withdrawalRequestInstant[_epoch][_user] = _shares;
        } else {
            if (_pendingWithdrawers[_epoch].contains(_user)) revert CustomErrors.IncorrectState();

            // Register new withdrawal request
            _pendingWithdrawers[_epoch].add(_user);
            _withdrawalRequest[_epoch][_user] = _shares;
        }

        emit RegisterWithdrawal(_user, _shares, _isRapid);
    }

    /**
     * @dev Returns the withdrawal request details for a user.
     * @param _user Address of the user.
     * @param _isRapid Is rapid withdraw.
     * @return WithdrawalRequest struct containing the token address and shares amount.
     */
    function withdrawalRequest(address _user, bool _isRapid, uint256 _epoch) external view returns (uint256) {
        if (_isRapid) {
            return (_withdrawalRequestInstant[_epoch][_user]);
        } else {
            return (_withdrawalRequest[_epoch][_user]);
        }
    }

    /**
     * @dev Returns the withdrawal request details for multiple users.
     * @param _users Array of user addresses.
     * @param _isRapid Is rapid withdraw.
     * @return shares_ Array of shares requested for withdrawal.
     */
    function withdrawalRequests(address[] calldata _users, bool _isRapid, uint256 _epoch)
        external
        view
        returns (uint256[] memory shares_)
    {
        uint256 count_ = _users.length;
        if (count_ == 0) revert CustomErrors.InvalidLength();

        shares_ = new uint256[](count_);
        for (uint256 i = 0; i < count_; ++i) {
            if (_isRapid) {
                shares_[i] = _withdrawalRequestInstant[_epoch][_users[i]];
            } else {
                shares_[i] = _withdrawalRequest[_epoch][_users[i]];
            }
        }
    }

    /**
     * @dev Returns the number of pending withdrawers.
     * @param _isRapid Is rapid withdraw.
     * @return Number of pending withdrawers.
     */
    function pendingWithdrawersCount(bool _isRapid, uint256 _epoch) external view returns (uint256) {
        if (_isRapid) {
            return _pendingWithdrawersInstant[_epoch].length();
        } else {
            return _pendingWithdrawers[_epoch].length();
        }
    }

    /**
     * @dev Returns a paginated list of pending withdrawers.
     * @param _limit Maximum number of addresses to return.
     * @param _offset Offset for pagination.
     * @param _isRapid Is rapid withdraw.
     * @return result_ Array of addresses of pending withdrawers.
     */
    function pendingWithdrawers(uint256 _limit, uint256 _offset, bool _isRapid, uint256 _epoch)
        external
        view
        returns (address[] memory result_)
    {
        uint256 count_;
        if (_isRapid) {
            count_ = _pendingWithdrawersInstant[_epoch].length();
        } else {
            count_ = _pendingWithdrawers[_epoch].length();
        }

        if (_offset >= count_ || _limit == 0) return result_;

        count_ -= _offset;
        if (count_ > _limit) count_ = _limit;

        result_ = new address[](count_);
        for (uint256 i = 0; i < count_; ++i) {
            if (_isRapid) {
                result_[i] = _pendingWithdrawersInstant[_epoch].at(_offset + i);
            } else {
                result_[i] = _pendingWithdrawers[_epoch].at(_offset + i);
            }
        }
        return result_;
    }

    /**
     * @dev Returns the list of all pending withdrawers.
     * @param _isRapid Is rapid withdraw.
     * @return Array of addresses of all pending withdrawers.
     */
    function allPendingWithdrawers(bool _isRapid, uint256 _epoch) external view returns (address[] memory) {
        if (_isRapid) {
            return _pendingWithdrawersInstant[_epoch].values();
        } else {
            return _pendingWithdrawers[_epoch].values();
        }
    }

    function confirmWithdrawal(
        address[] memory _users,
        uint256 _totalGasTokenAmount,
        bool _isRapid,
        uint256 _epoch,
        uint256 _fairExchangePrice
    ) external onlyOperator {
        uint256 exchangePrice_ = IVault(vault).exchangePrice();
        cc.log("ExchangePrice: ", exchangePrice_);
        bool isExceeded_ = _fairExchangePrice > exchangePrice_
            ? ((exchangePrice_ * (10000 + exchangePriceRate) / 10000) < _fairExchangePrice)
            : ((exchangePrice_ * (10000 - exchangePriceRate) / 10000) > _fairExchangePrice);

        if (isExceeded_) revert CustomErrors.ExceededExchangePriceRate();

        uint256 totalShares_;
        for (uint256 i = 0; i < _users.length; ++i) {
            if (_isRapid) {
                if (!_pendingWithdrawersInstant[_epoch].contains(_users[i])) {
                    revert CustomErrors.InvalidWithdrawalUser();
                }
                totalShares_ += _withdrawalRequestInstant[_epoch][_users[i]];
            } else {
                if (!_pendingWithdrawers[_epoch].contains(_users[i])) revert CustomErrors.InvalidWithdrawalUser();
                totalShares_ += _withdrawalRequest[_epoch][_users[i]];
            }
        }

        uint256 tokenBalanceBefore_ = IERC20(asset).balanceOf(address(this));
        IVault(vault).optionalRedeem(asset, totalShares_, _fairExchangePrice, address(this), address(this));
        uint256 tokenBalanceGet_ = IERC20(asset).balanceOf(address(this)) - tokenBalanceBefore_;
        uint256 assetPerShare_ = tokenBalanceGet_.mulDiv(PRECISION, totalShares_, Math.Rounding.Floor);

        address thisUser_;
        uint256 thisUserGet_;
        uint256 gasPerUser_ = _totalGasTokenAmount / _users.length;
        uint256[] memory amounts_ = new uint256[](_users.length);
        for (uint256 i = 0; i < _users.length; ++i) {
            thisUser_ = _users[i];
            if (_isRapid) {
                thisUserGet_ =
                    _withdrawalRequestInstant[_epoch][thisUser_].mulDiv(assetPerShare_, PRECISION, Math.Rounding.Floor);
            } else {
                thisUserGet_ =
                    _withdrawalRequest[_epoch][thisUser_].mulDiv(assetPerShare_, PRECISION, Math.Rounding.Floor);
            }
            // If the user's share is not enough to cover the gas, it will fail.
            thisUserGet_ -= gasPerUser_;
            IERC20(asset).safeTransfer(thisUser_, thisUserGet_);
            amounts_[i] = thisUserGet_;
            if (_isRapid) {
                _pendingWithdrawersInstant[_epoch].remove(thisUser_);
                delete _withdrawalRequestInstant[_epoch][thisUser_];
            } else {
                _pendingWithdrawers[_epoch].remove(thisUser_);
                delete _withdrawalRequest[_epoch][thisUser_];
            }
        }
        emit ConfirmWithdrawal(_users, amounts_, _isRapid);

        uint256 totalGas_ = gasPerUser_ * _users.length;
        IERC20(asset).safeTransfer(feeReceiver, totalGas_);
    }

    function refundWithdraw(address[] memory _users, bool _isRapid, uint256 _epoch) external onlyOperator {
        for (uint256 i = 0; i < _users.length; ++i) {
            if (_isRapid) {
                if (!_pendingWithdrawersInstant[_epoch].contains(_users[i])) {
                    revert CustomErrors.InvalidWithdrawalUser();
                }
                IERC20(vault).safeTransfer(_users[i], _withdrawalRequestInstant[_epoch][_users[i]]);
                _pendingWithdrawersInstant[_epoch].remove(_users[i]);
                delete _withdrawalRequestInstant[_epoch][_users[i]];

                IVault(vault).refundInstantLimit(_users[i], _withdrawalRequestInstant[_epoch][_users[i]]);
            } else {
                if (!_pendingWithdrawers[_epoch].contains(_users[i])) revert CustomErrors.InvalidWithdrawalUser();
                IERC20(vault).safeTransfer(_users[i], _withdrawalRequest[_epoch][_users[i]]);
                _pendingWithdrawers[_epoch].remove(_users[i]);
                delete _withdrawalRequest[_epoch][_users[i]];
            }
        }
    }

    function cancelWithdraw(address _user, bool _isRapid, uint256 _epoch) external onlyVault {
        if (_isRapid) {
            if (!_pendingWithdrawersInstant[_epoch].contains(_user)) revert CustomErrors.InvalidWithdrawalUser();
            IERC20(vault).safeTransfer(_user, _withdrawalRequestInstant[_epoch][_user]);
            _pendingWithdrawersInstant[_epoch].remove(_user);
            delete _withdrawalRequestInstant[_epoch][_user];
        } else {
            if (!_pendingWithdrawers[_epoch].contains(_user)) revert CustomErrors.InvalidWithdrawalUser();
            IERC20(vault).safeTransfer(_user, _withdrawalRequest[_epoch][_user]);
            _pendingWithdrawers[_epoch].remove(_user);
            delete _withdrawalRequest[_epoch][_user];
        }
    }

    /**
     * @dev Handles accidental transfers of tokens or ETH to this contract.
     * @param _token Address of the token to sweep.
     */
    function sweep(address _token) external onlyOwner {
        uint256 amount_ = IERC20(_token).balanceOf(address(this));
        IERC20(_token).safeTransfer(msg.sender, amount_);

        uint256 ethbalance_ = address(this).balance;
        if (ethbalance_ > 0) {
            Address.sendValue(payable(msg.sender), ethbalance_);
        }

        emit Sweep(_token);
    }

    function updateExchangePriceRate(uint256 _newRate) external onlyOwner {
        emit UpdateExchangePriceRate(exchangePriceRate, _newRate);
        exchangePriceRate = _newRate;
    }
}
