// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity 0.8.7;

import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "./interfaces/IWETH9.sol";
import "./abstract/AdminAccess.sol";
import "./interfaces/IExchange.sol";
import "./exchangeInterfaces/IPearlRouter.sol";

contract Exchange is IExchange, AdminAccess {
    using SafeERC20 for IERC20;
    bytes32 constant ROUTER_POLICY_ROLE = bytes32(keccak256("ROUTER_POLICY"));

    address public immutable override router = address(0);

    mapping(bytes => address) public routers;

    mapping(bytes => IRouter.Route[]) public routePaths;

    mapping(bytes => bool) public simpleSwap;

    mapping(bytes => bool) public stable;

    constructor() {
        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
        _grantRole(ROUTER_POLICY_ROLE, msg.sender);
    }

    function addRouterForTokens(
        address tokenInAddress,
        address tokenOutAddress,
        address _router,
        IRouter.Route[] calldata _routes,
        IRouter.Route[] calldata _routesReversed,
        bool _simpleSwap,
        bool _stable
    ) external onlyRole(ROUTER_POLICY_ROLE) {
        require(_routes.length == _routesReversed.length, "mismatch");
        bytes memory tokenized = abi.encodePacked(tokenInAddress, tokenOutAddress);
        bytes memory tokenizedReverse = abi.encodePacked(tokenOutAddress, tokenInAddress);
        // set routes
        routers[tokenized] = _router;
        routers[tokenizedReverse] = _router;
        // set paths if any
        uint256 length = _routes.length;
        for (uint256 i; i < length; ) {
            routePaths[tokenized].push(_routes[i]);
            routePaths[tokenizedReverse].push(_routesReversed[i]);
            unchecked {
                ++i;
            }
        }
        // set if simple swap or with hops
        simpleSwap[tokenized] = _simpleSwap;
        simpleSwap[tokenizedReverse] = _simpleSwap;
        //set if pool is stable or not
        stable[tokenized] = _stable;
        stable[tokenizedReverse] = _stable;
    }

    /**
     * @notice This function exchanges a specified Erc20 token for another Erc20 token.
     * @param tokenIn Address of Erc20 token being token from owner.
     * @param tokenOut Address of Erc20 token being given to the owner.
     * @param amountIn Amount of `tokenIn` to be exchanged.
     * @param minAmountOut The minimum amount expected from `tokenOut`.
     * @return Amount of returned `tokenOut` tokens.
     */
    function exchange(
        address tokenIn,
        address tokenOut,
        uint256 amountIn,
        uint256 minAmountOut
    ) external override returns (uint256) {
        uint256[] memory amounts = new uint256[](2);

        bytes memory tokenized = abi.encodePacked(tokenIn, tokenOut);

        address _router = routers[tokenized];
        require(address(0) != _router, "router 0 ng");
        //take the token
        IERC20(tokenIn).safeTransferFrom(msg.sender, address(this), amountIn);
        //approve the router
        IERC20(tokenIn).approve(_router, amountIn);

        if (simpleSwap[tokenized]) {
            amounts = IRouter(_router).swapExactTokensForTokensSimple(
                amountIn,
                minAmountOut,
                tokenIn,
                tokenOut,
                stable[tokenized],
                msg.sender,
                block.timestamp
            );
        } else {
            amounts = new uint256[](routePaths[tokenized].length);
            amounts = IRouter(_router).swapExactTokensForTokens(
                amountIn,
                minAmountOut,
                routePaths[tokenized],
                msg.sender,
                block.timestamp
            );
        }

        return amounts[amounts.length - 1]; //returns output token amount
    }

    /**
     * @notice This method is used to fetch a quote for an exchange.
     * @param tokenIn Address of Erc20 token being token from owner.
     * @param tokenOut Address of Erc20 token being given to the owner.
     * @param amountIn Amount of `tokenIn` to be exchanged.
     * @return Amount of `tokenOut` tokens for quote.
     */
    function quoteOut(
        address tokenIn,
        address tokenOut,
        uint256 amountIn
    ) external view override returns (uint256) {
        uint256[] memory amounts = new uint256[](2);

        bytes memory tokenized = abi.encodePacked(tokenIn, tokenOut);
        address _router = routers[tokenized];
        require(address(0) != _router, "router 0 qo");

        if (simpleSwap[tokenized]) {
            (amounts[1], ) = IRouter(_router).getAmountOut(amountIn, tokenIn, tokenOut);
        } else {
            amounts = new uint256[](routePaths[tokenized].length);
            amounts = IRouter(_router).getAmountsOut(amountIn, routePaths[tokenized]);
        }

        return amounts[amounts.length - 1];
    }
}
