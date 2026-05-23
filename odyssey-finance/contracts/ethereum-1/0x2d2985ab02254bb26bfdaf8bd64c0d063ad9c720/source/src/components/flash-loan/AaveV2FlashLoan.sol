// SPDX-License-Identifier: MIT

pragma solidity 0.8.23;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {IERC3156FlashLender} from "@openzeppelin/contracts/interfaces/IERC3156FlashLender.sol";
import {IERC3156FlashBorrower} from "@openzeppelin/contracts/interfaces/IERC3156FlashBorrower.sol";
import {ERC3156Lib} from "src/libraries/ERC3156Lib.sol";
import {IPoolAddressesProvider, IAaveLendingPool, IAaveProtocolDataProvider} from "src/interfaces/external/IAaveV2.sol";

/// @title The Aave V2 flash-loan implementation
/// @dev This contract is called by the `FlashLoanExecutor`
contract AaveV2FlashLoan is IERC3156FlashLender {
    using SafeERC20 for IERC20;

    bytes32 private constant AAVE_PROVIDER_ID = 0x0100000000000000000000000000000000000000000000000000000000000000;
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
        IAaveProtocolDataProvider _aaveProtocolDataProvider = IAaveProtocolDataProvider(
            _addressesProvider.getAddress(AAVE_PROVIDER_ID)
        );

        // Check if token is supported
        (address _aTokenAddress, , ) = _aaveProtocolDataProvider.getReserveTokensAddresses(token_);

        if (_aTokenAddress == address(0)) revert TokenNotSupported();

        (uint256 _availableLiquidity, , , , , , , , , ) = _aaveProtocolDataProvider.getReserveData(token_);

        return _availableLiquidity;
    }

    /// @inheritdoc IERC3156FlashLender
    function flashFee(address token_, uint256 amount_) external view returns (uint256) {
        IPoolAddressesProvider _addressesProvider = addressesProvider;
        (address _aTokenAddress, , ) = IAaveProtocolDataProvider(_addressesProvider.getAddress(AAVE_PROVIDER_ID))
            .getReserveTokensAddresses(token_);

        if (_aTokenAddress == address(0)) {
            return 0;
        }

        uint256 _feeBps = IAaveLendingPool(_addressesProvider.getLendingPool()).FLASHLOAN_PREMIUM_TOTAL();

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
        IAaveProtocolDataProvider _aaveProtocolDataProvider = IAaveProtocolDataProvider(
            _addressesProvider.getAddress(AAVE_PROVIDER_ID)
        );

        // Check if token is supported
        (address _aTokenAddress, , ) = _aaveProtocolDataProvider.getReserveTokensAddresses(token_);

        if (_aTokenAddress == address(0)) {
            return false;
        }

        (uint256 _availableLiquidity, , , , , , , , , ) = _aaveProtocolDataProvider.getReserveData(token_);

        if (_availableLiquidity < amount_) {
            return false;
        }

        address[] memory _assets = new address[](1);
        _assets[0] = token_;

        uint256[] memory _amounts = new uint256[](1);
        _amounts[0] = amount_;

        // 0 = no debt, 1 = stable, 2 = variable
        uint256[] memory _modes = new uint256[](1);
        _modes[0] = 0;

        IAaveLendingPool(_addressesProvider.getLendingPool()).flashLoan({
            receiverAddress: address(this),
            assets: _assets,
            amounts: _amounts,
            interestRateModes: _modes,
            onBehalfOf: address(this),
            params: data_,
            referralCode: 0
        });

        return true;
    }

    /// @dev Aave will call this function after doing flash loan
    function executeOperation(
        address[] calldata assets_,
        uint256[] calldata amounts_,
        uint256[] calldata fees_,
        address initiator_,
        bytes calldata data_
    ) external returns (bool) {
        address _lendingPool = addressesProvider.getLendingPool();
        if (msg.sender != _lendingPool) revert InvalidSender();
        if (initiator_ != address(this)) revert InvalidInitiator();

        IERC20 _borrowToken = IERC20(assets_[0]);

        if (
            IERC3156FlashBorrower(address(this)).onFlashLoan(
                initiator_,
                address(_borrowToken),
                amounts_[0],
                fees_[0],
                data_
            ) != ERC3156Lib.CALLBACK_SUCCESS
        ) revert CallbackFailed();

        _borrowToken.forceApprove(_lendingPool, 0);
        _borrowToken.forceApprove(_lendingPool, amounts_[0] + fees_[0]);

        return true;
    }
}
