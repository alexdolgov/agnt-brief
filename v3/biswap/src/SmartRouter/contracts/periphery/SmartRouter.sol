// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.16;

import "../interfaces/IBiswapPoolV3.sol";
import "../interfaces/IBiswapPair.sol";
import "../interfaces/ISwap.sol";

import "../libraries/SwapMathX2Y.sol";
import "../libraries/SwapMathY2X.sol";
import "../libraries/State.sol";
import "../libraries/LogPowMath.sol";
import "../libraries/Path.sol";

interface IQuoter{
    function swapX2Y(address tokenX,address tokenY,uint16 fee,uint128 amount,int24 lowPt ) external view returns (uint256 amountX, uint256 amountY);
    function swapY2X(address tokenX,address tokenY,uint16 fee,uint128 amount,int24 highPt) external view returns (uint256 amountX, uint256 amountY);
    function swapAmountSingle(address tokenX,address tokenY,uint16 fee,uint128 amountIn) external returns (uint256 amountOut);
}

interface ISwapFeeReward{
    struct SwapInfo {
        uint amountOut;
        uint price;
        uint priceImpact;
        uint tradeFee;
        uint tradeFeeUSDT;
        uint feeReturn;
        uint feeReturnUSDT;
        uint rbAmount;
    }

    function swapInfo(address account, address[] memory path, uint amountIn) external view returns (SwapInfo memory _swapInfo);
    function getQuantity(address outputToken, uint outputAmount, address anchorToken) external view returns (uint);
    function swap(address account, address input, address output, uint256 amount) external returns (bool);
}

interface IERC20{
    function decimals() external view returns(uint8);
    function transferFrom(address from, address to, uint value) external returns (bool);
    function balanceOf(address) external returns(uint);
    function transfer(address, uint) external returns(bool);
    function approve(address, uint) external returns(bool);
}

interface IWETH9 is IERC20 {
    /// @notice Deposit ether to get wrapped ether
    function deposit() external payable;

    /// @notice Withdraw wrapped ether to get ether
    function withdraw(uint256) external;
}

interface IWrapToken{
    function originToken() external view returns(address);
    function depositAllowance(address owner, address spender) external view returns (uint256);
    function depositApprove(address spender, uint256 amount) external;
    function depositFrom(address from, address to, uint256 amount) external returns(uint256 actualAmount);
    function withdraw(address to, uint256 amount) external returns(uint256 actualAmount);
}

