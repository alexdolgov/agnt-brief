// ============================================================
// FILE: contracts/factory/interfaces/BlastModes.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

library BlastModes {
    enum YieldMode {
        AUTOMATIC,
        VOID,
        CLAIMABLE
    }

    enum GasMode {
        VOID,
        CLAIMABLE 
    }
}

// ============================================================
// FILE: contracts/factory/interfaces/IBlast.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import { BlastModes } from "./BlastModes.sol";

interface IBlast {
    // configure
    function configureContract(address contractAddress, BlastModes.YieldMode _yield, BlastModes.GasMode gasMode, address governor) external;
    function configure(BlastModes.YieldMode _yield, BlastModes.GasMode gasMode, address governor) external;

    // base configuration options
    function configureClaimableYield() external;
    function configureClaimableYieldOnBehalf(address contractAddress) external;
    function configureAutomaticYield() external;
    function configureAutomaticYieldOnBehalf(address contractAddress) external;
    function configureVoidYield() external;
    function configureVoidYieldOnBehalf(address contractAddress) external;
    function configureClaimableGas() external;
    function configureClaimableGasOnBehalf(address contractAddress) external;
    function configureVoidGas() external;
    function configureVoidGasOnBehalf(address contractAddress) external;
    function configureGovernor(address _governor) external;
    function configureGovernorOnBehalf(address _newGovernor, address contractAddress) external;

    // claim yield
    function claimYield(address contractAddress, address recipientOfYield, uint256 amount) external returns (uint256);
    function claimAllYield(address contractAddress, address recipientOfYield) external returns (uint256);

    // claim gas
    function claimAllGas(address contractAddress, address recipientOfGas) external returns (uint256);
    function claimGasAtMinClaimRate(address contractAddress, address recipientOfGas, uint256 minClaimRateBips) external returns (uint256);
    function claimMaxGas(address contractAddress, address recipientOfGas) external returns (uint256);
    function claimGas(address contractAddress, address recipientOfGas, uint256 gasToClaim, uint256 gasSecondsToConsume) external returns (uint256);

    // read functions
    function readClaimableYield(address contractAddress) external view returns (uint256);
    function readYieldConfiguration(address contractAddress) external view returns (uint8);
    function readGasParams(address contractAddress) external view returns (uint256 etherSeconds, uint256 etherBalance, uint256 lastUpdated, BlastModes.GasMode);
}

// ============================================================
// FILE: contracts/factory/interfaces/IBlastPoints.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IBlastPoints {
  function configurePointsOperator(address operator) external;
  function configurePointsOperatorOnBehalf(address contractAddress, address operator) external;
  function updatePointsBalance(address account, uint256 blastPointsBalance, uint256 blastGoldBalance) external;
}

// ============================================================
// FILE: contracts/factory/interfaces/IERC20.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IERC20 {
    event Approval(address indexed owner, address indexed spender, uint value);
    event Transfer(address indexed from, address indexed to, uint value);

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

// ============================================================
// FILE: contracts/factory/interfaces/IERC20Rebasing.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

enum YieldMode {
  AUTOMATIC,
  VOID,
  CLAIMABLE
}

interface IERC20Rebasing {
  // changes the yield mode of the caller and update the balance
  // to reflect the configuration
  function configure(YieldMode) external returns (uint256);
  // "claimable" yield mode accounts can call this this claim their yield
  // to another address
  function claim(address recipient, uint256 amount) external returns (uint256);
  // read the claimable amount for an account
  function getClaimableAmount(address account) external view returns (uint256);
}

// ============================================================
// FILE: contracts/factory/interfaces/ISquadswapCallee.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface ISquadswapCallee {
    function squadswapCall(address sender, uint amount0, uint amount1, bytes calldata data) external;
}

// ============================================================
// FILE: contracts/factory/interfaces/ISquadswapFactory.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface ISquadswapFactory {
    event PairCreated(
        address indexed token0,
        address indexed token1,
        address pair,
        uint
    );
    event PointsBalanceReceived(
        address indexed contractAddress,
        uint256 blastPointsBalance,
        uint256 blastGoldBalance
    );
    event SetYieldTo(address indexed yieldTo);
    event SetYieldToSetter(address indexed newYieldToSetter);

    function feeTo() external view returns (address);
    function feeToSetter() external view returns (address);

    function getPair(
        address tokenA,
        address tokenB
    ) external view returns (address pair);
    function allPairs(uint) external view returns (address pair);
    function allPairsLength() external view returns (uint);

    function createPair(
        address tokenA,
        address tokenB
    ) external returns (address pair);

    function setFeeTo(address) external;
    function setFeeToSetter(address) external;

    function yieldToSetter() external view returns (address);
    function pointsAdmin() external view returns (address);
}

