//SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import {LibClone} from "lib/solady/src/utils/LibClone.sol";
import {LibString} from "lib/solady/src/utils/LibString.sol";
import {Ownable} from "lib/solady/src/auth/Ownable.sol";
import {IRewardVaultFactory} from "src/interface/berachain/IRewardVaultFactory.sol";
import {IERC20Metadata} from "lib/OpenZeppelin-contracts/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import {IBault} from "src/interface/IBault.sol";

contract BaultFactory is Ownable {
    IRewardVaultFactory public immutable rewardVaultFactory;

    //List of allowed implementations of Baults. Multiple canonical implementations can be allowed
    mapping(address => bool) public isImplementationAllowed;
    address[] public allowedImplementations;

    //Deployed baults information
    address[] public allBaults; //list of all baults
    mapping(address => address) public baultToImplementation; //map farm to canonical implementation

    address public treasury;
    address public bgtConverter;

    mapping(address => bool) public pauser;

    //*********************** CONSTRUCTOR ***************************************************
    constructor(address _rewardVaultFactory, address _owner) {
        rewardVaultFactory = IRewardVaultFactory(_rewardVaultFactory);
        treasury = _owner;
        _initializeOwner(_owner);
    }

    //*********************** EXTERNAL FUNCTIONS *********************************************
    function deployBault(
        address _implementation,
        address _stakingToken,
        uint256 _bounty,
        string memory _name,
        string memory _symbol
    ) external onlyOwner returns (address)  {
        require(isImplementationAllowed[_implementation], "BaultFactory: Implementation not allowed");
        require(_stakingToken != address(0), "BaultFactory: Staking token cannot be zero address");

        address bault = LibClone.clone(_implementation);

        address _rewardVault = IRewardVaultFactory(rewardVaultFactory).getVault(_stakingToken);
        
        require(_rewardVault != address(0), "BaultFactory: Reward vault not found");
        
        IBault(bault).initialize(
            bytes(_name).length == 0 ? _getName(_stakingToken) : _name,
            bytes(_symbol).length == 0 ? _getSymbol(_stakingToken) : _symbol,
            _stakingToken,
            _rewardVault,
            _bounty
        );

        baultToImplementation[bault] = _implementation;
        allBaults.push(bault);
        emit BaultDeployed(bault, _implementation, _stakingToken);

        return bault;
    }

    //*********************** INTERNAL FUNCTIONS *********************************************
    function _getName(address _stakingToken) internal view returns (string memory) {
        try IERC20Metadata(_stakingToken).name() returns (string memory name) {
            return string(abi.encodePacked("Bault-", name));
        } catch {
            return string(abi.encodePacked("Bault-", LibString.toString(allBaults.length + 1)));
        }
    }

    function _getSymbol(address _stakingToken) internal view returns (string memory) {
        try IERC20Metadata(_stakingToken).symbol() returns (string memory symbol) {
            return string(abi.encodePacked("Bault-", symbol));
        } catch {
            return string(abi.encodePacked("Bault-", LibString.toString(allBaults.length + 1)));
        }
    }

//*********************** VIEW FUNCTIONS *************************************************
    //Return if a bault address is legitimately deployed through this factory
    function isLegitBault(address _bault) public view returns (bool) {
        return baultToImplementation[_bault] != address(0);
    }

    function allBaultsLength() external view returns (uint) {
        return allBaults.length;
    }

    function allowedImplementationsLength() external view returns (uint) {
        return allowedImplementations.length;
    }

    function getLatestImplementation() external view returns (address) {
        return allowedImplementations[allowedImplementations.length - 1];
    }

    //*********************** OWNERONLY CONFIGURATIONS ****************************************
    //Whitelist a bault implementation to be allowed to be deployed by the factory
    function setAllowedImplementation(address _implementation, bool _allowed) external onlyOwner {
        require(isImplementationAllowed[_implementation] != _allowed, "BaultFactory: No change needed");
        isImplementationAllowed[_implementation] = _allowed;
        if (_allowed) {
            allowedImplementations.push(_implementation);
        } else {
            uint256 length = allowedImplementations.length;
            for (uint256 i = 0; i < length; ++i) {
                if (allowedImplementations[i] == _implementation) {
                    allowedImplementations[i] = allowedImplementations[length - 1];
                    allowedImplementations.pop();
                    break;
                }
            }
        }
        emit AllowedImplementationSet(_implementation, _allowed);
    }

    function updateTreasury(address _treasury) external onlyOwner {
        require(_treasury != address(0), "BaultFactory: Treasury cannot be zero address");
        treasury = _treasury;
        emit TreasuryUpdated(_treasury);
    }

    function setBgtConverter(address _bgtConverter) external onlyOwner {
        bgtConverter = _bgtConverter;
        emit BgtConverter(_bgtConverter);
    }

    function setPauser(address _pauser, bool _status) external onlyOwner {
        require(_pauser != address(0), "Zero address");
        pauser[_pauser] = _status;
        emit PauserSet(_pauser, _status);
    }

    event TreasuryUpdated(address indexed treasury);
    event BaultDeployed(address indexed bault, address implementation, address indexed stakingToken);
    event BgtConverter(address indexed bgtConverter);
    event BgtWrapperToOperatorUpdated(address indexed bgtWrapper, address indexed operator);
    event AllowedImplementationSet(address indexed implementation, bool allowed);
    event PauserSet(address indexed pauser, bool status);
}