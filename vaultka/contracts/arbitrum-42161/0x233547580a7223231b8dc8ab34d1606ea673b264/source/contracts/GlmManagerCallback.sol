// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
import { OwnableUpgradeable } from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import { IDepositCallbackReceiver } from "./interfaces/Gmx/callback/IDepositCallbackReceiver.sol";
import { IWithdrawalCallbackReceiver } from "./interfaces/Gmx/callback/IWithdrawalCallbackReceiver.sol";
import { Deposit } from "./interfaces/Gmx/deposit/Deposit.sol";
import { Withdrawal } from "./interfaces/Gmx/withdrawal/Withdrawal.sol";
import { EventUtils } from "./interfaces/Gmx/event/EventUtils.sol";
import { Market, Price, MarketPoolValueInfo, IReader } from "./interfaces/Gmx/IOracle.sol";
import { IRoleStore, Role } from "./interfaces/Gmx/IRoleStore.sol";
import { ISwapRouter } from "./interfaces/IUniswap.sol";

import { IERC4626Upgradeable } from "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC4626Upgradeable.sol";

import { IERC20Upgradeable, SafeERC20Upgradeable } from "@openzeppelin/contracts-upgradeable/token/ERC20/utils/SafeERC20Upgradeable.sol";

import { IGlmManagerCallback } from "./interfaces/IGlmManagerCallback.sol";
import { IGlmRouter } from "./interfaces/IGlmRouter.sol";
import { IGlmPriceReader } from "./interfaces/IGlmPriceReader.sol";
import { IGlmManager } from "./interfaces/IGlmManager.sol";
import { IGlmVault } from "./interfaces//IGlmVault.sol";
import { IGlmAddresses } from "./interfaces/IGlmAddresses.sol";
import { IGasFeeCallbackReceiver } from "./interfaces/Gmx/callback/IGasFeeCallbackReceiver.sol";

