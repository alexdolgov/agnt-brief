// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.30;

import {ERC1155HolderUpgradeable} from "@openzeppelin-upgradeable/token/ERC1155/utils/ERC1155HolderUpgradeable.sol";
import {AccessControlUpgradeable} from "@openzeppelin-upgradeable/access/AccessControlUpgradeable.sol";
import {Initializable} from "@openzeppelin-upgradeable/proxy/utils/Initializable.sol";
import {UUPSUpgradeable} from "@openzeppelin-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import "@openzeppelin/contracts/utils/cryptography/ECDSA.sol";
import {IPlayer} from "../../interfaces/IPlayer.sol";
import {IDevelopmentPlayersV2} from "../../interfaces/upgrades/IDevelopmentPlayersV2.sol";

/**
 * @title DevelopmentPlayersV2 Contract
 * @notice V2: Fixes duplicate bug in userPlayerIds and updates PlayersCut event
 * @dev Changes:
 *      1. Extracted _removePlayerIdFromUser helper function
 *      2. Call _removePlayerIdFromUser in both cutPlayers and promotePlayers
 *      3. Updated PlayersCut event to include shares array
 */
contract DevelopmentPlayersV2 is ERC1155HolderUpgradeable, AccessControlUpgradeable, UUPSUpgradeable, IDevelopmentPlayersV2 {

    //Roles.
    bytes32 public constant GOVERNOR_ROLE = keccak256("GOVERNOR_ROLE");
    bytes32 public constant DEVELOPMENT_PROMOTER_ROLE = keccak256("DEVELOPMENT_PROMOTER_ROLE");
    bytes32 public constant DEVELOPMENT_CUTTER_ROLE = keccak256("DEVELOPMENT_CUTTER_ROLE");

    //Standard return value to confirm successful ERC1155 token receipt.
    bytes4 private constant ERC1155_RECEIVED_VALUE = 0xf23a6e61;
    
    //Standard return value to confirm successful ERC1155 batch token receipt.
    bytes4 private constant ERC1155_BATCH_RECEIVED_VALUE = 0xbc197c81;

    //Player contract.
    IPlayer public playerContract;

    //PlayerPack contract.
    address public playerPack;

    //Tracks locked shares. userAddress -> playerId -> lockedAmount
    mapping(address => mapping(uint256 => uint256)) public lockedBalances;

    //Tracks the playerIds that a user has locked.
    mapping(address => uint256[]) public userPlayerIds;

    // V2: Version tracking
    uint256 public upgradeVersion;

    // Storage gap for future upgrades (reduced by 1 for upgradeVersion)
    uint256[49] private __gap;

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    /**
     * Initialize the DevelopmentPlayers contract.
     * @param _playerContract The address of the player contract.
     * @param _governorAddress Address that will receive the GOVERNOR_ROLE, DEVELOPMENT_PROMOTER_ROLE and DEVELOPMENT_CUTTER_ROLE.
     */
    function initialize(address _playerContract, address _governorAddress) external initializer {
        if (_playerContract == address(0) || _governorAddress == address(0)) revert ZeroAddress();
        __ERC1155Holder_init();
        __AccessControl_init();
        __UUPSUpgradeable_init();

        playerContract = IPlayer(_playerContract);

        _setRoleAdmin(GOVERNOR_ROLE, GOVERNOR_ROLE);
        _setRoleAdmin(DEVELOPMENT_PROMOTER_ROLE, GOVERNOR_ROLE);
        _setRoleAdmin(DEVELOPMENT_CUTTER_ROLE, GOVERNOR_ROLE);

        _grantRole(GOVERNOR_ROLE, _governorAddress);
        _grantRole(DEVELOPMENT_PROMOTER_ROLE, _governorAddress);
        _grantRole(DEVELOPMENT_CUTTER_ROLE, _governorAddress);
    }

    /**
     * @notice Initializes the V2 upgrade
     * @dev This function should be called after upgrading to V2
     */
    function initializeV2() external onlyRole(GOVERNOR_ROLE) {
        require(upgradeVersion == 0, "Already initialized");
        upgradeVersion = 2;
    }

    /**
     * @dev Handles receiving ERC1155 tokens from opening a PlayerPack.
     * It decodes the user address from the data and stores the tokens in lockedBalances.
     */
    function onERC1155BatchReceived(address _operator, address _from, uint256[] memory _ids, uint256[] memory _values, bytes memory _data) public virtual override returns (bytes4) {
        if (_operator == address(0) || _from == address(0)) revert ZeroAddress();
        if (msg.sender != address(playerContract)) revert InvalidSender();
        if (_from != address(playerContract)) revert InvalidSender();
        if (_operator != address(playerPack)) revert InvalidSender();
        if (_ids.length != _values.length) revert InvalidData();

        //Check if the data is encoded correctly.
        address packBuyerAddress = abi.decode(_data, (address));
        if (packBuyerAddress == address(0)) revert ZeroAddress();

        for (uint256 i = 0; i < _ids.length; i++) {
            //Only push the playerId if it's not already in the array.
            if (lockedBalances[packBuyerAddress][_ids[i]] == 0) {
                // Check that the share is not empty.
                userPlayerIds[packBuyerAddress].push(_ids[i]);
            }
            //Add shares to the locked balance.
            lockedBalances[packBuyerAddress][_ids[i]] += _values[i];
        }

        emit TokensLockedForUser(_operator, _from, packBuyerAddress, _ids, _values);

        return ERC1155_BATCH_RECEIVED_VALUE;
    }

    /**
     * @dev Handles receiving single ERC1155 tokens by routing to batch handler
     * @dev Applies same security controls as batch function
     */
    function onERC1155Received(address _operator, address _from, uint256 _id, uint256 _value, bytes memory _data) public virtual override returns (bytes4) {
        //Re-route single transfer to batch handler.
        uint256[] memory ids = new uint256[](1);
        uint256[] memory values = new uint256[](1);
        ids[0] = _id;
        values[0] = _value;
        
        if(ERC1155_BATCH_RECEIVED_VALUE != onERC1155BatchReceived(_operator, _from, ids, values, _data)) {
            revert InvalidSender();
        }
        
        return ERC1155_RECEIVED_VALUE;
    }

    /**
     * @dev Promotes a user's shares for specific playerId.
     * @dev V2: Now removes player from userPlayerIds when balance reaches zero
     * @param _user The address of the user.
     * @param _playerIds The playerIds to promote.
     * @param _numShares The number of shares to promote per playerId.
     */
    function promotePlayers(address _user, uint256[] memory _playerIds, uint256[] memory _numShares) external onlyRole(DEVELOPMENT_PROMOTER_ROLE) {
        if (_user == address(0)) revert ZeroAddress();
        if (_playerIds.length != _numShares.length) revert InvalidData();

        //Check if the user has enough shares to unlock.
        for (uint256 i = 0; i < _playerIds.length; ) {
            if (lockedBalances[_user][_playerIds[i]] < _numShares[i]) revert InsufficientShares();

            //Subtract the shares from the locked balance.
            lockedBalances[_user][_playerIds[i]] -= _numShares[i];

            // V2: Remove from userPlayerIds if balance is zero
            if (lockedBalances[_user][_playerIds[i]] == 0) {
                _removePlayerIdFromUser(_user, _playerIds[i]);
            }

            unchecked {
                ++i;
            }
        }

        //Transfer the shares to the user.
        playerContract.safeBatchTransferFrom(address(this), _user, _playerIds, _numShares, "");

        emit PlayerSharesPromoted(_user, _playerIds, _numShares);
    }

    /**
     * @dev Cut players are returned to the Player Pool and "recycled" into a set number of Tournament Points.
     * @dev V2: Updated event to include shares array
     * @param _user The address of the user.
     * @param _idsToCut The playerIds to cut.
     * @param _numShares The number of shares to cut for each playerId.
     */
    function cutPlayers(address _user, uint256[] memory _idsToCut, uint256[] memory _numShares) external onlyRole(DEVELOPMENT_CUTTER_ROLE) {
        if (_user == address(0)) revert ZeroAddress();
        if (_idsToCut.length == 0) revert InvalidData();

        //Get the shares and reset balances for each playerId.
        for (uint256 i = 0; i < _idsToCut.length; i++) {
            if (lockedBalances[_user][_idsToCut[i]] < _numShares[i]) revert InsufficientShares();
            
            lockedBalances[_user][_idsToCut[i]] -= _numShares[i];

            // If balance is zero after cutting, remove from userPlayerIds
            if (lockedBalances[_user][_idsToCut[i]] == 0) {
                _removePlayerIdFromUser(_user, _idsToCut[i]);
            }
        }

        // Transfer all shares back to the player contract
        playerContract.safeBatchTransferFrom(address(this), address(playerContract), _idsToCut,
            _numShares, "");

        // V2: Emit event with shares array
        emit PlayersCut(_user, _idsToCut, _numShares);
    }

    /**
     * @dev V2: Helper function to remove a playerId from userPlayerIds array
     * @param _user The address of the user
     * @param _playerId The playerId to remove
     */
    function _removePlayerIdFromUser(address _user, uint256 _playerId) internal {
        uint256[] storage userIds = userPlayerIds[_user];
        for (uint256 j = 0; j < userIds.length; j++) {
            if (userIds[j] == _playerId) {
                userIds[j] = userIds[userIds.length - 1];
                userIds.pop();
                break;
            }
        }
    }

    /**
     * Get the locked balances for a user.
     * @param _user The address of the user.
     * @param _playerIds The playerIds to get the locked balances for.
     * @return myLockedBalances The locked balances for the user.
     */
    function getLockedBalances(address _user, uint256[] memory _playerIds) external view returns (uint256[] memory) {
        if (_user == address(0)) revert ZeroAddress();
        if (_playerIds.length == 0) return new uint256[](0);

        uint256[] memory myLockedBalances = new uint256[](_playerIds.length);

        for (uint256 i = 0; i < _playerIds.length; i++) {
            myLockedBalances[i] = lockedBalances[_user][_playerIds[i]];
        }

        return myLockedBalances;
    }

    /**
     * Get the playerIds that a user has locked.
     * @param _user The address of the user.
     * @return myPlayerIds The playerIds that the user has locked.
     */
    function getUserPlayerIds(address _user) external view returns (uint256[] memory) {
        if (_user == address(0)) revert ZeroAddress();

        return userPlayerIds[_user];
    }

    /**
     * Sets the player contract address.
     * @param _newPlayerContract the new player contract address
     */
    function setPlayerContract(address _newPlayerContract ) external onlyRole(GOVERNOR_ROLE) {
        if (_newPlayerContract == address(0)) revert ZeroAddress();

        playerContract = IPlayer(_newPlayerContract);

        emit PlayerContractSet(_newPlayerContract);
    }

    /**
     * Sets the player pack address.
     * @param _newPlayerPack the new player pack address
     */
    function setPlayerPack(address _newPlayerPack) external onlyRole(GOVERNOR_ROLE) {
        if (_newPlayerPack == address(0)) revert ZeroAddress();

        playerPack = _newPlayerPack;

        emit PlayerPackSet(_newPlayerPack);
    }

    /**
     * Gives a new address the governor role.
     * @param _address The address to give the governor role
     */
    function setGovernorRole(address _address) external onlyRole(GOVERNOR_ROLE) {
        if (_address == address(0)) revert ZeroAddress();

        _grantRole(GOVERNOR_ROLE, _address);

        emit GovernorRoleSet(_address);
    }

    /**
     * Gives a new address the development promoter role.
     * @param _address The address to give the development promoter role
     */
    function setDevelopmentPromoterRole(address _address) external onlyRole(GOVERNOR_ROLE) {
        if (_address == address(0)) revert ZeroAddress();

        _grantRole(DEVELOPMENT_PROMOTER_ROLE, _address);

        emit DevelopmentPromoterRoleSet(_address);
    }

    /**
     * Gives a new address the development cutter role.
     * @param _address The address to give the development cutter role
     */
    function setDevelopmentCutterRole(address _address) external onlyRole(GOVERNOR_ROLE) {
        if (_address == address(0)) revert ZeroAddress();

        _grantRole(DEVELOPMENT_CUTTER_ROLE, _address);

        emit DevelopmentCutterRoleSet(_address);
    }    

    /**
     * @dev See {IERC165-supportsInterface}.
     */
    function supportsInterface(bytes4 interfaceId) public view virtual override(ERC1155HolderUpgradeable, AccessControlUpgradeable) returns (bool) {
        return interfaceId == type(IDevelopmentPlayersV2).interfaceId || super.supportsInterface(interfaceId);
    }

    /**
     * @notice Required by the UUPSUpgradeable module
     * @dev Only allows admins to upgrade the implementation
     */
    function _authorizeUpgrade(address newImplementation) internal override onlyRole(GOVERNOR_ROLE) {}
}
