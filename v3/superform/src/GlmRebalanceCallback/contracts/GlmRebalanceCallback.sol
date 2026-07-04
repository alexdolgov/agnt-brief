// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import { IDepositCallbackReceiver } from "./interfaces/Gmx/callback/IDepositCallbackReceiver.sol";
import { IWithdrawalCallbackReceiver } from "./interfaces/Gmx/callback/IWithdrawalCallbackReceiver.sol";
import { Deposit } from "./interfaces/Gmx/deposit/Deposit.sol";
import { Withdrawal } from "./interfaces/Gmx/withdrawal/Withdrawal.sol";
import { EventUtils } from "./interfaces/Gmx/event/EventUtils.sol";
import { Market, Price, MarketPoolValueInfo, IReader } from "./interfaces/Gmx/IOracle.sol";
import { IRoleStore, Role } from "./interfaces/Gmx/IRoleStore.sol";
import { ISwapRouter } from "./interfaces/IUniswap.sol";

import { OwnableUpgradeable } from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import { IERC4626Upgradeable } from "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC4626Upgradeable.sol";
import { IERC20Upgradeable, SafeERC20Upgradeable } from "@openzeppelin/contracts-upgradeable/token/ERC20/utils/SafeERC20Upgradeable.sol";

import { IGlmRebalanceCallback } from "./interfaces/IGlmRebalanceCallback.sol";
import { IGlmRouter } from "./interfaces/IGlmRouter.sol";
import { IGlmPriceReader } from "./interfaces/IGlmPriceReader.sol";
import { IGlmManager } from "./interfaces/IGlmManager.sol";
import { IGlmVault } from "./interfaces//IGlmVault.sol";
import { IGlmRebalance } from "./interfaces/IGlmRebalance.sol";
import { IGlmAddresses } from "./interfaces/IGlmAddresses.sol";
import { IGasFeeCallbackReceiver } from "./interfaces/Gmx/callback/IGasFeeCallbackReceiver.sol";

