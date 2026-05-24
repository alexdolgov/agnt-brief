//  SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import "../../interfaces/iZiswap/ILiquidityManager.sol";

contract ArbitrumLiquidityManagerAccessControl {

    address public safeModule;
    address public safeAddress;
    address public liquidityManager;

    address public tokenX_weth;
    address public tokenY_usdc;


    mapping(address=>bool) public tokenWhiteList;


    bytes32 internal _checkedRole;
    uint256 internal _checkedValue;

    constructor(
        address _safeAddress,
        address _safeModule
    ) {

        require(_safeAddress != address(0), "invalid safe address");
        require(_safeModule!= address(0), "invalid module address");

        safeAddress = _safeAddress;
        safeModule = _safeModule;
        liquidityManager = 0x611575eE1fbd4F7915D0eABCC518eD396fF78F0c;

        tokenX_weth = 0x82aF49447D8a07e3bd95BD0d56f35241523fBab1;
        tokenY_usdc = 0xFF970A61A04b1cA14834A43f5dE4533eBDDB5CC8;
        
        // weth
        tokenWhiteList[tokenX_weth] = true;
        // usdc
        tokenWhiteList[tokenY_usdc] = true;
    }

    modifier onlySelf() {
        require(address(this) == msg.sender, "Caller is not inner");
        _;
    }

    modifier onlyModule() {
        require(safeModule == msg.sender, "Caller is not the module");
        _;
    }

    function checkPairWithToken(address token0, address token1) internal view {
        require(tokenWhiteList[token0], "token0 is not allowed");
        require(tokenWhiteList[token1], "token1 is not allowed");
        require(token0 != token1, "token0 == token1");
    }

    function checkPairWithId(uint256 lid) internal view {
        (,,,,,,,uint128 poolId) = ILiquidityManager(liquidityManager).liquidities(lid);
        (address tokenX, address tokenY,) = ILiquidityManager(liquidityManager).poolMetas(poolId);
        checkPairWithToken(tokenX, tokenY);
    }

    function check(bytes32 _role, uint256 _value, bytes calldata data) external onlyModule returns (bool) {
        _checkedRole = _role;
        _checkedValue = _value;
        (bool success,) = address(this).staticcall(data);
        return success;
    }
    fallback() external {
        revert("Unauthorized access");
    }

    function mint(ILiquidityManager.MintParam calldata params) external view onlySelf {
        checkPairWithToken(params.tokenX, params.tokenY);
        require(params.miner == safeAddress, "recipient(miner) must be safe address");
    }

    function decLiquidity(
        uint256 lid,
        uint128 liquidDelta,
        uint256 amountXMin,
        uint256 amountYMin,
        uint256 deadline
    ) external view onlySelf {
        checkPairWithId(lid);
    }

    function collect(
        address recipient,
        uint256 lid,
        uint128 amountXLim,
        uint128 amountYLim
    ) external view onlySelf {
        checkPairWithId(lid);
        require(recipient == safeAddress, "recipient(miner) must be safe address");
    }

    function addLiquidity(
        ILiquidityManager.AddLiquidityParam calldata addLiquidityParam
    ) external view onlySelf {
        checkPairWithId(addLiquidityParam.lid);
    }
    
    function multicall(bytes[] calldata data) external view onlySelf {}
}