contract GlmManagerCallback is
    IGlmAddresses,
    IGlmManagerCallback,
    IDepositCallbackReceiver,
    IWithdrawalCallbackReceiver,
    IGasFeeCallbackReceiver,
    OwnableUpgradeable
{
    using SafeERC20Upgradeable for IERC20Upgradeable;

    address public USDC;
    address public WETH;

    address public roleStore;

    address public uniV3Router;
    uint24 public uniV3Fee;

    address public tempPayableAddress;

    Glm public glm;
    mapping(address => uint24) public tokenToUniswapFee;
    mapping(bytes32 => WithdrawalFailedInfo) public withdrawalFailedInfo;

    uint256[50] __gaps;

    /*//////////////////////////////////////////////////////////////
                            INIT FUNCTIONS
    //////////////////////////////////////////////////////////////*/
    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(address _USDC, address _WETH) public initializer {
        USDC = _USDC;
        WETH = _WETH;
        __Ownable_init();
    }

    /*//////////////////////////////////////////////////////////////
                      STRATEGY PARAMETERS SETTERS
    //////////////////////////////////////////////////////////////*/

    function setGlmAddresses(
        address _glmVault,
        address _glmRouter,
        address _glmManager,
        address _glmManagerCallback,
        address _glmRebalance,
        address _glmRebalanceCallback,
        address _glmPriceReader,
        address _glmFeeCalculator
    ) external onlyOwner {
        glm = Glm({
            vault: _glmVault,
            router: _glmRouter,
            manager: _glmManager,
            managerCallback: _glmManagerCallback,
            rebalance: _glmRebalance,
            rebalanceCallback: _glmRebalanceCallback,
            priceReader: _glmPriceReader,
            feeCalculator: _glmFeeCalculator
        });
        emit SetGlmAddresses(
            _glmVault,
            _glmRouter,
            _glmManager,
            _glmManagerCallback,
            _glmRebalance,
            _glmRebalanceCallback,
            _glmPriceReader,
            _glmFeeCalculator
        );
    }

    function setUniSwapParams(address _uniV3Router, uint24 _uniV3Fee) external onlyOwner {
        uniV3Router = _uniV3Router;
        uniV3Fee = _uniV3Fee;
        emit SetUniSwapParams(_uniV3Router, _uniV3Fee);
    }

    function setRoleStore(address _RoleStore) external onlyOwner {
        roleStore = _RoleStore;
        emit SetRoleStore(_RoleStore);
    }

    //set token to uniswap fee
    //@note this is the swap fee for non WETH tokens, swap path will be
    //token (_fee)-> WETH (fixed fee from uniV3Fee)-> USDC
    function setTokenToUniswapFee(address _token, uint24 _fee) external onlyOwner {
        tokenToUniswapFee[_token] = _fee;
        emit SetTokenToUniswapFee(_token, _fee);
    }

    /*//////////////////////////////////////////////////////////////
                     VIEW FUNCTIONS 
    //////////////////////////////////////////////////////////////*/

    function getGmTokenValueInUsdc(address _gmToken, uint256 _amount) public view returns (uint256) {
        uint256 gmTokenPrice = IGlmPriceReader(glm.priceReader).getMarketTokenPrice(_gmToken);

        uint256 usdcPrice = IGlmPriceReader(glm.priceReader).getTokenPrice(USDC);

        return ((gmTokenPrice * _amount) / usdcPrice) / 1e18; //return 1e6
    }

    /*//////////////////////////////////////////////////////////////
                      CALLBACK FROM GMXV2 FUNCTIONS
    //////////////////////////////////////////////////////////////*/
    function refundExecutionFee(bytes32 key, EventUtils.EventLogData memory eventData) external payable {
        require(IRoleStore(roleStore).hasRole(msg.sender, Role.CONTROLLER), "Not proper role");

        address user = IGlmRouter(glm.router).getTransactionInfo(key).user;
        (bool success, ) = user.call{ value: msg.value }("");

        require(success, "Transfer failed");
    }

    function afterDepositExecution(bytes32 key, Deposit.Props memory deposit, EventUtils.EventLogData memory eventData) external {
        require(deposit.addresses.account == glm.router, "Request is not from GlmRouter");

        address user = IGlmRouter(glm.router).getTransactionInfo(key).user;
        uint256 GmTokenAmount = eventData.uintItems.items[0].value;
        uint256 GmTokenValueInUsdc = getGmTokenValueInUsdc(deposit.addresses.market, GmTokenAmount);

        IERC4626Upgradeable(glm.vault).deposit(GmTokenValueInUsdc, user);
        IERC20Upgradeable(deposit.addresses.market).safeTransfer(glm.vault, GmTokenAmount);
        IGlmRouter(glm.router).setTransactionCompleted(key, true);
        //@todo DepositCompleted(key, user, deposit.addresses.market, GmTokenAmount, GmTokenValueInUsdc);
    }

    function afterWithdrawalExecution(bytes32 key, Withdrawal.Props memory withdrawal, EventUtils.EventLogData memory eventData) external {
        require(withdrawal.addresses.account == glm.router, "Request is not from GlmRouter");
        require(IRoleStore(roleStore).hasRole(msg.sender, Role.CONTROLLER), "No proper role");

        address user = IGlmRouter(glm.router).getTransactionInfo(key).user;

        uint256 longAmountFromGMX = eventData.uintItems.items[0].value;
        uint256 usdcAmountFromGMX = eventData.uintItems.items[1].value;

        (, , , address longTokenAddress, ) = IGlmManager(glm.manager).getGmPoolByGmToken(withdrawal.addresses.market);

        _usdcWithdraw(longTokenAddress, longAmountFromGMX, usdcAmountFromGMX, key, user);
    }

    // @dev called after a deposit cancellation
    // @param key the key of the deposit
    // @param deposit the deposit that was cancelled

    function afterDepositCancellation(bytes32 key, Deposit.Props memory deposit, EventUtils.EventLogData memory eventData) external {
        require(deposit.addresses.account == glm.router, "Request is not from GlmRouter");
        require(IRoleStore(roleStore).hasRole(msg.sender, Role.CONTROLLER), "No proper role");
        IGlmRouter.TransactionInfo memory info = IGlmRouter(glm.router).getTransactionInfo(key);
        try IGlmRouter(glm.router).transferTokens(USDC, info.user, deposit.numbers.initialShortTokenAmount) returns (bool success) {
            require(success, "USDC transfer failed");
        } catch Error(string memory errorMessage) {
            emit GmTokenDepositCancellationFailed(info.user, errorMessage, "");
        }
        IGlmRouter(glm.router).setTransactionCompleted(key, true);
    }

    // @dev called after a withdrawal cancellation
    // @param key the key of the withdrawal
    // @param withdrawal the withdrawal that was cancelled
    function afterWithdrawalCancellation(
        bytes32 key,
        Withdrawal.Props memory withdrawal,
        EventUtils.EventLogData memory eventData
    ) external {
        require(withdrawal.addresses.account == glm.router, "Request is not from GlmRouter");
        require(IRoleStore(roleStore).hasRole(msg.sender, Role.CONTROLLER), "Not proper role");

        IGlmRouter.TransactionInfo memory info = IGlmRouter(glm.router).getTransactionInfo(key);
        //@note glm token transferred to callback during requestWithdrawal
        try IERC20Upgradeable(glm.vault).transfer(info.user, info.glmAmount) returns (bool success) {
            require(success, "glm transfer failed");
        } catch Error(string memory errorMessage) {
            emit GmTokenWithdrawalCancellationFailed(info.user, errorMessage, "");
        }
        //@note GmToken on the other hand left in the router, transfer back to the vault
        try IGlmRouter(glm.router).transferTokens(withdrawal.addresses.market, glm.vault, withdrawal.numbers.marketTokenAmount) returns (
            bool success
        ) {
            require(success, "gm transfer failed");
        } catch Error(string memory errorMessage) {
            emit GmTokenWithdrawalCancellationFailed(glm.vault, errorMessage, "");
        }
        //edit pending exeuction amount
        IGlmVault(glm.vault).adjustPendingExecutionAmount(info.pendingExecutionAmount, false);

        IGlmRouter(glm.router).setTransactionCompleted(key, true);
    }

    /*//////////////////////////////////////////////////////////////
                      INTERNAL FUNCTIONS

    //////////////////////////////////////////////////////////////*/

    /*//////////////////////////////////////////////////////////////
                            INTERNAL FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    function _usdcWithdraw(
        address longTokenAddress,
        uint256 longAmountFromGMX,
        uint256 usdcAmountFromGMX,
        bytes32 key,
        address user
    ) internal {
        IERC20Upgradeable(longTokenAddress).approve(uniV3Router, longAmountFromGMX);
        uint256 amountOut;

        if (longTokenAddress != WETH) {
            uint24 swapFee;
            //@note if setTokenToUniswapFee is not set, use the default uniV3Fee
            swapFee = tokenToUniswapFee[longTokenAddress];
            swapFee == 0 ? swapFee = uniV3Fee : swapFee;
            ISwapRouter.ExactInputParams memory params = ISwapRouter.ExactInputParams({
                path: abi.encodePacked(longTokenAddress, swapFee, WETH, uniV3Fee, USDC),
                recipient: address(this),
                deadline: block.timestamp,
                amountIn: longAmountFromGMX,
                //@todo within the range of USDC? otherwise revert?
                amountOutMinimum: 0
            });

            try ISwapRouter(uniV3Router).exactInput(params) returns (uint256 _amountOut) {
                amountOut = _amountOut;
            } catch {
                withdrawalFailedInfo[key] = WithdrawalFailedInfo({
                    longTokenAddress: longTokenAddress,
                    longAmountFromGMX: longAmountFromGMX,
                    usdcAmountFromGMX: usdcAmountFromGMX,
                    key: key,
                    user: user
                });
                //@todo add GMX V1 Swap
                emit GmxCallbackFailure(key, user, longTokenAddress, longAmountFromGMX, usdcAmountFromGMX);
                return;
            }
        } else {
            ISwapRouter.ExactInputSingleParams memory params = ISwapRouter.ExactInputSingleParams({
                tokenIn: longTokenAddress,
                tokenOut: USDC,
                fee: uniV3Fee,
                recipient: address(this),
                deadline: block.timestamp,
                amountIn: longAmountFromGMX,
                //@todo set min for output to avoid slippage?
                amountOutMinimum: 0,
                sqrtPriceLimitX96: 0
            });

            try ISwapRouter(uniV3Router).exactInputSingle(params) returns (uint256 _amountOut) {
                amountOut = _amountOut;
            } catch {
                withdrawalFailedInfo[key] = WithdrawalFailedInfo({
                    longTokenAddress: longTokenAddress,
                    longAmountFromGMX: longAmountFromGMX,
                    usdcAmountFromGMX: usdcAmountFromGMX,
                    key: key,
                    user: user
                });
                emit GmxCallbackFailure(key, user, longTokenAddress, longAmountFromGMX, usdcAmountFromGMX);
                return;
            }
        }
        uint256 totalUSDC = usdcAmountFromGMX + amountOut;

        uint256 glmAmount = IGlmRouter(glm.router).getTransactionInfo(key).glmAmount;
        uint256 pendingExecutionAmount = IGlmRouter(glm.router).getTransactionInfo(key).pendingExecutionAmount;

        IERC20Upgradeable(USDC).safeTransfer(user, totalUSDC);
        IGlmVault(glm.vault).adjustPendingExecutionAmount(pendingExecutionAmount, false);
        //approve glmVault to use glm Token
        IERC20Upgradeable(glm.vault).safeTransfer(glm.vault, glmAmount);
        IGlmVault(glm.vault).finalizeWithdrawal(totalUSDC, glmAmount, user);
        IGlmRouter(glm.router).setTransactionCompleted(key, true);
    }

    // @dev called after a deposit callback revert
    function fixDeposit(bytes32 key, uint256 gmTokenAmount, uint256 ethRefund) external onlyOwner {
        IGlmRouter.TransactionInfo memory info = IGlmRouter(glm.router).getTransactionInfo(key);

        IERC20Upgradeable marketToken = IERC20Upgradeable(info.marketToken);
        uint256 GmTokenValueInUsdc = getGmTokenValueInUsdc(info.marketToken, gmTokenAmount);

        //transfer the balance of weth of this contract using to the user
        IERC20Upgradeable(WETH).transfer(info.user, ethRefund);

        IERC4626Upgradeable(glm.vault).deposit(GmTokenValueInUsdc, info.user);

        marketToken.safeTransfer(glm.vault, gmTokenAmount);
        IGlmRouter(glm.router).setTransactionCompleted(key, true);
    }

    // @dev called after a withdrawal callback revert
    function fixWithdrawal(bytes32 key, uint256 longTokenAmount, uint256 usdcAmount) external onlyOwner {
        IGlmRouter.TransactionInfo memory info = IGlmRouter(glm.router).getTransactionInfo(key);
        //get long Token by marketToken
        (, , , address longTokenAddress, ) = IGlmManager(glm.manager).getGmPoolByGmToken(info.marketToken);
        _usdcWithdraw(longTokenAddress, longTokenAmount, usdcAmount, key, info.user);
    }
}
