/**
 *Submitted for verification at BscScan.com on 2021-04-23
*/

/**
 *Submitted for verification at BscScan.com on 2021-04-22
*/

/**
 *Submitted for verification at BscScan.com on 2021-04-22
*/

/**
 *Submitted for verification at BscScan.com on 2020-09-19
*/

pragma solidity ^0.8.24;

import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";

interface IPancakeFactory {
    event PairCreated(address indexed token0, address indexed token1, address pair, uint);

    function feeTo() external view returns (address);
    function feeToSetter() external view returns (address);

    function getPair(address tokenA, address tokenB) external view returns (address pair);
    function allPairs(uint) external view returns (address pair);
    function allPairsLength() external view returns (uint);

    function createPair(address tokenA, address tokenB) external returns (address pair);

    function setFeeTo(address) external;
    function setFeeToSetter(address) external;
}

interface IGigglePair {
    // Pair-specific functions only (ERC20 functions provided by GiggleERC20)
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

    function MINIMUM_LIQUIDITY() external pure returns (uint);
    function factory() external view returns (address);
    function token0() external view returns (address);
    function token1() external view returns (address);
    function getReserves() external view returns (uint112 reserve0, uint112 reserve1, uint32 blockTimestampLast);
    function price0CumulativeLast() external view returns (uint);
    function price1CumulativeLast() external view returns (uint);
    function kLast() external view returns (uint);

    function mint(address to) external returns (uint liquidity);
    function burn(address to) external returns (uint amount0, uint amount1);
    function swap(uint amount0Out, uint amount1Out, address to, bytes calldata data) external;
    function skim(address to) external;
    function sync() external;

    function initialize(address, address) external;
}

interface IPancakeERC20 {
    event Approval(address indexed owner, address indexed spender, uint value);
    event Transfer(address indexed from, address indexed to, uint value);

    function name() external pure returns (string memory);
    function symbol() external pure returns (string memory);
    function decimals() external pure returns (uint8);
    function totalSupply() external view returns (uint);
    function balanceOf(address owner) external view returns (uint);
    function allowance(address owner, address spender) external view returns (uint);

    function approve(address spender, uint value) external returns (bool);
    function transfer(address to, uint value) external returns (bool);
    function transferFrom(address from, address to, uint value) external returns (bool);

    function DOMAIN_SEPARATOR() external view returns (bytes32);
    function PERMIT_TYPEHASH() external pure returns (bytes32);
    function nonces(address owner) external view returns (uint);

    function permit(address owner, address spender, uint value, uint deadline, uint8 v, bytes32 r, bytes32 s) external;
}

// a library for performing overflow-safe math, courtesy of DappHub (https://github.com/dapphub/ds-math)
library SafeMath {
    function add(uint x, uint y) internal pure returns (uint z) {
        require((z = x + y) >= x);
    }

    function sub(uint x, uint y) internal pure returns (uint z) {
        require((z = x - y) <= x);
    }

    function mul(uint x, uint y) internal pure returns (uint z) {
        require(y == 0 || (z = x * y) / y == x);
    }
}

contract GiggleERC20 is IPancakeERC20 {
    using SafeMath for uint;

    string public constant name = 'GiggleLP';
    string public constant symbol = 'GiggleLP';
    uint8 public constant decimals = 18;
    uint  public totalSupply;
    mapping(address => uint) public balanceOf;
    mapping(address => mapping(address => uint)) public allowance;

    bytes32 public DOMAIN_SEPARATOR;
    // keccak256("Permit(address owner,address spender,uint256 value,uint256 nonce,uint256 deadline)");
    bytes32 public constant PERMIT_TYPEHASH = 0x6e71edae12b1b97f4d1f60370fef10105fa2faae0126114a169c64845d6126c9;
    mapping(address => uint) public nonces;

    constructor() public {
        DOMAIN_SEPARATOR = keccak256(
            abi.encode(
                keccak256('EIP712Domain(string name,string version,uint256 chainId,address verifyingContract)'),
                keccak256(bytes(name)),
                keccak256(bytes('1')),
                block.chainid,
                address(this)
            )
        );
    }

    function _mint(address to, uint value) internal {
        totalSupply = totalSupply.add(value);
        balanceOf[to] = balanceOf[to].add(value);
        emit Transfer(address(0), to, value);
    }

    function _burn(address from, uint value) internal {
        balanceOf[from] = balanceOf[from].sub(value);
        totalSupply = totalSupply.sub(value);
        emit Transfer(from, address(0), value);
    }

    function _approve(address owner, address spender, uint value) private {
        allowance[owner][spender] = value;
        emit Approval(owner, spender, value);
    }

    function _transfer(address from, address to, uint value) private {
        balanceOf[from] = balanceOf[from].sub(value);
        balanceOf[to] = balanceOf[to].add(value);
        emit Transfer(from, to, value);
    }

    function approve(address spender, uint value) external override returns (bool) {
        _approve(msg.sender, spender, value);
        return true;
    }

    function transfer(address to, uint value) external override returns (bool) {
        _transfer(msg.sender, to, value);
        return true;
    }

    function transferFrom(address from, address to, uint value) external override returns (bool) {
        if (allowance[from][msg.sender] != type(uint256).max) {
            allowance[from][msg.sender] = allowance[from][msg.sender].sub(value);
        }
        _transfer(from, to, value);
        return true;
    }

    function permit(address owner, address spender, uint value, uint deadline, uint8 v, bytes32 r, bytes32 s) external {
        require(deadline >= block.timestamp);
        bytes32 digest = keccak256(
            abi.encodePacked(
                '\x19\x01',
                DOMAIN_SEPARATOR,
                keccak256(abi.encode(PERMIT_TYPEHASH, owner, spender, value, nonces[owner]++, deadline))
            )
        );
        address recoveredAddress = ecrecover(digest, v, r, s);
        require(recoveredAddress != address(0) && recoveredAddress == owner);
        _approve(owner, spender, value);
    }
}

