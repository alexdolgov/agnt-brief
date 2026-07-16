// SPDX-License-Identifier: MIT
pragma solidity ^0.7.5;

interface IERC20 {
    function totalSupply() external view returns (uint256);
    function decimals() external view returns (uint256);
    function balanceOf(address account) external view returns (uint256);
    function transfer(address recipient, uint256 amount) external returns (bool);
    function allowance(address owner, address spender) external view returns (uint256);
    function approve(address spender, uint256 amount) external returns (bool);
    function transferFrom(address sender, address recipient, uint256 amount) external returns (bool);
}

interface ISushiswapV2Pair {
    function getReserves() external view returns (uint112 reserve0, uint112 reserve1, uint32 blockTimestampLast);
    function mint(address to) external returns (uint liquidity);
    function burn(address to) external returns (uint amount0, uint amount1);
    function swap(uint amount0Out, uint amount1Out, address to, bytes calldata data) external;
    function sync() external;
}

interface IComptroller {
    function enterMarkets(address[] memory cTokens) external;
}

interface cyToken {
    function borrow(uint) external;
    function mint(uint) external;
    function redeem(uint) external;
    function repayBorrow(uint) external;
}

contract xVault {
    
    address owner;
    
    IComptroller constant COMPTROLLER = IComptroller(0xAB1c342C7bf5Ec5F02ADEA1c2270670bCa144CbB); 
    address constant cyDAI = address(0x8e595470Ed749b85C6F7669de83EAe304C2ec68F);
    address constant cyWETH = address(0x41c84c0e2EE0b740Cf0d31F63f3B6F627DC6b393);
    address constant cyY3CRV = address(0x7589C9E17BCFcE1Ccaa1f921196FDa177F0207Fc);
    ISushiswapV2Pair constant WETHDAI = ISushiswapV2Pair(0xC3D03e4F041Fd4cD388c549Ee2A29a9E5075882f);
    address constant WETH = address(0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2);
    address constant DAI = address(0x6B175474E89094C44Da98b954EedeAC495271d0F);
    
    constructor() {
        owner = msg.sender;
        address[] memory _markets = new address[](3);
        _markets[0] = cyDAI;
        _markets[1] = cyWETH;
        _markets[2] = cyY3CRV;
        COMPTROLLER.enterMarkets(_markets);
        IERC20(DAI).approve(cyDAI, uint(-1));
    }
    
    function open(uint dai, uint weth, uint mamt) external {
        require(owner == msg.sender);
        IERC20(cyY3CRV).transferFrom(msg.sender, address(this), mamt);
        WETHDAI.swap(dai, 0, address(this), abi.encode(weth));
    }
    
    function fee(uint amount0) external view returns (uint) {
        (uint112 daiReserves, uint112 wethReserves,) = WETHDAI.getReserves();
        uint numerator = wethReserves * amount0 * 1000;
        uint denominator = (daiReserves - amount0) * 997;
        uint wethAmount = numerator / denominator + 1;
        return wethAmount;
    }
    
    function uniswapV2Call(address sender, uint amount0, uint amount1, bytes calldata data) external {
        cyToken(cyDAI).mint(amount0);
        (uint repay) = abi.decode(data, (uint));
        cyToken(cyWETH).borrow(repay);
        IERC20(WETH).transfer(address(WETHDAI), repay);
    }
    
    
}