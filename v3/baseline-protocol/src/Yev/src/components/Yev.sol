//SPDX-License-Identifier: UNLICENSED
pragma solidity =0.8.23;

import {ISwapRouter} from "@uniswap/v3-periphery/contracts/interfaces/ISwapRouter.sol";
import {IUniswapV3Pool} from "@uniswap/v3-core/contracts/interfaces/IUniswapV3Pool.sol";
import {TickMath} from "@uniswap/v3-core-0_8/contracts/libraries/TickMath.sol";
import {TickMath} from "@uniswap/v3-core-0_8/contracts/libraries/TickMath.sol";
import {FixedPoint96} from "@uniswap/v3-core/contracts/libraries/FixedPoint96.sol";
import {FixedPointMathLib} from "solady/utils/FixedPointMathLib.sol";
import {WETH} from "solady/tokens/WETH.sol";
import {ERC20} from "solmate/tokens/ERC20.sol";
import {console2} from "forge-std/console2.sol";

import {ISplitMain} from "../../test/utils/ISplitMain.sol";

interface IFlashloan {
    function flashLoanSimple(
        address receiver,
        address asset,
        uint256 amount,
        bytes memory params,
        uint16 referralCode
    ) external;
}

interface IAmbientRouter {
    function swap(
        address base,
        address quote,
        uint256 poolIdx,
        bool isBuy,
        bool inBaseQty,
        uint128 qty,
        uint16 tip,
        uint128 limitPrice,
        uint128 minOut,
        uint8 reserveFlags
    ) external payable returns (int128 baseFlow, int128 quoteFlow);
}

interface IBaseline {
    function bAsset() external view returns (ERC20);
    function reserve() external view returns (ERC20);
    function getCreditAccount(address user) external view returns (
        uint256 principal,
        uint256 interest,
        uint256 collateral,
        uint256 expiry,
        uint256 lastFloor
    );
    function repay(address user, uint256 amount) external returns (uint256 bAssetsReturned);
    function borrow(address user, uint256 collateral, uint256 maxBorrow) external returns (uint256 principal, uint256 interest);
    function slide() external returns (bool);
    function shift() external returns (bool);
    function checkpointTick() external view returns (int24);
    function REBALANCE_THRESHOLD() external view returns (int24);
    function pool() external view returns (IUniswapV3Pool);
    function floorTick() external view returns (int24);
}

