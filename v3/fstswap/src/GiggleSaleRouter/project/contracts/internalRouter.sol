// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";

// ─── TransferHelper ───
library TransferHelper {
    function safeApprove(address token, address to, uint value) internal {
        (bool success, bytes memory data) = token.call(abi.encodeWithSelector(0x095ea7b3, to, value));
        require(success, 'TransferHelper: APPROVE_CALL_FAILED');
        if (data.length > 0) {
            require(data.length >= 32, 'TransferHelper: APPROVE_BAD_RETURN');
            require(abi.decode(data, (bool)), 'TransferHelper: APPROVE_FAILED');
        }
    }

    function safeTransfer(address token, address to, uint value) internal {
        (bool success, bytes memory data) = token.call(abi.encodeWithSelector(0xa9059cbb, to, value));
        require(success, 'TransferHelper: TRANSFER_CALL_FAILED');
        if (data.length > 0) {
            require(data.length >= 32, 'TransferHelper: TRANSFER_BAD_RETURN');
            require(abi.decode(data, (bool)), 'TransferHelper: TRANSFER_FAILED');
        }
    }

    function safeTransferFrom(address token, address from, address to, uint value) internal {
        (bool success, bytes memory data) = token.call(abi.encodeWithSelector(0x23b872dd, from, to, value));
        require(success, 'TransferHelper: TRANSFER_FROM_CALL_FAILED');
        if (data.length > 0) {
            require(data.length >= 32, 'TransferHelper: TRANSFER_FROM_BAD_RETURN');
            require(abi.decode(data, (bool)), 'TransferHelper: TRANSFER_FROM_FAILED');
        }
    }

    function safeTransferETH(address to, uint value) internal {
        (bool success,) = to.call{value: value}(new bytes(0));
        require(success, 'TransferHelper: ETH_TRANSFER_FAILED');
    }
}

// ─── Interfaces ───

interface IPancakeRouter01 {
    function factory() external view returns (address);
    function WETH() external view returns (address);

    function addLiquidity(
        address tokenA, address tokenB,
        uint amountADesired, uint amountBDesired,
        uint amountAMin, uint amountBMin,
        address to, uint deadline
    ) external returns (uint amountA, uint amountB, uint liquidity);

    function addLiquidityETH(
        address token, uint amountTokenDesired,
        uint amountTokenMin, uint amountETHMin,
        address to, uint deadline
    ) external payable returns (uint amountToken, uint amountETH, uint liquidity);

    function removeLiquidity(
        address tokenA, address tokenB,
        uint liquidity, uint amountAMin, uint amountBMin,
        address to, uint deadline
    ) external returns (uint amountA, uint amountB);

    function removeLiquidityETH(
        address token, uint liquidity,
        uint amountTokenMin, uint amountETHMin,
        address to, uint deadline
    ) external returns (uint amountToken, uint amountETH);

    function quote(uint amountA, uint reserveA, uint reserveB) external pure returns (uint amountB);
    function getAmountOut(uint amountIn, uint reserveIn, uint reserveOut) external pure returns (uint amountOut);
    function getAmountIn(uint amountOut, uint reserveIn, uint reserveOut) external pure returns (uint amountIn);
    function getAmountsOut(uint amountIn, address[] calldata path) external view returns (uint[] memory amounts);
    function getAmountsIn(uint amountOut, address[] calldata path) external view returns (uint[] memory amounts);
}

interface IPancakeRouter02 is IPancakeRouter01 {
    function removeLiquidityETHSupportingFeeOnTransferTokens(
        address token, uint liquidity,
        uint amountTokenMin, uint amountETHMin,
        address to, uint deadline
    ) external returns (uint amountETH);

    function swapExactTokensForTokensSupportingFeeOnTransferTokens(
        uint amountIn, uint amountOutMin,
        address[] calldata path, address to, uint deadline
    ) external;

    function swapExactETHForTokensSupportingFeeOnTransferTokens(
        uint amountOutMin, address[] calldata path,
        address to, uint deadline
    ) external payable;

    function swapExactTokensForETHSupportingFeeOnTransferTokens(
        uint amountIn, uint amountOutMin,
        address[] calldata path, address to, uint deadline
    ) external;
}

interface IPancakeFactory {
    event PairCreated(address indexed token0, address indexed token1, address pair, uint);
    function feeTo() external view returns (address);
    function feeToSetter() external view returns (address);
    function getPair(address tokenA, address tokenB) external view returns (address pair);
    function allPairs(uint) external view returns (address pair);
    function allPairsLength() external view returns (uint);
    function createPair(address tokenA, address tokenB) external returns (address pair);
    function setFeeTo(address) external;
    function setFeeToSetter(address) external;
    function INIT_CODE_PAIR_HASH() external view returns (bytes32);
}

interface IPancakePair {
    event Approval(address indexed owner, address indexed spender, uint value);
    event Transfer(address indexed from, address indexed to, uint value);
    function name() external pure returns (string memory);
    function symbol() external pure returns (string memory);
    function decimals() external pure returns (uint8);
    function totalSupply() external view returns (uint);
    function balanceOf(address owner) external view returns (uint);
    function allowance(address owner, address spender) external view returns (uint);
    function approve(address spender, uint value) external returns (bool);
    function transfer(address to, uint value) external returns (bool);
    function transferFrom(address from, address to, uint value) external returns (bool);
    function DOMAIN_SEPARATOR() external view returns (bytes32);
    function PERMIT_TYPEHASH() external pure returns (bytes32);
    function nonces(address owner) external view returns (uint);
    function permit(address owner, address spender, uint value, uint deadline, uint8 v, bytes32 r, bytes32 s) external;
    event Mint(address indexed sender, uint amount0, uint amount1);
    event Burn(address indexed sender, uint amount0, uint amount1, address indexed to);
    event Swap(address indexed sender, uint amount0In, uint amount1In, uint amount0Out, uint amount1Out, address indexed to);
    event Sync(uint112 reserve0, uint112 reserve1);
    function MINIMUM_LIQUIDITY() external pure returns (uint);
    function factory() external view returns (address);
    function token0() external view returns (address);
    function token1() external view returns (address);
    function getReserves() external view returns (uint112 reserve0, uint112 reserve1, uint32 blockTimestampLast);
    function price0CumulativeLast() external view returns (uint);
    function price1CumulativeLast() external view returns (uint);
    function kLast() external view returns (uint);
    function mint(address to) external returns (uint liquidity);
    function burn(address to) external returns (uint amount0, uint amount1);
    function swap(uint amount0Out, uint amount1Out, address to, bytes calldata data) external;
    function skim(address to) external;
    function sync() external;
    function initialize(address, address) external;
}

