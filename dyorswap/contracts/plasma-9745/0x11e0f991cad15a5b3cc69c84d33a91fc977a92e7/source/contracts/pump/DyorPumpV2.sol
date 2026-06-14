// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

// IERC20
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import '@openzeppelin/contracts/access/Ownable.sol';
import "@openzeppelin/contracts/utils/math/SafeMath.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import {Meme} from "./Meme.sol";


// helper methods for interacting with ERC20 tokens and sending ETH that do not consistently return true/false
library TransferHelper {
    function safeApprove(address token, address to, uint value) internal {
        // bytes4(keccak256(bytes('approve(address,uint256)')));
        (bool success, bytes memory data) = token.call(abi.encodeWithSelector(0x095ea7b3, to, value));
        require(success && (data.length == 0 || abi.decode(data, (bool))), 'TransferHelper: APPROVE_FAILED');
    }

    function safeTransfer(address token, address to, uint value) internal {
        // bytes4(keccak256(bytes('transfer(address,uint256)')));
        (bool success, bytes memory data) = token.call(abi.encodeWithSelector(0xa9059cbb, to, value));
        require(success && (data.length == 0 || abi.decode(data, (bool))), 'TransferHelper: TRANSFER_FAILED');
    }

    function safeTransferFrom(address token, address from, address to, uint value) internal {
        // bytes4(keccak256(bytes('transferFrom(address,address,uint256)')));
        (bool success, bytes memory data) = token.call(abi.encodeWithSelector(0x23b872dd, from, to, value));
        require(success && (data.length == 0 || abi.decode(data, (bool))), 'TransferHelper: TRANSFER_FROM_FAILED');
    }

    function safeTransferETH(address to, uint value) internal {
        (bool success,) = to.call{value:value}(new bytes(0));
        require(success, 'TransferHelper: ETH_TRANSFER_FAILED');
    }
}



interface IDyorPair {
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
    event Swap(
        address indexed sender,
        uint amount0In,
        uint amount1In,
        uint amount0Out,
        uint amount1Out,
        address indexed to
    );
    event Sync(uint112 reserve0, uint112 reserve1);

    function MINIMUM_LIQUIDITY() external pure returns (uint);
    function factory() external view returns (address);
    function token0() external view returns (address);
    function token1() external view returns (address);
    function getRealReserves() external view returns (uint112 reserve0, uint112 reserve1);
    function getVirtualReserves() external view returns (uint112 reserve0, uint112 reserve1);
    function getReserves() external view returns (uint112 reserve0, uint112 reserve1, uint32 blockTimestampLast);
    function price0CumulativeLast() external view returns (uint);
    function price1CumulativeLast() external view returns (uint);
    function kLast() external view returns (uint);

    function mint(address to) external returns (uint liquidity);
    function burn(address to) external returns (uint amount0, uint amount1);
    function swap(uint amount0Out, uint amount1Out, address to ) external;
    function skim(address to) external;
    function sync() external;

    function initialize(address, address) external;
}


interface IDyorFactory {
    event PairCreated(address indexed token0, address indexed token1, address pair, uint);

    function feeTo() external view returns (address);
    function feeToSetter() external view returns (address);

    function getPair(address tokenA, address tokenB) external view returns (address pair);
    function allPairs(uint) external view returns (address pair);
    function allPairsLength() external view returns (uint);

    function createPair(address tokenA, address tokenB) external returns (address pair);

    function setFeeTo(address) external;
    function setFeeToSetter(address) external;
}


interface IDyorRouter01 {
    function factory() external pure returns (address);
    function WETH() external pure returns (address);

