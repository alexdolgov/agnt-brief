// SPDX-License-Identifier: MIT
pragma solidity ^0.8.1;

import "openzeppelin-solidity/contracts/access/Ownable.sol";
import "openzeppelin-solidity/contracts/security/Pausable.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";

struct SwapParams {
    uint256 dividedAmount;
    address[] paths;
    address[][] pathPools;
    uint256[][] protocolRatio;
}
interface IERC20 {
    function balanceOf(address) external view returns (uint256);
    function transferFrom(address, address, uint256) external returns (bool);
    function approve(address, uint256) external returns (bool);
    function transfer(address to, uint256 amount) external returns (bool);
}
interface IPumpRouter {
    function executeSwap(
        uint256 fromAmount,
        uint256 minReturnAmount,
        SwapParams[] calldata swapParams
    ) external payable;
}
interface IBenqiRouter {
    function mint(uint256) external;
    function unmint(uint256) external;
}

contract PumpSpecialRouter is Ownable, Pausable, ReentrancyGuard {
    event ArbSwapLog(address indexed from, address indexed mid, uint256 fromAmount, uint256 outAmount);
    
    address constant public ETH = address(0);
    address constant public ETH_OKX = address(0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE);

    address constant public USDT = address(0x9702230A8Ea53601f5cD2dc00fDBc13d4dF4A8c7);
    address constant public USDC = address(0xB97EF9Ef8734C71904D8002F8b6Bc66Dd9c48a6E);
    address constant public AUSD = address(0x00000000eFE302BEAA2b3e6e1b18d08D69a9012a);
    address constant public BUSDT = address(0x3C594084dC7AB1864AC69DFd01AB77E8f65B83B7);
    address constant public BUSDC = address(0x038Dbe3D967bB8389190446DACdfE7B95b44F73D);
    address constant public BAUSD = address(0xd211b17Dfe8288D4Fb0dd8EEFF07A6C48fC679D5);

    address public constant BENQI_USDT_CA = address(0x00F8a3B9395B4B02d12ee26536046c3C52459674);
    address public constant BENQI_USDC_CA = address(0xADCaE606AdA101D6c20b6dF57954EeF00f370a8E);
    address public constant BENQI_AUSD_CA = address(0xE0E20bb8435510082b58Fdc370a71E59023F471A);
    
    address public okxSwapRouter = address(0x8aDFb0D24cdb09c6eB6b001A41820eCe98831B91);
    address public okxRouterAppove = address(0x40aA958dd87FC8305b97f2BA922CDdCa374bcD7f);
    address public pumpRouter = address(0x27D8D5d536581DAaF743AbAf339f4658E9A553BA);

    mapping(address=>mapping(address=>bool)) private _approveTo;

    constructor() {
    }

    function okxSwapThenRouterSwap(
        address tokenIn,
        address midToken,
        uint256 amountIn,
        uint256 minOutFinal,
        bytes calldata okxCallData,
        SwapParams[] calldata swapParams,
        uint256 okxValue
    ) external nonReentrant payable whenNotPaused {     
        if (tokenIn == ETH) {
            require(msg.value >= amountIn, "Insufficient AVAX sent");
        } else {
            require(IERC20(tokenIn).transferFrom(msg.sender, address(this), amountIn), "transferFrom failed");
        }

        uint256 balanceMidToken;
        {
            if (tokenIn != ETH) {
                _approveToken(okxRouterAppove, tokenIn);
            }

            (bool ok, ) = okxSwapRouter.call{value: okxValue}(okxCallData);
            require(ok, "OKX swap failed");
            
            balanceMidToken = (midToken == ETH) ? address(this).balance : IERC20(midToken).balanceOf(address(this));
        } 

        {
            SwapParams[] memory modifiedParams = swapParams;
            if (modifiedParams.length > 0) {
                modifiedParams[0].dividedAmount = balanceMidToken;
            }

            uint256 sendValue = 0;
            if (midToken == ETH) {
                sendValue = balanceMidToken;
            } else {
                _approveToken(pumpRouter, midToken);
            }

            IPumpRouter(pumpRouter).executeSwap{value: sendValue}(
                balanceMidToken,
                0,
                modifiedParams
            );
        }
        uint256 balanceOutFinal = (tokenIn == ETH) ? address(this).balance : IERC20(tokenIn).balanceOf(address(this));
        require(balanceOutFinal > minOutFinal, "Slippage: Less Then FinalOut");
        
        if (tokenIn == ETH) {
            payable(msg.sender).transfer(balanceOutFinal);
        } else {
            IERC20(tokenIn).transfer(msg.sender, balanceOutFinal);
        }

        emit ArbSwapLog(tokenIn, midToken, amountIn, balanceOutFinal);
    }



    function swapAndMint(
        address tokenFrom,
        address tokenTo,
        uint256 amountIn,
        uint256 minOutFinal,
        SwapParams[] calldata swapParams
    ) external nonReentrant payable whenNotPaused {     
        if (tokenFrom == ETH) {
            require(msg.value >= amountIn, "Insufficient AVAX sent");
        } else {
            require(IERC20(tokenFrom).transferFrom(msg.sender, address(this), amountIn), "transferFrom failed");
        }

        {
            uint256 sendValue = 0;
            if (tokenFrom == ETH) {
                sendValue = amountIn; 
            } else {
                _approveToken(pumpRouter, tokenFrom); 
            }

            IPumpRouter(pumpRouter).executeSwap{value: sendValue}(
                amountIn,
                0,
                swapParams
            );
        }

        uint256 balanceOutSwap = (tokenTo == ETH) ? address(this).balance : IERC20(tokenTo).balanceOf(address(this));
        require(balanceOutSwap > minOutFinal, "Slippage: Less Then Swap");

        uint256 balanceOutFinal;
        {            
            bool isMint;
            address benqiRouter;
            if (tokenTo == USDT) {
                isMint = true;
                benqiRouter = BENQI_USDT_CA;
            } else if (tokenTo == USDC) {
                isMint = true;
                benqiRouter = BENQI_USDC_CA;
            } else if (tokenTo == AUSD) {
                isMint = true;
                benqiRouter = BENQI_AUSD_CA;
            } else if (tokenTo == BUSDT) {
                isMint = false;
                benqiRouter = BENQI_USDT_CA;
            } else if (tokenTo == BUSDC) {
                isMint = false;
                benqiRouter = BENQI_USDC_CA;
            } else if (tokenTo == BAUSD) {
                isMint = false;
                benqiRouter = BENQI_AUSD_CA;
            } else { revert("Unsupported tokenTo for Benqi"); } 
            _approveToken(benqiRouter, tokenTo);
            if(isMint){
                IBenqiRouter(benqiRouter).mint(balanceOutSwap);
            } else {
                IBenqiRouter(benqiRouter).unmint(balanceOutSwap);
            }
            
            balanceOutFinal = (tokenFrom == ETH) ? address(this).balance : IERC20(tokenFrom).balanceOf(address(this));
            require(balanceOutFinal >= minOutFinal, "Slippage: Less Then Benqi");
        } 

        
        
        if (tokenFrom == ETH) {
            payable(msg.sender).transfer(balanceOutFinal);
        } else {
            IERC20(tokenFrom).transfer(msg.sender, balanceOutFinal);
        }

        emit ArbSwapLog(tokenFrom, tokenTo, amountIn, balanceOutFinal);
    }

    function swapSelf(
        address token,
        uint256 amountIn,
        uint256 minOutFinal,
        SwapParams[] calldata swapParams
    ) external nonReentrant payable whenNotPaused {     
        if (token == ETH) {
            require(msg.value >= amountIn, "Insufficient AVAX sent");
        } else {
            require(IERC20(token).transferFrom(msg.sender, address(this), amountIn), "transferFrom failed");
        }

        {
            uint256 sendValue = 0;
            if (token == ETH) {
                sendValue = amountIn;
            } else {
                _approveToken(pumpRouter, token);
            }

            IPumpRouter(pumpRouter).executeSwap{value: sendValue}(
                amountIn,
                0,
                swapParams
            );
        }

        uint256 balanceOutSwap = (token == ETH) ? address(this).balance : IERC20(token).balanceOf(address(this));
        require(balanceOutSwap > minOutFinal, "Slippage: Less Then Swap");
        
        
        if (token == ETH) {
            payable(msg.sender).transfer(balanceOutSwap);
        } else {
            IERC20(token).transfer(msg.sender, balanceOutSwap);
        }

        emit ArbSwapLog(token, token, amountIn, balanceOutSwap);
    }

    function _approveToken(address spender, address token) internal {
        if(token != ETH && !_approveTo[spender][token]) {            
            IERC20(token).approve(spender, type(uint256).max);
            _approveTo[spender][token] = true;
        }
    }

    function getApproveList(address spender, address token) external view returns (bool){
        return _approveTo[spender][token];
    }

    function setPumpRouter(address _pumpRouter) public onlyOwner {
        pumpRouter = _pumpRouter;
    }

    function setOkxRouterAppove(address _okxRouterAppove) public onlyOwner {
        okxRouterAppove = _okxRouterAppove;
    }

    function setOkxSwapRouter(address _okxSwapRouter) public onlyOwner {
        okxSwapRouter = _okxSwapRouter;
    }

    receive() external payable {}

    fallback() external payable {
        revert("No fallback");
    }
}