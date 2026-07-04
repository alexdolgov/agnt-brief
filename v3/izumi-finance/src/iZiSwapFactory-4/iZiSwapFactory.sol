

// Sources flattened with hardhat v2.21.0 https://hardhat.org

// SPDX-License-Identifier: BUSL-1.1 AND GPL-2.0-or-later AND MIT

// File @openzeppelin/contracts/utils/Context.sol@v4.9.6

// Original license: SPDX_License_Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.4) (utils/Context.sol)

pragma solidity ^0.8.0;

/**
 * @dev Provides information about the current execution context, including the
 * sender of the transaction and its data. While these are generally available
 * via msg.sender and msg.data, they should not be accessed in such a direct
 * manner, since when dealing with meta-transactions the account sending and
 * paying for execution may not be the actual sender (as far as an application
 * is concerned).
 *
 * This contract is only required for intermediate, library-like contracts.
 */
abstract contract Context {
    function _msgSender() internal view virtual returns (address) {
        return msg.sender;
    }

    function _msgData() internal view virtual returns (bytes calldata) {
        return msg.data;
    }

    function _contextSuffixLength() internal view virtual returns (uint256) {
        return 0;
    }
}


// File @openzeppelin/contracts/access/Ownable.sol@v4.9.6

// Original license: SPDX_License_Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (access/Ownable.sol)

pragma solidity ^0.8.0;

/**
 * @dev Contract module which provides a basic access control mechanism, where
 * there is an account (an owner) that can be granted exclusive access to
 * specific functions.
 *
 * By default, the owner account will be the one that deploys the contract. This
 * can later be changed with {transferOwnership}.
 *
 * This module is used through inheritance. It will make available the modifier
 * `onlyOwner`, which can be applied to your functions to restrict their use to
 * the owner.
 */
abstract contract Ownable is Context {
    address private _owner;

    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

    /**
     * @dev Initializes the contract setting the deployer as the initial owner.
     */
    constructor() {
        _transferOwnership(_msgSender());
    }

    /**
     * @dev Throws if called by any account other than the owner.
     */
    modifier onlyOwner() {
        _checkOwner();
        _;
    }

    /**
     * @dev Returns the address of the current owner.
     */
    function owner() public view virtual returns (address) {
        return _owner;
    }

    /**
     * @dev Throws if the sender is not the owner.
     */
    function _checkOwner() internal view virtual {
        require(owner() == _msgSender(), "Ownable: caller is not the owner");
    }

    /**
     * @dev Leaves the contract without owner. It will not be possible to call
     * `onlyOwner` functions. Can only be called by the current owner.
     *
     * NOTE: Renouncing ownership will leave the contract without an owner,
     * thereby disabling any functionality that is only available to the owner.
     */
    function renounceOwnership() public virtual onlyOwner {
        _transferOwnership(address(0));
    }

    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`).
     * Can only be called by the current owner.
     */
    function transferOwnership(address newOwner) public virtual onlyOwner {
        require(newOwner != address(0), "Ownable: new owner is the zero address");
        _transferOwnership(newOwner);
    }

    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`).
     * Internal function without access restriction.
     */
    function _transferOwnership(address newOwner) internal virtual {
        address oldOwner = _owner;
        _owner = newOwner;
        emit OwnershipTransferred(oldOwner, newOwner);
    }
}


// File contracts/interfaces/IiZiSwapFactory.sol

// Original license: SPDX_License_Identifier: BUSL-1.1
pragma solidity ^0.8.4;

interface IiZiSwapFactory {

    /// @notice emit when successfuly create a new pool (calling iZiSwapFactory#newPool)
    /// @param tokenX address of erc-20 tokenX
    /// @param tokenY address of erc-20 tokenY
    /// @param fee fee amount of swap (3000 means 0.3%)
    /// @param pointDelta minimum number of distance between initialized or limitorder points
    /// @param pool address of swap pool
    event NewPool(
        address indexed tokenX,
        address indexed tokenY,
        uint24 indexed fee,
        uint24 pointDelta,
        address pool
    );

    /// @notice module to support swap from tokenX to tokenY
    /// @return swapX2YModule address
    function swapX2YModule() external returns (address);

    /// @notice module to support swap from tokenY to tokenX
    /// @return swapY2XModule address
    function swapY2XModule() external returns (address);

    /// @notice module to support mint/burn/collect function of pool
    /// @return liquidityModule address
    function liquidityModule() external returns (address);

    /// @notice address of module for user to manage limit orders
    /// @return limitOrderModule address
    function limitOrderModule() external returns (address);

    /// @notice address of module for flash loan
    /// @return flashModule address
    function flashModule() external returns (address);

    /// @notice default fee rate from miner's fee gain
    /// @return defaultFeeChargePercent default fee rate * 100
    function defaultFeeChargePercent() external returns (uint24);

