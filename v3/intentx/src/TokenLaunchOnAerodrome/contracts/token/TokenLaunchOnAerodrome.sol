// SPDX-License-Identifier: MIT
pragma solidity ^0.8.27;

import "@openzeppelin/contracts/access/Ownable2Step.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

/**
 * @title TokenLaunchOnAerodrome
 * @notice Manages token launch on Aerodrome with liquidity provision and airdrops
 */
interface IRouter {
    struct Route {
        address from;
        address to;
        bool stable;
        address factory;
    }

    function addLiquidity(
        address tokenA,
        address tokenB,
        bool stable,
        uint256 amountADesired,
        uint256 amountBDesired,
        uint256 amountAMin,
        uint256 amountBMin,
        address to,
        uint256 deadline
    ) external returns (uint256 amountA, uint256 amountB, uint256 liquidity);

    function swapExactTokensForTokens(
        uint256 amountIn,
        uint256 amountOutMin,
        Route[] calldata routes,
        address to,
        uint256 deadline
    ) external returns (uint256[] memory amounts);

    function getReserves(
        address tokenA,
        address tokenB,
        bool stable,
        address _factory
    ) external view returns (uint256 reserveA, uint256 reserveB);
}

contract TokenLaunchOnAerodrome is Ownable2Step {
    using SafeERC20 for IERC20;

    // Token addresses
    IERC20 public constant SYMM =
        IERC20(0x800822d361335b4d5F352Dac293cA4128b5B605f);
    IERC20 public constant WETH =
        IERC20(0x4200000000000000000000000000000000000006);

    // Protocol addresses
    address public constant ROUTER_ADDRESS =
        0xcF77a3Ba9A5CA399B7c97c74d54e5b1Beb874E43;
    address public constant FACTORY_ADDRESS =
        0x420DD381b31aEf6683db6B902084cB0FFECe40Da;
    address public constant LP_DESTINATION_ADDRESS =
        0x3f90af3394B0Caa440465397333ce062071e0863;

    // First liquidity addition
    uint256 public constant INITIAL_SYMM_LIQUIDITY = 14000 * 1e18;
    uint256 public constant INITIAL_WETH_LIQUIDITY = 1e16;

    // Second liquidity addition
    uint256 public constant SECOND_SYMM_LIQUIDITY = 27499678026960466779654784;
    uint256 public constant SECOND_WETH_LIQUIDITY = 195820860576970610200;

    // Swap parameters
    uint256 public constant WETH_TO_BUY_SYMM = 21638923029389800;
    uint256 public constant MIN_SYMM_OUT = 9565972881432419150784;
    uint256 public constant TOTAL_AIRDROP = 209988375 * 1e18;

    // Epsilon values for balance checks
    uint256 public constant SYMM_EPSILON = 100;
    uint256 public constant WETH_EPSILON = 100;
    uint256 public constant FINAL_RESERVE_RATIO = 7120841938039;

    IRouter public immutable router;

    // Events
    event LiquidityAdded(
        uint256 symmAmount,
        uint256 wethAmount,
        uint256 liquidity
    );
    event SwapExecuted(uint256 wethIn, uint256 symmOut);
    event FundsRescued(address token, uint256 amount);

    // Custom errors
    error ArrayLengthMismatch();
    error InvalidAirdropAmount();
    error InsufficientLiquidity();
    error ExcessiveTokensLeft();
    error PriceOutOfRange();
    error InvalidReserves();

    constructor() Ownable(msg.sender) {
        router = IRouter(ROUTER_ADDRESS);
    }

    /**
     * @notice Calculates the optimal amount of tokenB for liquidity provision
     */
    function quoteLiquidity(
        uint256 amountA,
        uint256 reserveA,
        uint256 reserveB
    ) internal pure returns (uint256 amountB) {
        return (amountA * reserveB) / reserveA;
    }

    /**
     * @notice Executes the entire launch process including liquidity addition, airdrops, and swaps
     * @param airdropRecipients Array of airdrop recipient addresses
     * @param airdropAmounts Array of corresponding airdrop amounts
     */
    function executeAllInOne(
        address[] calldata airdropRecipients,
        uint256[] calldata airdropAmounts
    ) external onlyOwner {
        if (airdropRecipients.length != airdropAmounts.length)
            revert ArrayLengthMismatch();

        uint256 deadline = block.timestamp + 1;

        // Approve router for token transfers
        SYMM.approve(
            address(router),
            INITIAL_SYMM_LIQUIDITY + SECOND_SYMM_LIQUIDITY
        );
        WETH.approve(
            address(router),
            INITIAL_WETH_LIQUIDITY + SECOND_WETH_LIQUIDITY + WETH_TO_BUY_SYMM
        );

        // Add initial liquidity
        (uint256 amountA, uint256 amountB, uint256 liquidity) = router
            .addLiquidity(
                address(WETH),
                address(SYMM),
                false,
                INITIAL_WETH_LIQUIDITY,
                INITIAL_SYMM_LIQUIDITY,
                0,
                0,
                LP_DESTINATION_ADDRESS,
                deadline
            );
        emit LiquidityAdded(amountA, amountB, liquidity);

        // Execute airdrops
        uint256 totalAirdropAmount;
        for (uint256 i = 0; i < airdropRecipients.length; ) {
            uint256 amount = airdropAmounts[i];
            totalAirdropAmount += amount;
            SYMM.safeTransfer(airdropRecipients[i], amount);

            unchecked {
                ++i;
            }
        }
        if (totalAirdropAmount > TOTAL_AIRDROP) revert InvalidAirdropAmount();

        // Execute swap
        IRouter.Route[] memory routes = new IRouter.Route[](1);
        routes[0] = IRouter.Route({
            from: address(WETH),
            to: address(SYMM),
            stable: false,
            factory: FACTORY_ADDRESS
        });

        uint256 oldBalance = SYMM.balanceOf(address(this));
        router.swapExactTokensForTokens(
            WETH_TO_BUY_SYMM,
            MIN_SYMM_OUT - 1,
            routes,
            address(this),
            deadline
        );
        uint256 newBalance = SYMM.balanceOf(address(this));
        emit SwapExecuted(WETH_TO_BUY_SYMM, newBalance - oldBalance);

        // Add second round of liquidity
        (uint256 reserveA, uint256 reserveB) = router.getReserves(
            address(WETH),
            address(SYMM),
            false,
            FACTORY_ADDRESS
        );
        if (reserveA == 0 || reserveB == 0) revert InvalidReserves();

        router.addLiquidity(
            address(WETH),
            address(SYMM),
            false,
            SECOND_WETH_LIQUIDITY,
            SECOND_SYMM_LIQUIDITY,
            SECOND_WETH_LIQUIDITY,
            SECOND_SYMM_LIQUIDITY,
            LP_DESTINATION_ADDRESS,
            deadline
        );

        // Final checks
        (reserveA, reserveB) = router.getReserves(
            address(WETH),
            address(SYMM),
            false,
            FACTORY_ADDRESS
        );

        if (SYMM.balanceOf(address(this)) >= SYMM_EPSILON)
            revert ExcessiveTokensLeft();
        if (WETH.balanceOf(address(this)) >= WETH_EPSILON)
            revert ExcessiveTokensLeft();

        uint256 priceRatio = (reserveA * 1e18) / reserveB;
        if (
            priceRatio > FINAL_RESERVE_RATIO + (FINAL_RESERVE_RATIO / 100) ||
            priceRatio < FINAL_RESERVE_RATIO - (FINAL_RESERVE_RATIO / 100)
        ) revert PriceOutOfRange();
    }

    /**
     * @notice Rescues any tokens accidentally sent to the contract
     * @param tokenAddress Address of the token to rescue
     */
    function rescueFunds(address tokenAddress) external onlyOwner {
        IERC20 token = IERC20(tokenAddress);
        uint256 balance = token.balanceOf(address(this));
        token.safeTransfer(msg.sender, balance);
        emit FundsRescued(tokenAddress, balance);
    }
}
