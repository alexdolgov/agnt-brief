// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.4;


abstract contract Context {
    function _msgSender() internal view virtual returns (address) {
        return msg.sender;
    }

    function _msgData() internal view virtual returns (bytes calldata) {
        return msg.data;
    }
}

abstract contract Ownable is Context {
    address private _owner;

    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

    /**
     * @dev Initializes the contract setting the deployer as the initial owner.
     */
    constructor() {
        _transferOwnership(_msgSender());
    }

    /**
     * @dev Returns the address of the current owner.
     */
    function owner() public view virtual returns (address) {
        return _owner;
    }

    /**
     * @dev Throws if called by any account other than the owner.
     */
    modifier onlyOwner() {
        require(owner() == _msgSender(), "Ownable: caller is not the owner");
        _;
    }

    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`).
     * Can only be called by the current owner.
     */
    function transferOwnership(address newOwner) public virtual onlyOwner {
        require(newOwner != address(0), "Ownable: new owner is the zero address");
        _transferOwnership(newOwner);
    }

    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`).
     * Internal function without access restriction.
     */
    function _transferOwnership(address newOwner) internal virtual {
        address oldOwner = _owner;
        _owner = newOwner;
        emit OwnershipTransferred(oldOwner, newOwner);
    }
}

interface IJoe {
    function swap(uint amount0Out, uint amount1Out, address to, bytes calldata data) external;
    function swap(uint amount0Out, uint amount1Out, address to, bytes calldata data, address referrer) external;
    function getReserves() external view returns (uint112 _reserve0, uint112 _reserve1, uint32 _blockTimestampLast);
    function factory() external view returns (address);
    function getPair(address tokenA, address tokenB) external view returns (address pair);
    function token0() external view returns (address);
    function token1() external view returns (address);
}


interface IERC20 {
    function totalSupply() external view returns (uint256);
    function balanceOf(address who) external view returns (uint256);
    function allowance(address owner, address spender) external view returns (uint256);
    function transfer(address to, uint256 value) external returns (bool);
    function approve(address spender, uint256 value) external returns (bool);
    function transferFrom(address from, address to, uint256 value) external returns (bool);
    function deposit() external payable;

    event Transfer(
        address indexed from,
        address indexed to,
        uint256 value
    );

    event Approval(
        address indexed owner,
        address indexed spender,
        uint256 value
    );
}

