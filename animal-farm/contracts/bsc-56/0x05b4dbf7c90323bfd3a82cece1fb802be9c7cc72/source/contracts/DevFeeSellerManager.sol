// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/interfaces/IERC20.sol";
import "@uniswap/v2-core/contracts/interfaces/IUniswapV2Factory.sol";
import "@uniswap/v2-periphery/contracts/interfaces/IUniswapV2Router02.sol";
import "@uniswap/v2-core/contracts/interfaces/IUniswapV2Pair.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

interface IToolbox {

    function getTokenBUSDValue(uint256 tokenBalance, address token, bool isLPToken) external view returns (uint256);

}

interface DevFeeM {

  function tokenInfo ( uint256 ) external view returns ( address lpToken, uint256 oldBalance, uint256 runningTotal );

}


contract DevFeeSellerManager is Ownable {
    using SafeERC20 for IERC20;

    IUniswapV2Factory public constant PancakeFactory = IUniswapV2Factory(0xcA143Ce32Fe78f1f7019d7d551a6402fC5350c73);
    IUniswapV2Router02 public constant PancakeRouter = IUniswapV2Router02(0x10ED43C718714eb63d5aA57B78B54704E256024E);
    IToolbox public Toolbox = IToolbox(0x78F316775ace6CBF33F14b52903900fb9Be02fb4);

    uint256 public busdSwapThreshold = 10 ether;

    address public constant busdCurrencyAddress = 0xe9e7CEA3DedcA5984780Bafc599bD69ADd087D56;
    address public constant wbnbCurrencyAddress = 0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c;
    address public dontSellAddress;
    DevFeeM public devFeeM = DevFeeM(0xFe44479A11Cf491DA91BE1f3d7b2727Dd2df7424);

    mapping (address => bool) public viaWBNBTokens;
    mapping (address => bool) public dontSellTokens;
    mapping (address => bool) public isLpToken;

    constructor(){

        _approveTokenIfNeeded(busdCurrencyAddress, address(PancakeRouter));
        _setRouteViaBNBToken(0xF8A0BF9cF54Bb92F17374d9e9A321E6a111a51bD, true); // LINK
        _setRouteViaBNBToken(0xE0e514c71282b6f4e823703a39374Cf58dc3eA4f, true); // BELT
        _setRouteViaBNBToken(0x2170Ed0880ac9A755fd29B2688956BD959F933F8, true); // ETH
        _setRouteViaBNBToken(0x7083609fCE4d1d8Dc0C979AAb8c869Ea2C873402, true); // DOT
        isLpToken[0x58F876857a02D6762E0101bb5C46A8c1ED44Dc16] = true;
        isLpToken[0x7EFaEf62fDdCCa950418312c6C91Aef321375A00] = true;
        isLpToken[0x2354ef4DF11afacb85a5C7f98B624072ECcddbB1] = true;
        isLpToken[0x2E28b9B74D6d99D4697e913b82B41ef1CAC51c6C] = true;
        isLpToken[0x66FDB2eCCfB58cF098eaa419e5EfDe841368e489] = true;
        isLpToken[0xD171B26E4484402de70e3Ea256bE5A2630d7e88D] = true;
        isLpToken[0x74E4716E431f45807DCF19f284c7aA99F18a4fbc] = true;
        isLpToken[0x61EB789d75A95CAa3fF50ed7E47b96c132fEc082] = true;
        isLpToken[0xEa26B78255Df2bBC31C1eBf60010D78670185bD0] = true;
        isLpToken[0xF45cd219aEF8618A92BAa7aD848364a158a24F33] = true;
        isLpToken[0x16b9a82891338f9bA80E2D6970FddA79D1eb0daE] = true;
        isLpToken[0x804678fa97d91B974ec2af3c843270886528a9E6] = true;
        isLpToken[0xA39Af17CE4a8eb807E076805Da1e2B8EA7D0755b] = true;
        isLpToken[0x0eD7e52944161450477ee417DE9Cd3a859b14fD0] = true;
        isLpToken[0xDd5bAd8f8b360d76d12FdA230F8BAF42fe0022CF] = true;
        isLpToken[0x824eb9faDFb377394430d2744fa7C42916DE3eCe] = true;
        dontSellTokens[0xa0feB3c81A36E885B6608DF7f0ff69dB97491b58] = true;
    }

    // EXTERNAL FUNCTIONS
    function swapAll(uint256 len) external {
        dontSellAddress =  msg.sender;
        for(uint256 i = 0; i < len ; i++){
            (address lpToken, uint256 oldBalance, uint256 runningTotal) = devFeeM.tokenInfo(i);
            IERC20(lpToken).transferFrom(msg.sender, address(this), IERC20(lpToken).balanceOf(msg.sender));
            swapDepositFeeForBUSD(lpToken,isLpToken[lpToken]);
        }
        _distributeDepositFeeBusd(msg.sender);
    }


    function swapDepositFeeForBUSD(address token, bool isLPToken) internal {
        uint256 totalTokenBalance;
        if(dontSellTokens[token]){
            totalTokenBalance = IERC20(token).balanceOf(address(this));
            IERC20(token).transfer(dontSellAddress, totalTokenBalance);
            return;
        }

        totalTokenBalance = IERC20(token).balanceOf(address(this));

        if (totalTokenBalance == 0 || token == busdCurrencyAddress){
            return;
        }

        uint256 busdValue = Toolbox.getTokenBUSDValue(totalTokenBalance, token, isLPToken);

        // only swap if a certain busd value
        if (busdValue < busdSwapThreshold)
            return;

        swapDepositFeeForTokensInternal(token, isLPToken);

    }

    /**
     * @dev un-enchant the lp token into its original components.
     */
    function unpairLPToken(address token, uint256 amount) internal returns(address token0, address token1, uint256 amountA, uint256 amountB){
        _approveTokenIfNeeded(token, address(PancakeRouter));

        IUniswapV2Pair lpToken = IUniswapV2Pair(token);
        address token0 = lpToken.token0();
        address token1 = lpToken.token1();

        // make the swap
        (uint256 amount0, uint256 amount1) = PancakeRouter.removeLiquidity(
            address(token0),
            address(token1),
            amount,
            0,
            0,
            address(this),
            block.timestamp
        );

        return (token0, token1, amount0, amount1);

    }

    function swapDepositFeeForTokensInternal(address token, bool isLPToken) internal{

        uint256 totalTokenBalance = IERC20(token).balanceOf(address(this));

        if (isLPToken) {
            address token0;
            address token1;
            uint256 amount0;
            uint256 amount1;

            (token0, token1, amount0, amount1) = unpairLPToken(token, totalTokenBalance);
            // now I have 2 tokens...
            convertTokenToBUSD(token0, amount0);
            convertTokenToBUSD(token1, amount1);
        } else {
            convertTokenToBUSD(token, totalTokenBalance);
        }

    }

    function convertTokenToBUSD(address token, uint256 amount) internal {

        if (token == busdCurrencyAddress){
            return;
        }

        _approveTokenIfNeeded(token, address(PancakeRouter));

        address[] memory path;
        if (shouldRouteViaBNB(token)){
            path = new address[](3);
            path[0] = token;
            path[1] = wbnbCurrencyAddress;
            path[2] = busdCurrencyAddress;
        } else {
            path = new address[](2);
            path[0] = token;
            path[1] = busdCurrencyAddress;
        }
        uint256[] memory amountOut = PancakeRouter.getAmountsOut(amount, path);
        // make the swap
        uint256 slipAmount =  amountOut[amountOut.length - 1] - (amountOut[amountOut.length - 1]/20);
        PancakeRouter.swapExactTokensForTokensSupportingFeeOnTransferTokens(
            amount,
            slipAmount, // accept any amount of tokens
            path,
            address(this),
            block.timestamp
        );

    }

    function _distributeDepositFeeBusd(address _distrib) internal {

        uint256 totalBusdBalance = IERC20(busdCurrencyAddress).balanceOf(address(this));

        IERC20(busdCurrencyAddress).transfer(_distrib, totalBusdBalance);
    }


    function _createRoute(address _from, address _to) internal pure returns(address[] memory){
        address[] memory path = new address[](2);
        path[0] = _from;
        path[1] = _to;
        return path;
    }

    function _createRoute3(address _from, address _mid, address _to) internal pure returns(address[] memory){
        address[] memory path = new address[](3);
        path[0] = _from;
        path[1] = _mid;
        path[2] = _to;
        return path;
    }

    function _approveTokenIfNeeded(address token, address _contract) private {
        if (IERC20(token).allowance(address(this), address(_contract)) == 0) {
            IERC20(token).safeApprove(address(_contract), type(uint256).max);
        }
    }

    function setRouteViaBNBToken(address _token, bool _viaWbnb) external onlyOwner {
        _setRouteViaBNBToken(_token, _viaWbnb);
    }

    function _setRouteViaBNBToken(address _token, bool _viaWbnb) private {
        viaWBNBTokens[_token] = _viaWbnb;
    }

    function setdontSellTokens(address _token, bool _bool) external onlyOwner {
        dontSellTokens[_token] = _bool;
    }
    
    function shouldRouteViaBNB(address _token) public view returns (bool){
        return viaWBNBTokens[_token];
    }

    function updatedontSellAddress(address _address) external onlyOwner {
        dontSellAddress = _address;
    }

    function setisLPTokens(address _token, bool _bool) external onlyOwner {
        isLpToken[_token] = _bool;
    }

    function updateToolbox(IToolbox _toolbox) external onlyOwner {
        Toolbox = _toolbox;
    }


    function inCaseTokensGetStuck(address _token, uint256 _amount, address _to) external onlyOwner {
        IERC20(_token).safeTransfer(_to, _amount);
    }
}