// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.0;

import "./interfaces/IDiamondSwapV2Pair.sol";
import "./libraries/Math.sol";
import "./libraries/UQ112x112.sol";
import "./interfaces/IDiamondSwapV2Callee.sol";

import { IDiamondSwapV2Factory } from "./factory/interfaces/IDiamondSwapV2Factory.sol";

contract DiamondSwapV2Pair is IDiamondSwapV2Pair {
    using UQ112x112 for uint224;

    uint256 public constant MINIMUM_LIQUIDITY = 10 ** 3;
    bytes4 private constant TRANSFER_SELECTOR = bytes4(keccak256(bytes("transfer(address,uint256)")));
    bytes4 private constant BALANCEOF_SELECTOR = bytes4(keccak256(bytes("balanceOf(address)")));
    bytes32 private constant EIP712_TYPE_HASH =
        keccak256("Permit(address owner,address spender,uint256 value,uint256 nonce,uint256 deadline)");

    address public immutable factory;
    address public token0;
    address public token1;

    uint112 private reserve0; // uses single storage slot, accessible via getReserves
    uint112 private reserve1; // uses single storage slot, accessible via getReserves
    uint32 private blockTimestampLast; // uses single storage slot, accessible via getReserves

    uint256 public price0CumulativeLast;
    uint256 public price1CumulativeLast;
    uint256 public kLast; // reserve0 * reserve1, as of immediately after the most recent liquidity event

    string public name;
    string public symbol;
    uint8 public immutable decimals;

    uint256 public totalSupply;
    mapping(address => uint256) public balanceOf;
    mapping(address => mapping(address => uint256)) public allowance;

    uint256 private immutable INITIAL_CHAIN_ID;
    bytes32 private immutable INITIAL_DOMAIN_SEPARATOR;
    mapping(address => uint256) public nonces;

    uint256 private unlocked = 1;

    modifier lock() {
        if (unlocked == 0) {
            revert NonReentrant();
        }

        unlocked = 0;
        _;
        unlocked = 1;
    }

    constructor() {
        name = "DiamondSwap LP";
        decimals = 18;

        INITIAL_CHAIN_ID = block.chainid;
        INITIAL_DOMAIN_SEPARATOR = computeDomainSeparator();

        factory = msg.sender;
    }

    // called once by the factory at time of deployment
    function initialize(address _token0, address _token1, string memory _symbol) external {
        if (msg.sender != factory) {
            revert Unauthorized();
        }

        token0 = _token0;
        token1 = _token1;
        symbol = _symbol;
    }

    function approve(address spender, uint256 amount) public override returns (bool) {
        allowance[msg.sender][spender] = amount;
        emit Approval(msg.sender, spender, amount);
        return true;
    }

    function transfer(address to, uint256 amount) public override returns (bool) {
        balanceOf[msg.sender] -= amount;

        // Cannot overflow because the sum of all user
        // balances can't exceed the max uint256 value.
        unchecked {
            balanceOf[to] += amount;
        }

        emit Transfer(msg.sender, to, amount);
        return true;
    }

    function transferFrom(address from, address to, uint256 amount) public override returns (bool) {
        uint256 allowed = allowance[from][msg.sender]; // Saves gas for limited approvals.

        if (allowed != type(uint256).max) {
            allowance[from][msg.sender] = allowed - amount;
        }

        balanceOf[from] -= amount;

        // Cannot overflow because the sum of all user
        // balances can't exceed the max uint256 value.
        unchecked {
            balanceOf[to] += amount;
        }

        emit Transfer(from, to, amount);
        return true;
    }

    function permit(address owner, address spender, uint256 value, uint256 deadline, uint8 v, bytes32 r, bytes32 s)
        public
        override
    {
        if (deadline < block.timestamp) {
            revert ERC20Permit__ExpiredDeadline();
        }

        // Unchecked because the only math done is incrementing
        // the owner's nonce which cannot realistically overflow.
        unchecked {
            address recoveredAddress = ecrecover(
                keccak256(
                    abi.encodePacked(
                        "\x19\x01",
                        DOMAIN_SEPARATOR(),
                        keccak256(abi.encode(EIP712_TYPE_HASH, owner, spender, value, nonces[owner]++, deadline))
                    )
                ),
                v,
                r,
                s
            );

            if (recoveredAddress == address(0) || recoveredAddress != owner) {
                revert ERC20Permit__InvalidSignature();
            }

            allowance[recoveredAddress][spender] = value;
        }

        emit Approval(owner, spender, value);
    }

    function DOMAIN_SEPARATOR() public view override returns (bytes32) {
        return block.chainid == INITIAL_CHAIN_ID ? INITIAL_DOMAIN_SEPARATOR : computeDomainSeparator();
    }

    function getReserves()
        public
        view
        override
        returns (uint112 _reserve0, uint112 _reserve1, uint32 _blockTimestampLast)
    {
        _reserve0 = reserve0;
        _reserve1 = reserve1;
        _blockTimestampLast = blockTimestampLast;
    }

    // this low-level function should be called from a contract which performs important safety checks
    function mint(address to) external override lock returns (uint256 liquidity) {
        (uint112 _reserve0, uint112 _reserve1,) = getReserves(); // gas savings
        uint256 _balance0 = balance0();
        uint256 _balance1 = balance1();
        uint256 amount0 = _balance0 - _reserve0;
        uint256 amount1 = _balance1 - _reserve1;

        bool feeOn = _mintFee(_reserve0, _reserve1);
        uint256 _totalSupply = totalSupply; // gas savings, must be defined here since totalSupply can update in _mintFee
        if (_totalSupply == 0) {
            liquidity = Math.sqrt(amount0 * amount1) - MINIMUM_LIQUIDITY;
            _mint(address(0), MINIMUM_LIQUIDITY); // permanently lock the first MINIMUM_LIQUIDITY tokens
        } else {
            liquidity = Math.min((amount0 * _totalSupply) / _reserve0, (amount1 * _totalSupply) / _reserve1);
        }

        if (liquidity == 0) {
            revert ZeroLiquidityMinted();
        }

        _mint(to, liquidity);
        _update(_balance0, _balance1, _reserve0, _reserve1);

        if (feeOn) {
            kLast = uint256(reserve0) * reserve1; // reserve0 and reserve1 are up-to-date
        }

        emit Mint(msg.sender, amount0, amount1);
    }

    // this low-level function should be called from a contract which performs important safety checks
    function burn(address to) external override lock returns (uint256 amount0, uint256 amount1) {
        (uint112 _reserve0, uint112 _reserve1,) = getReserves(); // gas savings
        address _token0 = token0; // gas savings
        address _token1 = token1; // gas savings
        uint256 _balance0 = balance0();
        uint256 _balance1 = balance1();
        uint256 liquidity = balanceOf[address(this)];

        bool feeOn = _mintFee(_reserve0, _reserve1);
        uint256 _totalSupply = totalSupply; // gas savings, must be defined here since totalSupply can update in _mintFee

        if (_totalSupply == 0) {
            revert ZeroTotalSupply();
        }

        amount0 = (liquidity * _balance0) / _totalSupply; // using balances ensures pro-rata distribution
        amount1 = (liquidity * _balance1) / _totalSupply; // using balances ensures pro-rata distribution

        if (amount0 == 0 || amount1 == 0) {
            revert ZeroLiquidityBurned();
        }

        _burn(address(this), liquidity);

        _safeTransfer(_token0, to, amount0);
        _safeTransfer(_token1, to, amount1);

        _balance0 = balance0();
        _balance1 = balance1();

        _update(_balance0, _balance1, _reserve0, _reserve1);

        if (feeOn) {
            kLast = uint256(reserve0) * reserve1; // reserve0 and reserve1 are up-to-date
        }

        emit Burn(msg.sender, amount0, amount1, to);
    }

    // this low-level function should be called from a contract which performs important safety checks
    function swap(uint256 amount0Out, uint256 amount1Out, address to, bytes calldata data) external override lock {
        if (amount0Out == 0 && amount1Out == 0) {
            revert InsufficientOutputAmount();
        }

        (uint112 _reserve0, uint112 _reserve1,) = getReserves(); // gas savings

        if (amount0Out >= _reserve0 || amount1Out >= _reserve1) {
            revert InsufficientLiquidity();
        }

        uint256 _balance0;
        uint256 _balance1;
        {
            // scope for _token{0,1}, avoids stack too deep errors
            address _token0 = token0;
            address _token1 = token1;

            if (to == _token0 || to == _token1) {
                revert InvalidReceiver();
            }

            if (amount0Out > 0) _safeTransfer(_token0, to, amount0Out); // optimistically transfer tokens
            if (amount1Out > 0) _safeTransfer(_token1, to, amount1Out); // optimistically transfer tokens
            if (data.length > 0) IDiamondSwapV2Callee(to).uniswapV2Call(msg.sender, amount0Out, amount1Out, data);

            _balance0 = balance0();
            _balance1 = balance1();
        }

        uint256 amount0In = _balance0 > _reserve0 - amount0Out ? _balance0 - (_reserve0 - amount0Out) : 0;
        uint256 amount1In = _balance1 > _reserve1 - amount1Out ? _balance1 - (_reserve1 - amount1Out) : 0;

        if (amount0In == 0 && amount1In == 0) {
            revert InsufficientInputAmount();
        }

        {
            // scope for reserve{0,1}Adjusted, avoids stack too deep errors
            uint32 _swapFee = swapFee();
            uint256 balance0Adjusted = (_balance0 * 10_000) - (amount0In * _swapFee);
            uint256 balance1Adjusted = (_balance1 * 10_000) - (amount1In * _swapFee);

            if (balance0Adjusted * balance1Adjusted < uint256(_reserve0) * (uint256(_reserve1) * 10_000 ** 2)) {
                revert UnexpectedReserves();
            }
        }

        _update(_balance0, _balance1, _reserve0, _reserve1);

        emit Swap(msg.sender, amount0In, amount1In, amount0Out, amount1Out, to);
    }

    // force balances to match reserves
    function skim(address to) external override lock {
        address _token0 = token0; // gas savings
        address _token1 = token1; // gas savings
        _safeTransfer(_token0, to, balance0() - reserve0);
        _safeTransfer(_token1, to, balance1() - reserve1);
    }

    // force reserves to match balances
    function sync() external override lock {
        uint256 _balance0 = balance0();
        uint256 _balance1 = balance1();
        if (_balance0 == 0 || _balance1 == 0) {
            revert ZeroBalance();
        }
        _update(_balance0, _balance1, reserve0, reserve1);
    }

    function swapFee() public view override returns (uint32) {
        IDiamondSwapV2Factory _factory = IDiamondSwapV2Factory(factory);
        return _factory.swapFee();
    }

    // gas optimized balanceOf -- avoids a redundant extcodesize check in addition to the returndatasize
    function balance0() private view returns (uint256) {
        (bool success, bytes memory data) = token0.staticcall(abi.encodeWithSelector(BALANCEOF_SELECTOR, address(this)));
        if (!success || data.length < 32) {
            revert UnexpectedResponse();
        }
        return abi.decode(data, (uint256));
    }

    // gas optimized balanceOf -- avoids a redundant extcodesize check in addition to the returndatasize
    function balance1() private view returns (uint256) {
        (bool success, bytes memory data) = token1.staticcall(abi.encodeWithSelector(BALANCEOF_SELECTOR, address(this)));
        if (!success || data.length < 32) {
            revert UnexpectedResponse();
        }
        return abi.decode(data, (uint256));
    }

    function _mint(address to, uint256 amount) private {
        totalSupply += amount;

        // Cannot overflow because the sum of all user
        // balances can't exceed the max uint256 value.
        unchecked {
            balanceOf[to] += amount;
        }

        emit Transfer(address(0), to, amount);
    }

    function _burn(address from, uint256 amount) private {
        balanceOf[from] -= amount;

        // Cannot underflow because a user's balance
        // will never be larger than the total supply.
        unchecked {
            totalSupply -= amount;
        }

        emit Transfer(from, address(0), amount);
    }

    function computeDomainSeparator() private view returns (bytes32) {
        return keccak256(
            abi.encode(
                keccak256("EIP712Domain(string name,string version,uint256 chainId,address verifyingContract)"),
                keccak256(bytes(name)),
                keccak256(bytes("1")),
                block.chainid,
                address(this)
            )
        );
    }

    function _safeTransfer(address token, address to, uint256 value) private {
        (bool success, bytes memory data) = token.call(abi.encodeWithSelector(TRANSFER_SELECTOR, to, value));
        if (!success || (data.length != 0 && !abi.decode(data, (bool)))) {
            revert TransferFailed();
        }
    }

    // update reserves and, on the first call per block, price accumulators
    function _update(uint256 _balance0, uint256 _balance1, uint112 _reserve0, uint112 _reserve1) private {
        if (_balance0 > type(uint112).max || _balance1 > type(uint112).max) {
            revert BalanceOverflow();
        }

        unchecked {
            uint32 blockTimestamp = uint32(block.timestamp % 2 ** 32);
            uint32 timeElapsed = blockTimestamp - blockTimestampLast; // overflow is desired
            if (timeElapsed > 0 && _reserve0 != 0 && _reserve1 != 0) {
                // * never overflows, and + overflow is desired
                price0CumulativeLast += uint256(UQ112x112.encode(_reserve1).uqdiv(_reserve0)) * timeElapsed;
                price1CumulativeLast += uint256(UQ112x112.encode(_reserve0).uqdiv(_reserve1)) * timeElapsed;
            }
            reserve0 = uint112(_balance0);
            reserve1 = uint112(_balance1);
            blockTimestampLast = blockTimestamp;
        }

        emit Sync(reserve0, reserve1);
    }

    // if fee is on, mint liquidity equivalent to 8/25th of the growth in sqrt(k)
    function _mintFee(uint112 _reserve0, uint112 _reserve1) private returns (bool feeOn) {
        IDiamondSwapV2Factory _factory = IDiamondSwapV2Factory(factory);
        feeOn = _factory.feesEnabled();
        uint256 _kLast = kLast; // gas savings
        if (feeOn) {
            if (_kLast != 0) {
                uint256 rootK = Math.sqrt(uint256(_reserve0) * _reserve1);
                uint256 rootKLast = Math.sqrt(_kLast);
                if (rootK > rootKLast) {
                    uint256 numerator = totalSupply * (rootK - rootKLast) * 8;
                    uint256 denominator = rootK * 17 + (rootKLast * 8);
                    uint256 liquidity = numerator / denominator;
                    if (liquidity > 0) {
                        _mint(_factory.feeTo(), liquidity);
                    }
                }
            }
        } else if (_kLast != 0) {
            kLast = 0;
        }
    }
}
