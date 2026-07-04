// SPDX-License-Identifier: Unlicense
pragma solidity 0.8.24;

import {IERC20Permit} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Permit.sol";
import {UUPSOwnable2Step} from "src/proxy/UUPSOwnable2Step.sol";
import {IRouter} from "src/interfaces/IRouter.sol";
import {IPairFactory} from "src/interfaces/IPairFactory.sol";
import {LiquidityLogic} from "src/libraries/LiquidityLogic.sol";
import {SwapLogic} from "src/libraries/SwapLogic.sol";

contract UniversalRouter is IRouter, UUPSOwnable2Step {
    struct Signature {
        uint8 v;
        bytes32 r;
        bytes32 s;
    }

    address public factory;
    address public weth;

    modifier ensure(uint256 deadline) {
        if (deadline < block.timestamp) revert RouterExpired();
        _;
    }

    constructor() {
        _disableInitializers();
    }

    function initialize(address owner_, address factory_, address weth_) public initializer {
        __Ownable_init(owner_);
        __Ownable2Step_init();
        __UUPSUpgradeable_init();
        __UUPSOwnable2Step_init();
        factory = factory_;
        weth = weth_;
    }

    receive() external payable {
        if (msg.sender != address(weth)) revert RouterOnlyWETH(); // only accept ETH via fallback from the WETH contract
    }

    function pairFor(address tokenA_, address tokenB_) public view returns (address) {
        return IPairFactory(factory).getPair(tokenA_, tokenB_);
    }

    function pairFor(address tokenA_, address tokenB_, address factory_) public view returns (address) {
        return IPairFactory(factory_).getPair(tokenA_, tokenB_);
    }

    function quoteAddLiquidity(address tokenA_, address tokenB_, uint256 amountADesired_, uint256 amountBDesired_)
        external
        view
        returns (uint256 amountA, uint256 amountB, uint256 liquidity)
    {
        (amountA, amountB, liquidity) =
            LiquidityLogic.quoteAddLiquidity(factory, tokenA_, tokenB_, amountADesired_, amountBDesired_);
    }

    function quoteRemoveLiquidity(address tokenA_, address tokenB_, uint256 liquidity_)
        external
        view
        returns (uint256 amountA, uint256 amountB)
    {
        (amountA, amountB) = LiquidityLogic.quoteRemoveLiquidity(factory, tokenA_, tokenB_, liquidity_);
    }

    function getAmountOut(uint256 amountIn_, address tokenIn_, address tokenOut_, address factory_)
        public
        view
        returns (uint256 amount)
    {
        return SwapLogic.getAmountOut(amountIn_, tokenIn_, tokenOut_, factory_, factory);
    }

    function getAmountIn(uint256 amountOut_, address tokenOut_, address tokenIn_, address factory_)
        public
        view
        returns (uint256 amount)
    {
        return SwapLogic.getAmountIn(amountOut_, tokenOut_, tokenIn_, factory_, factory);
    }

    function getAmountsOut(uint256 amountIn_, address[] calldata path_, address[] calldata factories_)
        public
        view
        returns (uint256[] memory amounts)
    {
        return SwapLogic.getAmountsOut(amountIn_, path_, factories_, factory);
    }

    function getAmountsIn(uint256 amountOut_, address[] calldata path_, address[] calldata factories_)
        public
        view
        returns (uint256[] memory amounts)
    {
        return SwapLogic.getAmountsIn(amountOut_, path_, factories_, factory);
    }

    function addLiquidity(
        address tokenA_,
        address tokenB_,
        uint256 amountADesired_,
        uint256 amountBDesired_,
        uint256 amountAMin_,
        uint256 amountBMin_,
        address to_,
        uint256 deadline_
    ) external ensure(deadline_) returns (uint256 amountA, uint256 amountB, uint256 liquidity) {
        return LiquidityLogic.addLiquidity(
            factory, tokenA_, tokenB_, amountADesired_, amountBDesired_, amountAMin_, amountBMin_, to_
        );
    }

    function addLiquidityWithPermit(
        address[2] calldata tokens_,
        uint256[2] calldata amountsDesired_,
        uint256[2] calldata amountsMin_,
        address to_,
        uint256 deadline_,
        Signature[2] calldata signatures_
    ) external ensure(deadline_) returns (uint256 amountA, uint256 amountB, uint256 liquidity) {
        if (signatures_[0].v != 0 && signatures_[0].r != bytes32(0) && signatures_[0].s != bytes32(0)) {
            IERC20Permit(tokens_[0]).permit(
                msg.sender,
                address(this),
                amountsDesired_[0],
                deadline_,
                signatures_[0].v,
                signatures_[0].r,
                signatures_[0].s
            );
        }
        if (signatures_[1].v != 0 && signatures_[1].r != bytes32(0) && signatures_[1].s != bytes32(0)) {
            IERC20Permit(tokens_[1]).permit(
                msg.sender,
                address(this),
                amountsDesired_[1],
                deadline_,
                signatures_[1].v,
                signatures_[1].r,
                signatures_[1].s
            );
        }
        return LiquidityLogic.addLiquidity(
            factory, tokens_[0], tokens_[1], amountsDesired_[0], amountsDesired_[1], amountsMin_[0], amountsMin_[1], to_
        );
    }

    function addLiquidityETH(
        address token_,
        uint256 amountTokenDesired_,
        uint256 amountTokenMin_,
        uint256 amountETHMin_,
        address to_,
        uint256 deadline_
    ) external payable ensure(deadline_) returns (uint256 amountToken, uint256 amountETH, uint256 liquidity) {
        return LiquidityLogic.addLiquidityETH(
            factory, weth, token_, msg.value, amountTokenDesired_, amountTokenMin_, amountETHMin_, to_
        );
    }

    function removeLiquidity(
        address tokenA_,
        address tokenB_,
        uint256 liquidity_,
        uint256 amountAMin_,
        uint256 amountBMin_,
        address to_,
        uint256 deadline_
    ) public ensure(deadline_) returns (uint256 amountA, uint256 amountB) {
        return LiquidityLogic.removeLiquidity(factory, tokenA_, tokenB_, liquidity_, amountAMin_, amountBMin_, to_);
    }

    function removeLiquidityETH(
        address token_,
        uint256 liquidity_,
        uint256 amountTokenMin_,
        uint256 amountETHMin_,
        address to_,
        uint256 deadline_
    ) public ensure(deadline_) returns (uint256 amountToken, uint256 amountETH) {
        return LiquidityLogic.removeLiquidityETH(factory, weth, token_, liquidity_, amountTokenMin_, amountETHMin_, to_);
    }

    function removeLiquidityWithPermit(
        address tokenA_,
        address tokenB_,
        uint256 liquidity_,
        uint256 amountAMin_,
        uint256 amountBMin_,
        address to_,
        uint256 deadline_,
        bool approveMax_,
        uint8 v_,
        bytes32 r_,
        bytes32 s_
    ) external returns (uint256 amountA, uint256 amountB) {
        return LiquidityLogic.removeLiquidityWithPermit(
            factory, tokenA_, tokenB_, liquidity_, amountAMin_, amountBMin_, to_, deadline_, approveMax_, v_, r_, s_
        );
    }

    function removeLiquidityETHWithPermit(
        address token_,
        uint256 liquidity_,
        uint256 amountTokenMin_,
        uint256 amountETHMin_,
        address to_,
        uint256 deadline_,
        bool approveMax_,
        uint8 v_,
        bytes32 r_,
        bytes32 s_
    ) external returns (uint256 amountToken, uint256 amountETH) {
        LiquidityLogic.Signature memory sig = _getSignature(v_, r_, s_);
        return LiquidityLogic.removeLiquidityETHWithPermit(
            factory, weth, token_, liquidity_, amountTokenMin_, amountETHMin_, to_, deadline_, approveMax_, sig
        );
    }

    function removeLiquidityETHSupportingFeeOnTransferTokens(
        address token_,
        uint256 liquidity_,
        uint256 amountTokenMin_,
        uint256 amountETHMin_,
        address to_,
        uint256 deadline_
    ) public virtual override ensure(deadline_) returns (uint256 amountETH) {
        return LiquidityLogic.removeLiquidityETHSupportingFeeOnTransferTokens(
            factory, weth, token_, liquidity_, amountTokenMin_, amountETHMin_, to_
        );
    }

    function removeLiquidityETHWithPermitSupportingFeeOnTransferTokens(
        address token_,
        uint256 liquidity_,
        uint256 amountTokenMin_,
        uint256 amountETHMin_,
        address to_,
        uint256 deadline_,
        bool approveMax_,
        uint8 v_,
        bytes32 r_,
        bytes32 s_
    ) external virtual override returns (uint256 amountETH) {
        return LiquidityLogic.removeLiquidityETHWithPermitSupportingFeeOnTransferTokens(
            factory, weth, token_, liquidity_, amountTokenMin_, amountETHMin_, to_, deadline_, approveMax_, v_, r_, s_
        );
    }

    function swapExactTokensForTokens(
        uint256 amountIn_,
        uint256 amountOutMin_,
        address[] calldata path_,
        address[] calldata factories_,
        address to_,
        uint256 deadline_
    ) public ensure(deadline_) returns (uint256[] memory amounts) {
        SwapLogic.SwapCommonParams memory params = _getSwapParams(to_, path_, factories_);
        return SwapLogic.swapExactTokensForTokens(amountIn_, amountOutMin_, params);
    }

    function swapTokensForExactTokens(
        uint256 amountOut_,
        uint256 amountInMax_,
        address[] calldata path_,
        address[] calldata factories_,
        address to_,
        uint256 deadline_
    ) public virtual override ensure(deadline_) returns (uint256[] memory amounts) {
        SwapLogic.SwapCommonParams memory params = _getSwapParams(to_, path_, factories_);
        return SwapLogic.swapTokensForExactTokens(amountOut_, amountInMax_, params);
    }

    function swapExactTokensForTokensSupportingFeeOnTransferTokens(
        uint256 amountIn_,
        uint256 amountOutMin_,
        address[] calldata path_,
        address[] calldata factories_,
        address to_,
        uint256 deadline_
    ) public ensure(deadline_) {
        SwapLogic.SwapCommonParams memory params = _getSwapParams(to_, path_, factories_);
        SwapLogic.swapExactTokensForTokensSupportingFeeOnTransferTokens(amountIn_, amountOutMin_, params);
    }

    function swapExactTokensForTokensSupportingFeeOnTransferTokensWithPermit(
        uint256 amountIn_,
        uint256 amountOutMin_,
        address[] calldata path_,
        address[] calldata factories_,
        address to_,
        uint256 deadline_,
        bool approveMax_,
        uint8 v_,
        bytes32 r_,
        bytes32 s_
    ) external {
        uint256 value = approveMax_ ? type(uint256).max : amountIn_;
        IERC20Permit(path_[0]).permit(msg.sender, address(this), value, deadline_, v_, r_, s_);
        swapExactTokensForTokensSupportingFeeOnTransferTokens(
            amountIn_, amountOutMin_, path_, factories_, to_, deadline_
        );
    }

    function swapTokensForExactETH(
        uint256 amountOut_,
        uint256 amountInMax_,
        address[] calldata path_,
        address[] calldata factories_,
        address to_,
        uint256 deadline_
    ) public virtual override ensure(deadline_) returns (uint256[] memory amounts) {
        SwapLogic.SwapCommonParams memory params = _getSwapParams(to_, path_, factories_);
        return SwapLogic.swapTokensForExactETH(amountOut_, amountInMax_, params);
    }

    function swapTokensForExactETHWithPermit(
        uint256 amountOut_,
        uint256 amountInMax_,
        address[] calldata path_,
        address[] calldata factories_,
        address to_,
        uint256 deadline_,
        bool approveMax_,
        uint8 v_,
        bytes32 r_,
        bytes32 s_
    ) external virtual returns (uint256[] memory amounts) {
        uint256 value = approveMax_ ? type(uint256).max : amountInMax_;
        IERC20Permit(path_[0]).permit(msg.sender, address(this), value, deadline_, v_, r_, s_);
        return swapTokensForExactETH(amountOut_, amountInMax_, path_, factories_, to_, deadline_);
    }

    function swapExactTokensForTokensWithPermit(
        uint256 amountIn_,
        uint256 amountOutMin_,
        address[] calldata path_,
        address[] calldata factories_,
        address to_,
        uint256 deadline_,
        bool approveMax_,
        uint8 v_,
        bytes32 r_,
        bytes32 s_
    ) external returns (uint256[] memory) {
        {
            uint256 value = approveMax_ ? type(uint256).max : amountIn_;
            IERC20Permit(path_[0]).permit(msg.sender, address(this), value, deadline_, v_, r_, s_);
        }
        SwapLogic.SwapCommonParams memory params = _getSwapParams(to_, path_, factories_);
        return SwapLogic.swapExactTokensForTokens(amountIn_, amountOutMin_, params);
    }

    function swapTokensForExactTokensWithPermit(
        uint256 amountOut_,
        uint256 amountInMax_,
        address[] calldata path_,
        address[] calldata factories_,
        address to_,
        uint256 deadline_,
        bool approveMax_,
        uint8 v_,
        bytes32 r_,
        bytes32 s_
    ) external virtual returns (uint256[] memory amounts) {
        uint256 value = approveMax_ ? type(uint256).max : amountInMax_;
        IERC20Permit(path_[0]).permit(msg.sender, address(this), value, deadline_, v_, r_, s_);
        amounts = swapTokensForExactTokens(amountOut_, amountInMax_, path_, factories_, to_, deadline_);
    }

    function swapExactETHForTokens(
        uint256 amountOutMin_,
        address[] calldata path_,
        address[] calldata factories_,
        address to_,
        uint256 deadline_
    ) external payable ensure(deadline_) returns (uint256[] memory amounts) {
        SwapLogic.SwapCommonParams memory params = _getSwapParams(to_, path_, factories_);
        return SwapLogic.swapExactETHForTokens(amountOutMin_, msg.value, params);
    }

    function swapETHForExactTokens(
        uint256 amountOut_,
        address[] calldata path_,
        address[] calldata factories_,
        address to_,
        uint256 deadline_
    ) external payable virtual override ensure(deadline_) returns (uint256[] memory amounts) {
        SwapLogic.SwapCommonParams memory params = _getSwapParams(to_, path_, factories_);
        return SwapLogic.swapETHForExactTokens(amountOut_, msg.value, params);
    }

    function swapExactETHForTokensSupportingFeeOnTransferTokens(
        uint256 amountOutMin_,
        address[] calldata path_,
        address[] calldata factories_,
        address to_,
        uint256 deadline
    ) external payable ensure(deadline) {
        SwapLogic.SwapCommonParams memory params = _getSwapParams(to_, path_, factories_);
        SwapLogic.swapExactETHForTokensSupportingFeeOnTransferTokens(amountOutMin_, msg.value, params);
    }

    function swapExactTokensForETH(
        uint256 amountIn_,
        uint256 amountOutMin_,
        address[] calldata path_,
        address[] calldata factories_,
        address to_,
        uint256 deadline_
    ) public ensure(deadline_) returns (uint256[] memory amounts) {
        SwapLogic.SwapCommonParams memory params = _getSwapParams(to_, path_, factories_);
        return SwapLogic.swapExactTokensForETH(amountIn_, amountOutMin_, params);
    }

    function swapExactTokensForETHWithPermit(
        uint256 amountIn_,
        uint256 amountOutMin_,
        address[] calldata path_,
        address[] calldata factories_,
        address to_,
        uint256 deadline_,
        bool approveMax_,
        uint8 v_,
        bytes32 r_,
        bytes32 s_
    ) external returns (uint256[] memory amounts) {
        uint256 value = approveMax_ ? type(uint256).max : amountIn_;
        IERC20Permit(path_[0]).permit(msg.sender, address(this), value, deadline_, v_, r_, s_);
        amounts = swapExactTokensForETH(amountIn_, amountOutMin_, path_, factories_, to_, deadline_);
    }

    function swapExactTokensForETHSupportingFeeOnTransferTokens(
        uint256 amountIn_,
        uint256 amountOutMin_,
        address[] calldata path_,
        address[] calldata factories_,
        address to_,
        uint256 deadline_
    ) public ensure(deadline_) {
        SwapLogic.SwapCommonParams memory params = _getSwapParams(to_, path_, factories_);
        SwapLogic.swapExactTokensForETHSupportingFeeOnTransferTokens(amountIn_, amountOutMin_, params);
    }

    function swapExactTokensForETHSupportingFeeOnTransferTokensWithPermit(
        uint256 amountIn_,
        uint256 amountOutMin_,
        address[] calldata path_,
        address[] calldata factories_,
        address to_,
        uint256 deadline_,
        bool approveMax_,
        uint8 v_,
        bytes32 r_,
        bytes32 s_
    ) external {
        uint256 value = approveMax_ ? type(uint256).max : amountIn_;
        IERC20Permit(path_[0]).permit(msg.sender, address(this), value, deadline_, v_, r_, s_);
        swapExactTokensForETHSupportingFeeOnTransferTokens(amountIn_, amountOutMin_, path_, factories_, to_, deadline_);
    }

    function _getSignature(uint8 v_, bytes32 r_, bytes32 s_) private pure returns (LiquidityLogic.Signature memory) {
        return LiquidityLogic.Signature({v: v_, r: r_, s: s_});
    }

    function _getSwapParams(address to_, address[] calldata path_, address[] calldata factories_)
        private
        view
        returns (SwapLogic.SwapCommonParams memory)
    {
        return
            SwapLogic.SwapCommonParams({to: to_, path: path_, factories: factories_, gt3Factory: factory, weth: weth});
    }
}