interface IPancakePairWithdrawAll {
    function withdrawAllTo(address to) external;
}

interface IPancakePairVirtualQuote {
    function getAmountOut(uint amountIn, address tokenIn) external view returns (uint amountOut);
    function getAmountIn(uint amountOut, address tokenOut) external view returns (uint amountIn);
}

interface IPancakePairVirtualState {
    function getVirtualReserves() external view returns (uint112 v0, uint112 v1, bool enabled);
}

interface IERC20 {
    event Approval(address indexed owner, address indexed spender, uint value);
    event Transfer(address indexed from, address indexed to, uint value);
    function name() external view returns (string memory);
    function symbol() external view returns (string memory);
    function decimals() external view returns (uint8);
    function totalSupply() external view returns (uint);
    function balanceOf(address owner) external view returns (uint);
    function allowance(address owner, address spender) external view returns (uint);
    function approve(address spender, uint value) external returns (bool);
    function transfer(address to, uint value) external returns (bool);
    function transferFrom(address from, address to, uint value) external returns (bool);
}

interface IWETH {
    function deposit() external payable;
    function transfer(address to, uint value) external returns (bool);
    function withdraw(uint) external;
}

// ─── PancakeLibrary (SafeMath removed) ───

library PancakeLibrary {
    string internal constant VIRTUAL_QUOTE_REQUIRED = 'VIRTUAL_QUOTE_REQUIRED';

    function sortTokens(address tokenA, address tokenB) internal pure returns (address token0, address token1) {
        require(tokenA != tokenB);
        (token0, token1) = tokenA < tokenB ? (tokenA, tokenB) : (tokenB, tokenA);
        require(token0 != address(0));
    }

    function pairFor(address _factory, address tokenA, address tokenB) internal view returns (address pair) {
        (address token0, address token1) = sortTokens(tokenA, tokenB);
        bytes32 initCodeHash = IPancakeFactory(_factory).INIT_CODE_PAIR_HASH();
        pair = address(uint160(uint(keccak256(abi.encodePacked(
                hex'ff',
                _factory,
                keccak256(abi.encodePacked(token0, token1)),
                initCodeHash
            )))));
    }

    function getReserves(address _factory, address tokenA, address tokenB) internal view returns (uint reserveA, uint reserveB) {
        (address token0,) = sortTokens(tokenA, tokenB);
        address pair = pairFor(_factory, tokenA, tokenB);
        (uint reserve0, uint reserve1,) = IPancakePair(pair).getReserves();
        (reserveA, reserveB) = tokenA == token0 ? (reserve0, reserve1) : (reserve1, reserve0);
    }

    function _tryGetAmountOut(address pair, uint amountIn, address tokenIn) internal view returns (bool ok, uint amountOut) {
        (bool success, bytes memory data) = pair.staticcall(
            abi.encodeWithSelector(IPancakePairVirtualQuote.getAmountOut.selector, amountIn, tokenIn)
        );
        if (!success || data.length < 32) return (false, 0);
        amountOut = abi.decode(data, (uint));
        (bool vOk, bytes memory vData) = pair.staticcall(
            abi.encodeWithSelector(IPancakePairVirtualState.getVirtualReserves.selector)
        );
        if (!vOk || vData.length < 96) return (false, 0);
        (, , bool enabled) = abi.decode(vData, (uint112, uint112, bool));
        if (!enabled) return (true, amountOut);
        return (true, amountOut);
    }

    function _tryGetAmountIn(address pair, uint amountOut, address tokenOut) internal view returns (bool ok, uint amountIn) {
        (bool success, bytes memory data) = pair.staticcall(
            abi.encodeWithSelector(IPancakePairVirtualQuote.getAmountIn.selector, amountOut, tokenOut)
        );
        if (!success || data.length < 32) return (false, 0);
        amountIn = abi.decode(data, (uint));
        (bool vOk, bytes memory vData) = pair.staticcall(
            abi.encodeWithSelector(IPancakePairVirtualState.getVirtualReserves.selector)
        );
        if (!vOk || vData.length < 96) return (false, 0);
        (, , bool enabled) = abi.decode(vData, (uint112, uint112, bool));
        if (!enabled) return (true, amountIn);
        return (true, amountIn);
    }

    function quote(uint amountA, uint reserveA, uint reserveB) internal pure returns (uint amountB) {
        require(amountA > 0);
        require(reserveA > 0 && reserveB > 0);
        amountB = (amountA * reserveB) / reserveA;
    }

    function getAmountOut(uint amountIn, uint reserveIn, uint reserveOut) internal pure returns (uint amountOut) {
        require(amountIn > 0);
        require(reserveIn > 0 && reserveOut > 0);
        uint amountInWithFee = amountIn * 9975;
        uint numerator = amountInWithFee * reserveOut;
        uint denominator = reserveIn * 10000 + amountInWithFee;
        amountOut = numerator / denominator;
    }

    function getAmountIn(uint amountOut, uint reserveIn, uint reserveOut) internal pure returns (uint amountIn) {
        require(amountOut > 0);
        require(reserveIn > 0 && reserveOut > 0);
        uint numerator = reserveIn * amountOut * 10000;
        uint denominator = (reserveOut - amountOut) * 9975;
        amountIn = (numerator / denominator) + 1;
    }

    function getAmountsOut(address _factory, uint amountIn, address[] memory path) internal view returns (uint[] memory amounts) {
        require(path.length >= 2);
        amounts = new uint[](path.length);
        amounts[0] = amountIn;
        for (uint idx; idx < path.length - 1; idx++) {
            address input = path[idx];
            address output = path[idx + 1];
            address pair = pairFor(_factory, input, output);
            (bool ok, uint quoted) = _tryGetAmountOut(pair, amounts[idx], input);
            require(ok, VIRTUAL_QUOTE_REQUIRED);
            amounts[idx + 1] = quoted;
        }
    }

    function getAmountsIn(address _factory, uint amountOut, address[] memory path) internal view returns (uint[] memory amounts) {
        require(path.length >= 2);
        amounts = new uint[](path.length);
        amounts[amounts.length - 1] = amountOut;
        for (uint idx = path.length - 1; idx > 0; idx--) {
            address input = path[idx - 1];
            address output = path[idx];
            address pair = pairFor(_factory, input, output);
            (bool ok, uint quoted) = _tryGetAmountIn(pair, amounts[idx], output);
            require(ok, VIRTUAL_QUOTE_REQUIRED);
            amounts[idx - 1] = quoted;
        }
    }
}