    function addLiquidity(
        address tokenA,
        address tokenB,
        uint amountADesired,
        uint amountBDesired,
        uint amountAMin,
        uint amountBMin,
        address to,
        uint deadline
    ) external returns (uint amountA, uint amountB, uint liquidity);
    function addLiquidityETH(
        address token,
        uint amountTokenDesired,
        uint amountTokenMin,
        uint amountETHMin,
        address to,
        uint deadline
    ) external payable returns (uint amountToken, uint amountETH, uint liquidity);
    function removeLiquidity(
        address tokenA,
        address tokenB,
        uint liquidity,
        uint amountAMin,
        uint amountBMin,
        address to,
        uint deadline
    ) external returns (uint amountA, uint amountB);
    function removeLiquidityETH(
        address token,
        uint liquidity,
        uint amountTokenMin,
        uint amountETHMin,
        address to,
        uint deadline
    ) external returns (uint amountToken, uint amountETH);
    function removeLiquidityWithPermit(
        address tokenA,
        address tokenB,
        uint liquidity,
        uint amountAMin,
        uint amountBMin,
        address to,
        uint deadline,
        bool approveMax, uint8 v, bytes32 r, bytes32 s
    ) external returns (uint amountA, uint amountB);
    function removeLiquidityETHWithPermit(
        address token,
        uint liquidity,
        uint amountTokenMin,
        uint amountETHMin,
        address to,
        uint deadline,
        bool approveMax, uint8 v, bytes32 r, bytes32 s
    ) external returns (uint amountToken, uint amountETH);
    function swapExactTokensForTokens(
        uint amountIn,
        uint amountOutMin,
        address[] calldata path,
        address to,
        uint deadline
    ) external returns (uint[] memory amounts);
    function swapTokensForExactTokens(
        uint amountOut,
        uint amountInMax,
        address[] calldata path,
        address to,
        uint deadline
    ) external returns (uint[] memory amounts);
    function swapExactETHForTokens(uint amountOutMin, address[] calldata path, address to, uint deadline)
        external
        payable
        returns (uint[] memory amounts);
    function swapTokensForExactETH(uint amountOut, uint amountInMax, address[] calldata path, address to, uint deadline)
        external
        returns (uint[] memory amounts);
    function swapExactTokensForETH(uint amountIn, uint amountOutMin, address[] calldata path, address to, uint deadline)
        external
        returns (uint[] memory amounts);
    function swapETHForExactTokens(uint amountOut, address[] calldata path, address to, uint deadline)
        external
        payable
        returns (uint[] memory amounts);

    function quote(uint amountA, uint reserveA, uint reserveB) external pure returns (uint amountB);
    function getAmountOut(uint amountIn, uint reserveIn, uint reserveOut) external pure returns (uint amountOut);
    function getAmountIn(uint amountOut, uint reserveIn, uint reserveOut) external pure returns (uint amountIn);
    function getAmountsOut(uint amountIn, address[] calldata path) external view returns (uint[] memory amounts);
    function getAmountsIn(uint amountOut, address[] calldata path) external view returns (uint[] memory amounts);
}



interface IDyorRouter02 is IDyorRouter01 {
    function removeLiquidityETHSupportingFeeOnTransferTokens(
        address token,
        uint liquidity,
        uint amountTokenMin,
        uint amountETHMin,
        address to,
        uint deadline
    ) external returns (uint amountETH);
    function removeLiquidityETHWithPermitSupportingFeeOnTransferTokens(
        address token,
        uint liquidity,
        uint amountTokenMin,
        uint amountETHMin,
        address to,
        uint deadline,
        bool approveMax, uint8 v, bytes32 r, bytes32 s
    ) external returns (uint amountETH);

    function swapExactTokensForTokensSupportingFeeOnTransferTokens(
        uint amountIn,
        uint amountOutMin,
        address[] calldata path,
        address to,
        address team,
        uint256 teamRatePercent,
        uint deadline
    ) external;
    function swapExactETHForTokensSupportingFeeOnTransferTokens(
        uint amountOutMin,
        address[] calldata path,
        address to,
        uint deadline
    ) external payable;
    function swapExactTokensForETHSupportingFeeOnTransferTokens(
        uint amountIn,
        uint amountOutMin,
        address[] calldata path,
        address to,
        uint deadline
    ) external;
}




struct PumpTokenStruct {
    string name;
    string symbol;
    string description;
    string image;
    string website;
    string telegram;
    string twitter;
    string meta;
    uint256 totalSupply;
    uint256 realEthReserves;
    uint256 realTokenReserves;
    uint256 liquidityEth;
    uint256 liquidityToken;
    uint256 initialVirtualTokenSlippage;
    uint256 initialVirtualEthReserves;
    uint256 initialVirtualTokenReserves;
}

interface IWETH {
    function deposit() external payable;
    function transfer(address to, uint value) external returns (bool);
    function withdraw(uint) external;
}


interface IDeployPump {
    function addInvolvePumpToken(address _sender, uint256 amount0In, uint256 amount1In, uint256 amount0Out, uint256 amount1Out ) external;
    function subInvolvePumpToken(address _sender, uint256 amount0In, uint256 amount1In, uint256 amount0Out, uint256 amount1Out ) external;
    function getRouterList(address router) external view returns(bool);
    function successfulLaunch() external;
}