// ============================================================
// FILE: contracts/factory/interfaces/ISquadswapPair.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface ISquadswapPair {
    event Approval(address indexed owner, address indexed spender, uint value);
    event Transfer(address indexed from, address indexed to, uint value);

    function name() external pure returns (string memory);
    function symbol() external pure returns (string memory);
    function decimals() external pure returns (uint8);
    function totalSupply() external view returns (uint);
    function balanceOf(address owner) external view returns (uint);
    function allowance(
        address owner,
        address spender
    ) external view returns (uint);

    function approve(address spender, uint value) external returns (bool);
    function transfer(address to, uint value) external returns (bool);
    function transferFrom(
        address from,
        address to,
        uint value
    ) external returns (bool);

    function DOMAIN_SEPARATOR() external view returns (bytes32);
    function PERMIT_TYPEHASH() external pure returns (bytes32);
    function nonces(address owner) external view returns (uint);

    function permit(
        address owner,
        address spender,
        uint value,
        uint deadline,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) external;

    event Mint(address indexed sender, uint amount0, uint amount1);
    event Burn(
        address indexed sender,
        uint amount0,
        uint amount1,
        address indexed to
    );
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
    function getReserves()
        external
        view
        returns (uint112 reserve0, uint112 reserve1, uint32 blockTimestampLast);
    function price0CumulativeLast() external view returns (uint);
    function price1CumulativeLast() external view returns (uint);
    function kLast() external view returns (uint);

    function mint(address to) external returns (uint liquidity);
    function burn(address to) external returns (uint amount0, uint amount1);
    function swap(
        uint amount0Out,
        uint amount1Out,
        address to,
        bytes calldata data
    ) external;
    function skim(address to) external;
    function sync() external;

    function initialize(address, address) external;
}

// ============================================================
// FILE: contracts/factory/libraries/Math.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

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

// ============================================================
// FILE: contracts/factory/libraries/UQ112x112.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

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

// ============================================================
// FILE: contracts/factory/SquadswapERC20.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SquadswapERC20 {

    string public constant name = 'Squad LPs';
    string public constant symbol = 'Squad-LP';
    uint8 public constant decimals = 18;
    uint  public totalSupply;
    mapping(address => uint) public balanceOf;
    mapping(address => mapping(address => uint)) public allowance;

    bytes32 public DOMAIN_SEPARATOR;
    // keccak256("Permit(address owner,address spender,uint256 value,uint256 nonce,uint256 deadline)");
    bytes32 public constant PERMIT_TYPEHASH = 0x6e71edae12b1b97f4d1f60370fef10105fa2faae0126114a169c64845d6126c9;
    mapping(address => uint) public nonces;

    event Approval(address indexed owner, address indexed spender, uint value);
    event Transfer(address indexed from, address indexed to, uint value);

    constructor() {
        uint chainId;
        assembly {
            chainId := chainid()
        }
        DOMAIN_SEPARATOR = keccak256(
            abi.encode(
                keccak256('EIP712Domain(string name,string version,uint256 chainId,address verifyingContract)'),
                keccak256(bytes(name)),
                keccak256(bytes('1')),
                chainId,
                address(this)
            )
        );
    }

    function _mint(address to, uint value) internal {
        totalSupply = totalSupply + value;
        balanceOf[to] = balanceOf[to] + value;
        emit Transfer(address(0), to, value);
    }

    function _burn(address from, uint value) internal {
        balanceOf[from] = balanceOf[from] - value;
        totalSupply = totalSupply - value;
        emit Transfer(from, address(0), value);
    }

    function _approve(address owner, address spender, uint value) private {
        allowance[owner][spender] = value;
        emit Approval(owner, spender, value);
    }

    function _transfer(address from, address to, uint value) private {
        balanceOf[from] = balanceOf[from] - value;
        balanceOf[to] = balanceOf[to] + value;
        emit Transfer(from, to, value);
    }

    function approve(address spender, uint value) external returns (bool) {
        _approve(msg.sender, spender, value);
        return true;
    }

    function transfer(address to, uint value) external returns (bool) {
        _transfer(msg.sender, to, value);
        return true;
    }

    function transferFrom(address from, address to, uint value) external returns (bool) {
        if (allowance[from][msg.sender] != type(uint256).max) {
            allowance[from][msg.sender] = allowance[from][msg.sender] - value;
        }
        _transfer(from, to, value);
        return true;
    }

    function permit(address owner, address spender, uint value, uint deadline, uint8 v, bytes32 r, bytes32 s) external {
        require(deadline >= block.timestamp, 'Squadswap: EXPIRED');
        bytes32 digest = keccak256(
            abi.encodePacked(
                '\x19\x01',
                DOMAIN_SEPARATOR,
                keccak256(abi.encode(PERMIT_TYPEHASH, owner, spender, value, nonces[owner]++, deadline))
            )
        );
        address recoveredAddress = ecrecover(digest, v, r, s);
        require(recoveredAddress != address(0) && recoveredAddress == owner, 'Squadswap: INVALID_SIGNATURE');
        _approve(owner, spender, value);
    }
}