/// @title Biswap Smart Router
/// @notice this contract used for calculate info and execute swaps over multible pathes of combined (v2 and v3) pools
contract SmartRouter {
    using Path for bytes;
    using BytesLib for bytes;

    uint160 public constant sqrtRate_96 = 79228162514264337593543950336;

    address public immutable factoryV2;
    address public immutable factoryV3;
    bytes32 public immutable INIT_CODE_HASH_V2;
    bytes32 public immutable INIT_CODE_HASH_V3;
    address public immutable quoter;
    address public immutable swapContract;

    address public constant swapFeeReward = 0x785E76678e04aD2aC481fcdbE9064b00Dd8651e3;
    address public constant USDT = 0x55d398326f99059fF775485246999027B3197955;
    address public constant WBNB = 0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c;


    struct SwapStruct{
        uint amountIn;
        bytes path;
    }

    struct FeeInstance{
        address pairAddress;
        address token0;
        address token1;
        uint256 swapFee;
        uint256 devFee;
    }

    struct SwapInfoWithFee{
        uint amountOut;
        uint price;
        uint priceImpact;
        uint tradeFee;
        uint tradeFeeUSDT;
        uint feeReturn;
        uint feeReturnUSDT;
        uint rbAmount;
        FeeInstance[] fees;
    }

    constructor(
        address _factoryV2,
        address _factoryV3,
        bytes32 _INIT_CODE_HASH_V2,
        bytes32 _INIT_CODE_HASH_V3,
        address _quoter,
        address _swapContract
    ){
        factoryV2 = _factoryV2;
        factoryV3 = _factoryV3;
        INIT_CODE_HASH_V2 = _INIT_CODE_HASH_V2;
        INIT_CODE_HASH_V3 = _INIT_CODE_HASH_V3;
        quoter = _quoter;
        swapContract = _swapContract;
    }

    function poolV3(address tokenX, address tokenY, uint16 fee) private view returns(IBiswapPoolV3) {
        (address token0, address token1) = sortTokens(tokenX, tokenY);
        return IBiswapPoolV3(address(uint160(uint(keccak256(abi.encodePacked(
            hex'ff',
            factoryV3,
            keccak256(abi.encode(token0, token1, fee)),
            INIT_CODE_HASH_V3
        ))))));
    }

    function poolV2(address tokenX, address tokenY) private view returns (IBiswapPair) {
        (address token0, address token1) = sortTokens(tokenX, tokenY);
        return IBiswapPair(address(uint160(uint(keccak256(abi.encodePacked(
            hex'ff',
            factoryV2,
            keccak256(abi.encodePacked(token0, token1)),
            INIT_CODE_HASH_V2
        ))))));
    }

    function getAmountOutV2(uint amountIn, uint reserveIn, uint reserveOut, uint swapFee) private pure returns (uint amountOut) {
        uint amountInWithFee = amountIn * (1000 - swapFee);
        uint numerator = amountInWithFee * reserveOut;
        uint denominator = reserveIn * 1000 + amountInWithFee;
        amountOut = numerator / denominator;
    }

    function getAmountsOutV2(uint amountIn, address tokenIn, address tokenOut) private view returns (uint amountOut) {
        (uint reserveIn, uint reserveOut) = getReservesV2(tokenIn, tokenOut);
        amountOut = getAmountOutV2(amountIn, reserveIn, reserveOut, poolV2(tokenIn, tokenOut).swapFee());
    }

    function getReservesV2(address tokenX, address tokenY) private view returns (uint reserveA, uint reserveB) {
        (address token0,) = tokenX < tokenY ? (tokenX, tokenY) : (tokenY, tokenX);
        (uint reserve0, uint reserve1,) = poolV2(tokenX, tokenY).getReserves();
        (reserveA, reserveB) = tokenX == token0 ? (reserve0, reserve1) : (reserve1, reserve0);
    }

    // /// @notice This function returns calculations about amounts out during V3 swap (calculated result)
    // /// @dev this function must be run via staticCall !!!
    // function getAmountOutV3(address tokenIn, address tokenOut, uint16 swapFee, uint128 amountIn) public view returns (uint amountOut) {
    //     address[2] memory sortedTokens;
    //     (sortedTokens[0], sortedTokens[1]) = sortTokens(tokenIn, tokenOut);

    //     bool isSwapX2Y = sortedTokens[0] == tokenIn;
    //     IBiswapPoolV3 pool = poolV3(tokenIn, tokenOut, swapFee);

    //     if(isSwapX2Y){
    //         SwapMathX2Y.RangeRetState memory retState = SwapMathX2Y.x2YRange(IState(address(pool)).state(), -800000, sqrtRate_96, amountIn);
    //         return retState.acquireY;
    //     }else{
    //         SwapMathY2X.RangeRetState memory retState = SwapMathY2X.y2XRange(IState(address(pool)).state(), 800000, sqrtRate_96, amountIn);
    //         return retState.acquireX;
    //     }
    // }

    /// @notice This function returns calculations about amounts out during V3 swap using Quoter (actual result)
    /// @dev this function must be run via staticCall !!!
    function getAmountOutV3_quoter(uint128 amountIn, address tokenIn, address tokenOut, uint16 swapFee) public returns (uint amountOut, int24 newPoint) {
        (address tokenX, address tokenY) = sortTokens(tokenIn, tokenOut);
        bool success;
        bytes memory data;

        if (tokenX == tokenIn){
            (success, data) = quoter.call(abi.encodeWithSignature('swapX2Y(address,address,uint16,uint128,int24)', tokenX, tokenY, swapFee, amountIn, -800000));
        }else{
            (success, data) = quoter.call(abi.encodeWithSignature('swapY2X(address,address,uint16,uint128,int24)', tokenX, tokenY, swapFee, amountIn, 800000));
        }
        require(success, 'getAmountOutV3_quoter: fail to receive amount out');
        (amountOut, newPoint) = abi.decode(data, (uint,int24));
    }

    // function getAmountsOutV3(uint amountIn, address[] memory path, uint16[] memory swapFees) internal view returns (uint[] memory amounts) {
    //     require(path.length >= 2, 'INVALID_PATH');
    //     require(swapFees.length == path.length - 1, 'INVALID SWAP FEES LENGTH');
    //     amounts = new uint[](path.length);
    //     amounts[0] = amountIn;
    //     for (uint i; i < path.length - 1; i++) {
    //         amounts[i + 1] = getAmountOutV3(path[i], path[i+1], swapFees[i], uint128(amounts[i]));
    //     }
    // }

    /// @notice This function returns calculations about amounts out during swap via path
    /// @dev this function must be run via staticCall !!!
    function getAmountsOut(uint128 amountIn, address[] memory path, uint16[] memory swapFees) public returns(uint[] memory amounts){
        require(path.length >= 2, 'INVALID_PATH');
        require(swapFees.length == path.length - 1, 'INVALID SWAP FEES LENGTH');
        amounts = new uint[](path.length);
        amounts[0] = amountIn;
        for (uint i; i < path.length - 1; i++) {
            if(swapFees[i] == 0)  amounts[i + 1]   = getAmountsOutV2(amounts[i], path[i], path[i+1]);
            if(swapFees[i] >  0) (amounts[i + 1],) = getAmountOutV3_quoter(uint128(amounts[i]), path[i], path[i+1], swapFees[i]);
        }
    }

    /// @notice This function returns calculations about suggested single V2 swap
    function swapInfoV2(address account, address[] memory path, uint amountIn) private view returns (SwapInfoWithFee memory _swapInfoWithFee ){
        ISwapFeeReward.SwapInfo memory _swapInfo = ISwapFeeReward(swapFeeReward).swapInfo(account, path, amountIn);

        _swapInfoWithFee.amountOut      = _swapInfo.amountOut;
        _swapInfoWithFee.priceImpact    = _swapInfo.priceImpact;
        _swapInfoWithFee.price          = _swapInfo.price;//amount in / amount out
        _swapInfoWithFee.tradeFee       = _swapInfo.tradeFee;//amount * swap fee
        _swapInfoWithFee.tradeFeeUSDT   = _swapInfo.tradeFeeUSDT;
        _swapInfoWithFee.feeReturn      = _swapInfo.feeReturn;
        _swapInfoWithFee.feeReturnUSDT  = _swapInfo.feeReturnUSDT;
        _swapInfoWithFee.rbAmount       = _swapInfo.rbAmount;
        _swapInfoWithFee.fees = new FeeInstance[](path.length - 1);

        for (uint i; i < path.length - 1; i++) {
            IBiswapPair pa = poolV2(path[i], path[i + 1]);
            _swapInfoWithFee.fees[i].pairAddress = address(pa);
            _swapInfoWithFee.fees[i].token0      = pa.token0();
            _swapInfoWithFee.fees[i].token1      = pa.token1();
            _swapInfoWithFee.fees[i].swapFee     = pa.swapFee();
            _swapInfoWithFee.fees[i].devFee      = pa.devFee();
        }
    }


    /// @notice This function returns calculations about suggested single swap
    /// @dev this function must be run via staticCall !!!
    /// @param account user, that will run future transaction. Used for swapFeeReward calculations
    /// @param amountIn amount of token in
    /// @param path collection of tokens::fee::token... that describe way to swap tokens
    /// @return _swapInfoWithFee general infrmation about performing swap (over path). Used to check output amount, fees payments etc.
    function swapInfo(address account, uint amountIn, bytes memory path) public returns (SwapInfoWithFee memory _swapInfoWithFee ){
        uint pathLength = Path.numPools(path);
        require(pathLength > 0, 'INVALID_PATH');
        uint index;

        _swapInfoWithFee.fees = new FeeInstance[](pathLength);
        _swapInfoWithFee.amountOut      = amountIn;
        _swapInfoWithFee.priceImpact    = 1e12;
        _swapInfoWithFee.price          = 1e12;
        uint swapFee = 1;
        (address inputToken,,) = path.decodeFirstPool();

        while(index < pathLength){
            (address token0, address token1, uint16 fee) = path.decodeFirstPool();
            uint priceImpact;
            if(fee == 0){// fee 0 mean V2 pool
                address[] memory tmpPath = new address[](2);
                tmpPath[0] = token0;
                tmpPath[1] = token1;

                SwapInfoWithFee memory _swapInfo = swapInfoV2(account, tmpPath, _swapInfoWithFee.amountOut);

                _swapInfoWithFee.amountOut      = _swapInfo.amountOut;// always use last anountOut
                priceImpact = _swapInfo.priceImpact; // times 1e12

                _swapInfoWithFee.feeReturn      += _swapInfo.feeReturn;
                _swapInfoWithFee.feeReturnUSDT  += _swapInfo.feeReturnUSDT;
                _swapInfoWithFee.rbAmount       += _swapInfo.rbAmount;

                IBiswapPair pa = poolV2(token0, token1);
                swapFee = swapFee * (1e6 - (pa.swapFee()*1000));
                _swapInfoWithFee.fees[index].pairAddress = address(pa);
                _swapInfoWithFee.fees[index].token0      = pa.token0();
                _swapInfoWithFee.fees[index].token1      = pa.token1();
                _swapInfoWithFee.fees[index].swapFee     = pa.swapFee() * 1000;
                _swapInfoWithFee.fees[index].devFee      = 100 / (pa.devFee() + 1);
            }else {
                uint8 dec0 = IERC20(token0).decimals();
                uint8 dec1 = IERC20(token1).decimals();

                IBiswapPoolV3 pa = poolV3(token0, token1, fee);
                require(address(pa) != address(0), 'v3 pool is not exist');
                swapFee = swapFee * (1e6 - pa.fee());
                uint oldPriceE18 = LogPowMath.getSqrtPrice(IState(address(pa)).state().currentPoint) * 10**dec0 / 10**dec1;
                oldPriceE18 = oldPriceE18 * 1e18 / 2**96;//need handle it before call quoter
                int24 newPoint;

                (_swapInfoWithFee.amountOut, newPoint) = getAmountOutV3_quoter(uint128(_swapInfoWithFee.amountOut), token0, token1, fee);
                uint newPriceE18 = LogPowMath.getSqrtPrice(newPoint) * 10**dec0 / 10**dec1;
                newPriceE18 = newPriceE18 * 1e18 / 2**96;
                priceImpact =  1e12 - (newPriceE18 < oldPriceE18 ? newPriceE18 * 1e12 / oldPriceE18 : oldPriceE18 * 1e12 / newPriceE18);

                _swapInfoWithFee.fees[index].pairAddress = address(pa);
                _swapInfoWithFee.fees[index].token0      = pa.tokenX();
                _swapInfoWithFee.fees[index].token1      = pa.tokenY();
                _swapInfoWithFee.fees[index].swapFee     = pa.fee();
                _swapInfoWithFee.fees[index].devFee      = pa.feeChargePercent();
            }
            _swapInfoWithFee.priceImpact = _swapInfoWithFee.priceImpact * priceImpact / 1e12;

            index++;
            path = path.skipToken();
        }

        _swapInfoWithFee.price = _swapInfoWithFee.amountOut * 1e12 / amountIn;//actual price of path
        _swapInfoWithFee.tradeFee = amountIn - ((amountIn * swapFee) / (1e6**(pathLength)));
        _swapInfoWithFee.tradeFeeUSDT = ISwapFeeReward(swapFeeReward).getQuantity(inputToken, _swapInfoWithFee.tradeFee, USDT);
    }

    /// @notice This function returns calculations about suggested mutiple swaps
    /// @dev this function must be run via staticCall !!!
    /// @param account user, that will run future transaction. Used for swapFeeReward calculations
    /// @param swapInfoReceipt array of structures that contain info about each swap path
    /// @return _swapInfosWithFee general infrmation about performing swap (over path collection). Used to check output amount, fees payments etc.
    function swapInfoMultiple(address account, SwapStruct[] memory swapInfoReceipt) public returns(SwapInfoWithFee memory _swapInfosWithFee){
        uint swapsCount;
        uint feesIndex;
        uint amountInFull;
        for (uint i; i < swapInfoReceipt.length; i++){
            swapsCount += Path.numPools(swapInfoReceipt[i].path);
            amountInFull += swapInfoReceipt[i].amountIn;
        }

        _swapInfosWithFee.fees = new FeeInstance[](swapsCount);

        for (uint i; i < swapInfoReceipt.length; i++){
            SwapInfoWithFee memory tmp = swapInfo(
                account,
                swapInfoReceipt[i].amountIn,
                swapInfoReceipt[i].path
            );

            _swapInfosWithFee.amountOut     += tmp.amountOut;
            _swapInfosWithFee.price         += tmp.price;
            _swapInfosWithFee.priceImpact   += tmp.priceImpact * swapInfoReceipt[i].amountIn;
            _swapInfosWithFee.tradeFee      += tmp.tradeFee;
            _swapInfosWithFee.tradeFeeUSDT  += tmp.tradeFeeUSDT;
            _swapInfosWithFee.feeReturn     += tmp.feeReturn;
            _swapInfosWithFee.feeReturnUSDT += tmp.feeReturnUSDT;
            _swapInfosWithFee.rbAmount      += tmp.rbAmount;

            for (uint k; k < tmp.fees.length; k++){
                _swapInfosWithFee.fees[feesIndex++] = tmp.fees[k];
            }
        }

        _swapInfosWithFee.priceImpact = _swapInfosWithFee.priceImpact / amountInFull;
        _swapInfosWithFee.price = _swapInfosWithFee.price / swapInfoReceipt.length;
    }

    /// @notice This function make swap across V2 and V3 pools
    /// @param amountIn amount of token in
    /// @param path collection of tokens::fee::token... that describe way to swap tokens
    function swapCombinedPath(
        uint amountIn,
        bytes memory path
    ) internal returns(address outputToken){
        uint pathLength = Path.numPools(path);
        require(pathLength > 0, 'INVALID_PATH');

        uint amountOut = amountIn;

        for(uint index; index < pathLength; index++){
            (address tokenIn, address tokenOut, uint16 fee) = path.decodeFirstPool();

            if(fee == 0){
                IBiswapPair pa = poolV2(tokenIn, tokenOut);
                IERC20(tokenIn).transfer(address(pa), amountOut);
                (address token0,) = sortTokens(tokenIn, tokenOut);
                amountOut = getAmountsOutV2(amountOut, tokenIn, tokenOut);
                (uint amount0Out, uint amount1Out) = token0 == tokenIn ? (uint(0), amountOut) : (amountOut, uint(0));
                try ISwapFeeReward(swapFeeReward).swap(msg.sender, tokenIn, tokenOut, amountOut) {} catch {}
                pa.swap(amount0Out, amount1Out, address(this), new bytes(0));
            }else{
                IERC20(tokenIn).approve(address(swapContract), amountOut);
                (, amountOut) = ISwap(swapContract).swapAmount(ISwap.SwapAmountParams({
                    path:        Path.getFirstPool(path),
                    recipient:   address(this),
                    amount:      uint128(amountOut),
                    minAcquired: 0,
                    deadline:    999999999999
                }));
            }

            path = path.skipToken();
        }

        outputToken = path.toAddress(0);
    }

    /// @notice This function make swap across V2 and V3 pools over multiple pathes in one transaction.
    /// @param swapCombinedPathsReceipt array of structures that contain info about each swap path
    /// @param amountOutMin amount of tokens out that reqiered to receive
    /// @param deadline timestamp when this transaction become obsolete
    /// @param unwrapBNB of tokenOut is WBNB => user will receive unwrapped BNB
    function swapCombinedPathMultiple(
        SwapStruct[] memory swapCombinedPathsReceipt,
        uint amountOutMin,
        uint deadline,
        bool unwrapBNB
    ) public payable{
        (address firstToken,,) = swapCombinedPathsReceipt[0].path.decodeFirstPool();
        uint amountIn;
        for (uint i; i < swapCombinedPathsReceipt.length; i++) amountIn += swapCombinedPathsReceipt[i].amountIn;
        _recvTokenFromUser(firstToken, amountIn);
        address outputToken;

        for (uint i; i < swapCombinedPathsReceipt.length; i++){
            address currentOutputToken = swapCombinedPath(swapCombinedPathsReceipt[i].amountIn, swapCombinedPathsReceipt[i].path);
            if (outputToken != address(0)) require(currentOutputToken == outputToken, 'Different output tokens');
            outputToken = currentOutputToken;
        }
        uint outputAmount = IERC20(outputToken).balanceOf(address(this));

        require(outputAmount >= amountOutMin, 'TOO LOW OUTPUT AMOUNT');
        require(deadline >= block.timestamp, 'DEADLINE REACHED');

        _transferTokenToUser(outputToken, outputAmount, unwrapBNB);
    }

    function _recvTokenFromUser(address token, uint amount) internal{
        require(amount > 0, '[recvTokenFromUser]: amount is 0');

        if (msg.value > 0) {
            //only specified amount of BNB allowed
            require(msg.value == amount && token == WBNB, '[recvTokenFromUser]: msg.value not as expected, or initial token is not WBNB');
            IWETH9(WBNB).deposit{value: msg.value}();
        } else{
            // no need to check, because biswap core will revert unenough amount
            bool ok = IERC20(token).transferFrom(msg.sender, address(this), amount);
            require(ok, '[recvTokenFromUser]: erc20 transfer fail');
        }
    }

    function _transferTokenToUser(address token, uint amount, bool unwrapBNB) internal{
        require(amount > 0, '[_transferTokenToUser]: amount is 0');

        if (unwrapBNB) {
            require(token == WBNB, '[_transferTokenToUser]: only WBNB allowed to unwrap');
            IWETH9(WBNB).withdraw(amount);
            payable(msg.sender).transfer(amount);
        }else{
            IERC20(token).transfer(msg.sender, amount);
        }
    }

    function sortTokens(address tokenA, address tokenB) private pure returns (address token0, address token1) {
        (token0, token1) = tokenA < tokenB ? (tokenA, tokenB) : (tokenB, tokenA);
    }

    receive() external payable {}
}
