//  SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import "../../interfaces/uniswap/INonfungiblePositionManager.sol";

contract ArbitrumNonfungiblePositionManagerAccessControl {

    address public safeModule;
    address public safeAddress;
    address public uniV3NFTManager;

    address public token0_weth;
    address public token1_usdc;


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
        uniV3NFTManager = 0xC36442b4a4522E871399CD717aBDD847Ab11FE88;

        token0_weth = 0x82aF49447D8a07e3bd95BD0d56f35241523fBab1;
        token1_usdc = 0xFF970A61A04b1cA14834A43f5dE4533eBDDB5CC8;
        
        // weth
        tokenWhiteList[token0_weth] = true;
        // usdc
        tokenWhiteList[token1_usdc] = true;
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

    function checkPairWithId(uint256 tokenId) internal view {
        (,,address token0, address token1,,,,,,,,) = INonfungiblePositionManager(uniV3NFTManager).positions(tokenId);
        checkPairWithToken(token0, token1);
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
    function mint(INonfungiblePositionManager.MintParams calldata params) external view onlySelf {
        checkPairWithToken(params.token0, params.token1);
        require(params.recipient == safeAddress, "recipient(miner) must be safe address");
    }
    function increaseLiquidity(INonfungiblePositionManager.IncreaseLiquidityParams calldata params) external view onlySelf {
        checkPairWithId(params.tokenId);
    }
    function decreaseLiquidity(INonfungiblePositionManager.DecreaseLiquidityParams calldata params) external view onlySelf {
        checkPairWithId(params.tokenId);
    }
    function collect(INonfungiblePositionManager.CollectParams calldata params) external view onlySelf {
        checkPairWithId(params.tokenId);
        require(params.recipient == safeAddress, "recipient(miner) must be safe address");
    }
    function multicall(bytes[] calldata data) external view onlySelf {
        // todo: decode and check mint/increaseLiquidity/decreaseLiquidity/collect
    }
}