contract Yev {

    // Tokens
    // yes token
    ERC20 internal constant bAsset = ERC20(0x20fE91f17ec9080E3caC2d688b4EcB48C5aC3a9C);
    // weth token
    ERC20 internal constant reserve = ERC20(0x4300000000000000000000000000000000000004);
    // usdb token
    ERC20 internal constant usdb = ERC20(0x4300000000000000000000000000000000000003);

    // Thruster
    // https://docs.thruster.finance/docs/informational/contracts
    // yes/weth 1% pool
    IUniswapV3Pool internal constant pool = IUniswapV3Pool(0x1d16788b97eDB7d9a6aE66D5C5C16469037Faa00);
    // yes/usdb 1% pool
    IUniswapV3Pool internal constant yesUsdbPool1Percent = IUniswapV3Pool(0x4b9A310386Dc3515e83af0cb52F6e0392a0Ac86f);
    // weth/usdb 0.05% pool
    IUniswapV3Pool internal constant usdbEthPool005Percent = IUniswapV3Pool(0x7f0DB0D77d0694F29c3f940b5B1F589FFf6EF2e0);
    // yes/eth 0.3% pool
    IUniswapV3Pool internal constant yesEthPool03Percent = IUniswapV3Pool(0x458266A76B6C72EEC84cC6E5a96abBA9c3695fb6);
    // swap router
    ISwapRouter internal constant router = ISwapRouter(0x337827814155ECBf24D20231fCA4444F530C0555);

    // Ambient
    // https://docs.ambient.finance/developers/deployed-contracts
    // CrocSwapDex
    IAmbientRouter internal constant ambientRouter = IAmbientRouter(0xaAaaaAAAFfe404EE9433EEf0094b6382D81fb958);
    // == 2**64
    uint256 constant Q64 = 0x10000000000000000;

    // splits
    // https://docs.splits.org/core/split
    // SplitMain
    ISplitMain internal constant splitMain = ISplitMain(0x2ed6c4B5dA6378c7897AC67Ba9e43102Feb694EE);
    // split 0x42ACFd8f410F5c19f24e3cF703acc7f637390Be9
    // controller 0x8044f710c58B6eA6a178CC540f9F1Cd758F7d1B2
    // accounts
    //     0x92c567E67C42fC9c2Df46D4fa944BD62C166d661
    //     0xEb572A6F56FD9f109Af1C156Ca1E0Fa94d9900d5
    address internal constant protocolSplit = 0x42ACFd8f410F5c19f24e3cF703acc7f637390Be9;
    uint32[] internal splitAllocations = [5e5, 5e5];
    ERC20[] internal splitTokens = [bAsset];
    address[] internal protocolRecipients = [0x8044f710c58B6eA6a178CC540f9F1Cd758F7d1B2,0xd2FB4d5A11c1e63d910D2A9782d23e63fa369c84];

    // baseline
    IBaseline internal constant baseline = IBaseline(0x14eB8d9b6e19842B5930030B18c50B0391561f27);
    // team multisig
    address internal constant multisig = 0x8044f710c58B6eA6a178CC540f9F1Cd758F7d1B2;
    // whitehat multisig
    address internal constant communityMultisig = 0xb4b9106fe909E9354A19842a31ffB611D48A92d0;
    address[] internal wallets;

    // pac weth pool
    IFlashloan internal constant flash = IFlashloan(0xd2499b3c8611E36ca89A70Fda2A72C49eE19eAa8);

    int24 internal slideTick;
    int24 internal slideTick2; // this represents the final slide tick, it will equal floorTick + 208
    bool public doProtocolSplit;
    address internal immutable deployer;

    error NotHim();

    constructor (
        int24 slideTick_,
        int24 slideTick2_
    ) {
        slideTick = slideTick_;
        slideTick2 = slideTick2_;
        doProtocolSplit = true;
        deployer = msg.sender;

        // approvals
        bAsset.approve(address(router), type(uint256).max);
        reserve.approve(address(router), type(uint256).max);
        usdb.approve(address(router), type(uint256).max);

        bAsset.approve(address(ambientRouter), type(uint256).max);

        bAsset.approve(address(baseline), type(uint256).max);
        reserve.approve(address(baseline), type(uint256).max);

        reserve.approve(address(flash), type(uint256).max);
    }

    function startOperation() external {
        if (msg.sender != deployer) revert NotHim();
        int24 floorTick = baseline.floorTick();

        // count total debt
        uint256 totalDebt;
        uint256[] memory debt = new uint256[](wallets.length);
        for (uint256 i; i < wallets.length; i++) {
            (uint256 principal,uint256 interest,,,) = baseline.getCreditAccount(wallets[i]);
            debt[i] = principal + interest;
            totalDebt += debt[i];
        }

        // take flash loan to slide, arb, shift, slide
        flash.flashLoanSimple(address(this), address(reserve), totalDebt, abi.encode(true, debt), 0);

        // Dump the bAsset fees received from the final shift
        if (doProtocolSplit) {

            // Distribute community fees
            splitMain.distributeERC20(
                protocolSplit,
                bAsset,
                protocolRecipients,
                splitAllocations,
                0,
                address(0)
            );

            for (uint256 i; i < protocolRecipients.length; i++) {
                splitMain.withdraw(protocolRecipients[i], 0, splitTokens);
                bAsset.transferFrom(protocolRecipients[i], address(this), bAsset.balanceOf(protocolRecipients[i]));
            }

            router.exactInputSingle(
                ISwapRouter.ExactInputSingleParams({
                    tokenIn: address(bAsset),
                    tokenOut: address(reserve),
                    fee: 10_000,
                    recipient: address(this),
                    deadline: block.timestamp,
                    amountIn: bAsset.balanceOf(address(this)),
                    amountOutMinimum: 0,
                    sqrtPriceLimitX96: 0
                })
            );
        }
        require(floorTick < baseline.floorTick(), "floor tick did not shift");

        // finish by sending reserves to community multisig
        reserve.transfer(communityMultisig, reserve.balanceOf(address(this)));
    }

    /// @notice Flash loan callback function
    function executeOperation(
        address /*asset*/,
        uint256 amount,
        uint256 /*premium*/,
        address initiator,
        bytes memory params
    ) external returns (bool success) {
        require(msg.sender == address(flash), "only flashloan contract can call this function");
        require(initiator == address(this), "only this contract can initiate flashloan");

        (bool isPartOne, uint256[] memory debt) = abi.decode(params, (bool, uint256[]));

        // part one:
        // 1. repay all debts to receive bAssets
        // 2. dump bAsset to slide tick to set up for shift
        // 3. arb yes pools to new main pool price
        // 4. buy yes from main pool and loop to force a shift

        // part two:
        // 1. unwind loop position with a secondary flash loan
        // 2. dump bAsset to safe slide tick
        // 3. dump the rest of the bAssets
        if (isPartOne) {
    
            // pay off borrows and accumulate bAsset
            for (uint256 i; i < wallets.length; i++) {

                if (debt[i] == 0) continue;
                
                // repay wallet debt
                baseline.repay(wallets[i], debt[i]);

                // transfer all redeemed collateral and all spot yes from wallet
                bAsset.transferFrom(wallets[i], address(this), bAsset.balanceOf(wallets[i]));
            }
            
            // dump bAsset to first slide tick
            uint160 slideSqrtPrice = TickMath.getSqrtRatioAtTick(slideTick);
            router.exactInputSingle(
                ISwapRouter.ExactInputSingleParams({
                    tokenIn: address(bAsset),
                    tokenOut: address(reserve),
                    fee: 10_000,
                    recipient: address(this),
                    deadline: block.timestamp,
                    amountIn: bAsset.balanceOf(address(this)),
                    amountOutMinimum: 0,
                    sqrtPriceLimitX96: slideSqrtPrice
                })
            );
            require(baseline.slide(), "first slide did not trigger");
            
            // Calculate target yes usdb sqrt price
            (,int24 yesEthTick,,,,,) = pool.slot0();
            (,int24 usdbEthTick,,,,,) = usdbEthPool005Percent.slot0();
            uint160 targetYesUsdbSqrtPrice = _calculateUSDBYesSqrtPriceLimit(yesEthTick, usdbEthTick);


            // Begin arbing all yes pools to the new main pool price
            // YES/USDB .3%
            router.exactInputSingle(
                ISwapRouter.ExactInputSingleParams({
                    tokenIn: address(bAsset),
                    tokenOut: address(usdb),
                    fee: 3_000,
                    recipient: address(this),
                    deadline: block.timestamp,
                    amountIn: bAsset.balanceOf(address(this)),
                    amountOutMinimum: 0,
                    sqrtPriceLimitX96: targetYesUsdbSqrtPrice
                })
            );
    
    
            // YES/ETH 0.3%
            router.exactInputSingle(
                ISwapRouter.ExactInputSingleParams({
                    tokenIn: address(bAsset),
                    tokenOut: address(reserve),
                    fee: 3000,
                    recipient: address(this),
                    deadline: block.timestamp,
                    amountIn: bAsset.balanceOf(address(this)),
                    amountOutMinimum: 0,
                    sqrtPriceLimitX96: slideSqrtPrice
                })
            );
    
            // YES/ETH on Ambient
            ambientRouter.swap(
                address(0),
                address(bAsset),
                420,
                false,
                false,
                uint128(bAsset.balanceOf(address(this))),
                0,
                uint128(_calculateYesEthSqrtPriceLimitX64(yesEthTick)),
                0,
                0
            );

            // we don't have enough YES on hand to arb this one, so handle it within the univ3swap callback
            yesUsdbPool1Percent.swap(
                address(this),
                true,
                type(int256).max,
                targetYesUsdbSqrtPrice,
                ""
            );

            // loop to trigger a shift
            {
                int24 floorTick = baseline.floorTick();
                uint256 clip = bAsset.balanceOf(address(this))/5;
                uint160 shiftSqrtPrice = TickMath.getSqrtRatioAtTick(baseline.checkpointTick() + 601);
                (uint256 reservesOut,) = baseline.borrow(address(this), clip, 1);
                while (floorTick == baseline.floorTick()) {
                    router.exactInputSingle(
                        ISwapRouter.ExactInputSingleParams({
                            tokenIn: address(reserve),
                            tokenOut: address(bAsset),
                            fee: 10_000,
                            recipient: address(this),
                            deadline: block.timestamp,
                            amountIn: reservesOut,
                            amountOutMinimum: 0,
                            sqrtPriceLimitX96: shiftSqrtPrice
                        })
                    );
                    if (baseline.shift()) break;
                    (reservesOut,) = baseline.borrow(address(this), clip, 0);
                }
            }

            // take another flash loan to unwind the position
            (uint256 principal,uint256 interest,,,) = baseline.getCreditAccount(address(this));
            flash.flashLoanSimple(
                address(this),
                address(reserve),
                principal + interest,
                abi.encode(false, new uint256[](0)),
                0
            );
        } else {
            // Pay off credit account with flash loaned amount
            baseline.repay(address(this), amount);

            // swap to the slide tick
            router.exactInputSingle(
                ISwapRouter.ExactInputSingleParams({
                    tokenIn: address(bAsset),
                    tokenOut: address(reserve),
                    fee: 10_000,
                    recipient: address(this),
                    deadline: block.timestamp,
                    amountIn: bAsset.balanceOf(address(this)),
                    amountOutMinimum: 0,
                    sqrtPriceLimitX96: TickMath.getSqrtRatioAtTick(slideTick2)
                })
            );

            require(baseline.slide(), "2nd slide did not trigger");

            // after the slide, dump the rest
            router.exactInputSingle(
                ISwapRouter.ExactInputSingleParams({
                    tokenIn: address(bAsset),
                    tokenOut: address(reserve),
                    fee: 10_000,
                    recipient: address(this),
                    deadline: block.timestamp,
                    amountIn: bAsset.balanceOf(address(this)),
                    amountOutMinimum: 0,
                    sqrtPriceLimitX96: 0
                })
            );
        }

        return true;
    }

    function uniswapV3SwapCallback(
        int256 amount0Delta,
        int256 /*amount1Delta*/,
        bytes calldata /*data*/
    ) external {
        require(msg.sender == address(yesUsdbPool1Percent), "only yes/usdb pool can call this function");
        
        // swap usdb for reserves
        router.exactInputSingle(
            ISwapRouter.ExactInputSingleParams({
                tokenIn: address(usdb),
                tokenOut: address(reserve),
                fee: 500,
                recipient: address(this),
                deadline: block.timestamp,
                amountIn: usdb.balanceOf(address(this)),
                amountOutMinimum: 0,
                sqrtPriceLimitX96: 0
            })
        );

        // swap reserves for yes
        router.exactOutputSingle(
            ISwapRouter.ExactOutputSingleParams({
                tokenIn: address(reserve),
                tokenOut: address(bAsset),
                fee: 10_000,
                recipient: address(this),
                deadline: block.timestamp,
                amountOut: uint256(amount0Delta),
                amountInMaximum: reserve.balanceOf(address(this)),
                sqrtPriceLimitX96: 0
            })
        );

        // payback the swap
        bAsset.transfer(address(yesUsdbPool1Percent), uint256(amount0Delta));
    }

    receive() external payable {
        WETH(payable(address(reserve))).deposit{value: msg.value}();
    }

    // Calculate optimal sqrt price limit for a swap from yes to usdb
    function _calculateUSDBYesSqrtPriceLimit(int24 yesEthTick, int24 usdbEthTick) internal pure returns (uint160) {
        uint256 yesEthPrice = _tickToPrice0(yesEthTick);
        uint256 usdbEthPrice = _tickToPrice0(usdbEthTick);
        
        
        uint256 yesUsdbPrice = yesEthPrice * 1e18 / usdbEthPrice;
        uint256 yesUsdbSqrtPrice = (FixedPointMathLib.sqrt(yesUsdbPrice) * FixedPoint96.Q96) / 1e9;

        return uint160(yesUsdbSqrtPrice);
    }

    // Calculate optimal Q64 sqrt price limit for a swap from yes to eth
    function _calculateYesEthSqrtPriceLimitX64(int24 uniTick) internal pure returns (uint128) {
        uint256 ethYesPrice = _tickToPrice0(uniTick);

        uint256 yesEthSqrtPrice = (FixedPointMathLib.sqrt( ethYesPrice ) * Q64) / 1e9;
        return uint128(yesEthSqrtPrice);
    }

    function _tickToPrice0(int24 tick) internal pure returns (uint256) {
        uint160 sqrtPriceX96 = TickMath.getSqrtRatioAtTick(tick);
        uint256 sqrtPriceScaled = FixedPointMathLib.divWad(sqrtPriceX96, FixedPoint96.Q96);

        return FixedPointMathLib.mulDiv(sqrtPriceScaled, sqrtPriceScaled, 1e18);
    }

    function updateProtocolSplit(bool doProtocolSplit_) external {
        if (msg.sender != deployer) revert NotHim();
        doProtocolSplit = doProtocolSplit_;
    }

    function addWallets(address[] calldata wallets_) external {
        if (msg.sender != deployer) revert NotHim();
        wallets = wallets_;
    }

    function withdraw(address token) public {
        if (msg.sender != deployer) revert NotHim();
        ERC20(token).transfer(multisig, ERC20(token).balanceOf(address(this)));
    }

    function updateSlideTick(int24 slideTick_) external {
        if (msg.sender != deployer) revert NotHim();
        slideTick = slideTick_;
    }

    function updateSlideTick2(int24 slideTick2_) external {
        if (msg.sender != deployer) revert NotHim();
        slideTick2 = slideTick2_;
    }

}