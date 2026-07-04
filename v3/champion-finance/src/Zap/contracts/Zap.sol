// SPDX-License-Identifier: MIT

pragma solidity 0.8.13;
import "./lib/SafeMath.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "./interfaces/IJoeRouter.sol";
import "./interfaces/IUniswapV2Pair.sol";
import "./utils/ContractGuard.sol";

contract Zap is Ownable, ContractGuard {
    using SafeERC20 for IERC20;
    using SafeMath for uint256;

    /* ========== CONSTANT VARIABLES ========== */
    address public WAVAX;
    address public USDC;

    IJoeRouter private ROUTER;

    /* ========== STATE VARIABLES ========== */
    mapping(address => address) private routePairAddresses;

    /* ========== INITIALIZER ========== */
    constructor(address _router, address _usdcAddress) {
        require(owner() != address(0), "Zap: owner must be set");
        ROUTER = IJoeRouter(_router);
        WAVAX = ROUTER.WAVAX();
        USDC = _usdcAddress;
    }

    /* ========== View Functions ========== */
    function routePair(address _address) external view returns (address) {
        return routePairAddresses[_address];
    }

    /* ========== External Functions ========== */

    function zapInToken(
        address _from,
        uint256 amount,
        address _to,
        uint256 _minAmountLp
    ) external onlyOneBlock {
        IERC20(_from).safeTransferFrom(msg.sender, address(this), amount);
        _approveTokenIfNeeded(_from);
        IUniswapV2Pair pair = IUniswapV2Pair(_to);
        address token0 = pair.token0();
        address token1 = pair.token1();
        if (_from == token0 || _from == token1) {
            // swap half amount for other
            address fromToken = _from;
            address other = fromToken == token0 ? token1 : token0;
            _approveTokenIfNeeded(other);
            uint256 sellAmount = amount.div(2);
            uint256 otherAmount = _swap(fromToken, sellAmount, other, address(this));

            (uint256 amountA, uint256 amountB, uint256 liquidity) = ROUTER.addLiquidity(
                fromToken,
                other,
                sellAmount,
                otherAmount,
                0,
                0,
                msg.sender,
                block.timestamp
            );
            _dustDistribution(sellAmount, otherAmount, amountA, amountB, fromToken, other, msg.sender);
            require (liquidity >= _minAmountLp, "lpAmt < minAmount quoted");
        } else {
            uint256 usdcAmount = 0;
            if (_from == USDC) {
                usdcAmount = amount;
            } else {
                _approveTokenIfNeeded(USDC);
                usdcAmount = _swap(_from, amount, USDC, address(this));
            }
            _swapUSDCToLP(_to, usdcAmount, msg.sender, _minAmountLp);
        }
    }

    function estimateZapIn(
        address _from,
        uint256 amount,
        address _to
    ) external view returns (address, uint256, address, uint256) {
        IUniswapV2Pair pair = IUniswapV2Pair(_to);
        address token0 = pair.token0();
        address token1 = pair.token1();
        if (_from == token0 || _from == token1) {
            // swap half amount for other
            uint256 sellAmount = amount.div(2);
            if (_from == token0) {
                uint256 token0Amt = sellAmount;
                uint256 token1Amt = _estimateSwap(_from, sellAmount, token1);
                return (token0, token0Amt, token1, token1Amt);
            } else {
                uint256 token1Amt = sellAmount;
                uint256 token0Amt = _estimateSwap(_from, sellAmount, token0);
                return (token0, token0Amt, token1, token1Amt);
            }
        } else {
            uint256 usdcAmount = 0;
            if (_from == USDC) {
                usdcAmount = amount;
            } else {
                usdcAmount = _estimateSwap(_from, amount, USDC);
            }
            uint256 sellAmount = usdcAmount.div(2);
            if (token0 == USDC) {
                uint256 token1Amt = _estimateSwap(USDC, usdcAmount.sub(sellAmount), token1);
                return (token0, sellAmount, token1, token1Amt);
            } else if (token1 == USDC) {
                uint256 token0Amt = _estimateSwap(USDC, sellAmount, token0);
                return (token0, token0Amt, token1, sellAmount);
            } else {
                uint256 token0Amt = _estimateSwap(USDC, sellAmount, token0);
                uint256 token1Amt = _estimateSwap(USDC, usdcAmount.sub(sellAmount), token1);
                return (token0, token0Amt, token1, token1Amt);
            }
        }
    }

    function zapOutToken(address _from, uint amount, address _to) external onlyOneBlock {
        // from an LP token to an ERC20 through specified router
        IERC20(_from).safeTransferFrom(msg.sender, address(this), amount);
        _approveTokenIfNeeded(_from);

        address token0 = IUniswapV2Pair(_from).token0();
        address token1 = IUniswapV2Pair(_from).token1();
        _approveTokenIfNeeded(token0);
        _approveTokenIfNeeded(token1);
        uint256 amountA;
        uint256 amountB;
        (amountA, amountB) = ROUTER.removeLiquidity(token0, token1, amount, 0, 0, address(this), block.timestamp);
        if (token0 != _to) {
            amountA = _swap(token0, amountA, _to, address(this));
        }
        if (token1 != _to) {
            amountB = _swap(token1, amountB, _to, address(this));
        }

        IERC20(_to).safeTransfer(msg.sender, amountA.add(amountB));
    }

    function estimateZapOut(
        address _lpAddress,
        uint256 amount,
        address _tokenOut
    ) external view returns (uint256) {
        IUniswapV2Pair pair = IUniswapV2Pair(_lpAddress);
        address token0 = pair.token0();
        address token1 = pair.token1();
        uint256 totalSupply = pair.totalSupply();
        (uint256 reserve0, uint256 reserve1, ) = pair.getReserves();
        uint256 token0Amount = reserve0.mul(amount).div(totalSupply);
        uint256 token1Amount = reserve1.mul(amount).div(totalSupply);
        if (token0 == _tokenOut) {
            uint256 token0Swap = _estimateSwap(token1, token1Amount, token0);
            return token0Amount.add(token0Swap);
        } else if (token1 == _tokenOut) {
            uint256 token1Swap = _estimateSwap(token0, token0Amount, token1);
            return token1Amount.add(token1Swap);
        } else {
            return 0;
        }
    }

    /* ========== Private Functions ========== */
    function _approveTokenIfNeeded(address token) private {
        if (IERC20(token).allowance(address(this), address(ROUTER)) == 0) {
            IERC20(token).safeApprove(address(ROUTER), type(uint256).max);
        }
    }

    function _swap(
        address _from,
        uint256 amount,
        address _to,
        address receiver
    ) private returns (uint256) {
        address intermediate = routePairAddresses[_from];
        if (intermediate == address(0)) {
            intermediate = routePairAddresses[_to];
        }

        address[] memory path;
        if (intermediate != address(0) && (_from == WAVAX || _to == WAVAX)) {
            path = new address[](3);
            path[0] = _from;
            path[1] = intermediate;
            path[2] = _to;
        } else if (intermediate != address(0) && (_from == intermediate || _to == intermediate)) {
            // [CHAM, USDC] or [USDC, CHAM] or [USDC, AVIC] or [AVIC, USDC]
            path = new address[](2);
            path[0] = _from;
            path[1] = _to;
        } else if (intermediate != address(0) && routePairAddresses[_from] == routePairAddresses[_to]) {
            // [CHAM, AVIC] or [AVIC, CHAM]
            path = new address[](3);
            path[0] = _from;
            path[1] = intermediate;
            path[2] = _to;
        } else if (
            routePairAddresses[_from] != address(0) &&
            routePairAddresses[_to] != address(0) &&
            routePairAddresses[_from] != routePairAddresses[_to]
        ) {
            path = new address[](5);
            path[0] = _from;
            path[1] = routePairAddresses[_from];
            path[2] = WAVAX;
            path[3] = routePairAddresses[_to];
            path[4] = _to;
        } else if (intermediate != address(0) && routePairAddresses[_from] != address(0)) {
            path = new address[](4);
            path[0] = _from;
            path[1] = intermediate;
            path[2] = WAVAX;
            path[3] = _to;
        } else if (intermediate != address(0) && routePairAddresses[_to] != address(0)) {
            path = new address[](4);
            path[0] = _from;
            path[1] = WAVAX;
            path[2] = intermediate;
            path[3] = _to;
        } else if (_from == WAVAX || _to == WAVAX) {
            path = new address[](2);
            path[0] = _from;
            path[1] = _to;
        } else {
            path = new address[](3);
            path[0] = _from;
            path[1] = WAVAX;
            path[2] = _to;
        }

        uint256[] memory amounts = ROUTER.swapExactTokensForTokens(amount, 0, path, receiver, block.timestamp);
        return amounts[amounts.length - 1];
    }

    function _estimateSwap(
        address _from,
        uint256 amount,
        address _to
    ) private view returns (uint256) {
        address intermediate = routePairAddresses[_from];
        if (intermediate == address(0)) {
            intermediate = routePairAddresses[_to];
        }

        address[] memory path;
        if (intermediate != address(0) && (_from == WAVAX || _to == WAVAX)) {
            path = new address[](3);
            path[0] = _from;
            path[1] = intermediate;
            path[2] = _to;
        } else if (intermediate != address(0) && (_from == intermediate || _to == intermediate)) {
            // [CHAM, USDC] or [USDC, CHAM] or [USDC, AVIC] or [AVIC, USDC]
            path = new address[](2);
            path[0] = _from;
            path[1] = _to;
        } else if (intermediate != address(0) && routePairAddresses[_from] == routePairAddresses[_to]) {
            // [CHAM, AVIC] or [AVIC, CHAM]
            path = new address[](3);
            path[0] = _from;
            path[1] = intermediate;
            path[2] = _to;
        } else if (
            routePairAddresses[_from] != address(0) &&
            routePairAddresses[_to] != address(0) &&
            routePairAddresses[_from] != routePairAddresses[_to]
        ) {
            path = new address[](5);
            path[0] = _from;
            path[1] = routePairAddresses[_from];
            path[2] = WAVAX;
            path[3] = routePairAddresses[_to];
            path[4] = _to;
        } else if (intermediate != address(0) && routePairAddresses[_from] != address(0)) {
            path = new address[](4);
            path[0] = _from;
            path[1] = intermediate;
            path[2] = WAVAX;
            path[3] = _to;
        } else if (intermediate != address(0) && routePairAddresses[_to] != address(0)) {
            path = new address[](4);
            path[0] = _from;
            path[1] = WAVAX;
            path[2] = intermediate;
            path[3] = _to;
        } else if (_from == WAVAX || _to == WAVAX) {
            path = new address[](2);
            path[0] = _from;
            path[1] = _to;
        } else {
            path = new address[](3);
            path[0] = _from;
            path[1] = WAVAX;
            path[2] = _to;
        }

        uint256[] memory amounts = ROUTER.getAmountsOut(amount, path);
        return amounts[amounts.length - 1];
    }

    function _swapUSDCToLP(
        address lp,
        uint256 amount,
        address _receiver,
        uint256 _minAmountLp
    ) private {
        IUniswapV2Pair pair = IUniswapV2Pair(lp);
        address token0 = pair.token0();
        address token1 = pair.token1();

        address receiver = _receiver;
        uint256 swapValue = amount.div(2);
        uint256 token0Amount = 0;
        uint256 token1Amount = 0;
        if (token0 == USDC) {
            token0Amount = swapValue;
        } else {
            token0Amount = _swap(USDC, swapValue, token0, address(this));
        }

        if (token1 == USDC) {
            token1Amount = amount.sub(swapValue);
        } else {
            token1Amount = _swap(USDC, amount.sub(swapValue), token1, address(this));
        }
        if (token0Amount > 0 && token1Amount > 0) {
            _approveTokenIfNeeded(token0);
            _approveTokenIfNeeded(token1);
            (uint256 amountA, uint256 amountB, uint256 liquidity) = ROUTER.addLiquidity(token0, token1, token0Amount, token1Amount, 0, 0, receiver, block.timestamp);
            _dustDistribution(token0Amount, token1Amount, amountA, amountB, token0, token1, receiver);
            require (liquidity >= _minAmountLp, "lpAmt < minAmount quoted");
        }
    }
    
    function _dustDistribution(uint256 token0, uint256 token1, uint256 amountToken0, uint256 amountToken1, address native, address token, address recipient) private {
        uint256 nativeDust = token0.sub(amountToken0);
        uint256 tokenDust = token1.sub(amountToken1);
        if (nativeDust > 0) {
            IERC20(native).safeTransfer(recipient, nativeDust);
        }
        if (tokenDust > 0) {
            IERC20(token).safeTransfer(recipient, tokenDust);
        }
    }
    /* ========== RESTRICTED FUNCTIONS ========== */

    function setRoutePairAddress(address asset, address route) external onlyOwner {
        routePairAddresses[asset] = route;
    }
}