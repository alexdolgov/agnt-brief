//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.25;

import {STETH as STETH_ADDRESS, WSTETH as WSTETH_ADDRESS, BRKT_ETH as BRKTETH_ADDRESS, BRKT_MULTISIG, ROCKET_DEPOSIT_POOL as ROCKET_DEPOSIT_POOL_ADDRESS, RETH as RETH_ADDRESS, WETH as WETH_ADDRESS} from "script/Config.sol";
import {IBrktETHRouter} from "src/token/IBrktETHRouter.sol";
import {IERC20} from "openzeppelin-contracts/interfaces/IERC20.sol";
import {IBrktETH} from "src/token/IBrktETH.sol";
import {IstETH} from "src/interfaces/stETH/IstETH.sol";
import {IwstETH} from "src/interfaces/stETH/IwstETH.sol";
import {IWETH} from "src/interfaces/IWETH.sol";
import {RocketTokenRETHInterface} from "src/interfaces/rETH/RocketTokenRETHInterface.sol";
import {RocketDepositPoolInterface} from "src/interfaces/rETH/RocketDepositPoolInterface.sol";

contract BrktETHRouter is IBrktETHRouter {

    address constant OWNER = payable(BRKT_MULTISIG);

    IBrktETH public constant BRKTETH = IBrktETH(address(BRKTETH_ADDRESS));

    IstETH public constant STETH = IstETH(address(STETH_ADDRESS));
    IwstETH public constant WSTETH = IwstETH(address(WSTETH_ADDRESS));
    IWETH public constant WETH = IWETH(address(WETH_ADDRESS));

    RocketDepositPoolInterface public constant ROCKET_DEPOSIT_POOL = RocketDepositPoolInterface(address(ROCKET_DEPOSIT_POOL_ADDRESS));
    RocketTokenRETHInterface public constant RETH = RocketTokenRETHInterface(address(RETH_ADDRESS));

    modifier onlyOwner() {
        if (msg.sender != OWNER) revert Unauthorized();
        _;
    }

    constructor() {
        STETH.approve(address(WSTETH), type(uint256).max);
        WSTETH.approve(address(BRKTETH), type(uint256).max);
        RETH.approve(address(BRKTETH), type(uint256).max);
    }


    function ethToBrktETH(uint256 mintBrktAmount) public payable returns (uint256) {
        (address lstToken, uint256 brktAmount) = _ethToBrktETH(msg.value, mintBrktAmount);

        emit ETHToBrktETH(msg.sender, msg.value, mintBrktAmount, lstToken, false);

        return brktAmount;
    }

    function wethToBrktETH(uint256 amount, uint256 mintBrktAmount) public returns (uint256) {
        WETH.transferFrom(msg.sender, address(this), amount);
        WETH.withdraw(amount);

        (address lstToken, uint256 brktAmount) = _ethToBrktETH(amount, mintBrktAmount);

        emit ETHToBrktETH(msg.sender, amount, mintBrktAmount, lstToken, true);

        return brktAmount;
    }

    function _ethToBrktETH(uint256 value, uint256 mintBrktAmount) internal returns (address, uint256) {
        uint256 stEthLimit = lidoLimit();

        if (value <= stEthLimit) {
            uint256 brktAmount = _lidoEthToBrktETH(value, mintBrktAmount);
            BRKTETH.transfer(msg.sender, brktAmount);
            return (address(WSTETH), brktAmount);
        } else if (value <= rocketPoolLimit()) {
            uint256 brktAmount = _rocketPoolETHToBrktETH(value, mintBrktAmount);
            BRKTETH.transfer(msg.sender, brktAmount);
            return (address(RETH), brktAmount);
        } else {
            revert AmountOverStakingLimit();
        }
    }
    

    function lidoLimit() public view returns (uint256) {
        if (STETH.isStakingPaused()) {
            return 0;
        }
        return STETH.getCurrentStakeLimit();
    }

    function rocketPoolLimit() public view returns (uint256) {
        return ROCKET_DEPOSIT_POOL.getMaximumDepositAmount();
    }

    function _lidoEthToBrktETH(uint256 value, uint256 mintBrktAmount) internal returns (uint256) {
        uint256 stEthAmount = STETH.submit{value: value}(address(0));
        uint256 wstEthAmount = WSTETH.wrap(stEthAmount);
        return BRKTETH.mint(address(WSTETH), wstEthAmount, mintBrktAmount);
    }

    function _rocketPoolETHToBrktETH(uint256 value, uint256 mintBrktAmount) internal returns (uint256) {
        uint256 rEthBalanceBefore = RETH.balanceOf(address(this));

        ROCKET_DEPOSIT_POOL.deposit{value: value}();
        uint256 rEthAmount = RETH.balanceOf(address(this)) - rEthBalanceBefore;

        return BRKTETH.mint(address(RETH), rEthAmount, mintBrktAmount);
    }

    function recoverETH(uint256 amount) external onlyOwner {
        (bool success, ) = OWNER.call{value: amount}("");
        if (!success) revert ETHTransferFailed();
    }

    function withdrawToken(address token, uint256 amount) external onlyOwner {
        IERC20(token).transfer(OWNER, amount);
    }

    receive() external payable {}

    fallback() external payable {}
}