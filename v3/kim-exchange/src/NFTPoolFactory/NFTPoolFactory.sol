// SPDX-License-Identifier: MIT
pragma solidity =0.7.6;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

import "./interfaces/IFeeSharing.sol";
import "./interfaces/IKimMaster.sol";
import "./interfaces/tokens/IXKimToken.sol";
import "./NFTPool.sol";

contract NFTPoolFactory {
    IKimMaster public immutable master; // Address of the master
    IERC20 public immutable kimToken;
    IXKimToken public immutable xKimToken;

    mapping(address => address) public getPool;
    address[] public pools;

    constructor(IKimMaster master_, IERC20 kimToken_, IXKimToken xKimToken_) {
        master = master_;
        kimToken = kimToken_;
        xKimToken = xKimToken_;
    }

    /**
     * @dev Throws if called by any account other than the owner.
     */
    modifier onlyOwner() {
        require(
            owner() == msg.sender,
            "NFTPoolFactory: caller is not the owner"
        );
        _;
    }

    event PoolCreated(address indexed lpToken, address pool);

    function poolsLength() external view returns (uint256) {
        return pools.length;
    }

    function createPool(address lpToken) external returns (address pool) {
        require(getPool[lpToken] == address(0), "pool exists");

        bytes memory bytecode_ = _bytecode();
        bytes32 salt = keccak256(abi.encodePacked(lpToken));
        /* solhint-disable no-inline-assembly */
        assembly {
            pool := create2(0, add(bytecode_, 32), mload(bytecode_), salt)
        }
        require(pool != address(0), "failed");

        NFTPool(pool).initialize(master, kimToken, xKimToken, IERC20(lpToken));
        getPool[lpToken] = pool;
        pools.push(pool);

        emit PoolCreated(lpToken, pool);
    }

    function _bytecode() internal pure virtual returns (bytes memory) {
        return type(NFTPool).creationCode;
    }

    /**
     * @dev Returns this contract's owner (= master contract's owner)
     */
    function owner() public view returns (address) {
        return master.owner();
    }
}