// ============================================================
// FILE: contracts/factory/SquadswapFactory.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./SquadswapPair.sol";
import "./interfaces/ISquadswapPair.sol";

contract SquadswapFactory {
    bytes32 public constant INIT_CODE_PAIR_HASH =
        keccak256(abi.encodePacked(type(SquadswapPair).creationCode));

    address public feeTo;
    address public feeToSetter;

    mapping(address => mapping(address => address)) public getPair;
    address[] public allPairs;

    event PairCreated(
        address indexed token0,
        address indexed token1,
        address pair,
        uint
    );

    constructor(address _feeToSetter) {
        feeToSetter = _feeToSetter;
    }

    function allPairsLength() external view returns (uint) {
        return allPairs.length;
    }

    function createPair(
        address tokenA,
        address tokenB
    ) external returns (address pair) {
        require(tokenA != tokenB, "Squadswap: IDENTICAL_ADDRESSES");
        (address token0, address token1) = tokenA < tokenB
            ? (tokenA, tokenB)
            : (tokenB, tokenA);
        require(token0 != address(0), "Squadswap: ZERO_ADDRESS");
        require(
            getPair[token0][token1] == address(0),
            "Squadswap: PAIR_EXISTS"
        ); // single check is sufficient
        bytes memory bytecode = type(SquadswapPair).creationCode;
        bytes32 salt = keccak256(abi.encodePacked(token0, token1));
        assembly {
            pair := create2(0, add(bytecode, 32), mload(bytecode), salt)
        }
        ISquadswapPair(pair).initialize(token0, token1);
        getPair[token0][token1] = pair;
        getPair[token1][token0] = pair; // populate mapping in the reverse direction
        allPairs.push(pair);
        emit PairCreated(token0, token1, pair, allPairs.length);
    }

    function setFeeTo(address _feeTo) external {
        require(msg.sender == feeToSetter, "Squadswap: FORBIDDEN");
        feeTo = _feeTo;
    }

    function setFeeToSetter(address _feeToSetter) external {
        require(msg.sender == feeToSetter, "Squadswap: FORBIDDEN");
        feeToSetter = _feeToSetter;
    }
}

// ============================================================
// FILE: contracts/factory/SquadswapPair.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./SquadswapERC20.sol";
import "./libraries/Math.sol";
import "./libraries/UQ112x112.sol";
import "./interfaces/IERC20.sol";
import "./interfaces/ISquadswapFactory.sol";
import "./interfaces/ISquadswapCallee.sol";
import "./interfaces/IBlast.sol";
import "./interfaces/IERC20Rebasing.sol";
import "./interfaces/IBlastPoints.sol";

