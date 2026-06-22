// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

import { OwnableUpgradeable } from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import { SafeERC20Upgradeable, IERC20Upgradeable } from "@openzeppelin/contracts-upgradeable/token/ERC20/utils/SafeERC20Upgradeable.sol";

import { IRumVault } from "./interfaces/IRumVault.sol";
import { Withdrawal } from "./interfaces/Gmx/withdrawal/Withdrawal.sol";
import { EventUtils } from "./interfaces/Gmx/event/EventUtils.sol";
import { IRoleStore, Role } from "./interfaces/Gmx/IRoleStore.sol";
import { IExchangeRouter } from "./interfaces/Gmx/IExchangeRouter.sol";
import { IHlpWithdrawalHandler, IHlpPool } from "./interfaces/IHlpWithdrawalHandler.sol";
import { IGasFeeCallbackReceiver } from "./interfaces/Gmx/callback/IGasFeeCallbackReceiver.sol";

contract HlpWithdrawalHandler is OwnableUpgradeable, IHlpWithdrawalHandler, IGasFeeCallbackReceiver {
    using SafeERC20Upgradeable for IERC20Upgradeable;
    //data structures
    struct SwapDescriptionV2 {
        IERC20Upgradeable srcToken;
        IERC20Upgradeable dstToken;
        address[] srcReceivers; // transfer src token to these addresses, default
        uint256[] srcAmounts;
        address[] feeReceivers;
        uint256[] feeAmounts;
        address dstReceiver;
        uint256 amount;
        uint256 minReturnAmount;
        uint256 flags;
        bytes permit;
    }

    struct SwapExecutionParams {
        address callTarget; // call this address
        address approveTarget; // approve this address if _APPROVE_FUND set
        bytes targetData;
        SwapDescriptionV2 generic;
        bytes clientData;
    }
    //state variables
    address public rumVault;
    address public kyberRouter;

    address public usdc_e; //default target token for swaps
    address public weth;
    address public usdc;

    address public hlpPool;

    //gmx related

    GMXAddresses public gmxAddresses;

    uint256 public gmExecutionFee;

    mapping(uint256 => ClosePosition) public closePosition; //orderId => ClosePosition
    mapping(bytes32 => uint256) public gmxKeyToHmxOrderId; //gmxKey => hmxOrderId

    //add a keeper mapping
    address public keeper;

    uint256[50] private __gaps;

    modifier onlyKeeper() {
        require(msg.sender == keeper, "!keeper");
        _;
    }

    modifier onlyRumVault() {
        require(msg.sender == rumVault, "!rumVault");
        _;
    }

    modifier onlyKeeperOrRumVault() {
        require(msg.sender == keeper || msg.sender == rumVault, "!keeperOrRumVault");
        _;
    }

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize() external initializer {
        __Ownable_init();
    }

    function setGmxAddresses(
        address _depositVault,
        address _withdrawalVault,
        address _gmxRouter,
        address _exchangeRouter,
        address _roleStore
    ) external onlyOwner {
        gmxAddresses = GMXAddresses({
            depositVault: _depositVault,
            withdrawalVault: _withdrawalVault,
            gmxRouter: _gmxRouter,
            exchangeRouter: _exchangeRouter,
            roleStore: _roleStore
        });

        emit SetGMXAddresses(_depositVault, _withdrawalVault, _gmxRouter, _exchangeRouter);
    }

    function setRumVault(address _rumVault) external onlyOwner {
        require(_rumVault != address(0), "Invalid address");
        rumVault = _rumVault;
        emit SetRumVault(_rumVault);
    }

    //setters
    function setKyberRouter(address _kyberRouter) external onlyOwner {
        require(_kyberRouter != address(0), "Invalid address");
        kyberRouter = _kyberRouter;
        emit SetKyberRouter(_kyberRouter);
    }

    //function to set usdc_e, weth, usdc in one function
    function setTokenAddresses(address _usdcE, address _weth, address _usdc) external onlyOwner {
        require(_usdcE != address(0), "Invalid address");
        require(_weth != address(0), "Invalid address");
        require(_usdc != address(0), "Invalid address");
        usdc_e = _usdcE;
        weth = _weth;
        usdc = _usdc;
        emit SetTokenAddresses(_usdcE, _weth, _usdc);
    }

    function setKeeper(address _keeper) external onlyOwner {
        require(_keeper != address(0), "Invalid address");
        keeper = _keeper;
        emit SetKeeper(_keeper);
    }

    function setGmExecutionFee(uint256 _gmExecutionFee) external onlyOwner {
        require(_gmExecutionFee <= 0.01 ether, "gmExecutionFee > 0.01 ether");
        gmExecutionFee = _gmExecutionFee;
        emit SetGmExecutionFee(_gmExecutionFee);
    }

    function setHlpPool(address _hlpPool) external onlyOwner {
        require(_hlpPool != address(0), "Invalid address");
        hlpPool = _hlpPool;
        emit SetHlpPool(_hlpPool);
    }

    //----------------------------------Keeper functions----------------------------------

    function sellGmToken(
        uint256 orderId,
        uint256 gmAmount,
        address marketToken,
        address user,
        bool isLiquidation
    ) external payable onlyKeeperOrRumVault {
        //@todo handle gm execution fee
        require(msg.value >= gmExecutionFee, "Insufficient execution fee");
        IExchangeRouter(gmxAddresses.exchangeRouter).sendWnt{ value: gmExecutionFee }(gmxAddresses.withdrawalVault, gmExecutionFee);

        IERC20Upgradeable(marketToken).safeIncreaseAllowance(gmxAddresses.gmxRouter, gmAmount);
        IExchangeRouter(gmxAddresses.exchangeRouter).sendTokens(marketToken, gmxAddresses.withdrawalVault, gmAmount);
        IExchangeRouter.CreateWithdrawalParams memory withdrawalParams = IExchangeRouter.CreateWithdrawalParams({
            receiver: address(this),
            callbackContract: address(this),
            uiFeeReceiver: msg.sender,
            market: marketToken,
            longTokenSwapPath: new address[](0),
            shortTokenSwapPath: new address[](0),
            minLongTokenAmount: 0,
            minShortTokenAmount: 0,
            shouldUnwrapNativeToken: false,
            executionFee: gmExecutionFee,
            callbackGasLimit: 2000000
        });

        bytes32 gmxWithdrawalKey = IExchangeRouter(gmxAddresses.exchangeRouter).createWithdrawal(withdrawalParams);
        gmxKeyToHmxOrderId[gmxWithdrawalKey] = orderId;

        //require that the user is address 0, otherwise it means that the order is already created
        require(closePosition[orderId].user == address(0), "Order already exists");

        closePosition[orderId] = ClosePosition({
            gmxWithdrawalKey: gmxWithdrawalKey,
            user: user,
            longTokenAmount: 0,
            usdcAmount: 0,
            marketToken: marketToken,
            status: IHlpWithdrawalHandler.WithdrawalStatus.REQUESTED,
            isLiquidation: isLiquidation
        });
    }

    //function to call after getting the callback from gmx
    function afterWithdrawalExecution(bytes32 key, Withdrawal.Props memory withdrawal, EventUtils.EventLogData memory eventData) external {
        require(withdrawal.addresses.account == address(this));
        require(IRoleStore(gmxAddresses.roleStore).hasRole(msg.sender, Role.CONTROLLER), "No proper role");

        uint256 longAmountFromGMX = eventData.uintItems.items[0].value;
        uint256 usdcAmountFromGMX = eventData.uintItems.items[1].value;

        uint256 orderId = gmxKeyToHmxOrderId[key];
        require(orderId != 0, "Invalid key");
        require(closePosition[orderId].status == IHlpWithdrawalHandler.WithdrawalStatus.REQUESTED, "Wrong Status");

        ClosePosition storage position = closePosition[orderId];
        position.longTokenAmount = longAmountFromGMX;
        position.usdcAmount = usdcAmountFromGMX;
        position.status = IHlpWithdrawalHandler.WithdrawalStatus.SWAPPED;

        emit GmTokenSwapped(orderId, weth, longAmountFromGMX, usdcAmountFromGMX);
    }

    function refundExecutionFee(bytes32 key, EventUtils.EventLogData memory eventData) external payable {
        require(IRoleStore(gmxAddresses.roleStore).hasRole(msg.sender, Role.CONTROLLER), "Not proper role");
        uint256 orderId = gmxKeyToHmxOrderId[key];
        if (!closePosition[orderId].isLiquidation) {
            address user = closePosition[orderId].user;
            payable(user).transfer(msg.value);
        } else {
            payable(keeper).transfer(msg.value);
        }
    }

    //@todo add a function to handle the withdrawal cancellation from gmx
    /*  

    - reset the status 
    - transfer the tokens back to the contract 
    - emit an event just in case 
    
    */

    function swapAndFulfill(
        uint256 _orderId,
        bool _isSwapSimpleFirst,
        bool _isSwapSimpleSecond,
        bytes calldata _data, // long token swap data (weth/wbtc)
        bytes calldata _data2, // short token swap data (usdc)
        bool _isLiquidation
    ) public onlyKeeper {
        ClosePosition storage position = closePosition[_orderId];
        require(position.status == IHlpWithdrawalHandler.WithdrawalStatus.SWAPPED, "Wrong Status");
        require(position.longTokenAmount > 0 && position.usdcAmount > 0, "Invalid amounts");

        uint256 returnedUSDC;

        returnedUSDC += _executeSwap(position.longTokenAmount, _data, _isSwapSimpleFirst, weth);
        returnedUSDC += _executeSwap(position.usdcAmount, _data2, _isSwapSimpleSecond, usdc);

        IERC20Upgradeable(usdc_e).safeTransfer(rumVault, returnedUSDC);

        if (!_isLiquidation) {
            IRumVault(rumVault).fulfillClosePosition(_orderId, returnedUSDC);
        } else {
            IRumVault(rumVault).fulfillLiquidation(_orderId, returnedUSDC);
        }

        position.status = IHlpWithdrawalHandler.WithdrawalStatus.EXECUTED;
    }

    /**
     * @notice Executes an asset swap via Kyber Router
     * @param _amount The amount of the asset to swap
     * @param _data Encoded data specifying the swap details
     * @param _swapSimple A boolean indicating whether the swap is a simple or generic
     * @param _assetIn The address of the asset being swapped from
     * @return uint256 The amount of the output asset received from the swap
     * @dev Verifies the caller is an allowed vault, decodes swap details from the provided data, executes the swap, and ensures the output is as expected.
     */
    function _executeSwap(uint256 _amount, bytes calldata _data, bool _swapSimple, address _assetIn) internal returns (uint256) {
        SwapDescriptionV2 memory desc;

        if (_swapSimple) {
            // 0x8af033fb -> swapSimpleMode
            // Decode the data for a swap in simple mode
            (, SwapDescriptionV2 memory des, , ) = abi.decode(_data[4:], (address, SwapDescriptionV2, bytes, bytes));
            desc = des;
        } else {
            // 0x59e50fed -> swapGeneric
            // 0xe21fd0e9 -> swap
            // Decode the data for a swap in generic mode
            SwapExecutionParams memory des = abi.decode(_data[4:], (SwapExecutionParams));
            desc = des.generic;
        }

        require(desc.dstReceiver == address(this), "Receiver must be handler");
        require(desc.amount == _amount, "Swap amounts must match");
        uint256 assetBalBefore;
        uint256 assetBalAfter;
        bool succ;

        require(desc.dstToken == IERC20Upgradeable(usdc_e), "Output must be usdc_e");
        require(desc.srcToken == IERC20Upgradeable(_assetIn), "Input must be the same as _inputAsset");

        assetBalBefore = IERC20Upgradeable(usdc_e).balanceOf(address(this));
        IERC20Upgradeable(_assetIn).safeIncreaseAllowance(kyberRouter, desc.amount);
        (succ, ) = address(kyberRouter).call(_data);
        assetBalAfter = IERC20Upgradeable(usdc_e).balanceOf(address(this));

        require(succ, "Swap failed");
        require(assetBalAfter > assetBalBefore, "Swap failed");
        return (assetBalAfter - assetBalBefore);
    }

    function getHlpLiquidity() external view returns (uint256) {
        return IHlpPool(hlpPool).hlpLiquidity(usdc_e);
    }

    function isOrderExecuted(uint256 _orderId) external view returns (bool) {
        return closePosition[_orderId].status == IHlpWithdrawalHandler.WithdrawalStatus.EXECUTED;
    }
}
