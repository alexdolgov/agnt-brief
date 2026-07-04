// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {LaunchpadToken} from "./LaunchpadToken.sol";
import {IERC20} from '@openzeppelin/contracts/interfaces/IERC20.sol';

import {BondingCurve} from './BondingCurve.sol';
import {IUniswapV2Router02} from 'v2-periphery/interfaces/IUniswapV2Router02.sol';
import {IUniswapV2Factory} from 'v2-core/interfaces/IUniswapV2Factory.sol';
import {ILaunchpadToken} from './interfaces/ILaunchpadToken.sol';
contract LaunchpadTokenFactory {

    uint256 constant PROTOCOLFEE = 100;
    address public owner;
    address public uniV2Router;
    address public uniV2Factory;
    address BURNADDRESS;

    mapping(address => BondingCurve) public bondingCurveMap;
    
    event Deployed(address indexed token, address indexed bondingCurve, address indexed creator,uint256 timestamp);
    event Migrated(address indexed token, address indexed bondingCurve);


    modifier onlyOwner(){
        require(msg.sender == owner,"Only owner");
        _;
    }

    constructor(address uniV2Factory_, address uniV2Router_){
        owner = msg.sender;
        uniV2Factory = uniV2Factory_;
        uniV2Router = uniV2Router_;
        BURNADDRESS = 0xdeAD00000000000000000000000000000000dEAd;
    }
    function deployToken(
        string memory name_,
        string memory symbol_,
        string memory uri_,
        uint256 initialSupply_
    ) payable external returns (address token) {

        bytes32 tokenSalt = keccak256(abi.encodePacked(msg.sender, block.timestamp));
        token = address(new LaunchpadToken{salt: tokenSalt}(
            name_, symbol_, uri_, initialSupply_
        ));
        bytes32 bondingCurveSalt = keccak256(abi.encodePacked(token));
        BondingCurve bondingCurve = new BondingCurve{salt:bondingCurveSalt}(token, initialSupply_,PROTOCOLFEE);
        emit Deployed(token, address(bondingCurve), msg.sender,block.timestamp);

        IERC20(token).transfer(address(bondingCurve), initialSupply_);

        bondingCurveMap[token] = bondingCurve;

        require (msg.value <= 1.5e17, "Owner can only control 10% of initial liquidity");
        if(msg.value != 0){
            bondingCurve.buy{value: msg.value}(0, msg.sender);
        }
    }  
    function buy(address token, uint256 amountOutMin, address to) public payable {
        BondingCurve bondingCurve = BondingCurve(bondingCurveMap[token]);
        bondingCurve.buy{value: msg.value}(amountOutMin, to);
    }
    function sell(address token, uint256 amount, uint256 amountOutMin, address to) external {
        BondingCurve bondingCurve = BondingCurve(bondingCurveMap[token]);
        IERC20(token).transferFrom(msg.sender, address(bondingCurve), amount);
        bondingCurve.sell(amountOutMin, to);
    }
    function getAmountOut(address token, uint256 amountIn, bool direction) public view returns (uint256 amountOut){
        BondingCurve bondingCurve = BondingCurve(bondingCurveMap[token]);
        uint256 protocolFee = bondingCurve.PROTOCOLFEE();
        if(direction == true){
            amountIn = amountIn * (10000 - protocolFee) / 10000;
            amountOut = bondingCurve.getAmountOut(amountIn, true);
        }
        else{
            amountOut = bondingCurve.getAmountOut(amountIn, false);
            amountOut = amountOut * (10000 - protocolFee) / 10000;
        }
    }

    
    function withdrawFee(address payable to) external onlyOwner {
        (bool success, ) = to.call{value: address(this).balance}("");
        require(success, "Withdraw failed");
    }

    function migrate(address token) public{
        BondingCurve bondingCurve = BondingCurve(bondingCurveMap[token]);
        bool isMigrating = bondingCurve.isMigrating();
        require(isMigrating, "Not ready to migrate");
        (uint256 tokenBalance, uint256 ethBalance) = bondingCurve.migrate();
        IERC20(token).approve(address(uniV2Router), tokenBalance);
        ILaunchpadToken(token).openTrade(); 
        IUniswapV2Router02(uniV2Router).addLiquidityETH{value:ethBalance}(token, tokenBalance, 0, 0, BURNADDRESS, block.timestamp);
    }

    receive() external payable{}
    
}