// a library for performing various math operations
library Math {
    function min(uint x, uint y) internal pure returns (uint z) {
        z = x < y ? x : y;
    }

    // babylonian method (https://en.wikipedia.org/wiki/Methods_of_computing_square_roots#Babylonian_method)
    function sqrt(uint y) internal pure returns (uint z) {
        if (y > 3) {
            z = y;
            uint x = y / 2 + 1;
            while (x < z) {
                z = x;
                x = (y / x + x) / 2;
            }
        } else if (y != 0) {
            z = 1;
        }
    }
}

// a library for handling binary fixed point numbers (https://en.wikipedia.org/wiki/Q_(number_format))
// range: [0, 2**112 - 1]
// resolution: 1 / 2**112
library UQ112x112 {
    uint224 constant Q112 = 2**112;

    // encode a uint112 as a UQ112x112
    function encode(uint112 y) internal pure returns (uint224 z) {
        z = uint224(y) * Q112; // never overflows
    }

    // divide a UQ112x112 by a uint112, returning a UQ112x112
    function uqdiv(uint224 x, uint112 y) internal pure returns (uint224 z) {
        z = x / uint224(y);
    }
}

interface IERC20 {
    function name() external view returns (string memory);
    function symbol() external view returns (string memory);
    function decimals() external view returns (uint8);
    function totalSupply() external view returns (uint);
    function balanceOf(address owner) external view returns (uint);
    function allowance(address owner, address spender) external view returns (uint);

    function approve(address spender, uint value) external returns (bool);
    function transfer(address to, uint value) external returns (bool);
    function transferFrom(address from, address to, uint value) external returns (bool);
}

interface IPancakeRouterLike {
    function swapExactTokensForTokensSupportingFeeOnTransferTokens(
        uint amountIn,
        uint amountOutMin,
        address[] calldata path,
        address to,
        uint deadline
    ) external;
}

interface IMemeTokenControllerLike {
    function internalController() external view returns (address);
}

interface IPancakeCallee {
    function pancakeCall(address sender, uint amount0, uint amount1, bytes calldata data) external;
}

