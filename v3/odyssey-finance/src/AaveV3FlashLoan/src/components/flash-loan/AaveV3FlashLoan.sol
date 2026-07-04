// SPDX-License-Identifier: MIT

pragma solidity 0.8.23;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IERC3156FlashLender} from "@openzeppelin/contracts/interfaces/IERC3156FlashLender.sol";
import {IERC3156FlashBorrower} from "@openzeppelin/contracts/interfaces/IERC3156FlashBorrower.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {ERC3156Lib} from "src/libraries/ERC3156Lib.sol";
import {IPoolAddressesProvider, IPool, IPoolDataProvider} from "src/interfaces/external/IAaveV3.sol";

/// @title The Aave V3 flash-loan implementation
/// @dev This contract is called by the `FlashLoanExecutor`
contract AaveV3FlashLoan is IERC3156FlashLender {
    using SafeERC20 for IERC20;

    uint256 private constant MAX_BPS = 100_00;

    IPoolAddressesProvider public immutable addressesProvider;

    error AddressIsNull();
    error InvalidSender();
    error InvalidInitiator();
    error CallbackFailed();
    error TokenNotSupported();

    constructor(address addressesProvider_) {
        if (address(addressesProvider_) == address(0)) revert AddressIsNull();

        addressesProvider = IPoolAddressesProvider(addressesProvider_);
    }

    /// @inheritdoc IERC3156FlashLender
    function maxFlashLoan(address token_) external view returns (uint256) {
        IPoolAddressesProvider _addressesProvider = addressesProvider;
        IPoolDataProvider _poolDataProvider = IPoolDataProvider(_addressesProvider.getPoolDataProvider());

        (address _aTokenAddress, , ) = _poolDataProvider.getReserveTokensAddresses(token_);

        if (_aTokenAddress == address(0)) {
            return 0;
        }

        (, , uint256 _availableLiquidity, , , , , , , , , ) = _poolDataProvider.getReserveData(token_);

        return _availableLiquidity;
    }

    /// @inheritdoc IERC3156FlashLender
    function flashFee(address token_, uint256 amount_) external view returns (uint256) {
        IPoolAddressesProvider _addressesProvider = addressesProvider;
        IPoolDataProvider _poolDataProvider = IPoolDataProvider(_addressesProvider.getPoolDataProvider());

        (address _aTokenAddress, , ) = _poolDataProvider.getReserveTokensAddresses(token_);

        if (_aTokenAddress == address(0)) revert TokenNotSupported();

        uint256 _feeBps = IPool(_addressesProvider.getPool()).FLASHLOAN_PREMIUM_TOTAL();

        return (amount_ * _feeBps) / MAX_BPS;
    }

    /// @inheritdoc IERC3156FlashLender
    function flashLoan(
        IERC3156FlashBorrower /*receiver*/,
        address token_,
        uint256 amount_,
        bytes memory data_
    ) public returns (bool _success) {
        IPoolAddressesProvider _addressesProvider = addressesProvider;
        IPoolDataProvider _poolDataProvider = IPoolDataProvider(_addressesProvider.getPoolDataProvider());

        // Check if token is supported
        (address _aTokenAddress, , ) = _poolDataProvider.getReserveTokensAddresses(token_);

        if (_aTokenAddress == address(0)) {
            return false;
        }

        (, , uint256 _availableLiquidity, , , , , , , , , ) = _poolDataProvider.getReserveData(token_);

        if (_availableLiquidity < amount_) {
            return false;
        }

        IPool(_addressesProvider.getPool()).flashLoanSimple({
            receiverAddress: address(this),
            asset: token_,
            amount: amount_,
            params: data_,
            referralCode: 0
        });

        return true;
    }

    /// @dev Aave will call this function after doing flash loan
    function executeOperation(
        address asset_,
        uint256 amount_,
        uint256 fee_,
        address initiator_,
        bytes calldata data_
    ) external returns (bool) {
        address _pool = addressesProvider.getPool();

        if (msg.sender != _pool) revert InvalidSender();
        if (initiator_ != address(this)) revert InvalidInitiator();

        IERC20 _borrowToken = IERC20(asset_);

        if (
            IERC3156FlashBorrower(address(this)).onFlashLoan(initiator_, address(_borrowToken), amount_, fee_, data_) !=
            ERC3156Lib.CALLBACK_SUCCESS
        ) revert CallbackFailed();

        uint256 _repayAmount = amount_ + fee_;
        _borrowToken.forceApprove(_pool, 0);
        _borrowToken.forceApprove(_pool, _repayAmount);

        return true;
    }
}
