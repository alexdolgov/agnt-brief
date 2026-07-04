// SPDX-License-Identifier: GPLv3

pragma solidity ^0.7.5;

import '@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol';
import '@openzeppelin/contracts/proxy/ProxyAdmin.sol';

import '../token/OriginatorStaking.sol';

/**
 * @title  OriginatorStaking
 * @notice Contract to stake Originator Hub tokens, tokenize the position and get rewards, inheriting from a distribution manager contract
 * @author Aave / Ethichub
 **/
contract OriginatorStakingFactory is OwnableUpgradeable {
    using SafeERC20Upgradeable for IERC20Upgradeable;
    address public originatorImplementation;
    mapping(string => address) public getOriginator;
    address[] public allOriginators;
    address public originatorProxyAdmin;

    event OriginatorCreated(address originator, uint256);
    event OriginatorAdded(address originator, uint256);
    event OriginatorRemoved(address originator, uint256);
    event OriginatorUpgraded(address originator, address implementation);

    function initialize(address implementation) public initializer {
        __Ownable_init();
        originatorImplementation = implementation;
        originatorProxyAdmin = address(new ProxyAdmin());
    }

    /**
     * @notice Function to get originators length
     * @return uint
     */
    function allOriginatorsLength() external view returns (uint256) {
        return allOriginators.length;
    }

    /**
     * @notice Function to get array of addresses for all originators
     */
    function getAllOriginators() external view returns (address[] memory) {
        return allOriginators;
    }

    /**
     * @notice Function to create new Originator proxy
     * @param _name string
     * @param _symbol string
     * @param _lockedToken address (ERC20 token)
     * @param _rewardsVault address (Rewards reserve)
     * @param _emissionManager address 
     * @param _distributionDuration uint128 seconds
     */
   function createOriginator(
        string memory _name,
        string memory _symbol,
        IERC20Upgradeable _lockedToken,
        IReserve _rewardsVault,
        address _emissionManager,
        uint128 _distributionDuration
    ) external onlyOwner returns (address) {
        require(getOriginator[_symbol] == address(0), 'ORIGINATOR_EXISTS');
        address originatorProxy = _createOriginator(
            _name,
            _symbol,
            _lockedToken,
            _rewardsVault,
            _emissionManager,
            _distributionDuration
        );
        return originatorProxy;
    }

    /**
     * @notice Function to change originator implementation, set this to all originators
     * @param implementation address
     */
    function changeOriginatorImplementation (address implementation) external onlyOwner {
        _changeOriginatorImplementation(implementation);
    }

    /**
     * @notice Function to add new originator
     * @param proxy address (Originator)
     */
    function addOriginator(address proxy) external onlyOwner {
        _addOriginator(proxy);
    }

    /**
     * @notice Function to delete originator
     * @param proxy address (Originator)
     */
    function deleteOriginator(address proxy) external onlyOwner {
        _deleteOriginator(proxy);
    }

    function _createOriginator( 
        string memory _name,
        string memory _symbol,
        IERC20Upgradeable _lockedToken,
        IReserve _rewardsVault,
        address _emissionManager,
        uint128 _distributionDuration
    ) internal returns (address) {
        require(getOriginator[_symbol] == address(0), 'ORIGINATOR_EXISTS');
        // ERC1967 transparent proxy upgradeble
        TransparentUpgradeableProxy originatorProxy = new TransparentUpgradeableProxy(
            address(originatorImplementation), 
            address(originatorProxyAdmin), 
            abi.encodeWithSelector(
                OriginatorStaking(originatorImplementation).initialize.selector, 
                _name,
                _symbol,
                _lockedToken,
                _rewardsVault,
                _emissionManager,
                _distributionDuration
            ));
        getOriginator[_symbol] = address(originatorProxy);
        allOriginators.push(address(originatorProxy));
        emit OriginatorCreated(address(originatorProxy), allOriginators.length);
        return address(originatorProxy);
    }

    function _changeOriginatorImplementation(address implementation) internal {
        for (uint32 i = 0; i < allOriginators.length; i++) {
            _upgradeOriginatorImplementation(allOriginators[i], implementation);
        }
        originatorImplementation = implementation;
    }

    function _upgradeOriginatorImplementation(address proxy, address implementation) internal {
        ProxyAdmin(originatorProxyAdmin).upgrade(TransparentUpgradeableProxy(payable(proxy)), implementation);
        emit OriginatorUpgraded(proxy, implementation);
    }

    function _addOriginator(address proxy) internal {
        require(getOriginator[OriginatorStaking(proxy).symbol()] == address(0), 'ORIGINATOR_EXISTS');
        (bool success, bytes memory implementation_data) = originatorProxyAdmin.call(
            abi.encodeWithSignature("getProxyImplementation(address)", proxy)
        );
        require(success, 'PROXYADMIN_IS_DIFFERENT');
        address implementation = abi.decode(implementation_data, (address));
        if (implementation != originatorImplementation) {
            _upgradeOriginatorImplementation(proxy, originatorImplementation);
        }
        getOriginator[OriginatorStaking(proxy).symbol()] = address(proxy);
        allOriginators.push(proxy);
        emit OriginatorAdded(proxy, allOriginators.length);
    }

    function _deleteOriginator(address proxy) internal {
        require(getOriginator[OriginatorStaking(proxy).symbol()] != address(0), 'ORIGINATOR_NOT_EXISTS');
        bool found = false;
        for (uint32 i = 0; i < allOriginators.length - 1; i++) {
            if (proxy == allOriginators[i]) { 
                found = true;
                allOriginators[i] = allOriginators[i + 1];
            } else if (found) {
                allOriginators[i] = allOriginators[i + 1];
            }
        }
        delete getOriginator[OriginatorStaking(proxy).symbol()];
        allOriginators.pop();
        emit OriginatorRemoved(proxy, allOriginators.length);
    }

    /** 
     * @dev storage gaps 
     * 1 originatorImplementation
     * 1 getOriginator
     * 1 allOriginators
     * 1 originatorProxyAdmin
     * 46 __gap
     */ 
    uint256[46] private __gap;
}
