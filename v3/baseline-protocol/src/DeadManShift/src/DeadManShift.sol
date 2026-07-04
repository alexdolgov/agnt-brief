// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

import {ISwapRouter} from "@uniswap/v3-periphery/contracts/interfaces/ISwapRouter.sol";
import {ERC20} from "solady/tokens/ERC20.sol";
import {Owned} from "solmate/auth/Owned.sol";
import {TickMath} from "@uniswap/v3-core/contracts/libraries/TickMath.sol";
import {IUniswapV3Pool} from "@uniswap/v3-core/contracts/interfaces/IUniswapV3Pool.sol";

import {IBaseline} from "./interfaces/IBaseline.sol";
import {ISplitMain} from "./interfaces/ISplitMain.sol";

interface IJuiceFlash {
    function flashLoanSimple(
        address receiverAddress,
        address asset,
        uint256 amount,
        bytes memory params
    ) external;
}

interface IPacFlash {
    function flashLoanSimple(
        address receiverAddress,
        address asset,
        uint256 amount,
        bytes memory params,
        uint16 referralCode
    ) external;
}


contract DeadManShift is Owned {

    // external contracts
    IBaseline internal constant baseline = IBaseline(0x14eB8d9b6e19842B5930030B18c50B0391561f27);
    ERC20 public constant weth = ERC20(0x4300000000000000000000000000000000000004);
    ERC20 public constant yes = ERC20(0x20fE91f17ec9080E3caC2d688b4EcB48C5aC3a9C);
    ISwapRouter public constant router = ISwapRouter(0x337827814155ECBf24D20231fCA4444F530C0555);

    // flash loan providers
    IJuiceFlash public constant juice = IJuiceFlash(0x44f33bC796f7d3df55040cd3C631628B560715C2);
    IPacFlash public constant pac = IPacFlash(0xd2499b3c8611E36ca89A70Fda2A72C49eE19eAa8);

    // splits
    ISplitMain internal constant splitMain = ISplitMain(0x2ed6c4B5dA6378c7897AC67Ba9e43102Feb694EE);
    address internal constant protocolSplit = 0x42ACFd8f410F5c19f24e3cF703acc7f637390Be9;
    uint32[] internal splitAllocations = [5e5, 5e5];
    ERC20[] internal splitTokens = [yes];
    address[] internal protocolRecipients = [0x8044f710c58B6eA6a178CC540f9F1Cd758F7d1B2,0xd2FB4d5A11c1e63d910D2A9782d23e63fa369c84];

    // addresses
    address immutable yescension;
    address immutable communityMultisig;

    constructor(address yescension_, address communityMultisig_) Owned(msg.sender) {
        yescension = yescension_;
        communityMultisig = communityMultisig_;

        // approve yes
        yes.approve(address(router), type(uint256).max);
        yes.approve(address(baseline), type(uint256).max);

        // approve weth
        weth.approve(address(router), type(uint256).max);
        weth.approve(address(baseline), type(uint256).max);

        // approve flash loans
        weth.approve(address(juice), type(uint256).max);
        weth.approve(address(pac), type(uint256).max);
    }

    /// @param initialFlashAmount The total flash loan amount
    /// @param shiftDonation The amount of WETH to send to the baseline contract,
    ///                      this will be taken from the initialFlashAmount.
    function shift(uint256 initialFlashAmount, uint256 shiftDonation) public onlyOwner {
        bytes memory params = abi.encode(shiftDonation);
        pac.flashLoanSimple(address(this), address(weth), initialFlashAmount, params, 0);
        _handleSplit();
        weth.transfer(communityMultisig, weth.balanceOf(address(this)));
    }

    function _handleSplit() internal {
        // distribute fees
        splitMain.distributeERC20(
            protocolSplit,
            yes,
            protocolRecipients,
            splitAllocations,
            0,
            address(0)
        );

        // take from recipients
        for (uint256 i; i < protocolRecipients.length; i++) {
            splitMain.withdraw(protocolRecipients[i], 0, splitTokens);
            yes.transferFrom(protocolRecipients[i], address(this), yes.balanceOf(protocolRecipients[i]));
        }

        // dump remaining yes
        router.exactInputSingle(
            ISwapRouter.ExactInputSingleParams({
                tokenIn: address(yes),
                tokenOut: address(weth),
                fee: 10_000,
                recipient: address(this),
                deadline: block.timestamp,
                amountIn: yes.balanceOf(address(this)),
                amountOutMinimum: 0,
                sqrtPriceLimitX96: 0
            })
        );
    }


    // flash loan callback for pac
    function executeOperation(
        address /*asset*/,
        uint256 /*flashAmount*/,
        uint256 /*flashFee*/,
        address initiator,
        bytes memory params
    ) external returns (bool) {
        require(msg.sender == address(pac), "must come from juice pool");
        require(initiator == address(this), "must be self-initiated");

        // 1st flash loan - from pac
        // - buy yes
        // - send weth to baseline contract
        // - loop until shift
        // - calculate total debt between this contract and yescension
        // - take 2nd flash loan
        // 2nd flash loan - from juice
        // - repay all debt w/ flash loaned weth
        // - sell all yes collateral
        // end

        uint256 shiftDonation = abi.decode(params, (uint256));

        // transfer weth directly to baseline contract to ensure floor moves on shift
        weth.transfer(address(baseline), shiftDonation);

        // Use flashloan to buy yes
        uint256 initialYes = router.exactInputSingle(
            ISwapRouter.ExactInputSingleParams({
                tokenIn: address(weth),
                tokenOut: address(yes),
                fee: 10_000,
                recipient: address(this),
                deadline: block.timestamp,
                amountIn: weth.balanceOf(address(this)),
                amountOutMinimum: 0,
                sqrtPriceLimitX96: 0
            })
        );

        // Borrow against initialYes
        (uint256 reservesOut,) = baseline.borrow(address(this), initialYes, 1);

        // loop to trigger a shift
        {
            int24 floorTick = baseline.floorTick();
            uint160 shiftSqrtPrice = TickMath.getSqrtRatioAtTick(baseline.checkpointTick() + baseline.REBALANCE_THRESHOLD() + 1);
            uint256 clip;
            while (true) {

                // buy yes
                clip = router.exactInputSingle(
                    ISwapRouter.ExactInputSingleParams({
                        tokenIn: address(weth),
                        tokenOut: address(yes),
                        fee: 10_000,
                        recipient: address(this),
                        deadline: block.timestamp,
                        amountIn: reservesOut,
                        amountOutMinimum: 0,
                        sqrtPriceLimitX96: shiftSqrtPrice
                    })
                );

                // try to shift before another borrow
                if (baseline.shift()) break;

                // get more reserves w/ new yes
                (reservesOut,) = baseline.borrow(address(this), clip, 0);
            }

            // ensure floor moved
            require(baseline.floorTick() > floorTick, "floor did not move on shift");
        }

        // calculate total debt (including yescension) and take another flash loan to repay it all
        IBaseline.CreditAccount memory account = baseline.getCreditAccount(address(this));
        IBaseline.CreditAccount memory yescensionAccount = baseline.getCreditAccount(yescension);
        uint256 totalDebt = account.principal           +
                            account.interest            +
                            yescensionAccount.principal +
                            yescensionAccount.interest;

        juice.flashLoanSimple(address(this), address(weth), totalDebt, new bytes(0));

        return true;
    }

    // flash loan callback for juice
    function receiveFlashLoanSimple(
        address initiator,
        address /*token*/,
        uint256 amount,
        uint256 feeAmount,
        bytes memory /*userData*/
    ) external returns (bool success, bytes memory data) {
        require(msg.sender == address(juice), "must come from juice ");
        require(initiator == address(this), "must be self-initiated");

        IBaseline.CreditAccount memory account = baseline.getCreditAccount(address(this));
        IBaseline.CreditAccount memory yescensionAccount = baseline.getCreditAccount(yescension);

        // repay this account
        baseline.repay(address(this), account.principal + account.interest);

        // repay yescension account
        baseline.repay(yescension, yescensionAccount.principal + yescensionAccount.interest);
        yes.transferFrom(yescension, address(this), yes.balanceOf(yescension));

        // sell everything
        {
            router.exactInputSingle(
                ISwapRouter.ExactInputSingleParams({
                    tokenIn: address(yes),
                    tokenOut: address(weth),
                    fee: 10_000,
                    recipient: address(this),
                    deadline: block.timestamp,
                    amountIn: yes.balanceOf(address(this)),
                    amountOutMinimum: 0,
                    sqrtPriceLimitX96: 0
                })
            );
        }

        // pay back the flash loan
        weth.transfer(address(juice), amount + feeAmount);

        return (true, new bytes(0));

    }

}