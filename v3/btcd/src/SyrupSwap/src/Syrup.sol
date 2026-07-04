// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

import {IUniversalRouter} from "@uniswap/universal-router/contracts/interfaces/IUniversalRouter.sol";
import {Commands} from "@uniswap/universal-router/contracts/libraries/Commands.sol";
import {IPoolManager} from "@uniswap/v4-core/src/interfaces/IPoolManager.sol";
import {IV4Router} from "@uniswap/v4-periphery/src/interfaces/IV4Router.sol";
import {IV4Quoter} from "@uniswap/v4-periphery/src/interfaces/IV4Quoter.sol";
import {Actions} from "@uniswap/v4-periphery/src/libraries/Actions.sol";
import {IPermit2} from "@uniswap/permit2/src/interfaces/IPermit2.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {StateLibrary} from "@uniswap/v4-core/src/libraries/StateLibrary.sol";
import {PoolKey} from "@uniswap/v4-core/src/types/PoolKey.sol";
import {Currency} from "@uniswap/v4-core/src/types/Currency.sol";
import {IHooks} from "@uniswap/v4-core/src/interfaces/IHooks.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {Address} from "@openzeppelin/contracts/utils/Address.sol";

contract SyrupSwap is Ownable {
    using StateLibrary for IPoolManager;
    using Address for address;

    // Mainnet addresses - all hardcoded constants
    address public constant SYRUP_TOKEN_ADDRESS =
        0x80ac24aA929eaF5013f6436cdA2a7ba190f5Cc0b;
    address public constant USDC_TOKEN_ADDRESS =
        0xA0b86991c6218b36c1d19D4a2e9Eb0cE3606eB48;
    address public constant PERMIT2_ADDRESS =
        0x000000000022D473030F116dDEE9F6B43aC78BA3;
    address public constant UNIVERSAL_ROUTER_ADDRESS =
        0x66a9893cC07D91D95644AEDD05D03f95e1dBA8Af;
    address public constant POOL_MANAGER_ADDRESS =
        0x000000000004444c5dc75cB358380D2e3dE08A90;
    address public constant V4_QUOTER_ADDRESS =
        0x52F0E24D1c21C8A0cB1e5a5dD6198556BD9E1203;
    string public constant TYP = "UNIV4SWAP:SYRUPUSDC:USDC:0"; //<type>:<investment>:<io token>:<version>

    error InsufficientOutputAmount();
    error DelegatecallFailed();
    error InvalidRecipient();

    constructor(address initialOwner) Ownable(initialOwner) {
        // Step 1: Approve Permit2 to spend tokens
        IERC20(USDC_TOKEN_ADDRESS).approve(PERMIT2_ADDRESS, type(uint256).max);
        IERC20(SYRUP_TOKEN_ADDRESS).approve(PERMIT2_ADDRESS, type(uint256).max);

        // Step 2: Give Permit2 permission for Universal Router to spend our tokens
        // approve(token, spender, amount, expiration)
        IPermit2(PERMIT2_ADDRESS).approve(
            USDC_TOKEN_ADDRESS,
            UNIVERSAL_ROUTER_ADDRESS,
            type(uint160).max,
            type(uint48).max
        );
        IPermit2(PERMIT2_ADDRESS).approve(
            SYRUP_TOKEN_ADDRESS,
            UNIVERSAL_ROUTER_ADDRESS,
            type(uint160).max,
            type(uint48).max
        );
    }

    /**
     * @notice Buy Syrup tokens using USDC
     * @param amount The amount of USDC to spend (in USDC's decimals, 6)
     * @param minimumOut0 The minimum amount of Syrup to receive (in Syrup's decimals, 6)
     * @return amountOut The amount of Syrup received
     */
    function buy(
        uint256 amount,
        uint256 minimumOut0
    ) external onlyOwner returns (uint256) {
        return
            _swapExactInputSingle(
                amount,
                minimumOut0,
                false // shouldOutputBeUSDC = false, buying Syrup with USDC
            );
    }

    /**
     * @notice Sell Syrup tokens for USDC
     * @param amount The amount of Syrup to sell (in Syrup's decimals, 18)
     * @param minimumOut1 The minimum amount of USDC to receive (in USDC's decimals, 6)
     * @return amountOut The amount of USDC received
     */
    function sell(
        uint256 amount,
        uint256 minimumOut1
    ) public onlyOwner returns (uint256) {
        uint256 syrupBalance = IERC20(SYRUP_TOKEN_ADDRESS).balanceOf(
            address(this)
        );
        require(amount <= syrupBalance, InsufficientOutputAmount());
        return
            _swapExactInputSingle(
                amount,
                minimumOut1,
                true // shouldOutputBeUSDC = true, selling Syrup for USDC
            );
    }

    /**
     * @notice Sell Syrup tokens for USDC and transfer the USDC to a recipient
     * @param amount The amount of Syrup to sell (in Syrup's decimals, 6)
     * @param minimumOut1 The minimum amount of USDC to receive (in USDC's decimals, 6)
     * @param recipient The address to receive the USDC
     * @return usdcReceived The amount of USDC received and transferred
     */
    function sellAndTransfer(
        uint256 amount,
        uint256 minimumOut1,
        address recipient
    ) external onlyOwner returns (uint256) {
        require(recipient != address(0), InvalidRecipient());
        uint256 usdcReceived = sell(amount, minimumOut1);
        IERC20(USDC_TOKEN_ADDRESS).transfer(recipient, usdcReceived);
        return usdcReceived;
    }

    /**
     * @notice Transfer any ERC20 tokens held by this contract to a recipient
     * @param token The address of the ERC20 token to transfer
     * @param recipient The address to receive the tokens
     * @param amount The amount of tokens to transfer
     */
    function transferERC20(
        address token,
        address recipient,
        uint256 amount
    ) external onlyOwner {
        require(recipient != address(0), InvalidRecipient());
        IERC20(token).transfer(recipient, amount);
    }

    /**
     * @notice Execute a delegatecall to a target contract
     * @param target The address of the target contract
     * @param data The calldata to send to the target contract
     * @return result The returned data from the delegatecall
     */
    function delegate(
        address target,
        bytes calldata data
    ) external onlyOwner returns (bytes memory) {
        (bool success, bytes memory result) = target.delegatecall(data);
        require(success, DelegatecallFailed());
        return result;
    }

    /**
     * @notice Get the total value of the contract's holdings in USDC
     * @dev This is NOT view because it calls the quoter which simulates swaps
     * @dev This includes both USDC held directly and the USDC value of Syrup tokens held
     * @return The total value in USDC (in USDC's decimals, 6)
     */
    function balance() external returns (uint256) {
        // Get how much USDC we would receive for all our Syrup
        uint256 syrupBalance = IERC20(SYRUP_TOKEN_ADDRESS).balanceOf(
            address(this)
        );
        uint256 usdcBalance = IERC20(USDC_TOKEN_ADDRESS).balanceOf(
            address(this)
        );
        if (syrupBalance == 0 && usdcBalance == 0) return 0;
        uint256 price = getQuoteForSyrupToUsdc(1e6);
        return (syrupBalance * price) / 1e6 + usdcBalance;
    }

    /**
     * @notice Get the raw balances of Syrup and USDC held by the contract
     * @return syrupBalance The amount of Syrup tokens held (in Syrup's decimals, 18)
     * @return usdcBalance The amount of USDC tokens held (in USDC's decimals, 6)
     */
    function getRawBalance()
        external
        view
        returns (uint256 syrupBalance, uint256 usdcBalance)
    {
        syrupBalance = IERC20(SYRUP_TOKEN_ADDRESS).balanceOf(address(this));
        usdcBalance = IERC20(USDC_TOKEN_ADDRESS).balanceOf(address(this));
    }

    /**
     * @notice Calculate how much USDC you would receive for selling a given amount of Syrup
     * @dev Uses V4Quoter to simulate the swap and account for liquidity, tick crossings, and price impact
     * @param syrupAmount The amount of Syrup tokens to sell (in Syrup's decimals, 18)
     * @return usdcAmount The estimated amount of USDC you would receive (in USDC's decimals, 6)
     */
    function getQuoteForSyrupToUsdc(
        uint256 syrupAmount
    ) public returns (uint256 usdcAmount) {
        if (syrupAmount == 0) return 0;

        // Use the quoter to get an accurate quote accounting for liquidity and tick crossings
        usdcAmount = _getQuote(syrupAmount, true);
    }

    /**
     * @notice Calculate how much Syrup you would receive for buying with a given amount of USDC
     * @dev Uses V4Quoter to simulate the swap and account for liquidity, tick crossings, and price impact
     * @param usdcAmount The amount of USDC tokens to spend (in USDC's decimals, 6)
     * @return syrupAmount The estimated amount of Syrup you would receive (in Syrup's decimals, 18)
     */
    function getQuoteForUsdcToSyrup(
        uint256 usdcAmount
    ) public returns (uint256 syrupAmount) {
        if (usdcAmount == 0) return 0;

        // Use the quoter to get an accurate quote accounting for liquidity and tick crossings
        syrupAmount = _getQuote(usdcAmount, false);
    }

    function _getQuote(
        uint256 amount,
        bool zeroForOne
    ) internal returns (uint256 amountOut) {
        // Use the quoter to get an accurate quote accounting for liquidity and tick crossings
        (amountOut, ) = IV4Quoter(V4_QUOTER_ADDRESS).quoteExactInputSingle(
            IV4Quoter.QuoteExactSingleParams({
                poolKey: _getSyrupPoolKey(),
                zeroForOne: zeroForOne,
                exactAmount: uint128(amount),
                hookData: bytes("")
            })
        );
    }

    function _swapExactInputSingle(
        uint256 amountIn,
        uint256 minAmountOut,
        bool shouldOutputBeUSDC
    ) internal returns (uint256 amountOut) {
        PoolKey memory key = _getSyrupPoolKey();

        // Determine input and output currencies based on swap direction
        Currency inputCurrency;
        Currency outputCurrency;

        if (shouldOutputBeUSDC) {
            // Swapping Syrup -> USDC (zeroForOne = true)
            inputCurrency = key.currency0; // Syrup
            outputCurrency = key.currency1; // USDC
        } else {
            // Swapping USDC -> Syrup (zeroForOne = false)
            inputCurrency = key.currency1; // USDC
            outputCurrency = key.currency0; // Syrup
        }

        // Encode V4Router actions
        bytes memory actions = abi.encodePacked(
            uint8(Actions.SWAP_EXACT_IN_SINGLE),
            uint8(Actions.SETTLE_ALL),
            uint8(Actions.TAKE_ALL)
        );

        // Prepare parameters for each action
        bytes[] memory params = new bytes[](3);
        params[0] = abi.encode(
            IV4Router.ExactInputSingleParams({
                poolKey: key,
                zeroForOne: shouldOutputBeUSDC, // true if Syrup->USDC, false if USDC->Syrup
                amountIn: uint128(amountIn),
                amountOutMinimum: uint128(minAmountOut),
                hookData: bytes("")
            })
        );
        // SETTLE_ALL: pay the input currency - max should be amountIn (what we're swapping)
        params[1] = abi.encode(inputCurrency, amountIn);
        // TAKE_ALL: receive the output currency - min is minAmountOut
        params[2] = abi.encode(outputCurrency, minAmountOut);

        // Combine actions and params into inputs
        bytes[] memory inputs = new bytes[](1);
        inputs[0] = abi.encode(actions, params);

        // Encode the Universal Router command
        bytes memory commands = abi.encodePacked(uint8(Commands.V4_SWAP));

        // Execute the swap
        IUniversalRouter(UNIVERSAL_ROUTER_ADDRESS).execute(
            commands,
            inputs,
            type(uint256).max
        );

        // Verify and return the output amount
        amountOut = IERC20(Currency.unwrap(outputCurrency)).balanceOf(
            address(this)
        );
        require(amountOut >= minAmountOut, InsufficientOutputAmount());
        return amountOut;
    }

    function getSyrupPoolKey() external pure returns (PoolKey memory) {
        return _getSyrupPoolKey();
    }

    function _getSyrupPoolKey() internal pure returns (PoolKey memory) {
        return
            PoolKey({
                currency0: Currency.wrap(SYRUP_TOKEN_ADDRESS),
                currency1: Currency.wrap(USDC_TOKEN_ADDRESS),
                fee: 800,
                tickSpacing: 5,
                hooks: IHooks(address(0))
            });
    }
}