contract SquadswapPair is SquadswapERC20 {
    using UQ112x112 for uint224;

    uint public constant MINIMUM_LIQUIDITY = 10 ** 3;
    bytes4 private constant SELECTOR =
        bytes4(keccak256(bytes("transfer(address,uint256)")));

    address public factory;
    address public token0;
    address public token1;

    uint112 private reserve0; // uses single storage slot, accessible via getReserves
    uint112 private reserve1; // uses single storage slot, accessible via getReserves
    uint32 private blockTimestampLast; // uses single storage slot, accessible via getReserves

    uint public price0CumulativeLast;
    uint public price1CumulativeLast;
    uint public kLast; // reserve0 * reserve1, as of immediately after the most recent liquidity event

    uint private unlocked = 1;
    modifier lock() {
        require(unlocked == 1, "Squadswap: LOCKED");
        unlocked = 0;
        _;
        unlocked = 1;
    }

    modifier onlyManager() {
        require(msg.sender == manager, "FORBIDDEN");
        _;
    }

    //BLAST
    IBlast private constant BLAST =
        IBlast(0x4300000000000000000000000000000000000002); // mainnet
    IERC20Rebasing private constant USDB =
        IERC20Rebasing(0x4300000000000000000000000000000000000003);
    IERC20Rebasing private constant WETHB =
        IERC20Rebasing(0x4300000000000000000000000000000000000004);
    address private constant BLAST_POINTS =
        0x2536FE9ab3F511540F2f9e2eC2A805005C3Dd800;

    // IBlast private constant BLAST = IBlast(0x4300000000000000000000000000000000000002); // testnet
    // IERC20Rebasing private constant USDB = IERC20Rebasing(0x4200000000000000000000000000000000000022);
    // IERC20Rebasing private constant WETHB = IERC20Rebasing(0x4200000000000000000000000000000000000023);
    // address private constant BLAST_POINTS = 0x2fc95838c71e76ec69ff817983BFf17c710F34E0;

    // IBlast public constant BLAST =
    //     IBlast(0x4300000000000000000000000000000000000002);
    // IERC20Rebasing public constant USDB =
    //     IERC20Rebasing(0x4200000000000000000000000000000000000022);
    // IERC20Rebasing public constant WETHB =
    //     IERC20Rebasing(0x4200000000000000000000000000000000000023);

    // address public BlastPointsAddress =
    //     0x2fc95838c71e76ec69ff817983BFf17c710F34E0;

    address public pointsOperator = 0xb0eF30C3635289eD71A37D7AeE5B2551322Ac828;
    address public manager = 0xb0eF30C3635289eD71A37D7AeE5B2551322Ac828;

    function getReserves()
        public
        view
        returns (
            uint112 _reserve0,
            uint112 _reserve1,
            uint32 _blockTimestampLast
        )
    {
        _reserve0 = reserve0;
        _reserve1 = reserve1;
        _blockTimestampLast = blockTimestampLast;
    }

    function _safeTransfer(address token, address to, uint value) private {
        (bool success, bytes memory data) = token.call(
            abi.encodeWithSelector(SELECTOR, to, value)
        );
        require(
            success && (data.length == 0 || abi.decode(data, (bool))),
            "Squadswap: TRANSFER_FAILED"
        );
    }

    event Mint(address indexed sender, uint amount0, uint amount1);
    event Burn(
        address indexed sender,
        uint amount0,
        uint amount1,
        address indexed to
    );
    event Swap(
        address indexed sender,
        uint amount0In,
        uint amount1In,
        uint amount0Out,
        uint amount1Out,
        address indexed to
    );
    event Sync(uint112 reserve0, uint112 reserve1);

    event ClaimYieldAll(
        address indexed recipient,
        uint256 amountWETH,
        uint256 amountUSDB,
        uint256 amountGas
    );
    event ClaimGas(address indexed recipient, uint256 amount);

    constructor() {
        factory = msg.sender;
        BLAST.configureClaimableGas();
        USDB.configure(YieldMode.CLAIMABLE);
        WETHB.configure(YieldMode.CLAIMABLE);
        IBlastPoints(BLAST_POINTS).configurePointsOperator(pointsOperator);
    }

    // called once by the factory at time of deployment
    function initialize(address _token0, address _token1) external {
        require(msg.sender == factory, "Squadswap: FORBIDDEN"); // sufficient check
        token0 = _token0;
        token1 = _token1;
    }

    // update reserves and, on the first call per block, price accumulators
    function _update(
        uint balance0,
        uint balance1,
        uint112 _reserve0,
        uint112 _reserve1
    ) private {
        require(
            balance0 <= type(uint112).max && balance1 <= type(uint112).max,
            "Squadswap: OVERFLOW"
        );
        uint32 blockTimestamp = uint32(block.timestamp % 2 ** 32);
        uint32 timeElapsed = blockTimestamp - blockTimestampLast; // overflow is desired
        if (timeElapsed > 0 && _reserve0 != 0 && _reserve1 != 0) {
            // * never overflows, and + overflow is desired
            price0CumulativeLast +=
                uint(UQ112x112.encode(_reserve1).uqdiv(_reserve0)) *
                timeElapsed;
            price1CumulativeLast +=
                uint(UQ112x112.encode(_reserve0).uqdiv(_reserve1)) *
                timeElapsed;
        }
        reserve0 = uint112(balance0);
        reserve1 = uint112(balance1);
        blockTimestampLast = blockTimestamp;
        emit Sync(reserve0, reserve1);
    }

    // if fee is on, mint liquidity equivalent to 4/5 of the growth in sqrt(k) so that protocal fee is 0.2% * 4 / 5 = 0.16%
    function _mintFee(
        uint112 _reserve0,
        uint112 _reserve1
    ) private returns (bool feeOn) {
        address feeTo = ISquadswapFactory(factory).feeTo();
        feeOn = feeTo != address(0);
        uint _kLast = kLast; // gas savings
        if (feeOn) {
            if (_kLast != 0) {
                uint rootK = Math.sqrt(uint(_reserve0) * uint(_reserve1));
                uint rootKLast = Math.sqrt(_kLast);
                if (rootK > rootKLast) {
                    uint numerator = totalSupply * (rootK - rootKLast) * 4;
                    uint denominator = rootK + rootKLast * 4;
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
        (uint112 _reserve0, uint112 _reserve1, ) = getReserves(); // gas savings
        uint balance0 = IERC20(token0).balanceOf(address(this));
        uint balance1 = IERC20(token1).balanceOf(address(this));
        uint amount0 = balance0 - _reserve0;
        uint amount1 = balance1 - _reserve1;

        bool feeOn = _mintFee(_reserve0, _reserve1);
        uint _totalSupply = totalSupply; // gas savings, must be defined here since totalSupply can update in _mintFee
        if (_totalSupply == 0) {
            liquidity = Math.sqrt(amount0 * amount1) - MINIMUM_LIQUIDITY;
            _mint(address(0), MINIMUM_LIQUIDITY); // permanently lock the first MINIMUM_LIQUIDITY tokens
        } else {
            liquidity = Math.min(
                (amount0 * _totalSupply) / _reserve0,
                (amount1 * _totalSupply) / _reserve1
            );
        }
        require(liquidity > 0, "Squadswap: INSUFFICIENT_LIQUIDITY_MINTED");

        // uint256 _lpfee = _LPFee(liquidity);
        _mint(to, liquidity);

        _update(balance0, balance1, _reserve0, _reserve1);
        if (feeOn) kLast = uint(reserve0) * reserve1; // reserve0 and reserve1 are up-to-date
        emit Mint(msg.sender, amount0, amount1);
    }

    // this low-level function should be called from a contract which performs important safety checks
    function burn(
        address to
    ) external lock returns (uint amount0, uint amount1) {
        (uint112 _reserve0, uint112 _reserve1, ) = getReserves(); // gas savings
        address _token0 = token0; // gas savings
        address _token1 = token1; // gas savings
        uint balance0 = IERC20(_token0).balanceOf(address(this));
        uint balance1 = IERC20(_token1).balanceOf(address(this));
        uint liquidity = balanceOf[address(this)];

        bool feeOn = _mintFee(_reserve0, _reserve1);
        uint _totalSupply = totalSupply; // gas savings, must be defined here since totalSupply can update in _mintFee
        amount0 = (liquidity * (balance0)) / _totalSupply; // using balances ensures pro-rata distribution
        amount1 = (liquidity * (balance1)) / _totalSupply; // using balances ensures pro-rata distribution
        require(
            amount0 > 0 && amount1 > 0,
            "Squadswap: INSUFFICIENT_LIQUIDITY_BURNED"
        );
        _burn(address(this), liquidity);
        _safeTransfer(_token0, to, amount0);
        _safeTransfer(_token1, to, amount1);
        balance0 = IERC20(_token0).balanceOf(address(this));
        balance1 = IERC20(_token1).balanceOf(address(this));

        _update(balance0, balance1, _reserve0, _reserve1);
        if (feeOn) kLast = uint(reserve0) * (reserve1); // reserve0 and reserve1 are up-to-date
        emit Burn(msg.sender, amount0, amount1, to);
    }
    // this low-level function should be called from a contract which performs important safety checks
    function swap(
        uint amount0Out,
        uint amount1Out,
        address to,
        bytes calldata data
    ) external lock {
        require(
            amount0Out > 0 || amount1Out > 0,
            "Squadswap: INSUFFICIENT_OUTPUT_AMOUNT"
        );
        (uint112 _reserve0, uint112 _reserve1, ) = getReserves(); // gas savings
        require(
            amount0Out < _reserve0 && amount1Out < _reserve1,
            "Squadswap: INSUFFICIENT_LIQUIDITY"
        );

        uint balance0;
        uint balance1;
        {
            // scope for _token{0,1}, avoids stack too deep errors
            address _token0 = token0;
            address _token1 = token1;
            require(to != _token0 && to != _token1, "Squadswap: INVALID_TO");
            if (amount0Out > 0) _safeTransfer(_token0, to, amount0Out); // optimistically transfer tokens
            if (amount1Out > 0) _safeTransfer(_token1, to, amount1Out); // optimistically transfer tokens
            if (data.length > 0)
                ISquadswapCallee(to).squadswapCall(
                    msg.sender,
                    amount0Out,
                    amount1Out,
                    data
                );
            balance0 = IERC20(_token0).balanceOf(address(this));
            balance1 = IERC20(_token1).balanceOf(address(this));
        }
        uint amount0In = balance0 > _reserve0 - amount0Out
            ? balance0 - (_reserve0 - amount0Out)
            : 0;
        uint amount1In = balance1 > _reserve1 - amount1Out
            ? balance1 - (_reserve1 - amount1Out)
            : 0;
        require(
            amount0In > 0 || amount1In > 0,
            "Squadswap: INSUFFICIENT_INPUT_AMOUNT"
        );
        {
            // scope for reserve{0,1}Adjusted, avoids stack too deep errors
            uint balance0Adjusted = balance0 * (1000) - (amount0In * 2);
            uint balance1Adjusted = balance1 * (1000) - (amount1In * 2);
            require(
                balance0Adjusted * (balance1Adjusted) >=
                    uint(_reserve0) * (_reserve1) * (1000 ** 2),
                "Squadswap: K"
            );
        }

        _update(balance0, balance1, _reserve0, _reserve1);
        emit Swap(msg.sender, amount0In, amount1In, amount0Out, amount1Out, to);
    }

    // force balances to match reserves
    function skim(address to) external lock {
        address _token0 = token0; // gas savings
        address _token1 = token1; // gas savings
        _safeTransfer(
            _token0,
            to,
            IERC20(_token0).balanceOf(address(this)) - reserve0
        );
        _safeTransfer(
            _token1,
            to,
            IERC20(_token1).balanceOf(address(this)) - reserve1
        );
    }

    // force reserves to match balances
    function sync() external lock {
        _update(
            IERC20(token0).balanceOf(address(this)),
            IERC20(token1).balanceOf(address(this)),
            reserve0,
            reserve1
        );
    }

    function claimYieldAll(
        address _recipient,
        uint256 _amountWETH,
        uint256 _amountUSDB
    )
        external
        onlyManager
        returns (uint256 amountWETH, uint256 amountUSDB, uint256 amountGas)
    {
        amountWETH = IERC20Rebasing(WETHB).claim(_recipient, _amountWETH);
        amountUSDB = IERC20Rebasing(USDB).claim(_recipient, _amountUSDB);
        amountGas = IBlast(BLAST).claimMaxGas(address(this), _recipient);
        emit ClaimYieldAll(_recipient, amountWETH, amountUSDB, amountGas);
    }

    function claimGas(
        address _recipient,
        uint256 _minClaimRateBips
    ) external onlyManager returns (uint256 amount) {
        if (_minClaimRateBips == 0) {
            amount = BLAST.claimMaxGas(address(this), _recipient);
        } else {
            amount = BLAST.claimGasAtMinClaimRate(
                address(this),
                _recipient,
                _minClaimRateBips
            );
        }
        emit ClaimGas(_recipient, amount);
    }

    function setManager(address _manager) external onlyManager {
        manager = _manager;
    }
}