contract swapper is Ownable{
    
    address private WAVAX = 0xB31f66AA3C1e785363F0875A1B74E27b85FD66c7;
    address private KOVIN = 0x694200a68B18232916353250955bE220e88c5cBB;
    address private factory = 0x9Ad6C38BE94206cA50bb0d90783181662f0Cfa10;
    uint256 public swapFeeKOVIN = 5;

    constructor(){}

    fallback() external payable{}

    receive() external payable {
        emit Received(msg.sender, msg.value);
    }

    function isEOA(address _addr) public view returns (bool) {
        uint256 size;
        assembly {
            size := extcodesize(_addr)
        }
        return size == 0;
    }

    function swapTokenForWAVAX(address tokenA, uint256 amount, uint256 amountOutMin, uint256 LPFees) internal returns (uint256) {
        address[] memory path = new address[](2);
        path[0] = tokenA;
        path[1] = WAVAX;
        address pair = IJoe(factory).getPair(tokenA, WAVAX);
        require(getAmountOut(path, amount, LPFees) >= amountOutMin, "INSUFFICIENT AMOUNT OUT");
        require(IERC20(path[0]).transfer(pair, amount), "TRANSFER ERROR");
             
        (address token0,) = sortTokens(path[0], path[1]);
        (uint reserveIn, uint reserveOut) = getReserves(path[0] , path[1]);
        uint256 amountOut = calculate(amount, reserveIn, reserveOut, LPFees);
        (uint amount0Out, uint amount1Out) = path[0] == token0 ? (uint(0), amountOut) : (amountOut, uint(0)); 
        IJoe(pair).swap(amount0Out , amount1Out, address(this), new bytes(0));

        return amountOut;
    }
   
    function swapWAVAXForKOVIN(uint256 amount, uint256 amountOutMin) internal returns (uint256) {
        address[] memory path = new address[](2);
        path[0] = WAVAX;
        path[1] = KOVIN;
        address pair = IJoe(factory).getPair(KOVIN, WAVAX);
        require(getAmountOut(path, amount, 3) >= amountOutMin, "INSUFFICIENT AMOUNT OUT");
        require(IERC20(path[0]).transfer(pair, amount), "TRANSFER ERROR");
             
        (address token0,) = sortTokens(path[0], path[1]);
        (uint reserveIn, uint reserveOut) = getReserves(path[0] , path[1]);
        uint256 amountOut = calculate(amount, reserveIn, reserveOut, 3);
        (uint amount0Out, uint amount1Out) = path[0] == token0 ? (uint(0), amountOut) : (amountOut, uint(0)); 
        IJoe(pair).swap(amount0Out , amount1Out, address(this), new bytes(0));

        return amountOut;
    }

    function tipAVAX(address payable recipient, uint256 amountOutMin) public payable {
        require(isEOA(recipient), "only send to EOA");
        uint256 amountTip = msg.value;
        uint256 amountKOVINSwap = (amountTip*swapFeeKOVIN)/100;
        uint256 amountAVAX = amountTip-amountKOVINSwap;
        IERC20(WAVAX).deposit{value: amountKOVINSwap}();
        uint256 swappedKOVIN = swapWAVAXForKOVIN(amountKOVINSwap, amountOutMin);
        (bool success, ) = recipient.call{value: amountAVAX}("");
        require(success, "Transfer Failed");
        IERC20(KOVIN).transfer(recipient, swappedKOVIN);
    }

    function tipToken(address token, uint256 amountTip, address recipient, uint256 feesKOVIN, uint256 feesTreasury, address treasury, uint256 amountOutMinWAVAX, uint256 amountOutMinKOVIN, uint256 LPFees) public {
        require(isEOA(recipient), "only send to EOA");
        require(IERC20(token).allowance(msg.sender, address(this)) >= amountTip);
        IERC20(token).transferFrom(msg.sender, address(this), amountTip);
        uint256 amountKOVINSwap = (amountTip*feesKOVIN)/100;
        uint256 amountToken;
        if(feesTreasury > 0){
            uint256 amountTreasury = (amountTip*feesTreasury)/100;
            amountToken = amountTip - amountKOVINSwap - amountTreasury;
            IERC20(token).transfer(treasury, amountTreasury);
        }
        else{
            amountToken = amountTip - amountKOVINSwap;
        }
        uint256 swappedWAVAX = swapTokenForWAVAX(token, amountKOVINSwap, amountOutMinWAVAX, LPFees);
        uint256 swappedKOVIN = swapWAVAXForKOVIN(swappedWAVAX, amountOutMinKOVIN);
        IERC20(token).transfer(recipient, amountToken);
        IERC20(KOVIN).transfer(recipient, swappedKOVIN);
    }
       
    function calculateSwap(address token, uint256 amountTip, uint256 swapFeeForKOVIN, uint256 LPFees) public view returns (uint256 amountOutWAVAX, uint256 amountOutKOVIN){
        address[] memory path = new address[](2);
        path[0] = token;
        path[1] = WAVAX;
        uint256 amountKOVINSwap = (amountTip*swapFeeForKOVIN)/100;
        amountOutWAVAX = getAmountOut(path, amountKOVINSwap, LPFees);

        address[] memory pathB = new address[](2);
        pathB[0] = WAVAX;
        pathB[1] = KOVIN;
        amountOutKOVIN = getAmountOut(pathB, amountOutWAVAX, 3);
    }

    event Received(address, uint);
    
    function withdrawAVAX() external onlyOwner {
        payable(msg.sender).transfer(address(this).balance);
    }
    
    function withdrawToken(uint256 amount, address token) external onlyOwner{
        IERC20(token).transfer(msg.sender ,amount);
    }
    
    // returns sorted token addresses, used to handle return values from pairs sorted in this order
    function sortTokens(address tokenA, address tokenB) internal pure returns (address token0, address token1) {
        require(tokenA != tokenB, 'UniswapV2Library: IDENTICAL_ADDRESSES');
        (token0, token1) = tokenA < tokenB ? (tokenA, tokenB) : (tokenB, tokenA);
        require(token0 != address(0), 'UniswapV2Library: ZERO_ADDRESS');
    }
    
     // fetches and sorts the reserves for a pair
    function getReserves(address tokenA, address tokenB) internal view returns (uint reserveA, uint reserveB) {
        (address token0,) = sortTokens(tokenA, tokenB);
        address pair = IJoe(factory).getPair(tokenA, tokenB);
        (uint reserve0, uint reserve1,) = IJoe(pair).getReserves();
        (reserveA, reserveB) = tokenA == token0 ? (reserve0, reserve1) : (reserve1, reserve0);
    }
    // given an output amount of an asset and pair reserves, returns a required input amount of the other asset
    function calculate(uint amountIn, uint reserveIn, uint reserveOut, uint fees) internal pure returns (uint amountOut) {
        uint amountInWithFee = amountIn*(1000 - fees);
        uint numerator = amountInWithFee*reserveOut;
        uint denominator = (1000*reserveIn) + amountInWithFee;
        amountOut = numerator / denominator;
    }

    // performs chained getAmountIn calculations on any number of pairs

    function getAmountOut(address[] memory path, uint256 amount, uint256 LPFees) internal view returns (uint amountOut) {
        amountOut = amount;
        (uint reserveIn, uint reserveOut) = getReserves(path[0] , path[1]);
        amountOut = calculate(amountOut, reserveIn, reserveOut, LPFees);
    }

}