contract GlmRebalanceCallback is
    IGlmAddresses,
    IGlmRebalanceCallback,
    IDepositCallbackReceiver,
    IGasFeeCallbackReceiver,
    IWithdrawalCallbackReceiver,
    OwnableUpgradeable
{
    using SafeERC20Upgradeable for IERC20Upgradeable;

    address public USDC;
    address public WETH;

    address public roleStore;

    address public uniV3Router;
    uint24 public uniV3Fee;

    //@note the one receiving the refund of fees
    address public currentGlmKeeper;

    Glm public glm;
    mapping(uint256 => uint256) public roundIdToDepositCount;
    mapping(uint256 => uint256) public roundIdToWithdrawalCount;

    mapping(address => uint24) public tokenToUniswapFee;

    mapping(bytes32 => FailedSalesInfo) public failedSalesInfo;
    mapping(bytes32 => FailedBuyInfo) public failedBuyInfo;

    uint256[50] __gaps;

    //modifier for only glm
    modifier onlyGlmVault() {
        require(msg.sender == glm.vault, "Only GlmVault");
        _;
    }

    modifier onlyGlmReblance() {
        require(msg.sender == glm.rebalance, "Only GlmRebalance");
        _;
    }

    //only glmKeeper
    modifier onlyGlmKeeper() {
        require(msg.sender == currentGlmKeeper, "Only GlmKeeper");
        _;
    }

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
    //this is the swap fee for non WETH tokens, swap path will be
    //token (_fee)-> WETH (fixed fee from uniV3Fee)-> USDC
    function setTokenToUniswapFee(address _token, uint24 _fee) external onlyOwner {
        tokenToUniswapFee[_token] = _fee;
        emit SetTokenToUniswapFee(_token, _fee);
    }

    //set current keeper
    function setCurrentGlmKeeper(address _keeper) external onlyOwner {
        currentGlmKeeper = _keeper;
        emit SetGlmKeeper(_keeper);
    }

    /*//////////////////////////////////////////////////////////////
                            VIEW FUNCTIONS
    //////////////////////////////////////////////////////////////*/
    //view function to get failedSalesInfo
    function getFailedSalesInfo(bytes32 key) external view returns (address gmToken, uint256 gmTokenAmount) {
        return (failedSalesInfo[key].gmToken, failedSalesInfo[key].gmTokenAmount);
    }

    //view function to get failedBuyInfo
    function getFailedBuyInfo(bytes32 key) external view returns (address gmToken, uint256 usdcAmount) {
        return (failedBuyInfo[key].gmToken, failedBuyInfo[key].usdcAmount);
    }

    /*//////////////////////////////////////////////////////////////
                            PROTOCOL FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    //function to edit the roundIdToDepositCount
    function editRoundIdToDepositCount(uint256 _roundId, uint256 _count) external onlyGlmReblance {
        roundIdToDepositCount[_roundId] = _count;
    }

    //function to edit the roundIdToWithdrawalCount
    function editRoundIdToWithdrawalCount(uint256 _roundId, uint256 _count) external onlyGlmReblance {
        roundIdToWithdrawalCount[_roundId] = _count;
    }

    //@todo check if saving info as key is needed
    function fixRebalanceSaleRevert(address gmToken, uint256 gmTokenAmount, uint256 usdcAmount) external onlyGlmKeeper {
        _handleWithdrawalExecution(gmToken, gmTokenAmount, usdcAmount);
    }

    function fixRebalanceBuyRevert(address gmToken, uint256 usdcAmount) external onlyGlmKeeper {
        _handleDepositExecution(gmToken, usdcAmount);
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
        require(deposit.addresses.account == glm.rebalance, "Request is not from GlmRebalacne");
        require(IRoleStore(roleStore).hasRole(msg.sender, Role.CONTROLLER), "Not proper role");

        uint256 gmTokenAmount = eventData.uintItems.items[0].value;
        _handleDepositExecution(deposit.addresses.market, gmTokenAmount);
    }

    function afterDepositCancellation(bytes32 key, Deposit.Props memory deposit, EventUtils.EventLogData memory eventData) external {
        require(deposit.addresses.account == glm.rebalance, "Request is not from GlmRebalacne");
        require(IRoleStore(roleStore).hasRole(msg.sender, Role.CONTROLLER), "Not proper role");

        address gmToken = deposit.addresses.market;
        uint256 usdcAmount = deposit.numbers.initialShortTokenAmount;

        failedBuyInfo[key] = FailedBuyInfo(gmToken, usdcAmount);
    }

    function afterWithdrawalExecution(bytes32 key, Withdrawal.Props memory withdrawal, EventUtils.EventLogData memory eventData) external {
        require(withdrawal.addresses.account == glm.rebalance, "Request is not from GlmRebalacne");
        require(IRoleStore(roleStore).hasRole(msg.sender, Role.CONTROLLER), "Not proper role");

        uint256 longAmountFromGMX = eventData.uintItems.items[0].value;
        uint256 usdcAmountFromGMX = eventData.uintItems.items[1].value;

        _handleWithdrawalExecution(withdrawal.addresses.market, longAmountFromGMX, usdcAmountFromGMX);
    }

    // @dev called after a withdrawal cancellation
    // @param key the key of the withdrawal
    // @param withdrawal the withdrawal that was cancelled
    function afterWithdrawalCancellation(
        bytes32 key,
        Withdrawal.Props memory withdrawal,
        EventUtils.EventLogData memory eventData
    ) external {
        require(withdrawal.addresses.account == glm.rebalance, "Request is not from GlmRebalacne");
        require(IRoleStore(roleStore).hasRole(msg.sender, Role.CONTROLLER), "Not proper role");
        address gmToken = withdrawal.addresses.market;
        uint256 gmTokenAmount = withdrawal.numbers.marketTokenAmount;

        failedSalesInfo[key] = FailedSalesInfo(gmToken, gmTokenAmount);
    }

    /*//////////////////////////////////////////////////////////////
                            internal functions
    //////////////////////////////////////////////////////////////*/
    function _handleWithdrawalExecution(address marketToken, uint256 longTokenAmountFromGMX, uint256 usdcAmountFromGMX) internal {
        IGlmManager manager = IGlmManager(glm.manager);

        (, , , address longTokenAddress, ) = manager.getGmPoolByGmToken(marketToken);
        IERC20Upgradeable(longTokenAddress).approve(uniV3Router, longTokenAmountFromGMX);

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
                amountIn: longTokenAmountFromGMX,
                //@todo within the range of USDC? otherwise revert?
                amountOutMinimum: 0
            });
            amountOut = ISwapRouter(uniV3Router).exactInput(params);
        } else {
            ISwapRouter.ExactInputSingleParams memory params = ISwapRouter.ExactInputSingleParams({
                tokenIn: longTokenAddress,
                tokenOut: USDC,
                fee: uniV3Fee,
                recipient: address(this),
                deadline: block.timestamp,
                amountIn: longTokenAmountFromGMX,
                amountOutMinimum: 0,
                sqrtPriceLimitX96: 0
            });

            amountOut = ISwapRouter(uniV3Router).exactInputSingle(params);
        }

        IGlmRebalance rebalance = IGlmRebalance(glm.rebalance);
        rebalance.addActualValueForPurchase(rebalance.currentId(), amountOut + usdcAmountFromGMX);
        uint256 currentId = rebalance.currentId();

        //transfer the usdc to GlmRebalance

        if (roundIdToWithdrawalCount[currentId] > 1) {
            roundIdToWithdrawalCount[currentId] -= 1;
            return;
        }

        if (roundIdToWithdrawalCount[currentId] == 1) {
            uint256 balanceOfUSDC = IERC20Upgradeable(USDC).balanceOf(address(this));
            IERC20Upgradeable(USDC).safeTransfer(glm.rebalance, balanceOfUSDC);
            emit FinalizeRebalanceReady(currentId);
            roundIdToWithdrawalCount[currentId] -= 1;
        }
    }

    function _handleDepositExecution(address marketToken, uint256 gmTokenAmount) internal {
        IGlmRebalance rebalance = IGlmRebalance(glm.rebalance);
        uint256 currentId = rebalance.currentId();
        uint256 GmTokenValueInUsdc = IGlmManager(glm.manager).getGmTokenValueInUsdc(marketToken, gmTokenAmount);

        rebalance.addValueAfterPurchase(rebalance.currentId(), GmTokenValueInUsdc);

        if (roundIdToDepositCount[currentId] > 1) {
            roundIdToDepositCount[currentId] -= 1;
            return;
        }

        if (roundIdToDepositCount[currentId] == 1) {
            IGlmVault(glm.vault).adjustPendingExecutionAmount(rebalance.getEstimatedValueForSale(currentId), false);
            rebalance.setRebalanceCompleted();
            roundIdToDepositCount[currentId] -= 1;
            IGlmRouter(glm.router).setPause(false);
        }
    }
}
