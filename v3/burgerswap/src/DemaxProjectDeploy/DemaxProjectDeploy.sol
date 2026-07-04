// Dependency file: contracts/modules/ProjectConfigable.sol

// pragma solidity >=0.6.6;

interface IConfig {
    function dev() external view returns (address);
    function admin() external view returns (address);
}

contract ProjectConfigable {
    address public config;
    address public owner;

    constructor() public {
        owner = msg.sender;
    }
    
    function setupConfig(address _config) external onlyOwner {
        config = _config;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, 'OWNER FORBIDDEN');
        _;
    }

    function admin() public view returns(address) {
        if(config != address(0)) {
            return IConfig(config).admin();
        }
        return owner;
    }

    function dev() public view returns(address) {
        if(config != address(0)) {
            return IConfig(config).dev();
        }
        return owner;
    }

    function changeOwner(address _user) external onlyOwner {
        require(owner != _user, 'IFOConfig: NO CHANGE');
        owner = _user;
    }
    
    modifier onlyDev() {
        require(msg.sender == dev() || msg.sender == owner, 'dev FORBIDDEN');
        _;
    }
    
    modifier onlyAdmin() {
        require(msg.sender == admin() || msg.sender == owner, 'admin FORBIDDEN');
        _;
    }
}
// Dependency file: contracts/libraries/TransferHelper.sol

// SPDX-License-Identifier: GPL-3.0-or-later

// pragma solidity >=0.6.0;

// helper methods for interacting with ERC20 tokens and sending ETH that do not consistently return true/false
library TransferHelper {
    function safeApprove(address token, address to, uint value) internal {
        // bytes4(keccak256(bytes('approve(address,uint256)')));
        (bool success, bytes memory data) = token.call(abi.encodeWithSelector(0x095ea7b3, to, value));
        require(success && (data.length == 0 || abi.decode(data, (bool))), 'TransferHelper: APPROVE_FAILED');
    }

    function safeTransfer(address token, address to, uint value) internal {
        // bytes4(keccak256(bytes('transfer(address,uint256)')));
        (bool success, bytes memory data) = token.call(abi.encodeWithSelector(0xa9059cbb, to, value));
        require(success && (data.length == 0 || abi.decode(data, (bool))), 'TransferHelper: TRANSFER_FAILED');
    }

    function safeTransferFrom(address token, address from, address to, uint value) internal {
        // bytes4(keccak256(bytes('transferFrom(address,address,uint256)')));
        (bool success, bytes memory data) = token.call(abi.encodeWithSelector(0x23b872dd, from, to, value));
        require(success && (data.length == 0 || abi.decode(data, (bool))), 'TransferHelper: TRANSFER_FROM_FAILED');
    }

    function safeTransferETH(address to, uint value) internal {
        (bool success,) = to.call{value:value}(new bytes(0));
        require(success, 'TransferHelper: ETH_TRANSFER_FAILED');
    }
}

// Dependency file: contracts/libraries/SafeMath.sol

// SPDX-License-Identifier: MIT

// pragma solidity ^0.6.0;

/**
 * @dev Wrappers over Solidity's arithmetic operations with added overflow
 * checks.
 *
 * Arithmetic operations in Solidity wrap on overflow. This can easily result
 * in bugs, because programmers usually assume that an overflow raises an
 * error, which is the standard behavior in high level programming languages.
 * `SafeMath` restores this intuition by reverting the transaction when an
 * operation overflows.
 *
 * Using this library instead of the unchecked operations eliminates an entire
 * class of bugs, so it's recommended to use it always.
 */