contract GigglePair is IGigglePair, GiggleERC20 {
    using SafeMath  for uint;
    using UQ112x112 for uint224;

    uint public constant MINIMUM_LIQUIDITY = 10**3;
    bytes4 private constant SELECTOR = bytes4(keccak256(bytes('transfer(address,uint256)')));

    address public factory;
    address public token0;
    address public token1;

    uint112 private reserve0;           // uses single storage slot, accessible via getReserves
    uint112 private reserve1;           // uses single storage slot, accessible via getReserves
    uint32  private blockTimestampLast; // uses single storage slot, accessible via getReserves

    uint public price0CumulativeLast;
    uint public price1CumulativeLast;
    uint public kLast; // reserve0 * reserve1, as of immediately after the most recent liquidity event

    // ===== Virtual reserve pricing (internal market) =====
    // When enabled, swap pricing uses (reserve + virtualReserve), similar to pump.fun-style
    // virtual liquidity. Real balances still bound actual output amounts.
    uint112 public virtualReserve0;
    uint112 public virtualReserve1;
    bool public virtualEnabled;

    // ===== Sale control (internal market) =====
    // Optional: configure a (saleToken, baseToken) pair and a base-raise target.
    // When base balance in the pool reaches `saleTargetBase`, we:
    // - disable virtual pricing (virtual reserves -> 0)
    // - permanently disable selling `saleToken` for `saleBaseToken`
    address public saleToken;
    address public saleBaseToken;
    uint public saleTargetBase;
    uint public saleRemain;
    bool public sellDisabled;

    // Optional restriction: if set, only this router can call mint/burn/swap.
    address public internalRouter;

    // Restricted mode: only the router can mutate state, and swap callbacks are disabled.
    bool public restricted;

    // If closed, swaps are disabled (burn still allowed for migration).
    bool public closed;

    uint private unlocked = 1;
    modifier lock() {
        require(unlocked == 1);
        unlocked = 0;
        _;
        unlocked = 1;
    }

    modifier onlyRouterIfSet() {
        if (internalRouter != address(0)) {
            require(msg.sender == internalRouter);
        }
        _;
    }

    modifier notClosed() {
        require(!closed);
        _;
    }

    function _requireAuthorizedCaller() private view {
        // Restricted mode: only router or the token contracts themselves.
        // This blocks EOAs and arbitrary third-party contracts from invoking pair functions.
        if (msg.sender == token0 || msg.sender == token1) {
            return;
        }
        require(internalRouter != address(0) && msg.sender == internalRouter);
    }

    function getReserves() public view returns (uint112 _reserve0, uint112 _reserve1, uint32 _blockTimestampLast) {
        _reserve0 = reserve0;
        _reserve1 = reserve1;
        _blockTimestampLast = blockTimestampLast;
    }

    function _safeTransfer(address token, address to, uint value) private {
        (bool success, bytes memory data) = token.call(abi.encodeWithSelector(SELECTOR, to, value));
        require(success && (data.length == 0 || abi.decode(data, (bool))));
    }

    event VirtualReservesSet(uint112 v0, uint112 v1);
    event InternalRouterSet(address indexed router);
    event RestrictedSet(bool restricted);
    event Closed(bool closed);

    event SaleConfigured(address indexed saleToken, address indexed baseToken, uint saleTargetBase);
    event SellDisabledPermanently(uint baseBalance, uint target);

    event Bootstrapped(address indexed to, uint amount0, uint amount1, uint liquidity);

    constructor() public {
        factory = msg.sender;
    }

    // called once by the factory at time of deployment
    function initialize(address _token0, address _token1) external {
        require(msg.sender == factory, 'Pancake: FORBIDDEN'); // sufficient check
        token0 = _token0;
        token1 = _token1;
    }

    // ===== Virtual pricing configuration =====
    // called by the factory after deployment for internal-market pairs
    function setVirtualReserves(uint112 v0, uint112 v1) external {
        require(msg.sender == factory, 'Pancake: FORBIDDEN');
        virtualReserve0 = v0;
        virtualReserve1 = v1;
        // Allow reconfiguration/disable during lifecycle.
        // v0=v1=0 => disable virtual pricing and behave like standard V2.
        virtualEnabled = (v0 != 0 || v1 != 0);
        emit VirtualReservesSet(v0, v1);
    }

    function setInternalRouter(address r) external {
        require(msg.sender == factory, 'Pancake: FORBIDDEN');
        require(internalRouter == address(0), 'Pancake: ROUTER_ALREADY_SET');
        internalRouter = r;
        emit InternalRouterSet(r);
    }

    function setRestricted(bool r) external {
        require(msg.sender == factory, 'Pancake: FORBIDDEN');
        restricted = r;
        emit RestrictedSet(r);
    }

    function setClosed(bool c) external {
        require(msg.sender == factory, 'Pancake: FORBIDDEN');
        closed = c;
        emit Closed(c);
    }

    function getVirtualReserves() external view returns (uint112 v0, uint112 v1, bool enabled) {
        return (virtualReserve0, virtualReserve1, virtualEnabled);
    }

    // Configure sale rules (optional). Only the factory can set this.
    function setSaleConfig(address _saleToken, address _baseToken, uint _saleTargetBase) external {
        require(msg.sender == factory, 'Pancake: FORBIDDEN');
        require(_saleToken != address(0) && _baseToken != address(0), 'Pancake: ZERO_ADDRESS');
        require(_saleToken != _baseToken, 'Pancake: IDENTICAL_ADDRESSES');
        require(_saleTargetBase > 0, 'Pancake: TARGET_ZERO');
        saleToken = _saleToken;
        saleBaseToken = _baseToken;
        saleTargetBase = _saleTargetBase;
        emit SaleConfigured(_saleToken, _baseToken, _saleTargetBase);
    }

    function setSaleConfigWithRemain(
        address _saleToken,
        address _baseToken,
        uint _saleTargetBase,
        uint _saleRemain
    ) external {
        require(msg.sender == factory, 'Pancake: FORBIDDEN');
        require(_saleToken != address(0) && _baseToken != address(0), 'Pancake: ZERO_ADDRESS');
        require(_saleToken != _baseToken, 'Pancake: IDENTICAL_ADDRESSES');
        require(_saleTargetBase > 0, 'Pancake: TARGET_ZERO');
        require(_saleRemain > 0, 'Pancake: REMAIN_ZERO');
        saleToken = _saleToken;
        saleBaseToken = _baseToken;
        saleTargetBase = _saleTargetBase;
        saleRemain = _saleRemain;
        emit SaleConfigured(_saleToken, _baseToken, _saleTargetBase);
    }

    function _maybeDisableSellAndVirtual() private {
        if (sellDisabled) return;
        if (saleToken == address(0) || saleBaseToken == address(0) || saleTargetBase == 0) return;

        uint baseBal = IERC20(saleBaseToken).balanceOf(address(this));
        // Allow 0.5% headroom to tolerate swap fees.
        uint targetWithTolerance = saleTargetBase.add(saleTargetBase / 200);
        if (baseBal < targetWithTolerance) {
            _maybeUpdateVirtualReserves();
            return;
        }

        // Permanently disable selling once the raise target is met.
        // NOTE: virtual reserves remain enabled; do NOT close them here.
        sellDisabled = true;

        emit SellDisabledPermanently(baseBal, saleTargetBase);

        // Auto launch (optional): notify launch router via token internalController.
        address controller = IMemeTokenControllerLike(saleToken).internalController();
        if (controller != address(0)) {
            (bool ok,) = controller.call(abi.encodeWithSignature('autoLaunchIfReady()'));
            ok;
        }
    }

    function _maybeUpdateVirtualReserves() private {
        if (!virtualEnabled || saleRemain == 0) return;

        // Use actual balances (not cached reserves) to keep curve aligned with pool state.
        uint baseBal = IERC20(saleBaseToken).balanceOf(address(this));
        uint saleBal = IERC20(saleToken).balanceOf(address(this));

        bool saleIs0 = saleToken == token0;
        uint base0 = baseBal;
        uint sale0 = saleBal;
        if (base0 >= saleTargetBase || sale0 <= saleRemain) return;

        uint vBaseMax = saleIs0 ? uint(virtualReserve1) : uint(virtualReserve0);
        uint vBase = vBaseMax;
        if (saleTargetBase > base0) {
            uint cap = saleTargetBase - base0;
            if (cap < vBase) vBase = cap;
        }
        uint numerator = (base0.add(vBase)).mul(sale0);
        uint subtrahend = (saleTargetBase.add(vBase)).mul(saleRemain);
        if (numerator <= subtrahend) return;

        uint vSale = (numerator.sub(subtrahend)) / (saleTargetBase.sub(base0));
        if (vSale == 0) vSale = 1;
        if (vSale > uint(type(uint112).max)) vSale = uint(type(uint112).max);

        if (saleIs0) {
            virtualReserve0 = uint112(vSale);
            virtualReserve1 = uint112(vBase);
        } else {
            virtualReserve0 = uint112(vBase);
            virtualReserve1 = uint112(vSale);
        }
        virtualEnabled = true;
        emit VirtualReservesSet(virtualReserve0, virtualReserve1);
    }

    /// @notice Factory-only: initial LP mint that supports single-sided seeding when virtual pricing is enabled.
    /// This is intended for internal-market bootstrapping (e.g., deposit 70% token inventory, 0 base).
    /// After calling this once, reserves are updated to current balances.
    function bootstrapMint(address to) external lock returns (uint liquidity) {
        require(msg.sender == factory);
        (uint112 _reserve0, uint112 _reserve1,) = getReserves();
        uint balance0 = IERC20(token0).balanceOf(address(this));
        uint balance1 = IERC20(token1).balanceOf(address(this));
        uint amount0 = balance0.sub(_reserve0);
        uint amount1 = balance1.sub(_reserve1);

        bool feeOn = _mintFee(_reserve0, _reserve1);
        uint _totalSupply = totalSupply;
        require(_totalSupply == 0);

        if (amount0 == 0 || amount1 == 0) {
            // single-sided bootstrap: mint LP proportional to the non-zero side
            require(virtualEnabled);
            uint amt = amount0 > 0 ? amount0 : amount1;
            liquidity = amt.sub(MINIMUM_LIQUIDITY);
            _mint(address(0), MINIMUM_LIQUIDITY);
        } else {
            liquidity = Math.sqrt(amount0.mul(amount1)).sub(MINIMUM_LIQUIDITY);
            _mint(address(0), MINIMUM_LIQUIDITY);
        }

        require(liquidity > 0);
        _mint(to, liquidity);

        _update(balance0, balance1, _reserve0, _reserve1);

        // If base token balance reached the target during bootstrap (rare but possible),
        // ensure the state transitions (disable selling + disable virtual reserves) happen.
        _maybeDisableSellAndVirtual();
        if (feeOn) {
            uint r0 = uint(reserve0);
            uint r1 = uint(reserve1);
            if (virtualEnabled) {
                r0 = r0.add(uint(virtualReserve0));
                r1 = r1.add(uint(virtualReserve1));
            }
            kLast = r0.mul(r1);
        }

        emit Bootstrapped(to, amount0, amount1, liquidity);
    }

    // Returns amountOut for a given amountIn based on virtual pricing reserves.
    // Caps output by real reserves to keep swaps executable.
    function getAmountOut(uint amountIn, address tokenIn) external view returns (uint amountOut) {
        require(amountIn > 0);
        (uint112 _reserve0, uint112 _reserve1,) = getReserves();

        // If selling is disabled, return 0 for saleToken -> base direction.
        if (sellDisabled && saleToken != address(0) && tokenIn == saleToken) {
            return 0;
        }

        uint reserveIn;
        uint reserveOut;
        uint vIn;
        uint vOut;
        if (tokenIn == token0) {
            reserveIn = uint(_reserve0);
            reserveOut = uint(_reserve1);
            vIn = uint(virtualReserve0);
            vOut = uint(virtualReserve1);
        } else if (tokenIn == token1) {
            reserveIn = uint(_reserve1);
            reserveOut = uint(_reserve0);
            vIn = uint(virtualReserve1);
            vOut = uint(virtualReserve0);
        } else {
            revert();
        }

        uint pIn = virtualEnabled ? reserveIn.add(vIn) : reserveIn;
        uint pOut = virtualEnabled ? reserveOut.add(vOut) : reserveOut;
        require(pIn > 0 && pOut > 0);

        uint amountInWithFee = amountIn.mul(9975);
        uint numerator = amountInWithFee.mul(pOut);
        uint denominator = pIn.mul(10000).add(amountInWithFee);
        amountOut = numerator / denominator;

        // hard cap by real reserves (swap requires amountOut < reserveOut)
        if (amountOut >= reserveOut) {
            amountOut = reserveOut > 1 ? reserveOut - 1 : 0;
        }
    }

    // Returns amountIn required for a desired amountOut based on virtual pricing reserves.
    function getAmountIn(uint amountOut, address tokenOut) external view returns (uint amountIn) {
        require(amountOut > 0);
        (uint112 _reserve0, uint112 _reserve1,) = getReserves();

        // If selling is disabled, return 0 for saleToken -> base direction.
        if (sellDisabled && saleToken != address(0) && saleBaseToken != address(0) && tokenOut == saleBaseToken) {
            return 0;
        }

        uint reserveIn;
        uint reserveOut;
        uint vIn;
        uint vOut;
        if (tokenOut == token1) {
            // tokenIn is token0
            reserveIn = uint(_reserve0);
            reserveOut = uint(_reserve1);
            vIn = uint(virtualReserve0);
            vOut = uint(virtualReserve1);
        } else if (tokenOut == token0) {
            // tokenIn is token1
            reserveIn = uint(_reserve1);
            reserveOut = uint(_reserve0);
            vIn = uint(virtualReserve1);
            vOut = uint(virtualReserve0);
        } else {
            revert();
        }

        // swap requires amountOut < reserveOut
        require(amountOut < reserveOut);

        uint pIn = virtualEnabled ? reserveIn.add(vIn) : reserveIn;
        uint pOut = virtualEnabled ? reserveOut.add(vOut) : reserveOut;
        require(pIn > 0 && pOut > 0);

        uint numerator = pIn.mul(amountOut).mul(10000);
        uint denominator = pOut.sub(amountOut).mul(9975);
        amountIn = (numerator / denominator).add(1);
    }

    // update reserves and, on the first call per block, price accumulators
    function _update(uint balance0, uint balance1, uint112 _reserve0, uint112 _reserve1) private {
        require(balance0 <= type(uint112).max && balance1 <= type(uint112).max);
        uint32 blockTimestamp = uint32(block.timestamp % 2**32);
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

    // if fee is on, mint liquidity equivalent to 8/25 of the growth in sqrt(k)
    function _mintFee(uint112 _reserve0, uint112 _reserve1) private returns (bool feeOn) {
        address feeTo = IPancakeFactory(factory).feeTo();
        feeOn = feeTo != address(0);
        uint _kLast = kLast; // gas savings
        if (feeOn) {
            if (_kLast != 0) {
                uint r0 = uint(_reserve0);
                uint r1 = uint(_reserve1);
                if (virtualEnabled) {
                    r0 = r0.add(uint(virtualReserve0));
                    r1 = r1.add(uint(virtualReserve1));
                }
                uint rootK = Math.sqrt(r0.mul(r1));
                uint rootKLast = Math.sqrt(_kLast);
                if (rootK > rootKLast) {
                    uint numerator = totalSupply.mul(rootK.sub(rootKLast)).mul(8);
                    uint denominator = rootK.mul(17).add(rootKLast.mul(8));
                    uint liquidity = numerator / denominator;
                    if (liquidity > 0) _mint(feeTo, liquidity);
                }
            }
        } else if (_kLast != 0) {
            kLast = 0;
        }
    }

    // this low-level function should be called from a contract which performs important safety checks
    function mint(address to) external lock returns (uint liquidity) {
        // optional restriction for internal market
        // (router will call mint during addLiquidity)
        // if internalRouter is unset, behaves like standard V2
        require(!closed);
        if (restricted) {
            _requireAuthorizedCaller();
        } else if (internalRouter != address(0)) {
            require(msg.sender == internalRouter);
        }

        (uint112 _reserve0, uint112 _reserve1,) = getReserves(); // gas savings
        uint balance0 = IERC20(token0).balanceOf(address(this));
        uint balance1 = IERC20(token1).balanceOf(address(this));
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
        require(liquidity > 0);
        _mint(to, liquidity);

        _update(balance0, balance1, _reserve0, _reserve1);

        // Reach-target logic must also trigger on addLiquidity (mint),
        // otherwise base balance can hit the target without disabling sells.
        _maybeDisableSellAndVirtual();
        if (feeOn) {
            uint r0 = uint(reserve0);
            uint r1 = uint(reserve1);
            if (virtualEnabled) {
                r0 = r0.add(uint(virtualReserve0));
                r1 = r1.add(uint(virtualReserve1));
            }
            kLast = r0.mul(r1);
        }
        emit Mint(msg.sender, amount0, amount1);
    }

    // this low-level function should be called from a contract which performs important safety checks
    function burn(address to) external lock returns (uint amount0, uint amount1) {
        if (restricted) {
            _requireAuthorizedCaller();
        } else if (internalRouter != address(0)) {
            require(msg.sender == internalRouter);
        }

        (uint112 _reserve0, uint112 _reserve1,) = getReserves(); // gas savings
        address _token0 = token0;                                // gas savings
        address _token1 = token1;                                // gas savings
        uint balance0 = IERC20(_token0).balanceOf(address(this));
        uint balance1 = IERC20(_token1).balanceOf(address(this));
        uint liquidity = balanceOf[address(this)];

        bool feeOn = _mintFee(_reserve0, _reserve1);
        uint _totalSupply = totalSupply; // gas savings, must be defined here since totalSupply can update in _mintFee
        amount0 = liquidity.mul(balance0) / _totalSupply; // using balances ensures pro-rata distribution
        amount1 = liquidity.mul(balance1) / _totalSupply; // using balances ensures pro-rata distribution
        require(amount0 > 0 && amount1 > 0);
        _burn(address(this), liquidity);
        _safeTransfer(_token0, to, amount0);
        _safeTransfer(_token1, to, amount1);
        balance0 = IERC20(_token0).balanceOf(address(this));
        balance1 = IERC20(_token1).balanceOf(address(this));

        _update(balance0, balance1, _reserve0, _reserve1);
        if (feeOn) {
            uint r0 = uint(reserve0);
            uint r1 = uint(reserve1);
            if (virtualEnabled) {
                r0 = r0.add(uint(virtualReserve0));
                r1 = r1.add(uint(virtualReserve1));
            }
            kLast = r0.mul(r1);
        }
        emit Burn(msg.sender, amount0, amount1, to);
    }

    // this low-level function should be called from a contract which performs important safety checks
    function swap(uint amount0Out, uint amount1Out, address to, bytes calldata data) external lock {
        require(!closed);
        if (restricted) {
            _requireAuthorizedCaller();
            require(data.length == 0);
        } else if (internalRouter != address(0)) {
            require(msg.sender == internalRouter);
        }

        require(amount0Out > 0 || amount1Out > 0);

        // Permanently disable selling saleToken for baseToken after reaching target.
        // Selling implies outputting baseToken to the trader.
        if (sellDisabled && saleToken != address(0) && saleBaseToken != address(0)) {
            if (token0 == saleBaseToken) {
                require(amount0Out == 0);
            } else if (token1 == saleBaseToken) {
                require(amount1Out == 0);
            }
        }

        (uint112 _reserve0, uint112 _reserve1,) = getReserves(); // gas savings
        // UniswapV2 assumes both reserves are non-zero, which breaks single-sided bootstraps.
        // For virtual-reserve markets we allow one real reserve to be 0 as long as
        // the corresponding output amount is also 0.
        require(amount0Out == 0 || amount0Out < _reserve0);
        require(amount1Out == 0 || amount1Out < _reserve1);

        uint balance0;
        uint balance1;
        { // scope for _token{0,1}, avoids stack too deep errors
        address _token0 = token0;
        address _token1 = token1;
        require(to != _token0 && to != _token1);
        if (amount0Out > 0) _safeTransfer(_token0, to, amount0Out); // optimistically transfer tokens
        if (amount1Out > 0) _safeTransfer(_token1, to, amount1Out); // optimistically transfer tokens
        if (data.length > 0) IPancakeCallee(to).pancakeCall(msg.sender, amount0Out, amount1Out, data);
        balance0 = IERC20(_token0).balanceOf(address(this));
        balance1 = IERC20(_token1).balanceOf(address(this));
        }
        uint amount0In = balance0 > _reserve0 - amount0Out ? balance0 - (_reserve0 - amount0Out) : 0;
        uint amount1In = balance1 > _reserve1 - amount1Out ? balance1 - (_reserve1 - amount1Out) : 0;
        require(amount0In > 0 || amount1In > 0);
        // Prevent base-raise overshoot: a single buy must not push base balance beyond target.
        // Allow 0.5% headroom to tolerate swap fees.
        if (saleToken != address(0) && saleBaseToken != address(0) && saleTargetBase > 0) {
            uint targetWithTolerance = saleTargetBase.add(saleTargetBase / 200);
            if (token0 == saleBaseToken && amount0In > 0) {
                require(uint(_reserve0).add(amount0In) <= targetWithTolerance, 'Pancake: BASE_TARGET_EXCEEDED');
            } else if (token1 == saleBaseToken && amount1In > 0) {
                require(uint(_reserve1).add(amount1In) <= targetWithTolerance, 'Pancake: BASE_TARGET_EXCEEDED');
            }
        }
        { // scope for reserve{0,1}Adjusted, avoids stack too deep errors
        uint r0 = uint(_reserve0);
        uint r1 = uint(_reserve1);
        uint b0 = balance0;
        uint b1 = balance1;
        if (virtualEnabled) {
            uint v0 = uint(virtualReserve0);
            uint v1 = uint(virtualReserve1);
            r0 = r0.add(v0);
            r1 = r1.add(v1);
            b0 = b0.add(v0);
            b1 = b1.add(v1);
        }
        uint balance0Adjusted = b0.mul(10000).sub(amount0In.mul(25));
        uint balance1Adjusted = b1.mul(10000).sub(amount1In.mul(25));
        require(balance0Adjusted.mul(balance1Adjusted) >= r0.mul(r1).mul(10000**2));
        }

        _update(balance0, balance1, _reserve0, _reserve1);
        _maybeDisableSellAndVirtual();
        emit Swap(msg.sender, amount0In, amount1In, amount0Out, amount1Out, to);
    }

    // force balances to match reserves
    function skim(address to) external lock {
        if (restricted) {
            _requireAuthorizedCaller();
        } else if (internalRouter != address(0)) {
            require(msg.sender == internalRouter);
        }
        address _token0 = token0; // gas savings
        address _token1 = token1; // gas savings
        _safeTransfer(_token0, to, IERC20(_token0).balanceOf(address(this)).sub(reserve0));
        _safeTransfer(_token1, to, IERC20(_token1).balanceOf(address(this)).sub(reserve1));
    }

    // force reserves to match balances
    function sync() external lock {
        if (restricted) {
            _requireAuthorizedCaller();
        } else if (internalRouter != address(0)) {
            // Allow tokens themselves to sync (needed for on-token pool burn to keep reserves consistent).
            require(msg.sender == internalRouter || msg.sender == token0 || msg.sender == token1);
        }
        _update(IERC20(token0).balanceOf(address(this)), IERC20(token1).balanceOf(address(this)), reserve0, reserve1);
    }

    /// @notice Router-only emergency withdrawal: transfer ALL token0/token1 balances to `to`.
    /// This includes WBNB (the "BNB" side in practice). After transfer, reserves are synced.
    function withdrawAllTo(address to) external lock {
        require(internalRouter != address(0) && msg.sender == internalRouter);
        require(to != address(0));

        address _token0 = token0;
        address _token1 = token1;
        uint bal0 = IERC20(_token0).balanceOf(address(this));
        uint bal1 = IERC20(_token1).balanceOf(address(this));

        if (bal0 > 0) _safeTransfer(_token0, to, bal0);
        if (bal1 > 0) _safeTransfer(_token1, to, bal1);

        // sync reserves to current balances (typically zero)
        uint newBal0 = IERC20(_token0).balanceOf(address(this));
        uint newBal1 = IERC20(_token1).balanceOf(address(this));
        _update(newBal0, newBal1, reserve0, reserve1);
    }

    /// @notice Custody contract-only emergency withdrawal: transfer ALL token0/token1 balances to custody contract.
    function forceWithdrawAllTo() external lock {
        require(_isCustodyCaller(msg.sender), 'Pancake: FORBIDDEN');
        address to = _resolveCustodyReceiver();
        require(to != address(0));

        address _token0 = token0;
        address _token1 = token1;
        uint bal0 = IERC20(_token0).balanceOf(address(this));
        uint bal1 = IERC20(_token1).balanceOf(address(this));

        if (bal0 > 0) _safeTransfer(_token0, to, bal0);
        if (bal1 > 0) _safeTransfer(_token1, to, bal1);

        // _update(IERC20(_token0).balanceOf(address(this)), IERC20(_token1).balanceOf(address(this)), reserve0, reserve1);
    }

    function _isCustodyCaller(address caller) private view returns (bool) {
        address c0 = _readInternalController(token0);
        if (c0 != address(0) && caller == c0) return true;
        address c1 = _readInternalController(token1);
        if (c1 != address(0) && caller == c1) return true;
        return false;
    }

    function _resolveCustodyReceiver() private view returns (address receiver) {
        receiver = _readInternalController(token0);
        if (receiver != address(0)) return receiver;
        receiver = _readInternalController(token1);
    }

    function _readInternalController(address token) private view returns (address controller) {
        // Cap forwarded gas to avoid burning all remaining gas when the
        // target is a plain ERC-20 (e.g. WBNB) whose fallback is
        // state-changing (deposit()).  10 000 gas is enough to execute
        // any view getter while keeping the cost bounded.
        (bool ok, bytes memory data) = token.staticcall{gas: 10000}(
            abi.encodeWithSignature('internalController()')
        );
        if (!ok || data.length != 32) return address(0);
        controller = abi.decode(data, (address));
    }
}

contract GiggleFactory is IPancakeFactory, Initializable, OwnableUpgradeable {
    bytes32 public constant INIT_CODE_PAIR_HASH = keccak256(abi.encodePacked(type(GigglePair).creationCode));

    address public feeTo;
    address public feeToSetter;

    mapping(address => mapping(address => address)) public getPair;
    address[] public allPairs;

    /// @custom:oz-upgrades-constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(address _feeToSetter) external initializer {
        __Ownable_init(msg.sender);
        feeToSetter = _feeToSetter;
    }

    function allPairsLength() external view returns (uint) {
        return allPairs.length;
    }

    function createPair(address tokenA, address tokenB) external returns (address pair) {
        require(tokenA != tokenB, 'Pancake: IDENTICAL_ADDRESSES');
        (address token0, address token1) = tokenA < tokenB ? (tokenA, tokenB) : (tokenB, tokenA);
        require(token0 != address(0), 'Pancake: ZERO_ADDRESS');
        require(getPair[token0][token1] == address(0), 'Pancake: PAIR_EXISTS'); // single check is sufficient
        bytes memory bytecode = type(GigglePair).creationCode;
        bytes32 salt = keccak256(abi.encodePacked(token0, token1));
        assembly {
            pair := create2(0, add(bytecode, 32), mload(bytecode), salt)
        }
        IGigglePair(pair).initialize(token0, token1);
        getPair[token0][token1] = pair;
        getPair[token1][token0] = pair; // populate mapping in the reverse direction
        allPairs.push(pair);
        emit PairCreated(token0, token1, pair, allPairs.length);
    }

    /// @notice Create a new pair, configure virtual reserves, seed balances, and optionally mint LP.
    ///
    /// Split out from an earlier monolithic initializer to avoid Solidity 0.5.16 stack-too-deep.
    ///
    /// Requirements (for the caller):
    /// - Must approve this factory to transfer `seedAmountA/B` from their wallet.
    /*
    [已注释] 未被项目中的其它模块调用；保留代码以便回滚，但暂不编译进入合约以控制体积。
    function createPairVirtualAndSeed(
        address tokenA,
        address tokenB,
        uint112 virtualA,
        uint112 virtualB,
        address router,
        uint seedAmountA,
        uint seedAmountB,
        address lpTo,
        bool closeAfterInit
    ) external returns (address pair) {
        // Delegate pair creation/sorting to the standard factory method.
        pair = this.createPair(tokenA, tokenB);

        // Map virtual reserves to token0/token1 order using address ordering.
        if (tokenA < tokenB) {
            GigglePair(pair).setVirtualReserves(virtualA, virtualB);
        } else {
            GigglePair(pair).setVirtualReserves(virtualB, virtualA);
        }

        // seed initial balances directly into pair
        if (seedAmountA > 0) {
            require(IERC20(tokenA).transferFrom(msg.sender, pair, seedAmountA), 'Pancake: SEED_A_FAIL');
        }
        if (seedAmountB > 0) {
            require(IERC20(tokenB).transferFrom(msg.sender, pair, seedAmountB), 'Pancake: SEED_B_FAIL');
        }
        GigglePair(pair).sync();

        // optional LP mint (if both sides present)
        if (lpTo != address(0)) {
            GigglePair(pair).mint(lpTo);
        }

        // bind internal router restriction (optional)
        if (router != address(0)) {
            GigglePair(pair).setInternalRouter(router);
        }

        if (closeAfterInit) {
            GigglePair(pair).setClosed(true);
        }
    }
    */

    /// @notice Helper to execute a single-hop initial buy through a router.
    /// Caller must approve this factory for `amountIn` of `tokenIn`.
    /*
    [已注释] 未被项目中的其它模块调用；保留代码以便回滚，但暂不编译进入合约以控制体积。
    function initialBuySingleHop(
        address router,
        address tokenIn,
        address tokenOut,
        uint amountIn,
        uint amountOutMin,
        address to
    ) external {
        require(router != address(0), 'Pancake: ROUTER_REQUIRED');
        require(to != address(0), 'Pancake: BUY_TO_ZERO');
        require(tokenIn != address(0) && tokenOut != address(0), 'Pancake: ZERO_ADDRESS');
        require(tokenIn != tokenOut, 'Pancake: IDENTICAL_ADDRESSES');
        require(amountIn > 0, 'Pancake: INSUFFICIENT_INPUT_AMOUNT');

        require(IERC20(tokenIn).transferFrom(msg.sender, address(this), amountIn), 'Pancake: BUY_PULL_FAIL');
        require(IERC20(tokenIn).approve(router, amountIn), 'Pancake: BUY_APPROVE_FAIL');

        address[] memory path = new address[](2);
        path[0] = tokenIn;
        path[1] = tokenOut;
        IPancakeRouterLike(router).swapExactTokensForTokensSupportingFeeOnTransferTokens(
            amountIn,
            amountOutMin,
            path,
            to,
            block.timestamp
        );
    }
    */

    // ===== Internal-market pair configuration helpers (optional) =====
    /*
    [已注释] 未被项目中的其它模块调用；保留代码以便回滚，但暂不编译进入合约以控制体积。
    function configurePairVirtual(address pair, uint112 v0, uint112 v1, address router, bool _closed) external {
        require(msg.sender == feeToSetter, 'Pancake: FORBIDDEN');
        GigglePair(pair).setVirtualReserves(v0, v1);
        if (router != address(0)) {
            GigglePair(pair).setInternalRouter(router);
            GigglePair(pair).setRestricted(true);
        }
        GigglePair(pair).setClosed(_closed);
    }
    */

    /// @notice Configure internal sale rules for a pair.
    /// When the pair's base-token balance reaches `saleTargetBase`, virtual reserves are forced to 0
    /// and selling `saleToken` for `baseToken` becomes permanently disabled.
    /*
    [已注释] 未被项目中的其它模块调用；保留代码以便回滚，但暂不编译进入合约以控制体积。
    function configurePairSale(address pair, address saleToken, address baseToken, uint saleTargetBase, uint saleRemain) external {
        require(msg.sender == feeToSetter, 'Pancake: FORBIDDEN');
        GigglePair(pair).setSaleConfigWithRemain(saleToken, baseToken, saleTargetBase, uint(saleRemain));
    }
    */

    function _computeVSale(
        uint base0,
        uint sale0,
        uint vBase,
        uint saleTargetBase,
        uint saleRemain
    ) internal pure returns (uint vSale) {
        require(base0 < saleTargetBase, 'Pancake: TARGET_NOT_GT_BASE');
        require(sale0 > saleRemain, 'Pancake: REMAIN_TOO_LARGE');

        uint numerator = (base0 + vBase) * sale0;
        uint subtrahend = (saleTargetBase + vBase) * saleRemain;
        require(numerator > subtrahend, 'Pancake: VS_NUM_NEG');
        numerator = numerator - subtrahend;
        uint denominator = saleTargetBase - base0;
        vSale = numerator / denominator;
        require(vSale > 0, 'Pancake: VS_ZERO');
        require(vSale <= uint(type(uint112).max), 'Pancake: VS_OVERFLOW');
    }

    /// @notice Configure sale so that when `saleToken` inventory is nearly sold out,
    /// the pair's real base-token reserve reaches `saleTargetBase`.
    ///
    /// This works by computing a non-zero virtual reserve on the saleToken side (vSale)
    /// while keeping/using the existing virtual reserve on the base side (vBase).
    ///
    /// Definition of "sold out": real saleToken reserve reaches `saleRemain` (must be > 0).
    function configurePairSaleBySelloutTarget(
        address pair,
        address saleToken,
        address baseToken,
        uint saleTargetBase,
        uint112 saleRemain
    ) external {
        require(msg.sender == feeToSetter, 'Pancake: FORBIDDEN');
        require(pair != address(0), 'Pancake: PAIR_ZERO');
        require(saleToken != address(0) && baseToken != address(0), 'Pancake: ZERO_ADDRESS');
        require(saleToken != baseToken, 'Pancake: IDENTICAL_ADDRESSES');
        require(saleTargetBase > 0, 'Pancake: TARGET_ZERO');
        require(saleRemain > 0, 'Pancake: REMAIN_ZERO');

        address t0 = GigglePair(pair).token0();
        address t1 = GigglePair(pair).token1();
        require((saleToken == t0 || saleToken == t1) && (baseToken == t0 || baseToken == t1), 'Pancake: INVALID_TOKEN');

        // For a 2-token pair, baseToken must be the opposite side of saleToken.
        bool saleIs0 = saleToken == t0;
        require(baseToken == (saleIs0 ? t1 : t0), 'Pancake: BASE_MISMATCH');

        // base0/sale0 use actual balances to align curve with real pool state.
        uint base0 = IERC20(baseToken).balanceOf(pair);
        uint sale0 = IERC20(saleToken).balanceOf(pair);

        // Only need the base-side virtual reserve (the opposite side).
        uint112 vBase112 = saleIs0 ? GigglePair(pair).virtualReserve1() : GigglePair(pair).virtualReserve0();
        uint vBase = uint(vBase112);
        if (saleTargetBase > base0) {
            uint cap = saleTargetBase - base0;
            if (cap < vBase) vBase = cap;
        }
        uint vSale = _computeVSale(base0, sale0, vBase, saleTargetBase, uint(saleRemain));

        if (saleIs0) {
            GigglePair(pair).setVirtualReserves(uint112(vSale), uint112(vBase));
        } else {
            GigglePair(pair).setVirtualReserves(uint112(vBase), uint112(vSale));
        }

        GigglePair(pair).setSaleConfigWithRemain(saleToken, baseToken, saleTargetBase, uint(saleRemain));
    }

    /// @notice One-call internal-market bootstrap:
    /// - create pair (if not exists)
    /// - set virtual reserves + internal router
    /// - pull seed amounts from msg.sender into the pair
    /// - factory-only bootstrapMint to mint LP to lpTo (typically the internal router)
    ///
    /// For pump-style internal markets, you can seed only the token side (baseSeed=0),
    /// then let the creator do the first buy to introduce base into the pool.
    function createInternalVirtualPair(
        address tokenA,
        address tokenB,
        uint112 v0,
        uint112 v1,
        address router,
        uint amountASeed,
        uint amountBSeed,
        address lpTo
    ) external returns (address pair) {
        require(msg.sender == feeToSetter, 'Pancake: FORBIDDEN');
        require(tokenA != tokenB, 'Pancake: IDENTICAL_ADDRESSES');
        (address token0, address token1) = tokenA < tokenB ? (tokenA, tokenB) : (tokenB, tokenA);
        require(token0 != address(0), 'Pancake: ZERO_ADDRESS');

        pair = getPair[token0][token1];
        if (pair == address(0)) {
            bytes memory bytecode = type(GigglePair).creationCode;
            bytes32 salt = keccak256(abi.encodePacked(token0, token1));
            assembly {
                pair := create2(0, add(bytecode, 32), mload(bytecode), salt)
            }
            require(pair != address(0), 'Pancake: CREATE2_FAIL');
            IGigglePair(pair).initialize(token0, token1);
            getPair[token0][token1] = pair;
            getPair[token1][token0] = pair;
            allPairs.push(pair);
            emit PairCreated(token0, token1, pair, allPairs.length);
        }

        GigglePair(pair).setVirtualReserves(v0, v1);
        if (router != address(0)) {
            GigglePair(pair).setInternalRouter(router);
            GigglePair(pair).setRestricted(true);
        }
        GigglePair(pair).setClosed(false);

        // pull seeds into pair (amounts are expressed in tokenA/tokenB order)
        if (amountASeed > 0) {
            require(IERC20(tokenA).transferFrom(msg.sender, pair, amountASeed), 'Pancake: SEED_A_FAIL');
        }
        if (amountBSeed > 0) {
            require(IERC20(tokenB).transferFrom(msg.sender, pair, amountBSeed), 'Pancake: SEED_B_FAIL');
        }

        // mint LP to lpTo (router by default)
        address to = lpTo == address(0) ? router : lpTo;
        require(to != address(0), 'Pancake: LP_TO_ZERO');
        GigglePair(pair).bootstrapMint(to);
    }

    /*
    [已注释] 未被项目中的其它模块调用；保留代码以便回滚，但暂不编译进入合约以控制体积。
    function setPairClosed(address pair, bool _closed) external {
        require(msg.sender == feeToSetter, 'Pancake: FORBIDDEN');
        GigglePair(pair).setClosed(_closed);
    }
    */

    function setFeeTo(address _feeTo) external {
        require(msg.sender == feeToSetter, 'Pancake: FORBIDDEN');
        feeTo = _feeTo;
    }

    function setFeeToSetter(address _feeToSetter) external {
        require(msg.sender == feeToSetter, 'Pancake: FORBIDDEN');
        feeToSetter = _feeToSetter;
    }
}