    /// @notice Enables a fee amount with the given pointDelta
    /// @dev Fee amounts may never be removed once enabled
    /// @param fee fee amount (3000 means 0.3%)
    /// @param pointDelta The spacing between points to be enforced for all pools created with the given fee amount
    function enableFeeAmount(uint24 fee, uint24 pointDelta) external;

    /// @notice Create a new pool which not exists.
    /// @param tokenX address of tokenX
    /// @param tokenY address of tokenY
    /// @param fee fee amount
    /// @param currentPoint initial point (log 1.0001 of price)
    /// @return address of newly created pool
    function newPool(
        address tokenX,
        address tokenY,
        uint24 fee,
        int24 currentPoint
    ) external returns (address);

    /// @notice Charge receiver of all pools.
    /// @return address of charge receiver
    function chargeReceiver() external view returns(address);

    /// @notice gas receiver of all pools.
    /// @return address of gas receiver
    function gasReceiver() external view returns(address);

    /// @notice swapPoolDeployer to create iZiSwapPool.
    /// @return address of swapPoolDeployer
    function swapPoolDeployer() external view returns(address);

    /// @notice SFS contract.
    /// @return address of SFS contract
    function SFS() external view returns(address);

    /// @notice SFS NFT ID.
    /// @return uint256 SFS NFT ID
    function SFSTokenId() external view returns(uint256);

    /// @notice Get pool of (tokenX, tokenY, fee), address(0) for not exists.
    /// @param tokenX address of tokenX
    /// @param tokenY address of tokenY
    /// @param fee fee amount
    /// @return address of pool
    function pool(
        address tokenX,
        address tokenY,
        uint24 fee
    ) external view returns(address);

    /// @notice Get point delta of a given fee amount.
    /// @param fee fee amount
    /// @return pointDelta the point delta
    function fee2pointDelta(uint24 fee) external view returns (int24 pointDelta);

    /// @notice Change charge receiver, only owner of factory can call.
    /// @param _chargeReceiver address of new receiver
    function modifyChargeReceiver(address _chargeReceiver) external;

    /// @notice Change gas receiver, only owner of factory can call.
    /// @param _gasReceiver address of new receiver
    function modifyGasReceiver(address _gasReceiver) external;

    /// @notice collect gas from SFS
    ///     only gasReceiver can call this interface
    function collectGas() external;

    /// @notice Change defaultFeeChargePercent
    /// @param _defaultFeeChargePercent new charge percent
    function modifyDefaultFeeChargePercent(uint24 _defaultFeeChargePercent) external;
    
    /// @notice set swap pool deployer, only owner of factory can call
    ///         and, can only call when swapPoolDeployer is 0x0...
    /// @param _swapPoolDeployer address of new receiver
    function setSwapPoolDeployer(address _swapPoolDeployer) external;

}


// File contracts/interfaces/ISFS.sol

// Original license: SPDX_License_Identifier: GPL-2.0-or-later
pragma solidity ^0.8.4;

/// @title Interface for ISFS
interface ISFS {
    function register(address _recipient) external returns (uint256 tokenId);
    function assign(uint256 _tokenId) external returns (uint256 tokenId);
    function withdraw(uint256 _tokenId, address payable _recipient, uint256 _amount) external returns (uint256);
}


// File contracts/interfaces/ISwapPoolDeployer.sol

// Original license: SPDX_License_Identifier: BUSL-1.1
pragma solidity ^0.8.4;

interface ISwapPoolDeployer {

    struct DeployPoolParams {
        address factory;
        address tokenX;
        address tokenY;
        uint24 fee;
        int24 currentPoint;
        int24 pointDelta;
        uint24 feeChargePercent;
    }
    
    function deployPoolParams() external view returns(
        address factory,
        address tokenX,
        address tokenY,
        uint24 fee,
        int24 currentPoint,
        int24 pointDelta,
        uint24 feeChargePercent
    );
    
    function newPool(
        DeployPoolParams calldata params,
        bytes32 salt
    ) external returns (address addr);
}


// File contracts/iZiSwapFactory.sol

// Original license: SPDX_License_Identifier: BUSL-1.1
pragma solidity ^0.8.4;



struct DeployPoolParams {
    address tokenX;
    address tokenY;
    uint24 fee;
    int24 currentPoint;
    int24 pointDelta;
    uint24 feeChargePercent;
}

