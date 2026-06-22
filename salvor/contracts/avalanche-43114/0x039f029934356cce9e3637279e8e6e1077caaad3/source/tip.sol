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

contract tip is Ownable{
    
    address private WAVAX = 0xB31f66AA3C1e785363F0875A1B74E27b85FD66c7;
    address private KOVIN = 0x694200a68B18232916353250955bE220e88c5cBB;
    address private factory = 0x9Ad6C38BE94206cA50bb0d90783181662f0Cfa10;
    address private _WAVAXUSDC = 0xf4003F4efBE8691B60249E6afbD307aBE7758adb;
    uint256 public swapFeesKOVINAVAX = 5;

    mapping(address => ParamsToken) public paramsToken;

    struct ParamsToken { 
        uint256 swapFeesKOVIN;
        uint256 swapFeesTOKEN;
        uint256 feesTreasury;
        address treasury;
        uint256 LPFees;
    }

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
        require(IERC20(path[0]).transferFrom(msg.sender, pair, amount), "TRANSFER ERROR");
             
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

    function swapWAVAXForTOKEN(address token, uint256 amount, uint256 amountOutMin, uint256 LPFees) internal returns (uint256) {
        address[] memory path = new address[](2);
        path[0] = WAVAX;
        path[1] = token;
        address pair = IJoe(factory).getPair(token, WAVAX);
        require(getAmountOut(path, amount, LPFees) >= amountOutMin, "INSUFFICIENT AMOUNT OUT");
        require(IERC20(path[0]).transfer(pair, amount), "TRANSFER ERROR");
             
        (address token0,) = sortTokens(path[0], path[1]);
        (uint reserveIn, uint reserveOut) = getReserves(path[0] , path[1]);
        uint256 amountOut = calculate(amount, reserveIn, reserveOut, LPFees);
        (uint amount0Out, uint amount1Out) = path[0] == token0 ? (uint(0), amountOut) : (amountOut, uint(0)); 
        IJoe(pair).swap(amount0Out , amount1Out, address(this), new bytes(0));

        return amountOut;
    }

    function tipAVAX(address payable recipient, uint256 amountOutMin) public payable {
        require(isEOA(recipient), "only send to EOA");
        require(tx.origin == msg.sender, "EOA only");
        uint256 amountTip = msg.value;
        uint256 amountKOVINSwap = (amountTip*swapFeesKOVINAVAX)/100;
        uint256 amountAVAX = amountTip-amountKOVINSwap;
        IERC20(WAVAX).deposit{value: amountKOVINSwap}();
        uint256 swappedKOVIN = swapWAVAXForKOVIN(amountKOVINSwap, amountOutMin);
        (bool success, ) = recipient.call{value: amountAVAX}("");
        require(success, "Transfer Failed");
        IERC20(KOVIN).transfer(recipient, swappedKOVIN);
    }

    function tipAVAXWithToken(address token, address payable recipient, uint256 amountOutMinKOVIN, uint256 amountOutMinTOKEN) public payable {
        require(isEOA(recipient), "only send to EOA");
        require(tx.origin == msg.sender, "EOA only");
        ParamsToken memory params = ParamsToken({
            swapFeesKOVIN: paramsToken[token].swapFeesKOVIN,
            swapFeesTOKEN: paramsToken[token].swapFeesTOKEN,
            feesTreasury: paramsToken[token].feesTreasury,
            treasury: paramsToken[token].treasury,
            LPFees: paramsToken[token].LPFees
        });
        require(params.swapFeesKOVIN > 0, "register token first");
        uint256 amountTip = msg.value;
        uint256 amountKOVINSwap = (amountTip*params.swapFeesKOVIN)/100;
        uint256 amountTOKENSwap = (amountTip*(params.swapFeesTOKEN+params.feesTreasury))/100;
        uint256 amountAVAX = amountTip-amountKOVINSwap-amountTOKENSwap;
        
        IERC20(WAVAX).deposit{value: amountKOVINSwap+amountTOKENSwap}();
        uint256 swappedKOVIN = swapWAVAXForKOVIN(amountKOVINSwap, amountOutMinKOVIN);
        uint256 swappedTOKEN = swapWAVAXForTOKEN(token, amountTOKENSwap, amountOutMinTOKEN, params.LPFees);
        (bool success, ) = recipient.call{value: amountAVAX}("");
        require(success, "Transfer Failed");
        
        if(params.feesTreasury > 0){
            uint256 amountForTreasury = (amountTOKENSwap*(100*params.feesTreasury/(params.feesTreasury+params.swapFeesTOKEN)))/100;
            IERC20(token).transfer(params.treasury, amountForTreasury);
            IERC20(token).transfer(recipient, swappedTOKEN-amountForTreasury);
        }
        else{
            IERC20(token).transfer(recipient, swappedTOKEN);
        }
        IERC20(KOVIN).transfer(recipient, swappedKOVIN);
    }

    function tipToken(address token, uint256 amountTip, address recipient, uint256 amountOutMinWAVAX, uint256 amountOutMinKOVIN) public {
        uint256 swapFeesKOVIN = paramsToken[token].swapFeesKOVIN;
        uint256 feesTreasury = paramsToken[token].feesTreasury;
        address treasury = paramsToken[token].treasury;
        uint256 LPFees = paramsToken[token].LPFees;
        require(swapFeesKOVIN > 0, "register token first");
        require(isEOA(recipient), "only send to EOA");
        require(tx.origin == msg.sender, "EOA only");
        require(IERC20(token).allowance(msg.sender, address(this)) >= amountTip, "You need to approve moar");
        
        uint256 amountKOVINSwap = (amountTip*swapFeesKOVIN)/100;
        uint256 amountToken;
        if(feesTreasury > 0){
            uint256 amountTreasury = (amountTip*feesTreasury)/100;
            amountToken = amountTip - amountKOVINSwap - amountTreasury;
            IERC20(token).transferFrom(msg.sender, treasury, amountTreasury);
        }
        else{
            amountToken = amountTip - amountKOVINSwap;
        }
        uint256 swappedWAVAX = swapTokenForWAVAX(token, amountKOVINSwap, amountOutMinWAVAX, LPFees);
        uint256 swappedKOVIN = swapWAVAXForKOVIN(swappedWAVAX, amountOutMinKOVIN);
        IERC20(token).transferFrom(msg.sender, recipient, amountToken);
        IERC20(KOVIN).transfer(recipient, swappedKOVIN);
    }
    
    function getPriceAndBalanceForToken(address user, address token) public view returns (uint256 balanceAVAX, uint256 balanceTOKEN, uint256 allowance, uint112 reserveAVAXUSDC, uint112 reserveUSDC, uint112 reserveTOKEN, uint112 reserveAVAXTOKEN) {
        balanceAVAX = user.balance;
        balanceTOKEN = IERC20(token).balanceOf(user);
        allowance = IERC20(token).allowance(user, address(this));
        (uint112 reserve0, uint112 reserve1,) = IJoe(_WAVAXUSDC).getReserves();
        if(reserve0 > reserve1){
            reserveAVAXUSDC = reserve0;
            reserveUSDC = reserve1;
        }
        else{
            reserveAVAXUSDC = reserve1;
            reserveUSDC = reserve0;
        }
        (reserve0, reserve1,) = IJoe(IJoe(factory).getPair(token, WAVAX)).getReserves();
        address token0 = IJoe(IJoe(factory).getPair(token, WAVAX)).token0();
        if(token0 == WAVAX){
            reserveTOKEN = reserve1;
            reserveAVAXTOKEN = reserve0;
        }
        else{
            reserveTOKEN = reserve0;
            reserveAVAXTOKEN = reserve1;
        }
    }

    function calculateSwap(address token, uint256 amountTip) public view returns (uint256 amountOutWAVAX, uint256 amountOutKOVIN){
        uint256 swapFeesKOVIN = paramsToken[token].swapFeesKOVIN;
        uint256 LPFees = paramsToken[token].LPFees;
        address[] memory path = new address[](2);
        path[0] = token;
        path[1] = WAVAX;
        uint256 amountKOVINSwap = (amountTip*swapFeesKOVIN)/100;
        amountOutWAVAX = getAmountOut(path, amountKOVINSwap, LPFees);

        address[] memory pathB = new address[](2);
        pathB[0] = WAVAX;
        pathB[1] = KOVIN;
        amountOutKOVIN = getAmountOut(pathB, amountOutWAVAX, 3);
    }

    function calculateSwapAVAXWithToken(address token, uint256 amountTip) public view returns (uint256 amountOutKOVIN, uint256 amountOutTOKEN){
        uint256 swapFeesKOVIN = paramsToken[token].swapFeesKOVIN;
        uint256 swapFeesTOKEN = paramsToken[token].swapFeesTOKEN+paramsToken[token].feesTreasury;
        address[] memory path = new address[](2);
        path[0] = WAVAX;
        path[1] = KOVIN;
        address[] memory pathB = new address[](2);
        pathB[0] = WAVAX;
        pathB[1] = token;
        uint256 amountKOVINSwap = (amountTip*swapFeesKOVIN)/100;
        uint256 amountTOKENSwap = (amountTip*swapFeesTOKEN)/100;
        amountOutKOVIN = getAmountOut(path, amountKOVINSwap, 3);
        amountOutTOKEN = getAmountOut(path, amountTOKENSwap, paramsToken[token].LPFees);
    }

    function calculateSwapAVAX(uint256 amountTip) public view returns (uint256 amountOutKOVIN){
        address[] memory path = new address[](2);
        uint256 amountKOVINSwap = (amountTip*swapFeesKOVINAVAX)/100;
        path[0] = WAVAX;
        path[1] = KOVIN;
        amountOutKOVIN = getAmountOut(path, amountKOVINSwap, 3);
    }

    event Received(address, uint);
    
    function registerToken(address _token, uint256 _swapFeesKOVIN, uint256 _swapFeesTOKEN, uint256 _feesTreasury, address _treasury, uint256 _LPFees) external onlyOwner {
        paramsToken[_token].swapFeesKOVIN = _swapFeesKOVIN;
        paramsToken[_token].swapFeesTOKEN = _swapFeesTOKEN;
        paramsToken[_token].feesTreasury = _feesTreasury;
        paramsToken[_token].treasury = _treasury;
        paramsToken[_token].LPFees = _LPFees;
    }

    function changeSwapFeesKOVINAVAX(uint256 _swapFeesKOVINAVAX) external onlyOwner {
        swapFeesKOVINAVAX = _swapFeesKOVINAVAX;
    }

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