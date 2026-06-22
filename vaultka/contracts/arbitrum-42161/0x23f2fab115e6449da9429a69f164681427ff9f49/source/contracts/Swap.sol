// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/utils/SafeERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/math/MathUpgradeable.sol";

import "./interfaces/Gmx/IExchangeRouter.sol";
import "./interfaces/Gmx/IBaseOrderUtils.sol";

// import "hardhat/console.sol";   

interface IBaseExchangeRouter {
    function createOrder(IBaseOrderUtils.CreateOrderParams memory params) external;
}


contract EzSwap is OwnableUpgradeable {
    using SafeERC20Upgradeable for IERC20Upgradeable;
    using MathUpgradeable for uint256;
    using MathUpgradeable for uint128;

    address public GMXRouter;
    address public depositVault;
    address public router;

    address public callBackHandler;

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(
        address _handler
    ) external initializer {
        GMXRouter = 0x69C527fC77291722b52649E45c838e41be8Bf5d5;
        depositVault = 0x31eF83a530Fde1B38EE9A18093A333D8Bbbc40D5;
        router = 0x7452c558d45f8afC8c83dAe62C3f8A5BE19c71f6;
        callBackHandler = _handler;

        __Ownable_init();
    }

    //setters
    function setGMXRouter(address _GMXRouter) external onlyOwner {
        GMXRouter = _GMXRouter;
    }

    function setDepositVault(address _depositVault) external onlyOwner {
        depositVault = _depositVault;
    }

    function setRouter(address _router) external onlyOwner {
        router = _router;
    }

    function swapGMXV2(address _inputToken, uint256 _amount, address _gmMarket) public payable onlyOwner {
        // Transfer the input token from the sender to the contract
        IERC20Upgradeable(_inputToken).safeTransferFrom(msg.sender, address(this), _amount);

        // Increase allowance for the GMXRouter
        IERC20Upgradeable(_inputToken).safeIncreaseAllowance(router, _amount);

        // Send the tokens to the depositVault via the GMXRouter
        IExchangeRouter(GMXRouter).sendTokens(_inputToken, depositVault, _amount);

        // Send native tokens (e.g., ETH) to the depositVault via the GMXRouter
        IExchangeRouter(GMXRouter).sendWnt{ value: msg.value }(depositVault, msg.value);

        address[] memory path = new address[](1);
        path[0] = _gmMarket;

        // Define the addresses parameters
        IBaseOrderUtils.CreateOrderParamsAddresses memory addresses = IBaseOrderUtils.CreateOrderParamsAddresses({
            receiver: callBackHandler, // The address to receive the output of the order
            cancellationReceiver: callBackHandler, // The address to receive the output if the order is cancelled
            callbackContract: callBackHandler, // The address of the callback contract (if any)
            uiFeeReceiver: address(0), // The address to receive any UI fees
            market: address(0), // The market on which the order is placed
            initialCollateralToken: _inputToken, // The initial collateral token
            swapPath: path // The swap path
        });

        // Define the numbers parameters
        IBaseOrderUtils.CreateOrderParamsNumbers memory numbers = IBaseOrderUtils.CreateOrderParamsNumbers({
            sizeDeltaUsd: 0, // Not applicable for swaps
            initialCollateralDeltaAmount: _amount, // The amount of the initial collateral token
            triggerPrice: 0, // Not applicable for market orders
            acceptablePrice: 0, // Not applicable for market orders
            executionFee: msg.value, // The execution fee for the order
            callbackGasLimit: 0, // The gas limit for the callback contract
            minOutputAmount: 1 // The minimum output amount (to avoid front-running)
        });

        // Define the CreateOrderParams struct
        IBaseOrderUtils.CreateOrderParams memory params = IBaseOrderUtils.CreateOrderParams({
            addresses: addresses,
            numbers: numbers,
            orderType: Order.OrderType.MarketSwap, // The type of order (MarketSwap)
            decreasePositionSwapType: Order.DecreasePositionSwapType.NoSwap, // Not applicable for swaps
            isLong: false, // Not applicable for swaps
            shouldUnwrapNativeToken: false, // Whether to unwrap native tokens
            autoCancel: true, // Whether to auto-cancel the order
            referralCode: bytes32(0) // The referral code (if any)
        });

        // Call the createOrder function
        IBaseExchangeRouter(GMXRouter).createOrder(params);
    }


    receive() external payable {
    }
}