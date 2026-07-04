// SPDX-License-Identifier: AGPL-3.0-or-later

pragma solidity ^0.7.6;
pragma abicoder v2;

import "./interfaces/IBasePoolMinimal.sol";
import "./interfaces/IFeeManagerV3.sol";
import "./interfaces/ISwapFeeHook.sol";

import "./libraries/external/Ownable.sol";

/// @notice The fee manager manages swap fees for pools and protocol fee.
contract FeeManagerV3 is IFeeManagerV3, Ownable {
    uint24 private constant MAX_PROTOCOL_FEE = 1e5; /// @dev 100%.
    uint24 private constant MAX_SWAP_FEE = 2e5; /// @dev 20%
    uint24 private constant ZERO_FEE_MAGIC_VALUE = type(uint24).max;

    /// @dev The protocol fee of swap fee by pool type.
    mapping(uint16 => uint24) public defaultProtocolFee; /// @dev `300000` for 30%.

    /// @dev The custom protocol fee by pool address, use `ZERO_FEE_MAGIC_VALUE` for zero fee.
    mapping(address => uint24) public poolProtocolFee;

    /// @dev The recipient of protocol fees.
    address public feeRecipient;

    mapping(uint16 => FeeData) public defaultSwapFeeData;

    address public swapFeeHook;

    function defaultSwapFee(uint16 poolType) external view returns (uint24) {
        // v1 compatible interface
        return defaultSwapFeeData[poolType].maxFee;
    }

    mapping(address => mapping(address => FeeData)) public poolSwapFeeData;

    // Events
    event SetDefaultSwapFeeData(uint16 indexed poolType, uint64 gamma, uint24 minFee, uint24 maxFee);
    event SetPoolSwapFeeData(address indexed pool, address indexed tokenIn, uint64 gamma, uint24 minFee, uint24 maxFee);
    event SetDefaultProtocolFee(uint16 indexed poolType, uint24 fee);
    event SetPoolProtocolFee(address indexed pool, uint24 fee);
    event SetFeeRecipient(address indexed previousFeeRecipient, address indexed newFeeRecipient);
    event SetSwapFeeHook(address indexed previousSwapFeeHook, address indexed newSwapFeeHook);

    event SetDefaultSwapFee(uint16 indexed poolType, uint24 fee); // compatible interface
    event SetTokenSwapFee(address indexed tokenIn, address indexed tokenOut, uint24 fee); // compatible interface

    constructor(address _feeRecipient) {
        feeRecipient = _feeRecipient;

        // CL Pool
        _setDefaultSwapFeeData(4, 0, 3000, 3000); // 0.3%
        _setDefaultProtocolFee(4, 30000); // 30%
    }

    // Getters
    function getFeeRecipient() external view returns (address) {
        return feeRecipient;
    }

    function getSwapFeeData(
        address pool,
        address sender,
        address tokenIn,
        address tokenOut,
        bytes calldata data
    ) public view returns (FeeData memory) {
        uint16 poolType = IBasePoolMinimal(pool).poolType();

        FeeData memory feeData = poolSwapFeeData[pool][tokenIn];

        if (feeData.maxFee == 0) {
            // not set, use default fee of the pool type.
            feeData = defaultSwapFeeData[poolType];
        } else {
            // has a pool swap fee.
            if (feeData.minFee == ZERO_FEE_MAGIC_VALUE) {
                feeData.minFee = 0;
            }

            if (feeData.maxFee == ZERO_FEE_MAGIC_VALUE) {
                feeData.maxFee = 0;
            }
        }

        address _swapFeeHook = swapFeeHook;
        if (_swapFeeHook != address(0)) {
            try ISwapFeeHook(_swapFeeHook).getSwapFeeData(
                pool,
                sender,
                tokenIn,
                tokenOut,
                data,
                feeData
            ) returns (
                FeeData memory _feeData
            ) {
                return _feeData;
            } catch {
                // do not delegate if failed
            }
        }

        return feeData;
    }

    // v1 compatible interface
    function getSwapFee(
        address pool,
        address sender,
        address tokenIn,
        address tokenOut,
        bytes calldata data
    ) external view override returns (uint24 fee) {
        fee = getSwapFeeData(pool, sender, tokenIn, tokenOut, data).maxFee;
    }

    function getProtocolFee(address pool) external view override returns (uint24 fee) {
        fee = poolProtocolFee[pool];

        if (fee == 0) {
            // not set, use default fee of the pool type.
            fee = defaultProtocolFee[IBasePoolMinimal(pool).poolType()];
        } else {
            // has a pool protocol fee.
            if (fee == ZERO_FEE_MAGIC_VALUE) {
                fee = 0;
            }
        }
    }

    function getSwapFeeHook() external view returns (address) {
        return swapFeeHook;
    }

    // Setters
    function _setDefaultSwapFeeData(uint16 poolType, uint64 gamma, uint24 minFee, uint24 maxFee) private {
        require(minFee <= maxFee && maxFee <= MAX_SWAP_FEE, "Invalid fee");
        require(gamma <= 1e18, "Invalid fee gamma");
        defaultSwapFeeData[poolType] = FeeData(gamma, minFee, maxFee);

        emit SetDefaultSwapFeeData(poolType, gamma, minFee, maxFee);

        // emit compatible event
        emit SetDefaultSwapFee(poolType, maxFee);
    }

    function setDefaultSwapFeeData(uint16 poolType, uint64 gamma, uint24 minFee, uint24 maxFee) external onlyOwner {
        _setDefaultSwapFeeData(poolType, gamma, minFee, maxFee);
    }

    function setPoolSwapFeeData(address pool, address tokenIn, uint64 gamma, uint24 minFee, uint24 maxFee) external onlyOwner {
        require(minFee <= maxFee && (maxFee == ZERO_FEE_MAGIC_VALUE || maxFee <= MAX_SWAP_FEE), "Invalid fee");
        require(gamma <= 1e18, "Invalid fee gamma");
        poolSwapFeeData[pool][tokenIn] = FeeData(gamma, minFee, maxFee);
        
        emit SetPoolSwapFeeData(pool, tokenIn, gamma, minFee, maxFee);

        // emit compatible event
        address token0 = IBasePoolMinimal(pool).token0();
        address tokenOut = token0 == tokenIn ? IBasePoolMinimal(pool).token1() : token0;
        emit SetTokenSwapFee(tokenIn, tokenOut, maxFee);
    }

    function _setDefaultProtocolFee(uint16 poolType, uint24 fee) private {
        require(fee <= MAX_PROTOCOL_FEE, "Invalid fee");
        defaultProtocolFee[poolType] = fee;
        emit SetDefaultProtocolFee(poolType, fee);
    }

    function setDefaultProtocolFee(uint16 poolType, uint24 fee) external onlyOwner {
        _setDefaultProtocolFee(poolType, fee);
    }

    function setPoolProtocolFee(address pool, uint24 fee) external onlyOwner {
        require(fee <= MAX_PROTOCOL_FEE, "Invalid fee");
        poolProtocolFee[pool] = fee;
        emit SetPoolProtocolFee(pool, fee);
    }

    function setFeeRecipient(address _feeRecipient) external onlyOwner {
        emit SetFeeRecipient(feeRecipient, _feeRecipient);
        feeRecipient = _feeRecipient;
    }

    function setSwapFeeHook(address _swapFeeHook) external onlyOwner {
        emit SetSwapFeeHook(swapFeeHook, _swapFeeHook);
        swapFeeHook = _swapFeeHook;
    }
}