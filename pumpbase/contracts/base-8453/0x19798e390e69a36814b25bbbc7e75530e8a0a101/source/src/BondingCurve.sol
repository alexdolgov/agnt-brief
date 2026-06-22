pragma solidity ^0.8.16;

import {IERC20} from '@openzeppelin/contracts/interfaces/IERC20.sol';

contract BondingCurve{
    
    address public token;
    address private constant WETH = 0x4200000000000000000000000000000000000006;
    uint256 private constant FAKEINITIALLIQUIDITY = 1500_000_000_000_000_000;
    address public factory;
    address public FEEADDRESS;
    uint256 public PROTOCOLFEE;
    uint256 private constant ETHRESERVECAP =        5_000_000_000_000_000_000;
    uint256 public reserveToken;
    uint256 public tokenReserveCap;
    uint256 public reserveEth;
    uint256 public tokenGap;

    uint256 public k;

    bool public isMigrated = false;
    bool public isMigrating = false;

    uint private unlocked = 1;
    modifier lock() {
        _lockBefore();
        _;
        _lockAfter();
    }
    
    function _lockBefore() internal {
        require(unlocked == 1, 'LOCKED');
        unlocked = 0;
    }
    
    function _lockAfter() internal {
        unlocked = 1;
    }

    modifier onlyFactory() {
        require(msg.sender == factory, "Only factory");
        _;
    }

    modifier checkMigration() {
        require(!isMigrated && !isMigrating, "Migrated");
        _;
    }


    event Swap(
        address token,
        address indexed swapper,
        uint amountIn,
        uint amountOut,
        uint price,
        bool direction
    );

    event Migrating( address token );

    
    constructor(address _token, uint256 tokenSupply, uint256 protocolFee_) {
        factory = msg.sender;
        reserveToken = tokenSupply * 11 / 10;
        tokenReserveCap = tokenSupply * 33 / 100;
        tokenGap = tokenSupply / 10;
        reserveEth = FAKEINITIALLIQUIDITY;
        token = _token;
        require(reserveToken >> 128 == 0, 'Invalid Token Amount');
        require(reserveToken >> 59  != 0, 'Invalid Token Amount');
        k = reserveToken * FAKEINITIALLIQUIDITY;
        FEEADDRESS = factory;
        PROTOCOLFEE = protocolFee_;
    }

    function getReserves() public view returns (uint256 _reserveEth, uint256 _reserveToken) {
        _reserveEth = reserveEth;
        _reserveToken = reserveToken;
    }
    function getAmountOut(uint amountIn, bool direction) public view returns (uint256 amountOut){
        if(direction == true){ //Buy
            amountOut = reserveToken  - k / (reserveEth + amountIn);
        }
        else {
            amountOut = reserveEth - k / (reserveToken + amountIn);
        }
    }
    function buy(uint256 amountOutMin, address to) public payable onlyFactory lock checkMigration returns(uint256 amountOut){
        uint256 currentEth = address(this).balance;

        uint256 amountIn = currentEth + FAKEINITIALLIQUIDITY - reserveEth;
        uint256 protocolFee = amountIn * PROTOCOLFEE / 10000;
        bool success;

        (success,) = payable(FEEADDRESS).call{value: protocolFee ,gas:5000}("");
        require(success,"Transfer failed");
        currentEth -= protocolFee;
        if(currentEth > ETHRESERVECAP - FAKEINITIALLIQUIDITY){
            (success,) = payable(to).call{value: currentEth - (ETHRESERVECAP-FAKEINITIALLIQUIDITY) ,gas:5000}("");
            require(success,"Transfer failed");
            currentEth = ETHRESERVECAP - FAKEINITIALLIQUIDITY;
        }
        amountIn = currentEth + FAKEINITIALLIQUIDITY - reserveEth;

        amountOut = getAmountOut(amountIn, true);
        require(amountOutMin <= amountOut,"Insufficient amount");
        IERC20(token).transfer(to,amountOut);
        reserveEth = address(this).balance + FAKEINITIALLIQUIDITY;
        reserveToken = reserveToken - amountOut;
        uint price = reserveEth * 1e18 / reserveToken;

        emit Swap(token, to, amountIn, amountOut, price,  true);

        if(reserveEth == ETHRESERVECAP){
            isMigrating = true;
            emit Migrating(token);
        }
    }
    function sell(uint256 amountOutMin,address to) public onlyFactory lock checkMigration returns(uint256 amountOut){
        uint256 amountIn = IERC20(token).balanceOf(address(this)) + tokenGap - reserveToken;
        amountOut = getAmountOut(amountIn, false);
        require(amountOutMin <= amountOut,"Insufficient amount");

        uint256 protocolFee = amountOut * PROTOCOLFEE / 10000;
        (bool success,) = payable(FEEADDRESS).call{value: protocolFee,gas:5000}("");
        require(success,"Transfer failed");

        (success,) = payable(to).call{value: amountOut - protocolFee,gas:5000}("");
        require(success,"Transfer failed");
        reserveEth = address(this).balance+FAKEINITIALLIQUIDITY;
        reserveToken = reserveToken + amountIn;
        uint price = reserveEth * 1e18 / reserveToken;

        emit Swap(token, to, amountIn, amountOut, price,  false);
        
    }
    function migrate() public onlyFactory lock returns (uint256 tokenBalance, uint256 ethBalance){
        require(isMigrating, "Not ready to migrate");
        require(!isMigrated, "Already migrated");
        require(address(this).balance >= ETHRESERVECAP - FAKEINITIALLIQUIDITY);
        tokenBalance = IERC20(token).balanceOf(address(this));
        ethBalance = address(this).balance;
        IERC20(token).transfer(msg.sender, tokenBalance);
        (bool success,) = payable(msg.sender).call{value: ethBalance ,gas:5000}("");
        require(success, "Transfer failed");
        isMigrating = false;
        isMigrated = true;
    }
}