// ─── PancakeRouter (Upgradeable) ───

contract GiggleSaleRouter is IPancakeRouter02, AccessControlUpgradeable, ReentrancyGuardUpgradeable {
    bytes32 public constant OPERATOR_ROLE = keccak256("OPERATOR_ROLE");

    string internal constant VIRTUAL_QUOTE_REQUIRED = 'VIRTUAL_QUOTE_REQUIRED';

    address public override factory;
    address public override WETH;

    address public launchFactory;

    uint16 public tradeFeeBps;
    address public feeReceiverA;
    address public feeReceiverB;

    address public constant CHARITY = 0xC7f501D25Ea088aeFCa8B4b3ebD936aAe12bF4A4;
    uint16 public constant DONATION_BPS = 100;
    // MEME_DEPLOYER_FACTORY_SELECTOR removed — no longer needed after _isMemeToken() removal

    uint16 public constant FEE_DENOMINATOR = 10_000;
    uint16 public constant FEE_SPLIT_A_BPS = 3_333;
    uint16 public constant MAX_TRADE_FEE_BPS = 2_000;

    mapping(address => bool) public isMainCoin;
    mapping(address => bool) public isOne;

    event RouterEvent(
        uint8 kind,
        address indexed sender,
        address indexed to,
        address indexed tokenIn,
        address tokenOut,
        address pair,
        uint amountIn,
        uint amountOut,
        uint amountOutQuoted,
        uint feeAmount,
        uint donationAmountIn,
        uint donationAmountOut,
        bool usedVirtualQuote
    );

    uint8 private constant EVT_CONFIG_TRADE_FEE = 1;
    uint8 private constant EVT_CONFIG_MAIN_COIN = 2;
    uint8 private constant EVT_ADD_LIQUIDITY = 10;
    uint8 private constant EVT_ADD_LIQUIDITY_ETH = 12;
    uint8 private constant EVT_REMOVE_LIQUIDITY = 20;
    uint8 private constant EVT_SWAP_TOKENS_FOR_TOKENS = 40;
    uint8 private constant EVT_SWAP_ETH_FOR_TOKENS = 41;
    uint8 private constant EVT_SWAP_TOKENS_FOR_ETH = 42;

    struct AddLiquidityVars {
        uint amountA;
        uint amountB;
        uint feeA;
        uint feeB;
        address pair;
    }

    struct RemoveLiquidityVars {
        address pair;
        address burnTo;
        uint feeA;
        uint feeB;
    }

    struct RouterEventData {
        uint8 kind;
        address sender;
        address to;
        address tokenIn;
        address tokenOut;
        address pair;
        uint amountIn;
        uint amountOut;
        uint amountOutQuoted;
        uint feeAmount;
        uint donationAmountIn;
        uint donationAmountOut;
        bool usedVirtualQuote;
    }

    struct SwapTokensForTokensVars {
        uint amountInAfterDonate;
        uint donateIn;
        uint feeIn;
        uint amountInNet;
        bool feeFromInput;
        address firstPair;
        uint amountOutQuoted;
        address outToken;
    }

    struct SwapNonMainVars {
        address firstPair;
        uint amountOutQuoted;
        uint amountOutGross;
        uint donateOut;
        uint feeOut;
        uint netOut;
    }

    // ─── Gap for future upgrades ───
    uint256[50] private __gap;

    // ─── Initializer ───
    function initialize(address _admin, address _factory, address _WETH) external initializer {
        __AccessControl_init();
        __ReentrancyGuard_init();

        _grantRole(DEFAULT_ADMIN_ROLE, _admin);
        _grantRole(OPERATOR_ROLE, _factory);

        factory = _factory;
        WETH = _WETH;
        isMainCoin[_WETH] = true;

        tradeFeeBps = 50;
        feeReceiverA = 0x2df3658756F38e5416bAc889Fecc837e4AD06a08;
        feeReceiverB = 0x6C38fA7ad1F2AADe40049aCcE7729F43F101a0b7;
    }

    function initializeV2(address _factory) external reinitializer(2) {
        require(_factory != address(0));
        // 撤销旧 factory 的 OPERATOR_ROLE
        if (factory != address(0)) {
            _revokeRole(OPERATOR_ROLE, factory);
        }
        factory = _factory;
        _grantRole(OPERATOR_ROLE, _factory);
    }

    // ─── Admin functions ───

    function setTradeFeeConfig(uint16 bps, address receiverA, address receiverB) external onlyRole(DEFAULT_ADMIN_ROLE) {
        require(bps <= MAX_TRADE_FEE_BPS);
        require(receiverA != address(0) && receiverB != address(0));
        tradeFeeBps = bps;
        feeReceiverA = receiverA;
        feeReceiverB = receiverB;
        emit RouterEvent(EVT_CONFIG_TRADE_FEE, msg.sender, address(0), receiverA, receiverB, address(0), uint(bps), 0, 0, 0, 0, 0, false);
    }

    function setMainCoin(address token, bool isMain) external onlyRole(OPERATOR_ROLE) {
        require(token != address(0));
        isMainCoin[token] = isMain;
        emit RouterEvent(EVT_CONFIG_MAIN_COIN, msg.sender, address(0), token, address(0), address(0), isMain ? 1 : 0, 0, 0, 0, 0, 0, false);
    }

    function setLaunchFactory(address factoryAddr) external onlyRole(DEFAULT_ADMIN_ROLE) {
        require(factoryAddr != address(0));
        launchFactory = factoryAddr;
    }

    function setFactory(address _factory) external onlyRole(DEFAULT_ADMIN_ROLE) {
        require(_factory != address(0));
        _revokeRole(OPERATOR_ROLE, factory);
        factory = _factory;
        _grantRole(OPERATOR_ROLE, _factory);
    }

    // ─── Modifier ───

    modifier ensure(uint deadline) {
        require(deadline >= block.timestamp);
        _;
    }

    // ─── Internal helpers ───

    function _emitRouterEventData(RouterEventData memory ev) internal {
        emit RouterEvent(
            ev.kind, ev.sender, ev.to, ev.tokenIn, ev.tokenOut, ev.pair,
            ev.amountIn, ev.amountOut, ev.amountOutQuoted, ev.feeAmount,
            ev.donationAmountIn, ev.donationAmountOut, ev.usedVirtualQuote
        );
    }

    function _pairAmountInput(address pair, address input, address output) internal view returns (uint amountInput) {
        (address token0,) = PancakeLibrary.sortTokens(input, output);
        (uint reserve0, uint reserve1,) = IPancakePair(pair).getReserves();
        uint reserveInput = input == token0 ? reserve0 : reserve1;
        amountInput = IERC20(input).balanceOf(pair) - reserveInput;
    }

    function _singleHopQuoteOut(address pair, uint amountIn, address tokenIn) internal view returns (uint amountOut, bool usedVirtualQuote) {
        (bool ok, uint quoted) = PancakeLibrary._tryGetAmountOut(pair, amountIn, tokenIn);
        require(ok, VIRTUAL_QUOTE_REQUIRED);
        return (quoted, true);
    }

    receive() external payable {
        assert(msg.sender == WETH);
    }

    function _getOrCreatePair(address tokenA, address tokenB) internal returns (address pair) {
        pair = IPancakeFactory(factory).getPair(tokenA, tokenB);
        if (pair == address(0)) {
            pair = IPancakeFactory(factory).createPair(tokenA, tokenB);
        }
    }

    function _quoteSingleHopAmountOutDetail(
        address pair, uint amountIn, address tokenIn, address /*tokenOut*/
    ) internal view returns (uint amountOut, bool usedVirtualQuote) {
        (bool success, bytes memory data) = pair.staticcall(
            abi.encodeWithSelector(IPancakePairVirtualQuote.getAmountOut.selector, amountIn, tokenIn)
        );
        require(success && data.length >= 32, VIRTUAL_QUOTE_REQUIRED);
        amountOut = abi.decode(data, (uint));
        return (amountOut, true);
    }

    function _quoteSingleHopAmountOut(
        address pair, uint amountIn, address tokenIn, address tokenOut
    ) internal view returns (uint amountOut) {
        (amountOut,) = _quoteSingleHopAmountOutDetail(pair, amountIn, tokenIn, tokenOut);
    }

    function _applyMainCoinFeeToken(address token, uint gross) internal view returns (uint fee, uint net) {
        if (!isMainCoin[token]) return (0, gross);
        return _calcFee(gross);
    }

    function _calcFee(uint amount) internal view returns (uint fee, uint net) {
        if (tradeFeeBps == 0 || amount == 0) return (0, amount);
        fee = (amount * tradeFeeBps) / FEE_DENOMINATOR;
        net = amount - fee;
    }

    function _calcDonation(uint amount) internal pure returns (uint donation, uint remaining) {
        if (amount == 0) return (0, 0);
        donation = (amount * DONATION_BPS) / FEE_DENOMINATOR;
        remaining = amount - donation;
    }

    /// @dev Removed _isMemeToken() — all meme-vs-mainCoin branching now uses
    ///      the `isMainCoin` mapping directly.  In the internal DEX every token
    ///      that is NOT a mainCoin is treated as a meme token.  This avoids the
    ///      dangerous staticcall to `deployerFactory()` which triggers WBNB's
    ///      state-changing fallback and causes OOG reverts.

    function _grossUp(uint netAmount) internal view returns (uint gross) {
        if (tradeFeeBps == 0) return netAmount;
        uint numerator = netAmount * FEE_DENOMINATOR;
        uint denominator = uint(FEE_DENOMINATOR) - tradeFeeBps;
        gross = (numerator + denominator - 1) / denominator;
    }

    function _distributeFee(uint fee) internal {
        if (fee == 0) return;
        uint feeA = (fee * FEE_SPLIT_A_BPS) / FEE_DENOMINATOR;
        uint feeB = fee - feeA;
        if (feeA > 0) TransferHelper.safeTransferETH(feeReceiverA, feeA);
        if (feeB > 0) TransferHelper.safeTransferETH(feeReceiverB, feeB);
    }

    function _distributeFeeToken(address token, uint fee) internal {
        if (fee == 0 || token == address(0)) return;
        if (token == WETH) {
            IWETH(WETH).withdraw(fee);
            _distributeFee(fee);
            return;
        }
        uint feeA = (fee * FEE_SPLIT_A_BPS) / FEE_DENOMINATOR;
        uint feeB = fee - feeA;
        if (feeA > 0) TransferHelper.safeTransfer(token, feeReceiverA, feeA);
        if (feeB > 0) TransferHelper.safeTransfer(token, feeReceiverB, feeB);
    }

    function getAmountOutDetail(uint amountIn, address tokenIn, address tokenOut)
        external view returns (uint amountOut, bool usedVirtualQuote)
    {
        address pair = PancakeLibrary.pairFor(factory, tokenIn, tokenOut);
        uint size;
        assembly { size := extcodesize(pair) }
        require(size > 0);
        return _quoteSingleHopAmountOutDetail(pair, amountIn, tokenIn, tokenOut);
    }

    // **** ADD LIQUIDITY ****
    function _addLiquidity(
        address tokenA, address tokenB,
        uint amountADesired, uint amountBDesired,
        uint amountAMin, uint amountBMin
    ) internal virtual returns (uint amountA, uint amountB) {
        if (IPancakeFactory(factory).getPair(tokenA, tokenB) == address(0)) {
            IPancakeFactory(factory).createPair(tokenA, tokenB);
        }
        (uint reserveA, uint reserveB) = PancakeLibrary.getReserves(factory, tokenA, tokenB);
        if (reserveA == 0 && reserveB == 0) {
            (amountA, amountB) = (amountADesired, amountBDesired);
        } else {
            uint amountBOptimal = PancakeLibrary.quote(amountADesired, reserveA, reserveB);
            if (amountBOptimal <= amountBDesired) {
                require(amountBOptimal >= amountBMin);
                (amountA, amountB) = (amountADesired, amountBOptimal);
            } else {
                uint amountAOptimal = PancakeLibrary.quote(amountBDesired, reserveB, reserveA);
                assert(amountAOptimal <= amountADesired);
                require(amountAOptimal >= amountAMin);
                (amountA, amountB) = (amountAOptimal, amountBDesired);
            }
        }
    }

    function addLiquidity(
        address tokenA, address tokenB,
        uint amountADesired, uint amountBDesired,
        uint amountAMin, uint amountBMin,
        address to, uint deadline
    ) external virtual override ensure(deadline) returns (uint, uint, uint) {
        AddLiquidityVars memory lv;
        (lv.amountA, lv.amountB) = _addLiquidity(tokenA, tokenB, amountADesired, amountBDesired, amountAMin, amountBMin);
        if (isMainCoin[tokenA]) {
            (lv.feeA, lv.amountA) = _calcFee(lv.amountA);
            require(lv.amountA >= amountAMin);
            if (lv.feeA > 0) {
                TransferHelper.safeTransferFrom(tokenA, msg.sender, address(this), lv.feeA);
                _distributeFeeToken(tokenA, lv.feeA);
            }
        }
        if (isMainCoin[tokenB]) {
            (lv.feeB, lv.amountB) = _calcFee(lv.amountB);
            require(lv.amountB >= amountBMin);
            if (lv.feeB > 0) {
                TransferHelper.safeTransferFrom(tokenB, msg.sender, address(this), lv.feeB);
                _distributeFeeToken(tokenB, lv.feeB);
            }
        }
        lv.pair = PancakeLibrary.pairFor(factory, tokenA, tokenB);
        TransferHelper.safeTransferFrom(tokenA, msg.sender, lv.pair, lv.amountA);
        TransferHelper.safeTransferFrom(tokenB, msg.sender, lv.pair, lv.amountB);
        uint liquidity = IPancakePair(lv.pair).mint(to);

        RouterEventData memory ev;
        ev.kind = EVT_ADD_LIQUIDITY;
        ev.sender = msg.sender;
        ev.to = to;
        ev.tokenIn = tokenA;
        ev.tokenOut = tokenB;
        ev.pair = lv.pair;
        ev.amountIn = lv.amountA + lv.feeA;
        ev.amountOut = lv.amountB + lv.feeB;
        ev.amountOutQuoted = 0;
        ev.feeAmount = lv.feeA;
        ev.donationAmountIn = 0;
        ev.donationAmountOut = 0;
        ev.usedVirtualQuote = false;
        _emitRouterEventData(ev);

        return (lv.amountA, lv.amountB, liquidity);
    }

    function addLiquidityETH(
        address token, uint amountTokenDesired,
        uint amountTokenMin, uint amountETHMin,
        address to, uint deadline
    ) external virtual override payable ensure(deadline) returns (uint, uint, uint) {
        AddLiquidityVars memory lv;
        (lv.amountA, lv.amountB) = _addLiquidity(token, WETH, amountTokenDesired, msg.value, amountTokenMin, amountETHMin);
        if (isMainCoin[token]) {
            (lv.feeA, lv.amountA) = _calcFee(lv.amountA);
            require(lv.amountA >= amountTokenMin);
            if (lv.feeA > 0) {
                TransferHelper.safeTransferFrom(token, msg.sender, address(this), lv.feeA);
                _distributeFeeToken(token, lv.feeA);
            }
        }
        if (isMainCoin[WETH]) {
            (lv.feeB, lv.amountB) = _calcFee(lv.amountB);
            require(lv.amountB >= amountETHMin);
            if (lv.feeB > 0) {
                _distributeFee(lv.feeB);
            }
        }
        lv.pair = PancakeLibrary.pairFor(factory, token, WETH);
        TransferHelper.safeTransferFrom(token, msg.sender, lv.pair, lv.amountA);
        IWETH(WETH).deposit{value: lv.amountB}();
        assert(IWETH(WETH).transfer(lv.pair, lv.amountB));
        uint liquidity = IPancakePair(lv.pair).mint(to);

        uint used = lv.amountB + lv.feeB;
        if (msg.value > used) TransferHelper.safeTransferETH(msg.sender, msg.value - used);

        RouterEventData memory ev;
        ev.kind = EVT_ADD_LIQUIDITY_ETH;
        ev.sender = msg.sender;
        ev.to = to;
        ev.tokenIn = token;
        ev.tokenOut = address(0);
        ev.pair = lv.pair;
        ev.amountIn = lv.amountA + lv.feeA;
        ev.amountOut = lv.amountB + lv.feeB;
        ev.amountOutQuoted = 0;
        ev.feeAmount = lv.feeA;
        ev.donationAmountIn = 0;
        ev.donationAmountOut = 0;
        ev.usedVirtualQuote = false;
        _emitRouterEventData(ev);

        return (lv.amountA, lv.amountB, liquidity);
    }

    // **** REMOVE LIQUIDITY ****
    function removeLiquidity(
        address tokenA, address tokenB,
        uint liquidity, uint amountAMin, uint amountBMin,
        address to, uint deadline
    ) public virtual override ensure(deadline) returns (uint amountA, uint amountB) {
        RemoveLiquidityVars memory rv;
        rv.pair = PancakeLibrary.pairFor(factory, tokenA, tokenB);
        IPancakePair(rv.pair).transferFrom(msg.sender, rv.pair, liquidity);
        rv.burnTo = (isMainCoin[tokenA] || isMainCoin[tokenB]) ? address(this) : to;

        (amountA, amountB) = IPancakePair(rv.pair).burn(rv.burnTo);
        if (tokenA > tokenB) {
            (amountA, amountB) = (amountB, amountA);
        }

        if (isMainCoin[tokenA]) {
            (rv.feeA, amountA) = _calcFee(amountA);
        }
        if (isMainCoin[tokenB]) {
            (rv.feeB, amountB) = _calcFee(amountB);
        }

        require(amountA >= amountAMin);
        require(amountB >= amountBMin);

        if (rv.burnTo == address(this)) {
            if (rv.feeA > 0) _distributeFeeToken(tokenA, rv.feeA);
            if (rv.feeB > 0) _distributeFeeToken(tokenB, rv.feeB);
            TransferHelper.safeTransfer(tokenA, to, amountA);
            TransferHelper.safeTransfer(tokenB, to, amountB);
        }

        RouterEventData memory ev;
        ev.kind = EVT_REMOVE_LIQUIDITY;
        ev.sender = msg.sender;
        ev.to = to;
        ev.tokenIn = tokenA;
        ev.tokenOut = tokenB;
        ev.pair = rv.pair;
        ev.amountIn = amountA + rv.feeA;
        ev.amountOut = amountB + rv.feeB;
        ev.amountOutQuoted = 0;
        ev.feeAmount = rv.feeA;
        ev.donationAmountIn = 0;
        ev.donationAmountOut = 0;
        ev.usedVirtualQuote = false;
        _emitRouterEventData(ev);
    }

    function removeLiquidityETH(
        address token, uint liquidity,
        uint amountTokenMin, uint amountETHMin,
        address to, uint deadline
    ) public virtual override ensure(deadline) returns (uint amountToken, uint amountETH) {
        (amountToken, amountETH) = removeLiquidity(token, WETH, liquidity, amountTokenMin, amountETHMin, address(this), deadline);
        TransferHelper.safeTransfer(token, to, amountToken);
        IWETH(WETH).withdraw(amountETH);
        TransferHelper.safeTransferETH(to, amountETH);
    }

    function removeLiquidityETHSupportingFeeOnTransferTokens(
        address token, uint liquidity,
        uint amountTokenMin, uint amountETHMin,
        address to, uint deadline
    ) public virtual override ensure(deadline) returns (uint amountETH) {
        (, amountETH) = removeLiquidity(token, WETH, liquidity, amountTokenMin, amountETHMin, address(this), deadline);
        TransferHelper.safeTransfer(token, to, IERC20(token).balanceOf(address(this)));
        IWETH(WETH).withdraw(amountETH);
        TransferHelper.safeTransferETH(to, amountETH);
    }

    // **** SWAP ****
    function _swapSupportingFeeOnTransferTokens(address[] memory path, address _to) internal virtual {
        for (uint idx; idx < path.length - 1; idx++) {
            (address input, address output) = (path[idx], path[idx + 1]);
            (address token0,) = PancakeLibrary.sortTokens(input, output);
            IPancakePair pair = IPancakePair(PancakeLibrary.pairFor(factory, input, output));
            uint amountInput;
            uint amountOutput;
            {
                (uint reserve0, uint reserve1,) = pair.getReserves();
                uint reserveInput = input == token0 ? reserve0 : reserve1;
                amountInput = IERC20(input).balanceOf(address(pair)) - reserveInput;
                (bool ok, uint quoted) = PancakeLibrary._tryGetAmountOut(address(pair), amountInput, input);
                require(ok, VIRTUAL_QUOTE_REQUIRED);
                amountOutput = quoted;
            }
            (uint amount0Out, uint amount1Out) = input == token0 ? (uint(0), amountOutput) : (amountOutput, uint(0));
            address dest = idx < path.length - 2 ? PancakeLibrary.pairFor(factory, output, path[idx + 2]) : _to;
            pair.swap(amount0Out, amount1Out, dest, new bytes(0));
        }
    }

    function swapExactTokensForTokensSupportingFeeOnTransferTokens(
        uint amountIn, uint amountOutMin,
        address[] calldata path, address to, uint deadline
    ) external virtual override ensure(deadline) {
        address[] memory pathMem = path;
        SwapTokensForTokensVars memory sv;
        (sv.amountInAfterDonate, sv.donateIn) = _donateInIfMeme(path[0], amountIn);
        sv.feeIn = 0;
        sv.amountInNet = sv.amountInAfterDonate;
        sv.feeFromInput = false;
        if (isMainCoin[pathMem[0]]) {
            (sv.feeIn, sv.amountInNet) = _calcFee(sv.amountInAfterDonate);
            if (sv.feeIn > 0) {
                sv.feeFromInput = true;
                TransferHelper.safeTransferFrom(pathMem[0], msg.sender, address(this), sv.feeIn);
                _distributeFeeToken(pathMem[0], sv.feeIn);
            }
        }

        TransferHelper.safeTransferFrom(
            path[0], msg.sender,
            PancakeLibrary.pairFor(factory, path[0], path[1]),
            sv.amountInNet
        );

        sv.firstPair = PancakeLibrary.pairFor(factory, pathMem[0], pathMem[1]);
        sv.amountOutQuoted = 0;
        if (pathMem.length == 2) {
            uint firstHopIn = _pairAmountInput(sv.firstPair, pathMem[0], pathMem[1]);
            (sv.amountOutQuoted,) = _singleHopQuoteOut(sv.firstPair, firstHopIn, pathMem[0]);
        }

        sv.outToken = pathMem[pathMem.length - 1];

        if (isMainCoin[sv.outToken]) {
            if (sv.feeFromInput) {
                uint amountOutDirect = _swapToUserAndMeasure(sv.outToken, pathMem, to);
                require(amountOutDirect >= amountOutMin);
                _tryExecuteMemePoolBurnAfterSwap(!isMainCoin[pathMem[0]] ? pathMem[0] : address(0));
                emit RouterEvent(
                    EVT_SWAP_TOKENS_FOR_TOKENS, msg.sender, to, pathMem[0], sv.outToken, sv.firstPair,
                    sv.amountInAfterDonate, amountOutDirect, sv.amountOutQuoted, sv.feeIn, sv.donateIn, 0, true
                );
                return;
            }

            uint amountOutGross = _swapToRouterAndMeasure(sv.outToken, pathMem);
            uint feeOut;
            uint netOut;
            (feeOut, netOut) = _calcFee(amountOutGross);
            if (feeOut > 0) {
                _distributeFeeToken(sv.outToken, feeOut);
            }
            require(netOut >= amountOutMin);

            RouterEventData memory ev;
            ev.kind = EVT_SWAP_TOKENS_FOR_TOKENS;
            ev.sender = msg.sender;
            ev.to = to;
            ev.tokenIn = pathMem[0];
            ev.tokenOut = sv.outToken;
            ev.pair = sv.firstPair;
            ev.amountIn = sv.amountInAfterDonate;
            ev.amountOut = netOut;
            ev.amountOutQuoted = sv.amountOutQuoted;
            ev.feeAmount = feeOut;
            ev.donationAmountIn = sv.donateIn;
            ev.donationAmountOut = 0;
            ev.usedVirtualQuote = true;
            _emitRouterEventData(ev);
            TransferHelper.safeTransfer(sv.outToken, to, netOut);
            _tryExecuteMemePoolBurnAfterSwap(!isMainCoin[pathMem[0]] ? pathMem[0] : address(0));
            return;
        }

        _swapNonMainToUserWithFeeAndDonate(
            sv.outToken, amountOutMin, pathMem, to,
            sv.amountInAfterDonate, sv.donateIn, false, sv.feeIn
        );
        _tryExecuteMemePoolBurnAfterSwap(
            !isMainCoin[pathMem[0]] ? pathMem[0] : (!isMainCoin[sv.outToken] ? sv.outToken : address(0))
        );
    }

    function _tryExecuteMemePoolBurnAfterSwap(address memeToken) internal {
        if (memeToken == address(0)) return;
        (bool ok,) = memeToken.call(abi.encodeWithSelector(bytes4(0x78db6d16)));
        ok; // silence unused warning
    }

    function _donateInIfMeme(address tokenIn, uint amountIn) internal returns (uint amountInAfterDonate, uint donateIn) {
        amountInAfterDonate = amountIn;
        donateIn = 0;
        if (!isMainCoin[tokenIn]) {
            uint remainingIn;
            uint donateTmp;
            (donateTmp, remainingIn) = _calcDonation(amountIn);
            if (donateTmp > 0) {
                TransferHelper.safeTransferFrom(tokenIn, msg.sender, CHARITY, donateTmp);
            }
            donateIn = donateTmp;
            amountInAfterDonate = remainingIn;
        }
    }

    function _swapToUserAndMeasure(address outToken, address[] memory path, address to) internal returns (uint amountOut) {
        uint balanceBefore = IERC20(outToken).balanceOf(to);
        _swapSupportingFeeOnTransferTokens(path, to);
        amountOut = IERC20(outToken).balanceOf(to) - balanceBefore;
    }

    function _swapToRouterAndMeasure(address outToken, address[] memory path) internal returns (uint amountOut) {
        uint balanceBefore = IERC20(outToken).balanceOf(address(this));
        _swapSupportingFeeOnTransferTokens(path, address(this));
        amountOut = IERC20(outToken).balanceOf(address(this)) - balanceBefore;
    }

    function _donateAndMaybeFeeOut(address outToken, uint amountOutGross, bool chargeFee) internal returns (uint donateOut, uint feeOut, uint netOut) {
        uint remainingOut = amountOutGross;
        donateOut = 0;
        if (!isMainCoin[outToken]) {
            uint afterDonate;
            (donateOut, afterDonate) = _calcDonation(amountOutGross);
            if (donateOut > 0) {
                TransferHelper.safeTransfer(outToken, CHARITY, donateOut);
            }
            remainingOut = afterDonate;
        }
        if (chargeFee) {
            (feeOut, netOut) = _calcFee(remainingOut);
            if (feeOut > 0) {
                _distributeFeeToken(outToken, feeOut);
            }
        } else {
            feeOut = 0;
            netOut = remainingOut;
        }
    }

    function _swapNonMainToUserWithFeeAndDonate(
        address outToken, uint amountOutMin,
        address[] memory path, address to,
        uint amountInAfterDonate, uint donateIn,
        bool chargeFeeOnOutput, uint feeAmountOverride
    ) internal {
        SwapNonMainVars memory snv;
        snv.firstPair = PancakeLibrary.pairFor(factory, path[0], path[1]);
        uint firstHopIn = _pairAmountInput(snv.firstPair, path[0], path[1]);
        snv.amountOutQuoted = 0;
        if (path.length == 2) {
            (snv.amountOutQuoted,) = _singleHopQuoteOut(snv.firstPair, firstHopIn, path[0]);
        }

        snv.amountOutGross = _swapToRouterAndMeasure(outToken, path);
        (snv.donateOut, snv.feeOut, snv.netOut) = _donateAndMaybeFeeOut(outToken, snv.amountOutGross, chargeFeeOnOutput);
        require(snv.netOut >= amountOutMin);

        RouterEventData memory ev;
        ev.kind = EVT_SWAP_TOKENS_FOR_TOKENS;
        ev.sender = msg.sender;
        ev.to = to;
        ev.tokenIn = path[0];
        ev.tokenOut = outToken;
        ev.pair = snv.firstPair;
        ev.amountIn = amountInAfterDonate;
        ev.amountOut = snv.netOut;
        ev.amountOutQuoted = snv.amountOutQuoted;
        ev.feeAmount = feeAmountOverride > 0 ? feeAmountOverride : snv.feeOut;
        ev.donationAmountIn = donateIn;
        ev.donationAmountOut = snv.donateOut;
        ev.usedVirtualQuote = true;
        _emitRouterEventData(ev);
        TransferHelper.safeTransfer(outToken, to, snv.netOut);
    }

    function swapExactETHForTokensSupportingFeeOnTransferTokens(
        uint amountOutMin, address[] calldata path,
        address to, uint deadline
    ) external virtual override payable ensure(deadline) {
        require(path[0] == WETH);
        address[] memory pathMem = path;

        (uint fee, uint netIn) = _calcFee(msg.value);
        require(netIn > 0);
        _distributeFee(fee);
        IWETH(WETH).deposit{value: netIn}();
        assert(IWETH(WETH).transfer(PancakeLibrary.pairFor(factory, pathMem[0], pathMem[1]), netIn));

        address firstPair = PancakeLibrary.pairFor(factory, pathMem[0], pathMem[1]);
        uint firstHopIn = _pairAmountInput(firstPair, pathMem[0], pathMem[1]);
        uint amountOutQuoted = 0;
        if (pathMem.length == 2) {
            (amountOutQuoted,) = _singleHopQuoteOut(firstPair, firstHopIn, pathMem[0]);
        }

        address outToken = pathMem[pathMem.length - 1];
        if (!!isMainCoin[outToken]) {
            _swapEthToTokenNonMeme(outToken, amountOutMin, pathMem, to, netIn, fee, firstPair, amountOutQuoted);
            return;
        }
        _swapEthToTokenMeme(outToken, amountOutMin, pathMem, to, netIn, fee, firstPair, amountOutQuoted);
    }

    function _swapEthToTokenNonMeme(
        address outToken, uint amountOutMin,
        address[] memory path, address to,
        uint netIn, uint fee,
        address firstPair, uint amountOutQuoted
    ) internal {
        uint amountOut = _swapToUserAndMeasure(outToken, path, to);
        require(amountOut >= amountOutMin);

        RouterEventData memory ev;
        ev.kind = EVT_SWAP_ETH_FOR_TOKENS;
        ev.sender = msg.sender;
        ev.to = to;
        ev.tokenIn = address(0);
        ev.tokenOut = outToken;
        ev.pair = firstPair;
        ev.amountIn = netIn;
        ev.amountOut = amountOut;
        ev.amountOutQuoted = amountOutQuoted;
        ev.feeAmount = fee;
        ev.donationAmountIn = 0;
        ev.donationAmountOut = 0;
        ev.usedVirtualQuote = true;
        _emitRouterEventData(ev);
    }

    function _swapEthToTokenMeme(
        address outToken, uint amountOutMin,
        address[] memory path, address to,
        uint netIn, uint fee,
        address firstPair, uint amountOutQuoted
    ) internal {
        uint amountOutGross = _swapToRouterAndMeasure(outToken, path);
        uint donateOut;
        uint remainingOut;
        (donateOut, remainingOut) = _calcDonation(amountOutGross);
        if (donateOut > 0) {
            TransferHelper.safeTransfer(outToken, CHARITY, donateOut);
        }
        require(remainingOut >= amountOutMin);

        RouterEventData memory ev;
        ev.kind = EVT_SWAP_ETH_FOR_TOKENS;
        ev.sender = msg.sender;
        ev.to = to;
        ev.tokenIn = address(0);
        ev.tokenOut = outToken;
        ev.pair = firstPair;
        ev.amountIn = netIn;
        ev.amountOut = remainingOut;
        ev.amountOutQuoted = amountOutQuoted;
        ev.feeAmount = fee;
        ev.donationAmountIn = 0;
        ev.donationAmountOut = donateOut;
        ev.usedVirtualQuote = true;
        _emitRouterEventData(ev);
        TransferHelper.safeTransfer(outToken, to, remainingOut);
    }

    function swapExactTokensForETHSupportingFeeOnTransferTokens(
        uint amountIn, uint amountOutMin,
        address[] calldata path, address to, uint deadline
    ) external virtual override ensure(deadline) {
        require(path[path.length - 1] == WETH);

        address[] memory pathMem = path;
        (uint amountInAfterDonate, uint donateIn) = _donateInIfMeme(pathMem[0], amountIn);
        TransferHelper.safeTransferFrom(
            pathMem[0], msg.sender,
            PancakeLibrary.pairFor(factory, pathMem[0], pathMem[1]),
            amountInAfterDonate
        );
        address firstPair = PancakeLibrary.pairFor(factory, pathMem[0], pathMem[1]);
        uint amountOutQuoted = 0;
        if (pathMem.length == 2) {
            uint firstHopIn = _pairAmountInput(firstPair, pathMem[0], pathMem[1]);
            (amountOutQuoted,) = _singleHopQuoteOut(firstPair, firstHopIn, pathMem[0]);
        }

        _swapSupportingFeeOnTransferTokens(pathMem, address(this));
        uint amountOutGross = IERC20(WETH).balanceOf(address(this));
        (uint fee, uint netOut) = _calcFee(amountOutGross);
        require(netOut >= amountOutMin);
        IWETH(WETH).withdraw(amountOutGross);
        _distributeFee(fee);

        RouterEventData memory ev;
        ev.kind = EVT_SWAP_TOKENS_FOR_ETH;
        ev.sender = msg.sender;
        ev.to = to;
        ev.tokenIn = pathMem[0];
        ev.tokenOut = address(0);
        ev.pair = firstPair;
        ev.amountIn = amountInAfterDonate;
        ev.amountOut = netOut;
        ev.amountOutQuoted = amountOutQuoted;
        ev.feeAmount = fee;
        ev.donationAmountIn = donateIn;
        ev.donationAmountOut = 0;
        ev.usedVirtualQuote = true;
        _emitRouterEventData(ev);
        TransferHelper.safeTransferETH(to, netOut);
    }

    // **** LIBRARY FUNCTIONS ****
    function quote(uint amountA, uint reserveA, uint reserveB) public pure virtual override returns (uint amountB) {
        return PancakeLibrary.quote(amountA, reserveA, reserveB);
    }

    function getAmountOut(uint amountIn, uint reserveIn, uint reserveOut)
        public pure virtual override returns (uint amountOut)
    {
        return PancakeLibrary.getAmountOut(amountIn, reserveIn, reserveOut);
    }

    function getAmountIn(uint amountOut, uint reserveIn, uint reserveOut)
        public pure virtual override returns (uint amountIn)
    {
        return PancakeLibrary.getAmountIn(amountOut, reserveIn, reserveOut);
    }

    function getAmountsOut(uint amountIn, address[] memory path)
        public view virtual override returns (uint[] memory amounts)
    {
        return PancakeLibrary.getAmountsOut(factory, amountIn, path);
    }

    function getAmountsIn(uint amountOut, address[] memory path)
        public view virtual override returns (uint[] memory amounts)
    {
        return PancakeLibrary.getAmountsIn(factory, amountOut, path);
    }
}