library SafeMath {
    /**
     * @dev Returns the addition of two unsigned integers, reverting on
     * overflow.
     *
     * Counterpart to Solidity's `+` operator.
     *
     * Requirements:
     *
     * - Addition cannot overflow.
     */
    function add(uint256 a, uint256 b) internal pure returns (uint256) {
        uint256 c = a + b;
        require(c >= a, "SafeMath: addition overflow");

        return c;
    }

    /**
     * @dev Returns the subtraction of two unsigned integers, reverting on
     * overflow (when the result is negative).
     *
     * Counterpart to Solidity's `-` operator.
     *
     * Requirements:
     *
     * - Subtraction cannot overflow.
     */
    function sub(uint256 a, uint256 b) internal pure returns (uint256) {
        return sub(a, b, "SafeMath: subtraction overflow");
    }

    /**
     * @dev Returns the subtraction of two unsigned integers, reverting with custom message on
     * overflow (when the result is negative).
     *
     * Counterpart to Solidity's `-` operator.
     *
     * Requirements:
     *
     * - Subtraction cannot overflow.
     */
    function sub(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {
        require(b <= a, errorMessage);
        uint256 c = a - b;

        return c;
    }

    /**
     * @dev Returns the multiplication of two unsigned integers, reverting on
     * overflow.
     *
     * Counterpart to Solidity's `*` operator.
     *
     * Requirements:
     *
     * - Multiplication cannot overflow.
     */
    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
        // Gas optimization: this is cheaper than requiring 'a' not being zero, but the
        // benefit is lost if 'b' is also tested.
        // See: https://github.com/OpenZeppelin/openzeppelin-contracts/pull/522
        if (a == 0) {
            return 0;
        }

        uint256 c = a * b;
        require(c / a == b, "SafeMath: multiplication overflow");

        return c;
    }

    /**
     * @dev Returns the integer division of two unsigned integers. Reverts on
     * division by zero. The result is rounded towards zero.
     *
     * Counterpart to Solidity's `/` operator. Note: this function uses a
     * `revert` opcode (which leaves remaining gas untouched) while Solidity
     * uses an invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function div(uint256 a, uint256 b) internal pure returns (uint256) {
        return div(a, b, "SafeMath: division by zero");
    }

    /**
     * @dev Returns the integer division of two unsigned integers. Reverts with custom message on
     * division by zero. The result is rounded towards zero.
     *
     * Counterpart to Solidity's `/` operator. Note: this function uses a
     * `revert` opcode (which leaves remaining gas untouched) while Solidity
     * uses an invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function div(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {
        require(b > 0, errorMessage);
        uint256 c = a / b;
        // assert(a == b * c + a % b); // There is no case in which this doesn't hold

        return c;
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers. (unsigned integer modulo),
     * Reverts when dividing by zero.
     *
     * Counterpart to Solidity's `%` operator. This function uses a `revert`
     * opcode (which leaves remaining gas untouched) while Solidity uses an
     * invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function mod(uint256 a, uint256 b) internal pure returns (uint256) {
        return mod(a, b, "SafeMath: modulo by zero");
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers. (unsigned integer modulo),
     * Reverts with custom message when dividing by zero.
     *
     * Counterpart to Solidity's `%` operator. This function uses a `revert`
     * opcode (which leaves remaining gas untouched) while Solidity uses an
     * invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function mod(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {
        require(b != 0, errorMessage);
        return a % b;
    }
}
pragma solidity >=0.6.6;

// import './libraries/SafeMath.sol';
// import './libraries/TransferHelper.sol';
// import './modules/ProjectConfigable.sol';

interface IDemaxProjectFactory {
    function initialize (address _mintToken, address _admin, string calldata _intro) external;
    function mintToken() external view returns (address);
}

interface IDemaxProjectPool {
    function initialize (address _mintToken, address _burgerToken, address _lpToken, address _factory) external;
}

contract DemaxProjectDeploy is ProjectConfigable {
    uint public version = 1;
    mapping(address => address) public factoryList;
    mapping(address => mapping(address => address)) public poolList;
    address[] public factories;
    uint public factoryListLength;
    mapping(address => uint) public factoryPoolListLength;
    mapping(address => address[]) public factoryPools;
    bytes32 public factoryByteCodeHash;
    bytes32 public poolByteCodeHash;
    address public burgerToken;
    mapping(address => bool) public disabledFactory;
    mapping(address => bool) public disabledPool;

    event FactoryCreated(address indexed token, address indexed factory);
    event PoolCreated(address indexed factory, address indexed lpToken, address pool);

    function initialize (address _burgerToken, bytes32 _factoryByteCodeHash, bytes32 _poolByteCodeHash) external onlyOwner {
        burgerToken = _burgerToken;
        factoryByteCodeHash = _factoryByteCodeHash;
        poolByteCodeHash = _poolByteCodeHash;
    }

    function createFactory(
        address _mintToken,
        string calldata _intro,
        bytes calldata _bytecode
    ) external onlyDev returns (address factory) {
        require(factoryList[_mintToken] == address(0), 'DemaxProjectDeploy: FACTORY_EXISTS'); // single check is sufficient
        bytes32 salt = keccak256(abi.encodePacked(_mintToken));
        bytes memory bytecode = _bytecode;
        require(keccak256(bytecode) == factoryByteCodeHash, "INVALID BYTECODE.");
        
        assembly {
            factory := create2(0, add(bytecode, 32), mload(bytecode), salt)
        }

        factoryListLength ++;
        factoryList[_mintToken] = factory;
        factories.push(factory);
        ProjectConfigable(factory).setupConfig(config);
        IDemaxProjectFactory(factory).initialize(_mintToken, ProjectConfigable(config).admin(), _intro);
        emit FactoryCreated(_mintToken, factory);
        return factory;
    }

    function createPool(
        address _factory,
        address _lpToken,
        bytes calldata _bytecode
    ) external onlyDev returns (address pool) {
        require(poolList[_factory][_lpToken]== address(0), 'DemaxProjectDeploy: POOL_EXISTS'); // single check is sufficient
        bytes32 salt = keccak256(abi.encodePacked(_factory, _lpToken));
        bytes memory bytecode = _bytecode;
        require(keccak256(bytecode) == poolByteCodeHash, "INVALID BYTECODE.");
        
        assembly {
            pool := create2(0, add(bytecode, 32), mload(bytecode), salt)
        }

        factoryPoolListLength[_factory] ++;
        poolList[_factory][_lpToken] = pool;
        factoryPools[_factory].push(pool);
        IDemaxProjectPool(pool).initialize(
            IDemaxProjectFactory(_factory).mintToken(), 
            burgerToken,
            _lpToken,
            _factory
        );
        emit PoolCreated(_factory, _lpToken, pool);
        return pool;
    }

    function getPoolByIndex(address _factory, uint _index) external view returns (address) {
        return factoryPools[_factory][_index];
    }

    function getFactoryList() external view returns (address[] memory) {
        return factories;
    }

    function getPoolList(address _factory) external view returns (address[] memory) {
        return factoryPools[_factory];
    }

    function setFactory(address _factory, bool _value) external onlyDev returns (bool) {
        disabledFactory[_factory] = _value;
        return _value;
    }

    function setPool(address _pool, bool _value) external onlyDev returns (bool) {
        disabledPool[_pool] = _value;
        return _value;
    }
}