// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity >=0.7.0 <0.8.0;
import "../interface/IDSOracle.sol";
import "../interface/ILendingPool.sol";
import "../modules/ReentrancyGuard.sol";
import "../modules/IERC20.sol";
import "../modules/Halt.sol";
import "../interface/IWAVAX.sol";
import "../interface/ISwapHelper.sol";
abstract contract leverageData is Halt,ReentrancyGuard{
    uint256 constant internal calDecimals = 1e18;
    IWAVAX public WAVAX;
    IERC20 public lendingToken;
    address public underlying;
    address public feePool;
    ILendingPool public lendingPool;
    uint256 public collateralRate;
    uint256 public liquidationPenalty;
    uint256 public liquidationReward;
    uint256 public swapFee = 1e15;
    mapping(bytes32=>uint256) public userVault;
    ISwapHelper public swapHelper;
    IDSOracle public oracle;
    struct leverageInfo {
        uint128 lendingPrice;
        uint128 underlyingPrice;
        uint128 leverageRate;
        uint128 principal;
    }
    mapping(bytes32=>leverageInfo) internal userLeverageInfo;
    uint256 public constant swapHelperKey = 1;
    uint256 public constant oracleKey = 2;
    event SetSwapFee(address indexed sender,uint256 swapFee);
    event SetLiquidationInfo(address indexed sender,uint256 collateralRate,uint256 liquidationReward,uint256 liquidationPenalty);
    event BuyLeverage(address indexed sender,address account, bytes32 vaultID, uint256 amount,uint256 amountLending,uint256 amountUnderlying);
    event SellLeverage(address indexed sender, bytes32 vaultID,uint256 amount,uint256 repayLoan);
    event AddUnderlying(address indexed sender,address account, bytes32 vaultID, uint256 amount);
    event WithdrawUnderlying(address indexed sender, bytes32 vaultID, address indexed to,uint256 amount);
    event Liquidate(address indexed sender,address account,bytes32 vaultID,address lending,uint256 amount,address underlying,uint256 _payback);
    event SwapOnDex(address indexed sender,address tokenIn,address tokenOut,uint256 amountIn,uint256 amountOut);
    event RedeemFee(address indexed sender,address feePool,address token,uint256 amountFee);    
}