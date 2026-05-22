// SPDX-License-Identifier: agpl-3.0
pragma solidity 0.8.20;

import { FlashLoanReceiverBaseV3 } from "./FlashLoanReceiverBaseV3.sol";
import { IPoolAddressesProvider, IPool } from "./InterfacesV3.sol";
import { SafeMath } from "./Libraries.sol";
import "./Ownable.sol";

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IDragonswapRouter} from "dragonswap-core/interfaces/IDragonswapRouter.sol";

/*
 * A contract that liquidates an Aave V3 loan using a flash loan:
 *
 *   call executeFlashLoans() to begin the liquidation
 *
 */
contract LiquidateLoan is FlashLoanReceiverBaseV3, Ownable {

    IPoolAddressesProvider provider;
    IDragonswapRouter dragonswapRouter;
    using SafeMath for uint256;

    address poolAddr;

    event ErrorHandled(string stringFailure);

    // instantiate pool addresses provider and get pool address
    constructor(IPoolAddressesProvider _addressProvider, IDragonswapRouter _dragonswapRouter) 
        FlashLoanReceiverBaseV3(_addressProvider) 
    {
        provider = _addressProvider;
        poolAddr = provider.getPool();
        dragonswapRouter = _dragonswapRouter;
    }

    /**
        This function is called after your contract has received the flash loaned amount
     */
    function executeOperation(
        address[] calldata assets,
        uint256[] calldata amounts,
        uint256[] calldata premiums,
        address,
        bytes calldata params
    )
        external
        override
        returns (bool)
    {
        (address collateral, address userToLiquidate, uint256 amountOutMin, address[] memory swapPath) = abi.decode(params, (address, address, uint256, address[]));
        // liquidate unhealthy loan
        liquidateLoan(collateral, assets[0], userToLiquidate, amounts[0], false);
        // swap collateral from liquidate back to asset from flashloan to pay it off
        swapToBorrowedAsset(collateral, amountOutMin, swapPath);

        // Pay to owner the balance after fees
        uint256 profit = calcProfits(IERC20(assets[0]).balanceOf(address(this)), amounts[0], premiums[0]);

        require(profit > 0, "No profit");
        IERC20(assets[0]).transfer(owner(), profit);

        // Approve the Pool contract allowance to pull the owed amount
        uint256 amountOwing = amounts[0].add(premiums[0]);
        IERC20(assets[0]).approve(poolAddr, amountOwing);

        return true;
    }

    // calculate profits after paying back loan & fees
    function calcProfits(uint256 _balance, uint256 _loanAmount, uint256 _loanFee)
        pure
        private
        returns(uint256)
    {
        return _balance.sub(_loanAmount.add(_loanFee));
    }

    function liquidateLoan(address _collateral, address _liquidate_asset, address _userToLiquidate, uint256 _amount, bool _receiveAToken) public {
        require(IERC20(_liquidate_asset).approve(poolAddr, _amount), "Approval error");

        IPool(poolAddr).liquidationCall(_collateral, _liquidate_asset, _userToLiquidate, _amount, _receiveAToken);
    }

    // assumes the balance of the token is on the contract
    function swapToBorrowedAsset(address asset_from, uint amountOutMin, address[] memory swapPath ) public {
        
        IERC20 asset_fromToken = IERC20(asset_from);
        uint256 amountToTrade = asset_fromToken.balanceOf(address(this));
        uint256 deadline = block.timestamp + 300; // 5 minutes

        // grant Uniswap access to your token
        asset_fromToken.approve(address(dragonswapRouter), amountToTrade);

        // Execute swap from asset_from into designated ERC20 (asset_to) token on Dragonswap (Uniswap fork)
        try dragonswapRouter.swapExactTokensForTokens(
            amountToTrade,
            amountOutMin,
            swapPath,
            address(this),
            deadline
        ) {
        } catch Error(string memory reason) {
            emit ErrorHandled(reason);
        } catch {
        }
    }

    /*
    * This function is manually called to commence the flash loans sequence
    * to make executing a liquidation flexible calculations are done outside of the contract and sent via parameters here
    */
    function executeFlashLoans(
        address _assetToLiquidate, 
        uint256 _flashAmt, 
        address _collateral, 
        address _userToLiquidate, 
        uint256 _amountOutMin, 
        address[] memory _swapPath
    ) 
        public 
        onlyOwner 
    {
        address receiverAddress = address(this);

        address[] memory assets = new address[](1);
        assets[0] = _assetToLiquidate;

        uint256[] memory amounts = new uint256[](1);
        amounts[0] = _flashAmt;

        uint256[] memory modes = new uint256[](1);
        modes[0] = 0;

        bytes memory params = abi.encode(_collateral, _userToLiquidate, _amountOutMin, _swapPath);
        uint16 referralCode = 0;

        IPool(poolAddr).flashLoan(
            receiverAddress,
            assets,
            amounts,
            modes,
            address(this),
            params,
            referralCode
        );
    }
}