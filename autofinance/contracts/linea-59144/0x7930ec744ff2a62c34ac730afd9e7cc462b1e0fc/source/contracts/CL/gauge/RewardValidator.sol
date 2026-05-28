// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IXRex} from "contracts/interfaces/IXRex.sol";
import {EnumerableSet} from "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import {IAccessHub} from "contracts/interfaces/IAccessHub.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {ISwapRouter} from "contracts/CL/periphery/interfaces/ISwapRouter.sol";
import {IFeeDistributor} from "contracts/interfaces/IFeeDistributor.sol";
import {IRamsesV3Pool} from "contracts/CL/core/interfaces/IRamsesV3Pool.sol";
import {IPairFactory} from "contracts/interfaces/IPairFactory.sol";
import {IRouter} from "contracts/interfaces/IRouter.sol";
import {IRamsesV3PositionManager} from "contracts/CL/periphery/interfaces/IRamsesV3PositionManager.sol";
import {PositionKey} from "contracts/CL/periphery/libraries/PositionKey.sol";
import {IAccessHub} from "contracts/interfaces/IAccessHub.sol";
import {IVoter} from "contracts/interfaces/IVoter.sol";
import {IRewardValidator} from "./interfaces/IRewardValidator.sol";

/// @dev this contract is used to validate rewards for sybil JIT attackers
/// it is meant to never be verified in order to hide the slashing logic 
/// from public view for obvious reasons
contract RewardValidator is IRewardValidator, Initializable {
    using EnumerableSet for EnumerableSet.AddressSet;
    using EnumerableSet for EnumerableSet.Bytes32Set;
    
    /// storage
    EnumerableSet.AddressSet private _accountsBlacklisted;
    EnumerableSet.Bytes32Set private _positionHashesBlacklisted;
    
    IAccessHub public accessHub;
    IVoter public voter;
    IRamsesV3PositionManager public nfpManager;
    IRamsesV3Pool public pool;


    /// types
    /// errors
    /// constructors
    constructor() {
        _disableInitializers();
    }

    /// initializers
    function initialize(address _accessHub, address _ramsesV3PositionManager) external initializer {
        accessHub = IAccessHub(_accessHub);
        voter = IVoter(accessHub.voter());
        nfpManager = IRamsesV3PositionManager(_ramsesV3PositionManager);
    }

    /// modifiers
    modifier onlyAuthorized() {
        require(
            msg.sender == 0xB3bfB32977cFd6200AB9537E3703e501d8381c9B ||
            msg.sender == accessHub.timelock() ||
            msg.sender == accessHub.treasury(),
            "!AUTH"
        );
        _;
    }

    /// functions
    /// @dev helper fn for caller to ban easily just by nfp id
    function addNfpIdToBlacklist(uint256 _nfpId, address _nfpManager) public onlyAuthorized {
        
        (
            ,
            ,
            ,
            int24 tickLower,
            int24 tickUpper,
            ,
            ,
            ,
            ,
        ) = IRamsesV3PositionManager(_nfpManager).positions(_nfpId);
        
        bytes32 positionHash = PositionKey.compute(
            _nfpManager,
            _nfpId,
            tickLower,
            tickUpper
        );
        _positionHashesBlacklisted.add(positionHash);
    }
    function removeNfpIdFromBlacklist(uint256 _nfpId, address _nfpManager) public onlyAuthorized {
         (
            ,
            ,
            ,
            int24 tickLower,
            int24 tickUpper,
            ,
            ,
            ,
            ,
        ) = IRamsesV3PositionManager(_nfpManager).positions(_nfpId);
        
        bytes32 positionHash = PositionKey.compute(
            _nfpManager,
            _nfpId,
            tickLower,
            tickUpper
        );
        _positionHashesBlacklisted.remove(positionHash);
    }

    function getNfpIdsOfAccount(address _account, address _nfpManager) public view returns (uint256[] memory) {
        uint256 nfpIdLength = IRamsesV3PositionManager(_nfpManager).balanceOf(_account);
        uint256[] memory nfpIds = new uint256[](nfpIdLength);
        for (uint256 i = 0; i < nfpIdLength; i++) {
            nfpIds[i] = IRamsesV3PositionManager(_nfpManager).tokenOfOwnerByIndex(_account, i);
        }
        return nfpIds;
    }

    function addAccountToBlacklist(address _account) external onlyAuthorized {
        _accountsBlacklisted.add(_account);
    }
    function removeAccountFromBlacklist(address _account) external onlyAuthorized {
        _accountsBlacklisted.remove(_account);
    }
    function addPositionHashToBlacklist(bytes32 _positionHash) external onlyAuthorized {
        _positionHashesBlacklisted.add(_positionHash);
    }
    function removePositionHashFromBlacklist(bytes32 _positionHash) external onlyAuthorized {
        _positionHashesBlacklisted.remove(_positionHash);
    }
    /// @dev can run out of gas if too many nfp ids owned
    function tryMassBlacklist(address _account, address _nfpManager) external onlyAuthorized {
        uint256[] memory nfpIds = getNfpIdsOfAccount(_account, _nfpManager);
        for (uint256 i = 0; i < nfpIds.length; i++) {
            addNfpIdToBlacklist(nfpIds[i], _nfpManager);
        }

    }
    /// @dev
    function batchBlackListByNfpIds(uint256[] memory _nfpIds, address _nfpManager) external onlyAuthorized {
        for (uint256 i = 0; i < _nfpIds.length; i++) {
            addNfpIdToBlacklist(_nfpIds[i], _nfpManager);
        }
    }

    /// @dev returns true if the account or position hash is blacklisted OR fails time-based validation
    /// @dev this function is called by the gauge contract to validate rewards
    /// @param _owner the owner of the position (NFPManager for NFT positions)
    /// @param _receiver the receiver of the rewards
    /// @param _positionHash the hash of the position
    /// @param _origin the origin of the claim (tx.origin)
    /// @param _index the position index (tokenId for NFT positions)
    /// @param _tickLower the lower tick of the position
    /// @param _tickUpper the upper tick of the position
    /// @return true if the position should be slashed (blacklisted or too recently modified)
    function validateReward(
        address _owner, 
        address _receiver, 
        bytes32 _positionHash, 
        address _origin,
        uint256 _index,
        int24 _tickLower,
        int24 _tickUpper
    ) external view returns (bool) {
        // BLACKLIST VALIDATION
        if (_accountsBlacklisted.contains(_owner) || 
            _accountsBlacklisted.contains(_receiver) || 
            _accountsBlacklisted.contains(_origin) ||
            _positionHashesBlacklisted.contains(_positionHash)) {
            return true; // should be slashed
        }
        
        // TIME THRESHOLD VALIDATION
        if (!voter.isAntiSybilEnabled()) {
            return false; // not slashed if anti-sybil is disabled
        }
        
        uint256 timeThreshold = voter.timeThresholdForRewarder();
        
        // time-based validation (only for the new RamsesV3PositionManager)
        if (_owner == address(nfpManager)) {
            // nft position - use NFPManager's griefing-resistant checkpoint
            uint32 lastModified = nfpManager.positionLastModified(_index);
            
            // new positions (never modified) are valid
            if (lastModified == 0) {
                return false; // valid, not slashed
            }
            
            uint256 elapsedTime = block.timestamp - lastModified;
            return elapsedTime <= timeThreshold; // slash if modified too recently
        } 

        return false;
    }

    function isNfpIdBlacklisted(uint256 _nfpId, address _nfpManager) external view returns (bool) {
         (
            ,
            ,
            ,
            int24 tickLower,
            int24 tickUpper,
            ,
            ,
            ,
            ,
        ) = IRamsesV3PositionManager(_nfpManager).positions(_nfpId);

        bytes32 positionHash = PositionKey.compute(
            _nfpManager,
            _nfpId,
            tickLower,
            tickUpper
        );
        
        return _positionHashesBlacklisted.contains(positionHash);
    }
    
    /// @notice update the voter address
    /// @dev only callable by authorized addresses
    function setVoter(address _voter) external onlyAuthorized {
        voter = IVoter(_voter);
        // also update nfpManager when voter changes
        nfpManager = IRamsesV3PositionManager(voter.nfpManager());
    }
    
    /// @notice update the pool address
    /// @dev only callable by authorized addresses
    function setPool(address _pool) external onlyAuthorized {
        pool = IRamsesV3Pool(_pool);
    }
    
    /// @notice update the nfpManager address directly
    /// @dev only callable by authorized addresses
    function setNfpManager(address _nfpManager) external onlyAuthorized {
        nfpManager = IRamsesV3PositionManager(_nfpManager);
    }
    
}