contract iZiSwapFactory is Ownable, IiZiSwapFactory {

    /// @notice charge receiver of all pools in this factory
    address public override chargeReceiver;

    /// @notice gas receiver of all pools in this factory
    address public override gasReceiver;

    /// @notice swap pool deployer address
    address public override swapPoolDeployer;

    /// @notice SFS contract address
    address public override SFS;

    /// @notice SFS NFT ID
    uint256 public override SFSTokenId;

    /// @notice tokenX/tokenY/fee => pool address
    mapping(address => mapping(address => mapping(uint24 => address))) public override pool;

    /// @notice mapping from fee amount to pointDelta
    mapping(uint24 => int24) public override fee2pointDelta;

    /// @notice mark contract address in constructor to avoid delegate call
    address public only_addr_;

    /// @notice address of module to support swapX2Y(DesireY)
    address public override swapX2YModule;

    /// @notice address of module to support swapY2X(DesireX)
    address public override swapY2XModule;

    /// @notice address of module to support liquidity
    address public override liquidityModule;

    /// @notice address of module for user to manage limit orders
    address public override limitOrderModule;

    /// @notice address of module to support flash loan
    address public override flashModule;

    /// @notice default fee rate from miner's fee gain * 100
    uint24 public override defaultFeeChargePercent;

    /// @notice Construct the factory
    /// @param _SFS address of sfs address
    /// @param _gasReceiver address of gas receiver
    /// @param _chargeReceiver address of charge receiver
    /// @param _swapX2YModule swap module to support swapX2Y(DesireY)
    /// @param _swapY2XModule swap module to support swapY2X(DesireX)
    /// @param _liquidityModule liquidity module to support mint/burn/collect
    /// @param _limitOrderModule module for user to manage limit orders
    /// @param _flashModule module for user to flash
    /// @param _defaultFeeChargePercent default fee rate from miner's fee gain * 100
    constructor(
        address _SFS,
        address _gasReceiver, 
        address _chargeReceiver, 
        address _swapX2YModule, 
        address _swapY2XModule, 
        address _liquidityModule, 
        address _limitOrderModule, 
        address _flashModule,
        uint24 _defaultFeeChargePercent
    ) {
        SFS = _SFS;
        gasReceiver = _gasReceiver;
        only_addr_ = address(this);
        fee2pointDelta[100] = 1;
        fee2pointDelta[400] = 8;
        fee2pointDelta[2000] = 40;
        fee2pointDelta[10000] = 200;
        swapX2YModule = _swapX2YModule;
        swapY2XModule = _swapY2XModule;
        liquidityModule = _liquidityModule;
        chargeReceiver = _chargeReceiver;
        limitOrderModule = _limitOrderModule;
        flashModule = _flashModule;
        defaultFeeChargePercent = _defaultFeeChargePercent;
        SFSTokenId = ISFS(_SFS).register(address(this));
    }

    modifier noDelegateCall() {
        require(address(this) == only_addr_);
        _;
    }

    /// @inheritdoc IiZiSwapFactory
    function enableFeeAmount(uint24 fee, uint24 pointDelta) external override noDelegateCall onlyOwner {
        require(pointDelta > 0, "P0");
        require(fee2pointDelta[fee] == 0, "FD0");
        fee2pointDelta[fee] = int24(pointDelta);
    }

    /// @inheritdoc IiZiSwapFactory
    function newPool(
        address tokenX,
        address tokenY,
        uint24 fee,
        int24 currentPoint
    ) external override noDelegateCall returns (address addr) {
        require(swapPoolDeployer != address(0), "deployer not inited!");
        require(tokenX != tokenY, "SmTK");
        if (tokenX > tokenY) {
            (tokenX, tokenY) = (tokenY, tokenX);
        }
        require(pool[tokenX][tokenY][fee] == address(0));
        int24 pointDelta = fee2pointDelta[fee];

        require(pointDelta > 0, 'pd');

        ISwapPoolDeployer.DeployPoolParams memory deployPoolParams = ISwapPoolDeployer.DeployPoolParams({
            factory: address(this),
            tokenX: tokenX,
            tokenY: tokenY,
            fee: fee,
            currentPoint: currentPoint,
            pointDelta: pointDelta,
            feeChargePercent: defaultFeeChargePercent
        });
        bytes32 salt = keccak256(abi.encode(tokenX, tokenY, fee));
        addr = ISwapPoolDeployer(swapPoolDeployer).newPool(deployPoolParams, salt);

        pool[tokenX][tokenY][fee] = addr;
        pool[tokenY][tokenX][fee] = addr;
        emit NewPool(tokenX, tokenY, fee, uint24(pointDelta), addr);
    }

    /// @inheritdoc IiZiSwapFactory
    function modifyChargeReceiver(address _chargeReceiver) external override onlyOwner {
        chargeReceiver = _chargeReceiver;
    }

    /// @inheritdoc IiZiSwapFactory
    function modifyGasReceiver(address _gasReceiver) external override onlyOwner {
        gasReceiver = _gasReceiver;
    }

    /// @inheritdoc IiZiSwapFactory
    function collectGas() external override {
        require(msg.sender == gasReceiver, "NR");
        ISFS(SFS).withdraw(SFSTokenId, payable(msg.sender), type(uint256).max);
    }

    /// @inheritdoc IiZiSwapFactory
    function modifyDefaultFeeChargePercent(uint24 _defaultFeeChargePercent) external override onlyOwner {
        defaultFeeChargePercent = _defaultFeeChargePercent;
    }

    function setSwapPoolDeployer(address _swapPoolDeployer) external override onlyOwner {
        require(swapPoolDeployer == address(0), "has set deployer!");
        swapPoolDeployer = _swapPoolDeployer;
    }
    
}
