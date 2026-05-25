// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

import "../VoterV5/BribeV2.sol";

import "@openzeppelin/contracts-upgradeable/access/Ownable2StepUpgradeable.sol";
import '../interfaces/IPermissionsRegistry.sol';

contract BribeFactoryV4 is Ownable2StepUpgradeable {
    address public last_bribe;
    address[] internal _bribes;
    address public voter;

    address[] public defaultRewardToken;
    mapping(address => bool) public defaultRewardTokens;

    IPermissionsRegistry public permissionsRegistry;
    uint256[50] private __gap;
    event SetRegistry(address newRegistry);
    event SetVoter(address newVoter);

    modifier onlyAllowed() {
        require(owner() == msg.sender || permissionsRegistry.hasRole("BRIBE_ADMIN",msg.sender), 'ERR: BRIBE_ADMIN');
        _;
    }

    constructor() {}
    function initialize(address _voter, address _permissionsRegistry) initializer  public {
        __Ownable_init();   //after deploy ownership to multisig
        voter = _voter;
        // registry to check accesses
        permissionsRegistry = IPermissionsRegistry(_permissionsRegistry);

    }

    /// @notice create a bribe contract
    /// @dev    _owner must be lynexTeamMultisig
    function createBribe(address _owner,address _token0,address _token1, string memory _type) external returns (address) {
        require(msg.sender == voter || msg.sender == owner(), 'only voter');

        BribeV2 lastBribe = new BribeV2(_owner,voter,address(this), _type);

        if(_token0 != address(0)) lastBribe.addRewardToken(_token0);  
        if(_token1 != address(0)) lastBribe.addRewardToken(_token1); 

        lastBribe.addRewardTokens(defaultRewardToken);      
         
        last_bribe = address(lastBribe);
        _bribes.push(last_bribe);
        return last_bribe;
    }


    /* -----------------------------------------------------------------------------
    --------------------------------------------------------------------------------
    --------------------------------------------------------------------------------
                                    ONLY OWNER
    --------------------------------------------------------------------------------
    --------------------------------------------------------------------------------
    ----------------------------------------------------------------------------- */


    /// @notice set the bribe factory voter
    function setVoter(address _Voter) external {
        require(owner() == msg.sender, 'not owner');
        require(_Voter != address(0));
        voter = _Voter;
        emit SetVoter(voter);
    }

    
    /// @notice set the bribe factory permission registry
    function setPermissionsRegistry(address _permReg) external {
        require(owner() == msg.sender, 'not owner');
        require(_permReg != address(0));
        permissionsRegistry = IPermissionsRegistry(_permReg);
        emit SetRegistry(address(permissionsRegistry));
    }

    /// @notice set the bribe factory permission registry
    function pushDefaultRewardToken(address _token) external {
        require(owner() == msg.sender, 'not owner');
        require(!defaultRewardTokens[_token], 'duplicated token');
        require(_token != address(0));
        defaultRewardTokens[_token] = true;
        defaultRewardToken.push(_token);    
    }

    
    /// @notice set the bribe factory permission registry
    function removeDefaultRewardToken(address _token) external {
        require(owner() == msg.sender, 'not owner');
        require(_token != address(0));
        uint i = 0;
        for(i; i < defaultRewardToken.length; i++){
            if(defaultRewardToken[i] == _token){
                defaultRewardToken[i] = defaultRewardToken[defaultRewardToken.length -1];
                defaultRewardToken.pop();
                delete defaultRewardTokens[_token];
                break;
            }
        }    
    }

    /* -----------------------------------------------------------------------------
    --------------------------------------------------------------------------------
    --------------------------------------------------------------------------------
                                    ONLY OWNER or BRIBE ADMIN
    --------------------------------------------------------------------------------
    --------------------------------------------------------------------------------
    ----------------------------------------------------------------------------- */

    /// @notice Add a reward token to a given bribe
    function addRewardToBribe(address _token, address __bribe) external onlyAllowed {
        IBribe(__bribe).addRewardToken(_token);
    }

    /// @notice Add multiple reward token to a given bribe
    function addRewardsToBribe(address[] memory _tokens, address __bribe) external onlyAllowed {
        IBribe(__bribe).addRewardTokens(_tokens);
    }

    /// @notice Add a reward token to given bribes
    function addRewardToBribes(address _token, address[] memory __bribes) external onlyAllowed {
        uint i = 0;
        for ( i ; i < __bribes.length; i++){
            IBribe(__bribes[i]).addRewardToken(_token);
        }

    }

    /// @notice Add multiple reward tokens to given bribes
    function addRewardsToBribes(address[][] memory _token, address[] memory __bribes) external onlyAllowed {
        uint i = 0;
        uint k;
        for ( i ; i < __bribes.length; i++){
            address _br = __bribes[i];
            for(k = 0; k < _token.length; k++){
                IBribe(_br).addRewardToken(_token[i][k]);
            }
        }

    }

    /// @notice set a new voter in given bribes
    function setBribeVoter(address[] memory _bribe, address _voter) external onlyOwner {
        uint i = 0;
        for(i; i< _bribe.length; i++){
            IBribe(_bribe[i]).setVoter(_voter);
        }
    }

    /// @notice set a new minter in given bribes
    function setBribeMinter(address[] memory _bribe, address _minter) external onlyOwner {
        uint i = 0;
        for(i; i< _bribe.length; i++){
            IBribe(_bribe[i]).setMinter(_minter);
        }
    }

    /// @notice set a new owner in given bribes
    function setBribeOwner(address[] memory _bribe, address _owner) external onlyOwner {
        uint i = 0;
        for(i; i< _bribe.length; i++){
            IBribe(_bribe[i]).setOwner(_owner);
        }
    }

    /// @notice recover an ERC20 from bribe contracts.
    function recoverERC20From(address[] memory _bribe, address[] memory _tokens, uint[] memory _amounts) external onlyOwner {
        uint i = 0;
        require(_bribe.length == _tokens.length, 'mismatch len');
        require(_tokens.length == _amounts.length, 'mismatch len');

        for(i; i< _bribe.length; i++){
            if(_amounts[i] > 0) IBribe(_bribe[i]).emergencyRecoverERC20(_tokens[i], _amounts[i]);
        }
    }

     /// @notice recover an ERC20 from bribe contracts and update. 
    function recoverERC20AndUpdateData(address[] memory _bribe, address[] memory _tokens, uint[] memory _amounts) external onlyOwner {
        uint i = 0;
        require(_bribe.length == _tokens.length, 'mismatch len');
        require(_tokens.length == _amounts.length, 'mismatch len');

        for(i; i< _bribe.length; i++){
            if(_amounts[i] > 0) IBribe(_bribe[i]).recoverERC20AndUpdateData(_tokens[i], _amounts[i]);
        }
    }

}