// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.23;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import "./LeverageConcentrator.sol";
import "./interfaces/uniswap/IUniswapV3Pool.sol";
import "./interfaces/IFactoryLC.sol";
import "./interfaces/leverage/ILiquidityBorrowingManager.sol";
import "./libraries/ErrLib.sol";
import "./libraries/Keys.sol";

// import "hardhat/console.sol";

contract FactoryLC is Ownable, IFactoryLC {
    using { ErrLib.revertError } for bool;

    address public immutable LIQUIDITY_BORROWING_MANAGER_ADDRESS;
    address public immutable UNDERLYING_POSITION_MANAGER_ADDRESS;

    uint16 private constant MIN_OBSERVATION_CARDINALITY = 10;
    address private immutable UNDERLYING_V3_FACTORY_ADDRESS;
    bytes32 private immutable UNDERLYING_V3_POOL_INIT_CODE_HASH;

    mapping(bytes32 => address) private lcPools;

    event CreateLCpool(uint24 feeTier, address token0, address token1, address LCpool);

    constructor(address _liquidityBorrowingManager) {
        LIQUIDITY_BORROWING_MANAGER_ADDRESS = _liquidityBorrowingManager;
        UNDERLYING_V3_FACTORY_ADDRESS = ILiquidityBorrowingManager(_liquidityBorrowingManager)
            .UNDERLYING_V3_FACTORY_ADDRESS();
        UNDERLYING_V3_POOL_INIT_CODE_HASH = ILiquidityBorrowingManager(_liquidityBorrowingManager)
            .UNDERLYING_V3_POOL_INIT_CODE_HASH();
        UNDERLYING_POSITION_MANAGER_ADDRESS = address(
            ILiquidityBorrowingManager(_liquidityBorrowingManager).underlyingPositionManager()
        );
    }

    function createLCpool(
        address tokenA,
        address tokenB,
        uint24 feeTier,
        string memory symbols
    ) external onlyOwner returns (address lcPoolAddress) {
        (tokenA, tokenB) = _validateTokens(tokenA, tokenB);
        bytes32 key;

        (lcPoolAddress, key) = _getpool(feeTier, tokenA, tokenB);
        require(lcPoolAddress == address(0), "already created");

        if (bytes(symbols).length == 0) {
            symbols = string.concat(
                IERC20Metadata(tokenA).symbol(),
                "/",
                IERC20Metadata(tokenB).symbol()
            );
        }

        address underlyingPool = _computePoolAddress(feeTier, tokenA, tokenB);
        (, , , uint16 observationCardinality, , , ) = IUniswapV3Pool(underlyingPool).slot0();
        // check the number of populated elements in the oracle array
        (observationCardinality < MIN_OBSERVATION_CARDINALITY ||
            IUniswapV3Pool(underlyingPool).liquidity() == 0).revertError(
                ErrLib.ErrorCode.UNDERLYING_POOL_IS_NOT_CONFIGURED
            );

        lcPoolAddress = address(
            new LeverageConcentrator{
                salt: keccak256(abi.encode(block.timestamp, address(this), tokenA, tokenB))
            }(
                owner(),
                tokenA,
                tokenB,
                underlyingPool,
                LIQUIDITY_BORROWING_MANAGER_ADDRESS,
                UNDERLYING_POSITION_MANAGER_ADDRESS,
                symbols
            )
        );

        lcPools[key] = lcPoolAddress;

        emit CreateLCpool(feeTier, tokenA, tokenB, lcPoolAddress);
    }

    function getpool(
        uint24 feeTier,
        address tokenA,
        address tokenB
    ) public view returns (address, bytes32) {
        if (tokenA > tokenB) (tokenA, tokenB) = (tokenB, tokenA);
        return _getpool(feeTier, tokenA, tokenB);
    }

    function _getpool(
        uint24 feeTier,
        address token0,
        address token1
    ) private view returns (address lcPool, bytes32 key) {
        key = Keys.computeLCpoolKey(address(this), token0, token1, feeTier);
        lcPool = lcPools[key];
    }

    function _validateTokens(
        address tokenA,
        address tokenB
    ) private pure returns (address token0, address token1) {
        require(tokenA != tokenB, "identical tokens");
        (token0, token1) = tokenA < tokenB ? (tokenA, tokenB) : (tokenB, tokenA);
        require(token0 != address(0), "zero address");
    }

    function _computePoolAddress(
        uint24 fee,
        address token0,
        address token1
    ) private view returns (address pool) {
        pool = address(
            uint160(
                uint256(
                    keccak256(
                        abi.encodePacked(
                            hex"ff",
                            UNDERLYING_V3_FACTORY_ADDRESS,
                            keccak256(abi.encode(token0, token1, fee)),
                            UNDERLYING_V3_POOL_INIT_CODE_HASH
                        )
                    )
                )
            )
        );
    }
}
