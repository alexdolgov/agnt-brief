/**
 *Submitted for verification at Arbiscan.io on 2022-10-05
*/

// SPDX-License-Identifier: MIT

pragma solidity 0.6.11;
pragma experimental ABIEncoderV2;

interface SortedTrove {
    function findInsertPosition(
		address _asset,
		uint256 _NICR,
		address _prevId,
		address _nextId
	) external view returns (address, address);
}

interface HintHelpers {
	function getRedemptionHints(
		address _asset,
		uint256 _VSTamount,
		uint256 _price,
		uint256 _maxIterations
	)
		external
		view
	returns (
		address firstRedemptionHint,
		uint256 partialRedemptionHintNICR,
		uint256 truncatedVSTamount
	);

	function getApproxHint(
		address _asset,
		uint256 _CR,
		uint256 _numTrials,
		uint256 _inputRandomSeed
	)
		external
		view
	returns (
		address hintAddress,
		uint256 diff,
		uint256 latestRandomSeed
	);
}

interface IPriceFeed {
    function fetchPrice(address _token) external returns (uint256);
}

interface TroveManager {
	function redeemCollateral(
		address _asset,
		uint256 _VSTamount,
		address _firstRedemptionHint,
		address _upperPartialRedemptionHint,
		address _lowerPartialRedemptionHint,
		uint256 _partialRedemptionHintNICR,
		uint256 _maxIterations,
		uint256 _maxFeePercentage
	) external;
}

contract Redeemer {
    SortedTrove constant sortedTrove = SortedTrove(0xc49B737fa56f9142974a54F6C66055468eC631d0);
    HintHelpers constant hintHelpers = HintHelpers(0x15f74458aE0bFdAA1a96CA1aa779D715Cc1Eefe4);
    ERC20Like constant vst = ERC20Like(0x894134a25a5faC1c2C26F1d8fBf05111a3CB9487);
    TroveManager constant troveManager = TroveManager(0x6AdAA3eBa85c77e8566b73AEfb4C2f39Df4046Ca);

    function prepareHints(address asset, uint vstAmount)
        public
    returns (
        uint _VSTamount,
        address _firstRedemptionHint,
        address _upperPartialRedemptionHint,
        address _lowerPartialRedemptionHint,
        uint _partialRedemptionHintNICR
    )
    {
        IPriceFeed feed = IPriceFeed(0xF0e0915D233C616CB727E0b2Ca29ff0cbD51B66A);
        uint price = feed.fetchPrice(asset);

        (_firstRedemptionHint, _partialRedemptionHintNICR, _VSTamount) =
            hintHelpers.getRedemptionHints(asset, vstAmount, price, 0);

        (address approxPartialRedemptionHint,, ) = hintHelpers.getApproxHint(asset, _partialRedemptionHintNICR, 42, 0xdead);

        (_upperPartialRedemptionHint, _lowerPartialRedemptionHint) =
            sortedTrove.findInsertPosition(asset, _partialRedemptionHintNICR, approxPartialRedemptionHint, approxPartialRedemptionHint);
    }

    function redeem(address asset, uint vstAmount) public returns(uint gemAmount) {
        vst.transferFrom(msg.sender, address(this), vstAmount);
        (
            uint _VSTamount,
            address _firstRedemptionHint,
            address _upperPartialRedemptionHint,
            address _lowerPartialRedemptionHint,
            uint _partialRedemptionHintNICR
        ) = prepareHints(asset, vstAmount);

        troveManager.redeemCollateral
        (
            asset,
            _VSTamount,
            _firstRedemptionHint,
            _upperPartialRedemptionHint,
            _lowerPartialRedemptionHint,
            _partialRedemptionHintNICR,
            0,
            1e18
        );

        gemAmount = ERC20Like(asset).balanceOf(address(this));
        ERC20Like(asset).transfer(msg.sender, gemAmount);
    }
}

interface UniswapReserve {
    function swap(
        address recipient,
        bool zeroForOne,
        int256 amountSpecified,
        uint160 sqrtPriceLimitX96,
        bytes calldata data
    ) external returns (int256 amount0, int256 amount1);

    function token0() external view returns(address);
    function token1() external view returns(address);
    function fee() external view returns(uint); 
}

