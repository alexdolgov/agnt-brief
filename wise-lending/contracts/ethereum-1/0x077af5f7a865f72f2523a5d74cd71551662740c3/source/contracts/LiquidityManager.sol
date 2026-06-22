// SPDX-License-Identifier: -- BCOM --

pragma solidity =0.8.25;

import "./IERC20.sol";
import "./ISwapsPair.sol";
import "./ISwapsRouter.sol";

contract LiquidityManager {

    address public owner;
    address public worker;

    ISwapsPair public pair;
    ISwapsRouter public router;

    address public token0;
    address public token1;

    uint256 constant PRECISION_WETH = 1E16;
    uint256 constant PRECISION_VERSE = 1E22;

    modifier onlyOwner() {
        require(
            msg.sender == owner,
            "Caller is not the owner"
        );
        _;
    }

    modifier onlyWorker() {
        require(
            msg.sender == worker,
            "Caller is not the worker"
        );
        _;
    }

    event LogQuote(
        uint256 requiredWethForSwap,
        uint256 minAmountVerseToBuy,
        uint256 reserve0,
        uint256 reserve1
    );

    event LogOut(
        uint256 amountWeth,
        uint256 amountVerse
    );

    event LogAdded(
        uint256 addedVerse,
        uint256 addedWeth,
        uint256 liquidity
    );

    constructor() {

        owner = msg.sender;
        worker = msg.sender;

        router = ISwapsRouter(
            0xB4B0ea46Fe0E9e8EAB4aFb765b527739F2718671
        );

        token0 = 0x249cA82617eC3DfB2589c4c17ab7EC9765350a18;
        token1 = 0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2;

        IERC20(token0).approve(
            address(router),
            type(uint256).max
        );

        IERC20(token1).approve(
            address(router),
            type(uint256).max
        );

        pair = ISwapsPair(
            router.pairFor(
                router.FACTORY(),
                token0,
                token1
            )
        );

        pair.approve(
            address(router),
            type(uint256).max
        );
    }

    function buyBackVerseToken(
        uint256 _liquidityAmountToUse,
        uint256 _expectMinVerseRemoved,
        uint256 _expectMinWethRemoved,
        uint256 _minAmountVerseToBuy,
        uint256 _maxAmountWethForSwap,
        uint256 _desiredVerseToAddBack,
        uint256 _desiredWethToAddBack,
        uint256 _expectMinVerseToAddBack,
        uint256 _expectMinWethToAddBack
    )
        external
        onlyWorker
    {
        pair.approve(
            address(router),
            _liquidityAmountToUse
        );

        (
            uint256 _amountVerse,
            uint256 _amountWeth
        ) = router.removeLiquidity(
            token0,
            token1,
            _liquidityAmountToUse,
            _expectMinVerseRemoved,
            _expectMinWethRemoved,
            address(this),
            block.timestamp
        );

        emit LogOut(
            _amountWeth,
            _amountVerse
        );

        (
            uint256 reserve0,
            uint256 reserve1,
        ) = pair.getReserves();

        uint256 requiredWethForSwap = router.quote(
            _minAmountVerseToBuy,
            reserve0,
            reserve1
        );

        emit LogQuote(
            requiredWethForSwap,
            _minAmountVerseToBuy,
            reserve0,
            reserve1
        );

        if (requiredWethForSwap > _maxAmountWethForSwap) {
            revert("LiquidityManager: TOO_EXPENSIVE");
        }

        router.swapExactTokensForTokens(
            _maxAmountWethForSwap,
            _minAmountVerseToBuy,
            _getSwapPathFromWethToVerse(),
            address(this),
            block.timestamp
        );

        IERC20(token0).approve(
            address(router),
            _desiredVerseToAddBack
        );

        IERC20(token1).approve(
            address(router),
            _desiredWethToAddBack
        );

        (
            uint256 addedVerse,
            uint256 addedWeth,
            uint256 liquidity
        ) = router.addLiquidity(
            token0,
            token1,
            _desiredVerseToAddBack,
            _desiredWethToAddBack,
            _expectMinVerseToAddBack,
            _expectMinWethToAddBack,
            address(this),
            block.timestamp
        );

        emit LogAdded(
            addedVerse,
            addedWeth,
            liquidity
        );
    }

    function buyBackVerseTokenSimple(
        uint256 _liquidityAmountToUse,
        uint256 _expectMinVerseRemoved,
        uint256 _expectMinWethRemoved,
        uint256 _minAmountVerseToBuy,
        uint256 _maxAmountWethForSwap,
        uint256 _expectMinVerseToAddBack,
        uint256 _expectMinWethToAddBack
    )
        public
        onlyWorker
    {
        (
            uint256 _amountVerse,
            uint256 _amountWeth
        ) = router.removeLiquidity(
            token0,
            token1,
            _liquidityAmountToUse,
            _expectMinVerseRemoved,
            _expectMinWethRemoved,
            address(this),
            block.timestamp
        );

        emit LogOut(
            _amountWeth,
            _amountVerse
        );

        (
            uint256 reserve0,
            uint256 reserve1,
        ) = pair.getReserves();

        uint256 requiredWethForSwap = router.quote(
            _minAmountVerseToBuy,
            reserve0,
            reserve1
        );

        emit LogQuote(
            requiredWethForSwap,
            _minAmountVerseToBuy,
            reserve0,
            reserve1
        );

        if (requiredWethForSwap > _maxAmountWethForSwap) {
            revert("LiquidityManager: TOO_EXPENSIVE");
        }

        router.swapExactTokensForTokens(
            _maxAmountWethForSwap,
            _minAmountVerseToBuy,
            _getSwapPathFromWethToVerse(),
            address(this),
            block.timestamp
        );

        (
            uint256 addedVerse,
            uint256 addedWeth,
            uint256 liquidity
        ) = router.addLiquidity(
            token0,
            token1,
            IERC20(token0).balanceOf(address(this)),
            IERC20(token1).balanceOf(address(this)),
            _expectMinVerseToAddBack,
            _expectMinWethToAddBack,
            address(this),
            block.timestamp
        );

        emit LogAdded(
            addedVerse,
            addedWeth,
            liquidity
        );
    }

    function withdrawTokens(
        address _token,
        address _to,
        uint256 _amount
    )
        external
        onlyOwner
    {
        IERC20(_token).transfer(
            _to,
            _amount
        );
    }

    function withdrawETH(
        address _to,
        uint256 _amount
    )
        external
        onlyOwner
    {
        payable(_to).transfer(
            _amount
        );
    }

    function setWorker(
        address _worker
    )
        external
        onlyOwner
    {
        worker = _worker;
    }

    function setOwner(
        address _owner
    )
        external
        onlyOwner
    {
        owner = _owner;
    }

    function getVerseBalanceSelf()
        public
        view
        returns (uint256)
    {
        return IERC20(token0).balanceOf(
            address(this)
        );
    }

    function getWethBalanceSelf()
        public
        view
        returns (uint256)
    {
        return IERC20(token1).balanceOf(
            address(this)
        );
    }

    function getOptimalParametersAuto()
        public
        view
        returns (
            uint256 _liquidityAmountToUseOut,
            uint256 _expectMinVerseRemoved,
            uint256 _expectMinWethRemoved,
            uint256 _minAmountVerseToBuy,
            uint256 _maxAmountWethForSwapOut,
            uint256 _expectMinVerseToAddBack,
            uint256 _expectMinWethToAddBack
        )
    {
        return getOptimalParameters(
            getVerseBalanceSelf(),
            getWethBalanceSelf()
        );
    }

    function getOptimalParameters(
        uint256 _liquidityAmountToUse,
        uint256 _maxAmountWethForSwap
    )
        public
        view
        returns (
            uint256 _liquidityAmountToUseOut,
            uint256 _expectMinVerseRemoved,
            uint256 _expectMinWethRemoved,
            uint256 _minAmountVerseToBuy,
            uint256 _maxAmountWethForSwapOut,
            uint256 _expectMinVerseToAddBack,
            uint256 _expectMinWethToAddBack
        )
    {
        _liquidityAmountToUseOut = _liquidityAmountToUse;
        _maxAmountWethForSwapOut = _maxAmountWethForSwap;

        (
            uint256 reserve0,
            uint256 reserve1,
        ) = pair.getReserves();

        uint256 totalSupply = pair.totalSupply();

        // Calculate the amounts of Verse and WETH that will be removed
        _expectMinVerseRemoved = _liquidityAmountToUse
            * reserve0
            / totalSupply;

        _expectMinWethRemoved = _liquidityAmountToUse
            * reserve1
            / totalSupply;

        // Round values for precision
        _expectMinVerseRemoved = _expectMinVerseRemoved
            / PRECISION_VERSE
            * PRECISION_VERSE;

        _expectMinWethRemoved = _expectMinWethRemoved
            / PRECISION_WETH
            * PRECISION_WETH;

        // New reserves after liquidity removal
        uint256 newReserve0 = reserve0
            - _expectMinVerseRemoved;

        uint256 newReserve1 = reserve1
            - _expectMinWethRemoved;

        // Calculate the maximum amount of Verse that can be bought with _maxAmountWethForSwap
        _minAmountVerseToBuy = router.getAmountOut(
            _maxAmountWethForSwap,
            newReserve1,
            newReserve0
        );

        _minAmountVerseToBuy = _minAmountVerseToBuy
            / PRECISION_VERSE
            * PRECISION_VERSE;

        // New reserves after the swap
        uint256 newReserve0AfterSwap = newReserve0
            - _minAmountVerseToBuy;

        uint256 newReserve1AfterSwap = newReserve1
            + _maxAmountWethForSwap;

        _expectMinVerseToAddBack = _expectMinWethRemoved
            * newReserve0AfterSwap
            / newReserve1AfterSwap;

        _expectMinVerseToAddBack = _expectMinVerseToAddBack
            / PRECISION_VERSE
            * PRECISION_VERSE;

        _expectMinWethToAddBack = _expectMinWethRemoved;

        return (
            _liquidityAmountToUseOut,
            _expectMinVerseRemoved,
            _expectMinWethRemoved,
            _minAmountVerseToBuy,
            _maxAmountWethForSwapOut,
            _expectMinVerseToAddBack,
            _expectMinWethToAddBack
        );
    }

    function executeBuyBackVerseTokenAuto()
        external
        onlyWorker
    {
        (
            uint256 _liquidityAmountToUseOut,
            uint256 _expectMinVerseRemoved,
            uint256 _expectMinWethRemoved,
            uint256 _minAmountVerseToBuy,
            uint256 _maxAmountWethForSwapOut,
            uint256 _expectMinVerseToAddBack,
            uint256 _expectMinWethToAddBack
        ) = getOptimalParametersAuto();

        buyBackVerseTokenSimple(
            _liquidityAmountToUseOut,
            _expectMinVerseRemoved,
            _expectMinWethRemoved,
            _minAmountVerseToBuy,
            _maxAmountWethForSwapOut,
            _expectMinVerseToAddBack,
            _expectMinWethToAddBack
        );
    }

    function executeBuyBackVerseTokenSimple(
        uint256 _liquidityAmountToUse,
        uint256 _maxAmountWethForSwap
    )
        external
        onlyWorker
    {
        (
            uint256 _liquidityAmountToUseOut,
            uint256 _expectMinVerseRemoved,
            uint256 _expectMinWethRemoved,
            uint256 _minAmountVerseToBuy,
            uint256 _maxAmountWethForSwapOut,
            uint256 _expectMinVerseToAddBack,
            uint256 _expectMinWethToAddBack
        ) = getOptimalParameters(
            _liquidityAmountToUse,
            _maxAmountWethForSwap
        );

        buyBackVerseTokenSimple(
            _liquidityAmountToUseOut,
            _expectMinVerseRemoved,
            _expectMinWethRemoved,
            _minAmountVerseToBuy,
            _maxAmountWethForSwapOut,
            _expectMinVerseToAddBack,
            _expectMinWethToAddBack
        );
    }

    function _getSwapPathFromWethToVerse()
        private
        view
        returns (address[] memory path)
    {
        path = new address[](2);
        path[0] = token1; // WETH
        path[1] = token0; // VERSE
    }
}
