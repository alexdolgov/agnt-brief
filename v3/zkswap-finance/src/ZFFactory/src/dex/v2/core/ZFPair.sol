// SPDX-License-Identifier: GPL-3.0
pragma solidity =0.5.16;

import "./interfaces/IZFPair.sol";
import "./interfaces/IUniswapV2Callee.sol";
import "./ZFERC20.sol";
import "./libraries/Math.sol";
import "./libraries/UQ112x112.sol";
import "./interfaces/IERC20.sol";
import "./interfaces/IZFFactory.sol";
import "./libraries/SafeMath.sol";

contract ZFPair is IZFPair, ZFERC20 {
    using SafeMath for uint;
    using UQ112x112 for uint224;

    bytes4 private constant SELECTOR = bytes4(keccak256(bytes("transfer(address,uint256)")));

    uint private constant SWAP_FEE_POINT_PRECISION_SQ = 10000_0000;
    uint private constant SWAP_FEE_POINT_PRECISION = 10000;
    uint private constant PROTOCOL_FEE_POINT_PRECISION = 10000;
    uint private constant MINIMUM_LIQUIDITY = 10 ** 3;
    uint16 private constant SWAP_FEE_INHERIT = uint16(-1);
    uint16 private constant PROTOCOL_FEE_INHERIT = uint16(-1);

    address public factory;
    address public token0;
    address public token1;

    uint112 private reserve0; // uses single storage slot, accessible via getReserves
    uint112 private reserve1; // uses single storage slot, accessible via getReserves
    uint32 private blockTimestampLast; // uses single storage slot, accessible via getReserves

    uint public price0CumulativeLast;
    uint public price1CumulativeLast;
    uint public kLast; // reserve0 * reserve1, as of immediately after the most recent liquidity event

    uint16 public swapFeeOverride = SWAP_FEE_INHERIT;
    uint16 public protocolFeeOverride = PROTOCOL_FEE_INHERIT;

    uint private unlocked = 1;
    modifier lock() {
        require(unlocked == 1, "ZF: LOCKED");
        unlocked = 0;
        _;
        unlocked = 1;
    }


    event Mint(address indexed sender, uint amount0, uint amount1);
    event Burn(address indexed sender, uint amount0, uint amount1, address indexed to);
    event Swap(
        address indexed sender,
        uint amount0In,
        uint amount1In,
        uint amount0Out,
        uint amount1Out,
        address indexed to
    );
    event Sync(uint112 reserve0, uint112 reserve1);

    constructor() public {
        factory = msg.sender;
    }

    // called once by the factory at time of deployment
    function initialize(address _token0, address _token1) external {
        require(msg.sender == factory, "ZF: FORBIDDEN"); // sufficient check
        token0 = _token0;
        token1 = _token1;
    }

    function getReserves() public view returns (uint112 _reserve0, uint112 _reserve1, uint32 _blockTimestampLast) {
        _reserve0 = reserve0;
        _reserve1 = reserve1;
        _blockTimestampLast = blockTimestampLast;
    }

    function getReservesSimple() external view returns (uint112, uint112) {
        return (reserve0, reserve1);
    }

    function getSwapFee() public view returns (uint16) {
        uint16 _swapFeeOverride = swapFeeOverride;
        return _swapFeeOverride == SWAP_FEE_INHERIT ? IZFFactory(factory).swapFee() : _swapFeeOverride;
    }

    function getProtocolFee() public view returns (uint256) {
        uint16 _protocolFeeOverride = protocolFeeOverride;
        return _protocolFeeOverride == PROTOCOL_FEE_INHERIT ? IZFFactory(factory).protocolFee(): _protocolFeeOverride;
    }

    function getReservesAndParameters() external view returns (uint112 _reserve0, uint112 _reserve1, uint16 _swapFee) {
        _reserve0 = reserve0;
        _reserve1 = reserve1;
        _swapFee = getSwapFee();
    }

    function _getBalances(address _token0, address _token1) private view returns (uint, uint) {
        return (
            IERC20(_token0).balanceOf(address(this)),
            IERC20(_token1).balanceOf(address(this))
        );
    }

    function _safeTransfer(address token, address to, uint value) private {
        (bool success, bytes memory data) = token.call(abi.encodeWithSelector(SELECTOR, to, value));
        require(success && (data.length == 0 || abi.decode(data, (bool))), "ZF: TRANSFER_FAILED");
    }


    // update reserves and, on the first call per block, price accumulators
    function _update(uint balance0, uint balance1, uint112 _reserve0, uint112 _reserve1) private {
        require(balance0 <= uint112(-1) && balance1 <= uint112(-1), 'ZF: OVERFLOW');

        uint32 blockTimestamp = uint32(block.timestamp % 2 ** 32);
        uint32 timeElapsed = blockTimestamp - blockTimestampLast; // overflow is desired
        if (timeElapsed > 0 && _reserve0 != 0 && _reserve1 != 0) {
            // * never overflows, and + overflow is desired
            price0CumulativeLast += uint(UQ112x112.encode(_reserve1).uqdiv(_reserve0)) * timeElapsed;
            price1CumulativeLast += uint(UQ112x112.encode(_reserve0).uqdiv(_reserve1)) * timeElapsed;
        }
        reserve0 = uint112(balance0);
        reserve1 = uint112(balance1);
        blockTimestampLast = blockTimestamp;

        emit Sync(reserve0, reserve1);
    }

    function _getFeeLiquidity(uint _totalSupply, uint _rootK2, uint _rootK1) private view returns (uint) {
        uint256 _protocolFee = getProtocolFee();
        uint numerator = _totalSupply.mul(_rootK2.sub(_rootK1)).mul(_protocolFee);
        uint denominator = (PROTOCOL_FEE_POINT_PRECISION.sub(_protocolFee)).mul(_rootK2).add(_rootK1.mul(_protocolFee));
        return numerator / denominator;
    }

    function _mintFee(uint112 _reserve0, uint112 _reserve1) private returns (bool feeOn) {
        address _feeTo = IZFFactory(factory).feeTo();
        feeOn = _feeTo != address(0);
        uint _kLast = kLast;
        if (feeOn) {
            if (_kLast != 0) {
                uint rootK = Math.sqrt(uint(_reserve0).mul(_reserve1));
                uint rootKLast = Math.sqrt(_kLast);
                if (rootK > rootKLast) {
                    uint liquidity = _getFeeLiquidity(totalSupply, rootK, rootKLast);
                    if (liquidity > 0) _mint(_feeTo, liquidity);
                }
            }
        } else if (_kLast != 0) {
            kLast = 0;
        }

    }

    /// @dev this low-level function should be called from a contract which performs important safety checks
    function mint(address to) external lock returns (uint liquidity) {
        (uint112 _reserve0, uint112 _reserve1,) = getReserves();
        (uint balance0, uint balance1) = _getBalances(token0, token1);
        uint amount0 = balance0.sub(_reserve0);
        uint amount1 = balance1.sub(_reserve1);

        bool feeOn = _mintFee(_reserve0, _reserve1);
        uint _totalSupply = totalSupply; // gas savings, must be defined here since totalSupply can update in _mintFee
        if (_totalSupply == 0) {
            liquidity = Math.sqrt(amount0.mul(amount1)).sub(MINIMUM_LIQUIDITY);
            _mint(address(0), MINIMUM_LIQUIDITY); // permanently lock the first MINIMUM_LIQUIDITY tokens
        } else {
            liquidity = Math.min(amount0.mul(_totalSupply) / _reserve0, amount1.mul(_totalSupply) / _reserve1);
        }
        require(liquidity > 0, 'ZF: INSUFFICIENT_LIQUIDITY_MINTED');
        _mint(to, liquidity);

        _update(balance0, balance1, _reserve0, _reserve1);
        if (feeOn) kLast = uint(reserve0).mul(reserve1); // reserve0 and reserve1 are up-to-date

        emit Mint(msg.sender, amount0, amount1);
    }

    /// @dev this low-level function should be called from a contract which performs important safety checks
    function burn(address to) external lock returns (uint amount0, uint amount1) {
        (uint112 _reserve0, uint112 _reserve1, ) = getReserves(); // gas savings
        (address _token0, address _token1) = (token0, token1);
        (uint balance0, uint balance1) = _getBalances(_token0, _token1);        
        uint liquidity = balanceOf[address(this)];

        bool feeOn = _mintFee(_reserve0, _reserve1);

        uint _totalSupply = totalSupply; // gas savings, must be defined here since totalSupply can update in _mintFee

        // using balances ensures pro-rata distribution
        amount0 = liquidity.mul(balance0) / _totalSupply;
        amount1 = liquidity.mul(balance1) / _totalSupply;
        require(amount0 > 0 && amount1 > 0, 'ZF: INSUFFICIENT_LIQUIDITY_BURNED');

        _burn(address(this), liquidity);
        _safeTransfer(_token0, to, amount0);
        _safeTransfer(_token1, to, amount1);

        (balance0, balance1) = _getBalances(_token0, _token1);
        _update(balance0, balance1, _reserve0, _reserve1);

        if (feeOn) kLast = uint(reserve0).mul(reserve1); // reserve0 and reserve1 are up-to-date

        emit Burn(msg.sender, amount0, amount1, to);
    }

    /// @dev this low-level function should be called from a contract which performs important safety checks
    function swap(uint amount0Out, uint amount1Out, address to, bytes calldata data) external lock {
        require(amount0Out > 0 || amount1Out > 0, 'ZF: INSUFFICIENT_OUTPUT_AMOUNT');
        (uint112 _reserve0, uint112 _reserve1,) = getReserves();
        require(amount0Out < _reserve0 && amount1Out < _reserve1, 'ZF: INSUFFICIENT_LIQUIDITY');

        uint balance0;
        uint balance1;
        {
            // scope for _token{0,1}, avoids stack too deep errors
            (address _token0, address _token1) = (token0, token1);

            require(to != _token0 && to != _token1, "ZF: INVALID_TO");

            if (amount0Out > 0) _safeTransfer(_token0, to, amount0Out); // optimistically transfer tokens
            if (amount1Out > 0) _safeTransfer(_token1, to, amount1Out); // optimistically transfer tokens
            if (data.length > 0) IUniswapV2Callee(to).uniswapV2Call(msg.sender, amount0Out, amount1Out, data);

            (balance0, balance1) = _getBalances(_token0, _token1);
        }

        // At least one input is required.
        uint amount0In = balance0 > _reserve0 - amount0Out ? balance0 - (_reserve0 - amount0Out) : 0;
        uint amount1In = balance1 > _reserve1 - amount1Out ? balance1 - (_reserve1 - amount1Out) : 0;
        require(amount0In > 0 || amount1In > 0, 'ZF: INSUFFICIENT_INPUT_AMOUNT');

        {
        // Checks the K.
            uint16 _swapFee = getSwapFee();
            uint balance0Adjusted = (balance0.mul(SWAP_FEE_POINT_PRECISION).sub(amount0In.mul(_swapFee)));
            uint balance1Adjusted = (balance1.mul(SWAP_FEE_POINT_PRECISION).sub(amount1In.mul(_swapFee)));

            require(balance0Adjusted.mul(balance1Adjusted) >= uint(_reserve0).mul(_reserve1).mul(SWAP_FEE_POINT_PRECISION_SQ), 'ZF: K');
        }

        _update(balance0, balance1, _reserve0, _reserve1);
        emit Swap(msg.sender, amount0In, amount1In, amount0Out, amount1Out, to);
    }

    /**
     * @dev Force balances to match reserves, taking out positive balances
     */
    function skim(address to) external lock {
        address _token0 = token0;
        address _token1 = token1;
        (uint balance0, uint balance1) = _getBalances(_token0, _token1);
        _safeTransfer(_token0, to, balance0.sub(reserve0));
        _safeTransfer(_token1, to, balance1.sub(reserve1));
    }

    /**
     * @dev Force reserves to match balances
     */
    function sync() external lock {
        (uint balance0, uint balance1) = _getBalances(token0, token1);
        _update(balance0, balance1, reserve0, reserve1);
    }


    /// @dev called by the factory to set the swapFeeOverride
    function setSwapFeeOverride(uint16 _swapFeeOverride) external {
        require(msg.sender == factory, 'ZF: FORBIDDEN');
        require(_swapFeeOverride <= 1000 || _swapFeeOverride == SWAP_FEE_INHERIT, 'INVALID_FEE'); //max 10%
        swapFeeOverride = _swapFeeOverride;
    }

    /// @dev Called by factory to set pair-specific protocol fee
    function setProtocolFeeOverride(uint16 _protocolFee) external {
        require(msg.sender == factory, 'ZF: FORBIDDEN');
        require(_protocolFee <= PROTOCOL_FEE_POINT_PRECISION, "INVALID PROTOCOL_FEE"); // max 100%
        protocolFeeOverride = _protocolFee;
    }
}