// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

import {Ownable2StepUpgradeable} from "@openzeppelin/contracts-upgradeable/access/Ownable2StepUpgradeable.sol";
import {IGaugeFactoryV2} from "./interfaces/IGaugeFactoryV2.sol";
import {IPermissionsRegistry} from '../interfaces/IPermissionsRegistry.sol';
import {IGauge} from '../interfaces/IGauge.sol';
import {GaugeV2} from "../GaugeV2.sol";

contract GaugeFactoryV2 is IGaugeFactoryV2, Ownable2StepUpgradeable {

    /// -----------------------------------------------------------------------
    /// Storage Variables
    /// -----------------------------------------------------------------------

    address public last_gauge;
    address public permissionsRegistry;

    address[] internal __gauges;
    /// @dev Uses initialize instead of constructor
    uint256[50] private __gap;
    event SetRegistry(address newRegistry);

    /// -----------------------------------------------------------------------
    /// Constructor
    /// -----------------------------------------------------------------------
    

    constructor() {}

    function initialize(address _permissionRegistry) initializer  public {
        __Ownable_init();   //after deploy ownership to multisig
        permissionsRegistry = _permissionRegistry;
    }

    /// -----------------------------------------------------------------------
    /// External functions
    /// -----------------------------------------------------------------------
    
    function setRegistry(address _registry) external {
        // TODO: Should this be onlyAllowed or onlyOwner?
        require(owner() == msg.sender, 'not owner');
        permissionsRegistry = _registry;
        emit SetRegistry(permissionsRegistry);
    }

    function gauges() external view returns(address[] memory) {
        return __gauges;
    }

    function length() external view returns(uint) {
        return __gauges.length;
    }


    function createGaugeV2(address _rewardToken,address _ve,address _token,address _distribution, address _internal_bribe, address _external_bribe, bool _isPair) external returns (address) {
        last_gauge = address(new GaugeV2(_rewardToken,_ve,_token,_distribution,_internal_bribe,_external_bribe,_isPair) );
        __gauges.push(last_gauge);
        return last_gauge;
    }

    /// -----------------------------------------------------------------------
    /// Modifiers
    /// -----------------------------------------------------------------------

    modifier onlyAllowed() {
        require(owner() == msg.sender || IPermissionsRegistry(permissionsRegistry).hasRole("GAUGE_ADMIN",msg.sender), 'ERR: GAUGE_ADMIN');
        _;
    }

    modifier EmergencyCouncil() {
        require( msg.sender == IPermissionsRegistry(permissionsRegistry).emergencyCouncil() );
        _;
    }

    /// -----------------------------------------------------------------------
    /// EmergencyCouncil functions
    /// -----------------------------------------------------------------------

    function activateEmergencyMode( address[] memory _gauges) external EmergencyCouncil {
        uint i = 0;
        for ( i ; i < _gauges.length; i++){
            IGauge(_gauges[i]).activateEmergencyMode();
        }
    }

    function stopEmergencyMode( address[] memory _gauges) external EmergencyCouncil {
        uint i = 0;
        for ( i ; i < _gauges.length; i++){
            IGauge(_gauges[i]).stopEmergencyMode();
        }
    }

    /// -----------------------------------------------------------------------
    /// Admin functions
    /// -----------------------------------------------------------------------

    function setPermissionsRegistry(address _registry) external onlyAllowed {
        require(_registry != address(0));
        permissionsRegistry = _registry;
    }

    function setGaugeRewarder( address[] memory _gauges, address[] memory _rewarder) external onlyAllowed {
        require(_gauges.length == _rewarder.length);
        uint i = 0;
        for ( i ; i < _gauges.length; i++){
            IGauge(_gauges[i]).setGaugeRewarder(_rewarder[i]);
        }
    }

    function setDistribution(address[] memory _gauges,  address distro) external onlyAllowed {
        uint i = 0;
        for ( i ; i < _gauges.length; i++){
            IGauge(_gauges[i]).setDistribution(distro);
        }
    }

    function addRewardToken(address[] memory _gauges,  address rewardToken) external onlyAllowed {
        uint i = 0;
        for ( i ; i < _gauges.length; i++){
            IGauge(_gauges[i]).addRewardToken(rewardToken);
        }
    }

    function updateRewardToken(address[] memory _gauges) external onlyAllowed {
        uint i = 0;
        for ( i ; i < _gauges.length; i++){
            IGauge(_gauges[i]).updateRewardToken();
        }
    }

    function setInternalBribe(address[] memory _gauges,  address[] memory int_bribe) external onlyAllowed {
        require(_gauges.length == int_bribe.length);
        uint i = 0;
        for ( i ; i < _gauges.length; i++){
            IGauge(_gauges[i]).setInternalBribe(int_bribe[i]);
        }
    }
}
