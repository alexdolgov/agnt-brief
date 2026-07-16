// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

import {Clones} from "@openzeppelin/contracts/proxy/Clones.sol";
import {Ownable2StepUpgradeable} from "@openzeppelin/contracts-upgradeable/access/Ownable2StepUpgradeable.sol";
import {IAccessControl} from "@openzeppelin/contracts/access/IAccessControl.sol";
import {IGaugeFactoryV2_Gamma} from "./interfaces/IGaugeFactoryV2.sol";
import {IPermissionsRegistry} from '../interfaces/IPermissionsRegistry.sol';

import {GaugeV2_CL} from "../GaugeV2_CL.sol";
import {IGauge} from '../interfaces/IGauge.sol';
import {IFeeVault} from '../interfaces/IFeeVault_Init.sol';


contract GaugeFactoryV2_CL is IGaugeFactoryV2_Gamma, Ownable2StepUpgradeable {

    /// -----------------------------------------------------------------------
    /// Storage variables
    /// -----------------------------------------------------------------------

    address public last_gauge;
    address public last_feeVault;
    address public feeVaultImplementation;
    address public permissionsRegistry;
    address public gammaFeeRecipient;
    address public pairFactoryClassic;

    address[] internal __gauges;
    /// @dev Gap to provide storage for future variables
    uint256[50] private __gap;

    /// -----------------------------------------------------------------------
    /// Constructor
    /// -----------------------------------------------------------------------

    constructor() {}
    
    function initialize(address _permissionsRegistry, address _gammaFeeRecipient, address _pairFactoryClassic, address _feeVaultImplementation) initializer  public {
        __Ownable_init();   //after deploy ownership to multisig
        permissionsRegistry = _permissionsRegistry;
        gammaFeeRecipient = _gammaFeeRecipient;
        pairFactoryClassic = _pairFactoryClassic;
        // FeeVault implementation
        require(IFeeVault(_feeVaultImplementation).isFeeVault(), "FeeVaultImplementation.isFeeVault() == false");
        feeVaultImplementation = _feeVaultImplementation;
    }

    /// -----------------------------------------------------------------------
    /// External functions
    /// -----------------------------------------------------------------------

    function gauges() external view returns(address[] memory) {
        return __gauges;
    }

    function length() external view returns(uint) {
        return __gauges.length;
    }

    function createGaugeV2(address _rewardToken,address _ve,address _token,address _distribution, address _internal_bribe, address _external_bribe, bool /*_isPair*/) external returns (address) {
    
        last_feeVault = Clones.clone(feeVaultImplementation);
        IFeeVault(last_feeVault).initialize(_token, permissionsRegistry, _distribution, gammaFeeRecipient, pairFactoryClassic);

        last_gauge = address(new GaugeV2_CL(_rewardToken,_ve,_token,_distribution,_internal_bribe,_external_bribe, last_feeVault) );

        __gauges.push(last_gauge);

        return last_gauge;
    }

    /// -----------------------------------------------------------------------
    /// Modifiers
    /// -----------------------------------------------------------------------

    modifier onlyAllowed() {
        require(IPermissionsRegistry(permissionsRegistry).hasRole("GAUGE_ADMIN",msg.sender), 'ERR: GAUGE_ADMIN');
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
    /// Allowed functions
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

    function setGaugeFeeVault(address[] memory _gauges,  address _vault) external onlyAllowed {
        require(_vault != address(0));
        uint i = 0;
        for ( i ; i < _gauges.length; i++){
            require(_gauges[i] != address(0));
            IGauge(_gauges[i]).setFeeVault(_vault);
        }
    }

    function setGammaDefaultFeeRecipient(address _rec) external onlyAllowed {
        require(_rec != address(0));
        gammaFeeRecipient = _rec;
    }

}