interface ERC20Like {
    function approve(address spender, uint value) external returns(bool);
    function transfer(address to, uint value) external returns(bool);
    function transferFrom(address from, address to, uint value) external returns(bool);        
    function balanceOf(address a) external view returns(uint);
}

interface WethLike is ERC20Like {
    function deposit() external payable;
}

interface CurveLike {
    function exchange_underlying(int128 i, int128 j, uint256 dx, uint256 min_dy) external returns(uint);
    function exchange(int128 i, int128 j, uint256 dx, uint256 min_dy) external returns(uint);
}

interface BAMMLike {
    function swap(uint lusdAmount, uint minEthReturn, address payable dest) external returns(uint);
}

interface UniRouterLike {
    function swapExactTokensForETH(uint amountIn, uint amountOutMin, address[] calldata path, address to, uint deadline) external;
}

contract Usdc2Gem {
    address constant USDC = 0xFF970A61A04b1cA14834A43f5dE4533eBDDB5CC8;
    address constant FRAX = 0x17FC002b466eEc40DaE837Fc4bE5c67993ddBd6F;
    address constant VST = 0x894134a25a5faC1c2C26F1d8fBf05111a3CB9487;
    uint160 constant MIN_SQRT_RATIO = 4295128739;    

    UniswapReserve constant RAMSES_FRAX_VST = UniswapReserve(0x9e8A58180dbd369EBe2fc0e8dC671FF9835CE5aB);
    CurveLike constant CURV_FRAX_USDC = CurveLike(0xC9B8a3FDECB9D5b218d02555a8Baf332E5B740d5);    

    constructor() public {
        ERC20Like(USDC).approve(address(CURV_FRAX_USDC), uint(-1));
        ERC20Like(FRAX).approve(address(RAMSES_FRAX_VST), uint(-1));        
    }

    function usdc2GemRedeemer(uint usdcQty, address asset, Redeemer redeemer) public returns(uint gemAmount) {
        uint fraxReturn = CURV_FRAX_USDC.exchange(1, 0, usdcQty, 1);
        
        RAMSES_FRAX_VST.swap(address(this), true, int(fraxReturn), MIN_SQRT_RATIO + 1, bytes(""));

        uint vstReturn = ERC20Like(VST).balanceOf(address(this));
        ERC20Like(VST).approve(address(redeemer), vstReturn);
        return redeemer.redeem(asset, vstReturn);
    }



    receive() external payable {}
}

contract ETHArb is Usdc2Gem {
    address constant WETH = 0x82aF49447D8a07e3bd95BD0d56f35241523fBab1;
    UniswapReserve constant USDCETH = UniswapReserve(0xC31E54c7a869B9FcBEcc14363CF510d1c41fa443);
    uint160 constant MAX_SQRT_RATIO = 1461446703485210103287273052203988822378723970342;

    constructor() public Usdc2Gem() {
        ERC20Like(WETH).approve(address(USDCETH), uint(-1));
    }

    function swap(uint ethQty, address redeemer) external payable returns(uint) {
        bytes memory data = abi.encode(redeemer);
        USDCETH.swap(address(this), true, int256(ethQty), MIN_SQRT_RATIO + 1, data);

        uint retVal = address(this).balance;
        msg.sender.transfer(retVal);

        retVal = ERC20Like(WETH).balanceOf(address(this));
        ERC20Like(WETH).transfer(msg.sender, retVal);

        return retVal;
     }

    function uniswapV3SwapCallback(
        int256 amount0Delta,
        int256 amount1Delta,
        bytes calldata data
    ) external {
        uint USDCAmount = uint(-1 * amount1Delta); 

        require(msg.sender == address(USDCETH), "uniswapV3SwapCallback: invalid sender");     
        address redeemer = abi.decode(data, (address));

        // swap USDC to FRAX to VST to ETH
        usdc2GemRedeemer(USDCAmount, WETH, Redeemer(redeemer));     
        
        if(amount0Delta > 0) {
            if(amount0Delta > 0) WethLike(WETH).transfer(msg.sender, uint(amount0Delta));            
        }
    }

    function ramsesV2SwapCallback(
        int256 amount0Delta,
        int256 amount1Delta,
        bytes calldata data
    ) external
    {
        if(amount0Delta > 0) {
            if(amount0Delta > 0) WethLike(FRAX).transfer(msg.sender, uint(amount0Delta));            
        }        
    }    
}