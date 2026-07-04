// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity >=0.7.0 <0.8.0;
import "../interface/IDSOracle.sol";
import "../interface/ILendingPool.sol";
import "../modules/ReentrancyGuard.sol";
import "../modules/IERC20.sol";
import "../modules/Halt.sol";
import "../interface/IWAVAX.sol";
import "../interface/ISwapHelper.sol";
abstract contract leverageData is ImportOracle,Halt,ReentrancyGuard{
    IWAVAX public WAVAX;
    IERC20 public lendingToken;
    address public underlying;
    address public feePool;
    ILendingPool public lendingPool;
    uint256 constant calDecimals = 1e18;
    uint256 public collateralRate;
    uint256 public liquidationPenalty;
    uint256 public liquidationReward;
    uint256 public swapFee = 1e15;
    mapping(bytes32=>uint256) public userVault;
    ISwapHelper public swapHelper;

    event SetSwapFee(address indexed sender,uint256 swapFee);
    event SetLiquidationInfo(address indexed sender,uint256 collateralRate,uint256 liquidationReward,uint256 liquidationPenalty);
    event Leverage(address indexed sender, bytes32 indexed vaultID, uint256 amount,uint256 amountLending,uint256 amountUnderlying);
    event WithdrawUnderlying(address indexed sender, bytes32 indexed vaultID, address indexed to,uint256 amount);
    event Liquidate(address indexed sender,bytes32 indexed vaultID,address lending,uint256 amount,address underlying,uint256 _payback);
        
}