contract DyorPumpToken is
    Meme,
    ReentrancyGuard
{
    using SafeERC20 for IERC20;
    using SafeMath for uint256;
    using EnumerableSet for EnumerableSet.AddressSet;

    bytes4 private constant SELECTOR = bytes4(keccak256(bytes('transfer(address,uint256)')));

    IDyorRouter02 public uniswapRouter;
    address public pumpRouter;
    address public uniswapV2Pair;
    address public deployPumpFactory;

    uint256 public realLiquidityEth;
    address public liquidityFeeTo;

    address public projectOwner;
    address public lpOwner;

    uint256 public realEthReserves;                 //   0 SOL
    uint256 public realTokenReserves;               //   793100000  Token
    uint256 public initialVirtualEthReserves;           //   30 SOL
    uint256 public initialVirtualTokenReserves;         //  1073000000 Token
    uint256 public initialVirtualTokenSlippage;         //  1073000000 Token
    uint256 public virtualEthReserves;
    uint256 public liquidityEth;
    uint256 public liquidityToken;
    bool public complete;

    uint256 public Version = 2;
    address public WETH;
    address public pairToken;
    address public token0;
    address public token1;

    EnumerableSet.AddressSet private holders;

    event Mint(address indexed sender, uint amount0, uint amount1);
    event Swap(
        address indexed sender,
        uint amount0In,
        uint amount1In,
        uint amount0Out,
        uint amount1Out,
        address indexed to
    );
    event Sync(uint112 reserve0, uint112 reserve1);


    constructor(
    ) {
        deployPumpFactory = msg.sender;

    }

    receive() external payable {
        require(msg.sender == pairToken, 'WETH'); // only accept ETH via fallback from the WETH contract
    }

    function _safeTransfer(address token, address to, uint value) private {
        (bool success, bytes memory data) = token.call(abi.encodeWithSelector(SELECTOR, to, value));
        require(success && (data.length == 0 || abi.decode(data, (bool))), 'Dyor Launch: TRANSFER_FAILED');
    }

   function _safeTransferETH(address to, uint value) private {
        (bool success,) = payable(to).call{value: value}("");
        require(success, 'Dyor Launch: ETH_TRANSFER_FAILED');
    }

    function initialize(
        address _projectOwner,
        address _lpOwner,
        address _uniswapRouter,
        address _pumpRouter,
        address _liquidityFeeTo,
        address _pairToken,
        uint256 _realLiquidityEth,
        PumpTokenStruct memory params
    ) external {
        require(msg.sender == deployPumpFactory, 'Dyor Launch: FORBIDDEN'); // sufficient check

        projectOwner = _projectOwner;
        lpOwner = _lpOwner;
        uniswapRouter = IDyorRouter02(_uniswapRouter);
        pumpRouter = _pumpRouter;
        pairToken = _pairToken;
        WETH =  uniswapRouter.WETH();
        liquidityFeeTo = _liquidityFeeTo;
        realLiquidityEth = _realLiquidityEth;

        (token0, token1) = pairToken < address(this) ? (pairToken , address(this)) : (address(this) , pairToken);
        _initializeMeme(params.name, params.symbol, params.description, params.image, params.website, params.telegram, params.twitter, params.meta);

        // // initialVirtualEthReserves
        initialVirtualEthReserves = params.initialVirtualEthReserves;
        initialVirtualTokenReserves = params.initialVirtualTokenReserves;
        initialVirtualTokenSlippage = params.initialVirtualTokenSlippage;
        virtualEthReserves = params.initialVirtualEthReserves;
        liquidityEth = params.liquidityEth;
        liquidityToken = params.liquidityToken;
        realEthReserves = params.realEthReserves;
        realTokenReserves = params.realTokenReserves;

        _mint(address(this), params.totalSupply);

        (uint256 _reserve0, uint256 _reserve1,) = getReserves(); // gas savings
        emit Mint(msg.sender, _reserve0, _reserve1);
          // set uniswap router
        _createPair();
    }

    function getReserves() public view returns (uint256 _reserve0, uint256 _reserve1, uint32 _blockTimestampLast) {
        (uint256 virtualReserve0, uint256 virtualReserve1) =  pairToken < address(this) ?
            (initialVirtualEthReserves, initialVirtualTokenReserves) :
            (initialVirtualTokenReserves, initialVirtualEthReserves) ;
        _reserve0 = virtualReserve0;
        _reserve1 = virtualReserve1;
        _blockTimestampLast = 0;
    }

    function getRealReserves() public view returns (uint256 _reserve0, uint256 _reserve1) {
        (uint256 realReserve0, uint256 realReserve1) = pairToken < address(this) ?
            (realEthReserves, realTokenReserves) :
            (realTokenReserves, realEthReserves) ;
        _reserve0 = realReserve0;
        _reserve1 = realReserve1;
    }

    function getVirtualReserves() public view returns (uint256 _reserve0, uint256 _reserve1) {
        (uint256 virtualReserve0, uint256 virtualReserve1) = pairToken < address(this) ?
            (realEthReserves, realTokenReserves + liquidityToken) :
            (realTokenReserves + liquidityToken, realEthReserves) ;
        _reserve0 = virtualReserve0;
        _reserve1 = virtualReserve1;
    }

    function swap(
        uint amount0Out,
        uint amount1Out,
        address to
    ) external nonReentrant {
        require(!complete, "Dyor Launch: Complete");
        require(
            pumpRouter == msg.sender ||
            IDeployPump(deployPumpFactory).getRouterList(msg.sender),
            'Dyor: Operator');
        require(amount0Out > 0 || amount1Out > 0, 'Dyor Launch: INSUFFICIENT_OUTPUT_AMOUNT');

        (uint256 _realReserve0, uint256 _realReserve1) =  getRealReserves();
        require(amount0Out <= _realReserve0 && amount1Out <= _realReserve1, 'Dyor Launch: INSUFFICIENT_LIQUIDITY');

        (uint256 _reserve0, uint256 _reserve1,) = getReserves(); // gas savings
        uint balance0;
        uint balance1;
        { // scope for _token{0,1}, avoids stack too deep errors
            address _token0 = token0;
            address _token1 = token1;
            // require(to != _token0 && to != _token1, 'Dyor: INVALID_TO');
            if (amount0Out > 0) _safeTransfer(_token0, to, amount0Out); // optimistically transfer tokens
            if (amount1Out > 0) _safeTransfer(_token1, to, amount1Out); // optimistically transfer tokens

            realTokenReserves = balanceOf(address(this)) - liquidityToken;
            initialVirtualTokenReserves = initialVirtualTokenSlippage + liquidityToken + realTokenReserves;
            realEthReserves = IERC20(pairToken).balanceOf(address(this));
            initialVirtualEthReserves = virtualEthReserves + realEthReserves;

            (balance0, balance1) = pairToken < address(this) ? (initialVirtualEthReserves,  initialVirtualTokenReserves) : ( initialVirtualTokenReserves, initialVirtualEthReserves );
            // balance0 = IERC20(_token0).balanceOf(address(this));
            // balance1 = IERC20(_token1).balanceOf(address(this));
        }

        uint amount0In = balance0 > _reserve0 - amount0Out ? balance0 - (_reserve0 - amount0Out) : 0;
        uint amount1In = balance1 > _reserve1 - amount1Out ? balance1 - (_reserve1 - amount1Out) : 0;
        require(amount0In > 0 || amount1In > 0, 'Dyor Launch: INSUFFICIENT_INPUT_AMOUNT');
        { // scope for reserve{0,1}Adjusted, avoids stack too deep errors
            // uint balance0Adjusted = (balance0.mul(10000).sub(amount0In.mul(30)));
            // uint balance1Adjusted = (balance1.mul(10000).sub(amount1In.mul(30)));
            require(balance0.mul(balance1) >= uint(_reserve0).mul(_reserve1), 'Dyor Launch: K');
        }

        emit Sync(uint112(balance0), uint112(balance1));
        emit Swap(msg.sender, amount0In, amount1In, amount0Out, amount1Out, to);

        if(balanceOf(tx.origin) >  0){
            if(!holders.contains(tx.origin)){ holders.add(tx.origin);  }
            IDeployPump(deployPumpFactory).addInvolvePumpToken(
                tx.origin, amount0In, amount1In, amount0Out, amount1Out
            );
        }
        if(balanceOf(tx.origin) == 0){
            if(holders.contains(tx.origin)){ holders.remove(tx.origin); }
            IDeployPump(deployPumpFactory).subInvolvePumpToken(
                tx.origin, amount0In, amount1In, amount0Out, amount1Out
            );
        }
        if(realEthReserves >= liquidityEth){
            _addInitialLiquidity(lpOwner);
        }
    }

    struct Balance{
        address account;
        uint256 amount;
    }
    function holdersForAll(bool desc, uint256 start, uint256 end)
        external
        view
        returns (Balance[] memory, uint256)
    {
        uint256 _userInvolvedLaunchLength = holders.length();
        if (end >= _userInvolvedLaunchLength) {
            end = _userInvolvedLaunchLength - 1;
        }
        uint256 length = end - start + 1;
        Balance[] memory launchInfos = new Balance[](length + 1);
        uint256 currentIndex = 0;
        for (uint256 i = start; i <= end; i++) {
            address account = holders.at(desc ? (_userInvolvedLaunchLength - 1 - i) : i);
            launchInfos[currentIndex] = Balance({
                account: account,
                amount: balanceOf(account)
            });
            currentIndex++;
        }
        launchInfos[length] = Balance({
            amount: complete ? 0 : balanceOf(address(this)) - liquidityToken,
            account: address(this)

        });
        return (launchInfos,  _userInvolvedLaunchLength);
    }


    event LiquidityPoolCreated(address addedPool);

    /**
     * @dev function {_createPair}
     *
     * Create the uniswap pair
     *
     * @return The pair address
     */
    function _createPair() internal returns (address) {
        uniswapV2Pair = IDyorFactory(uniswapRouter.factory()).createPair(
            address(this),
            pairToken
        );
        emit LiquidityPoolCreated(uniswapV2Pair);
        return uniswapV2Pair;
    }

    event InitialLiquidityAdded(
        uint256 tokenA,
        uint256 tokenB,
        uint256 lpToken
    );


    /**
     * @dev function {_addInitialLiquidity}
     *
     * Add initial liquidity to the uniswap pair (internal function that does processing)
     *
     * * @param _lpOwner The recipient of LP tokens
     */
    function _addInitialLiquidity(address _lpOwner) internal {
        // Funded date is the date of first funding. We can only add initial liquidity once. If this date is set,
        // we cannot proceed
        require(!complete, "InitialLiquidityAlreadyAdded");

        complete = true; // uint32(block.timestamp);
        // _mint(address(this),  );
        // Can only do this if this contract holds tokens:
        require(balanceOf(address(this)) != 0, "NoTokenForLiquidityPair");

        uint256 _liquidityEth = liquidityEth;
        uint256 _liquidityToken = liquidityToken;
        if(liquidityFeeTo != address(0) && realLiquidityEth != 0 && _liquidityEth > realLiquidityEth){
            uint256 feeAmount = _liquidityEth - realLiquidityEth;
            if(pairToken != WETH){
                _safeTransfer(pairToken, liquidityFeeTo, feeAmount);
            }else{
                IWETH(pairToken).withdraw(feeAmount);
                _safeTransferETH(liquidityFeeTo, feeAmount);
            }
            _liquidityEth = realLiquidityEth;
        }

        // Approve the uniswap router for an inifinite amount (max uint256)
        // This means that we don't need to worry about later incrememtal
        // approvals on tax swaps, as the uniswap router allowance will never
        // be decreased (see code in decreaseAllowance for reference)
        _approve(address(this), address(uniswapRouter), type(uint256).max);
        IERC20(pairToken).approve(address(uniswapRouter), type(uint256).max);

        // Verify attack
        uint256 attackBalance = IERC20(pairToken).balanceOf(uniswapV2Pair);
        if(attackBalance != 0){
            uint256 attackTokenBalance = attackBalance * _liquidityToken / _liquidityEth;
            _safeTransfer(address(this), uniswapV2Pair, attackTokenBalance);
            IDyorPair(uniswapV2Pair).sync();
            _liquidityToken -= attackTokenBalance;
            _liquidityEth -= attackBalance;
        }

        // Add the liquidity:
        (uint256 amountA, uint256 amountB, uint256 lpTokens) = uniswapRouter
            .addLiquidity(
                address(this),
                pairToken,
                _liquidityToken,
                _liquidityEth,
                0,
                0,
                address(this),
                block.timestamp
            );

        emit InitialLiquidityAdded(amountA, amountB, lpTokens);

        // We now set this to false so that future transactions can be eligibile for autoswaps
        // _autoSwapInProgress = false;

        IERC20(uniswapV2Pair).transfer(_lpOwner, lpTokens);
        IDeployPump(deployPumpFactory).successfulLaunch();
    }

    /**
     * @dev function {isLiquidityPool}
     *
     * Return if an address is a liquidity pool
     *
     * @param queryAddress_ The address being queried
     * @return bool The address is / isn't a liquidity pool
     */
    function isLiquidityPool(address queryAddress_) public view returns (bool) {
        /** @dev We check the uniswapV2Pair address first as this is an immutable variable and therefore does not need
         * to be fetched from storage, saving gas if this address IS the uniswapV2Pool. We also add this address
         * to the enumerated set for ease of reference (for example it is returned in the getter), and it does
         * not add gas to any other calls, that still complete in 0(1) time.
         */
        return (queryAddress_ == address(this));
    }


    function _transfer(
        address from,
        address to,
        uint256 amount
    ) internal override {
        require(
            complete ||
            (isLiquidityPool(from) || isLiquidityPool(to))
            , 'isLiquidityPool'
            );
        super._transfer(from, to, amount);
    }

}



