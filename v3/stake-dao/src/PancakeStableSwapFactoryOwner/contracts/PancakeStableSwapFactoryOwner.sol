// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

import "@openzeppelin-4.5.0/contracts/access/Ownable.sol";
import "./interfaces/IPancakeStableSwapFactory.sol";
import "./interfaces/IPancakeStableSwap.sol";

contract PancakeStableSwapFactoryOwner is Ownable {
    IPancakeStableSwapFactory public immutable PancakeStableSwapFactory;

    // user can deploy new stable swap pair with permission.
    mapping(address => bool) public deployPermission;

    event UpdatePermission(address indexed user, bool permission);
    event NewStableSwapPair(address indexed user, address swapContract, address lpContract);

    error ZeroAddress();
    error NoPermission();
    error PairAlreadyExist(address swapContract);

    modifier onlyPermission() {
        if (!deployPermission[msg.sender]) {
            revert NoPermission();
        }
        _;
    }

    /**
     * @notice constructor
     * _factory : PancakeStableSwapFactory
     */
    constructor(IPancakeStableSwapFactory _factory) {
        PancakeStableSwapFactory = _factory;
    }

    struct PermissionConfig {
        address user;
        bool permission;
    }

    /**
     * @notice setPermission
     * @param _permissions : PermissionConfig array.
     */
    function setPermission(PermissionConfig[] calldata _permissions) external onlyOwner {
        for (uint256 i = 0; i < _permissions.length; i++) {
            PermissionConfig memory currentPermissionConfig = _permissions[i];
            if (currentPermissionConfig.user == address(0)) {
                revert ZeroAddress();
            }

            deployPermission[currentPermissionConfig.user] = currentPermissionConfig.permission;
            emit UpdatePermission(currentPermissionConfig.user, currentPermissionConfig.permission);
        }
    }

    /**
     * @notice createSwapPairWithPermission
     * @dev Create a new stable swap pair with permission.
     * @dev Can only create pair which does not exist.
     * @param _tokenA : Addresses of ERC20 conracts .
     * @param _tokenB : Addresses of ERC20 conracts .
     * @param _A : Amplification coefficient multiplied by n * (n - 1)
     * @param _fee : Fee to charge for exchanges
     * @param _admin_fee : Admin fee
     */
    function createSwapPairWithPermission(
        address _tokenA,
        address _tokenB,
        uint256 _A,
        uint256 _fee,
        uint256 _admin_fee
    ) external onlyPermission {
        _checkExistPair(_tokenA, _tokenB);
        _createSwapPair(_tokenA, _tokenB, _A, _fee, _admin_fee);
    }

    /**
     * @notice createSwapPair
     * @dev Create a new stable swap pair by owner.
     * @dev Can create pair which exists.
     * @dev It will update the stableSwapPairInfo in PancakeStableSwapFactory when deploying existing pair, and there is no effect on existing pairs.
     * @param _tokenA : Addresses of ERC20 conracts .
     * @param _tokenB : Addresses of ERC20 conracts .
     * @param _A : Amplification coefficient multiplied by n * (n - 1)
     * @param _fee : Fee to charge for exchanges
     * @param _admin_fee : Admin fee
     */
    function createSwapPair(
        address _tokenA,
        address _tokenB,
        uint256 _A,
        uint256 _fee,
        uint256 _admin_fee
    ) external onlyOwner {
        _createSwapPair(_tokenA, _tokenB, _A, _fee, _admin_fee);
    }

    /**
     * @notice setFactoryOwner
     * @dev Transfer ownership of PancakeStableSwapFactory.
     * @param _newOwner : New owner.
     */
    function setFactoryOwner(address _newOwner) external onlyOwner {
        PancakeStableSwapFactory.transferOwnership(_newOwner);
    }

    /**
     * @notice addPairInfo
     * @dev Add pair info to PancakeStableSwapFactory when we deploy a new factory.
     * @dev It will update the stableSwapPairInfo in PancakeStableSwapFactory, and there is no effect on existing pairs.
     * @param _swapContract : Swap contract.
     */
    function addPairInfo(address _swapContract) external onlyOwner {
        PancakeStableSwapFactory.addPairInfo(_swapContract);
    }

    function _createSwapPair(
        address _tokenA,
        address _tokenB,
        uint256 _A,
        uint256 _fee,
        uint256 _admin_fee
    ) internal {
        PancakeStableSwapFactory.createSwapPair(_tokenA, _tokenB, _A, _fee, _admin_fee);
        (address swapContract, , , address LPContract) = PancakeStableSwapFactory.getPairInfo(_tokenA, _tokenB);
        // transfer stable swap pool ownership to owner
        IPancakeStableSwap(swapContract).transferOwnership(owner());
        emit NewStableSwapPair(msg.sender, swapContract, LPContract);
    }

    function _checkExistPair(address _tokenA, address _tokenB) internal view {
        (address swapContract, , , ) = PancakeStableSwapFactory.getPairInfo(_tokenA, _tokenB);
        if (swapContract != address(0)) {
            revert PairAlreadyExist(swapContract);
        }
    }
}
